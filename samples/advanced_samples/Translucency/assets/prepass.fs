#version 300 es
precision highp float;

// Multiple render target outputs
layout(location = 0) out vec4 outLighting;
layout(location = 1) out vec2 outMinMaxDepth;
layout(location = 2) out vec4 outAlbedo;
layout(location = 3) out vec2 outNormalXY;

uniform vec3 albedo;
in vec4 vPosition;
in vec3 vNormal;

void main()
{
    vec3 n = normalize(vNormal);

    // Initialize lighting to zero
    outLighting = vec4(0.0);

    // Store depth (negative for view-space depth)
    outMinMaxDepth = vec2(-vPosition.z, -vPosition.z);

    // Store albedo with normal sign in alpha
    outAlbedo = vec4(albedo, sign(n.z));

    // Store normal XY components
    outNormalXY = n.xy;
}