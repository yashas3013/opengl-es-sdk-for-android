#version 300 es
precision mediump float;

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

// Translucency parameter
uniform float alpha; // Alpha value for translucency

// Inputs passed from the vertex shader
in vec3 v_position;
in vec3 v_normal;

// Outputs
out vec4 fragColor;

// Subsurface scattering shading
float sss(vec3 P, vec3 L, vec3 V, vec3 N, float r, float thickness) {
    vec3 Lt = -(L + N * distortion);

    const float invln2 = 1.4427;
    float VdotL = exp2(-sharpness * invln2 * (1.0 - max(dot(V, Lt), 0.0))) * scale;

    return (VdotL + ambient) * clamp(1.0 - thickness * 0.5, 0.0, 1.0);
}

vec3 lighting(vec3 P, vec3 Lp, vec3 N, vec3 V, float thickness, float Li, vec3 Ldiff, vec3 Cdiff) {
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

void main() {
    // View-space vectors
    vec3 V = -normalize(v_position);
    vec3 N = normalize(v_normal);

    // Material properties
    vec3 albedo = vec3(0.2, 0.6, 0.5); // Example translucent color
    float thickness = 0.5;             // Simulated thickness

    // Calculate lighting with subsurface scattering
    vec3 lightEffect = lighting(v_position, lightPos, N, V, thickness, lightIntensity, lightColor, albedo);

    // Final color with translucency
    fragColor = vec4(lightEffect * albedo, alpha);
}
