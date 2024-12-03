#version 300 es
precision highp float;

uniform sampler2D uLightingTexture;
uniform float zNear;
uniform float zFar;

out vec4 outColor;

void main()
{
    // Read the lighting from the texture instead of pixel local storage
    vec3 lighting = texture(uLightingTexture, gl_FragCoord.xy / vec2(textureSize(uLightingTexture, 0))).rgb;

    // Gamma correction (gamma of 2.0)
    outColor.rgb = sqrt(lighting);

    // Alpha lighting is unused
    outColor.a = 1.0;
}