#version 300 es
precision highp float;

// Input textures for reading current max depth
uniform sampler2D uMinMaxDepthTexture;

// Multiple render target outputs
layout(location = 1) out vec2 outMinMaxDepth;

uniform vec3 albedo;
in vec4 vPosition;
in vec3 vNormal;

void main()
{
    float depth = -vPosition.z;

    // Read the current max depth from the texture
    vec2 currentMinMaxDepth = texture(uMinMaxDepthTexture, gl_FragCoord.xy / vec2(textureSize(uMinMaxDepthTexture, 0))).rg;

    // Update the maximum depth
    outMinMaxDepth.x = currentMinMaxDepth.x;
    outMinMaxDepth.y = max(depth, currentMinMaxDepth.y);
}