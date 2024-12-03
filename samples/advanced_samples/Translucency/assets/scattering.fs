#version 300 es
precision mediump float;

// Multiple render target inputs
uniform sampler2D uLightingTexture;
uniform sampler2D uDepthTexture;
uniform sampler2D uAlbedoTexture;
uniform sampler2D uNormalTexture;

// Light properties
uniform vec3 lightPos;
uniform vec3 lightColor;
uniform float lightIntensity;
uniform float lightRadius;

// Scattering parameters
uniform float ambient;
uniform float distortion;
uniform float sharpness;
uniform float scale;

// Position reconstruction parameters
uniform float zNear;
uniform float zFar;
uniform float top;
uniform float right;
uniform vec2 invResolution;

// Multiple render target outputs
layout(location = 0) out vec4 outLighting;

// Existing helper functions remain the same
float sss(vec3 P, vec3 L, vec3 V, vec3 N, float r, float thickness)
{
    vec3 Lt = -(L + N * distortion);

    const float invln2 = 1.4427;
    float VdotL = exp2(-sharpness * invln2 * (1.0 - max(dot(V, Lt), 0.0))) * scale;

    return (VdotL + ambient) * clamp(1.0 - thickness * 0.5, 0.0, 1.0);
}

vec3 lighting(vec3 P, vec3 Lp, vec3 N, vec3 V, float thickness, float Li, vec3 Ldiff, vec3 Cdiff)
{
    vec3 L = Lp - P;
    float r = length(L);

    L /= r;

    vec3 H = normalize(V + L);
    float specular = clamp(6.0 * exp2(-128.0 * (1.0 - max(dot(N, H), 0.0))), 0.0, 1.0);
    float NdotL = max(dot(N, L), 0.0);

    thickness = min(thickness, r);
    float Is = sss(P, L, V, N, r, thickness);

    float attenuation = 10.0 * lightRadius * Li / (1.0 + 0.1 * r * r);
    return attenuation * (Is + specular + NdotL) * Ldiff * Cdiff;
}

void main()
{
    // Read from textures instead of pixel local storage
    vec2 minMaxDepth = texture(uDepthTexture, gl_FragCoord.xy / vec2(textureSize(uDepthTexture, 0))).rg;
    float depth = minMaxDepth.x;
    float depthNormalized = clamp((depth - zNear) / (zFar - zNear), 0.0, 1.0);

    // Reconstruct view-space position from depth
    vec2 uv = vec2(-1.0) + 2.0 * gl_FragCoord.xy * invResolution;
    vec2 frustum = vec2(right, top);
    vec3 P = vec3(uv * frustum * (1.0 + (zFar / zNear - 1.0) * depthNormalized), -depth);
    vec3 V = -normalize(P);

    // Reconstruct view-space normal
    vec4 albedoSample = texture(uAlbedoTexture, gl_FragCoord.xy / vec2(textureSize(uAlbedoTexture, 0)));
    vec2 normalXY = texture(uNormalTexture, gl_FragCoord.xy / vec2(textureSize(uNormalTexture, 0))).rg;

    vec3 N = vec3(normalXY, 0.0);
    float nzsign = albedoSample.a;
    N.z = nzsign * sqrt(1.0 - min(dot(N.xy, N.xy), 1.0));

    // Read existing lighting from texture
    vec3 existingLighting = texture(uLightingTexture, gl_FragCoord.xy / vec2(textureSize(uLightingTexture, 0))).rgb;

    // Additive lighting
    vec3 albedo = albedoSample.rgb;
    float thickness = minMaxDepth.y - minMaxDepth.x;
    vec3 newLighting = lighting(P, lightPos, N, V, thickness, lightIntensity, lightColor, albedo);

    // Combine existing and new lighting
    outLighting = vec4(existingLighting + newLighting, 1.0);
}