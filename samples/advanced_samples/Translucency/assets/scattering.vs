#version 300 es
precision mediump float;

layout(location = 0) in vec3 position;
layout(location = 1) in vec3 normal;

uniform mat4 projection;
uniform mat4 view;
uniform mat4 model;

out vec2 v_uv;
out vec3 v_position;
out vec3 v_normal;

void main() {
    mat4 modelView = view * model;
    vec4 viewPos = modelView * vec4(position, 1.0);

    // Pass position and normal to the fragment shader
    v_position = viewPos.xyz;
    v_normal = mat3(modelView) * normal;

    // UV for texture sampling (if needed)
    v_uv = position.xy; // Example UV mapping

    gl_Position = projection * viewPos;
}
