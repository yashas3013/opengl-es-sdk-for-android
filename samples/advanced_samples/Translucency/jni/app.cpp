#include <GLES3/gl3.h>
#include "shader.h"
#include "primitives.h"
#include "glutil.h"
#include "timer.h"
#include <cmath>

// Global variables
int window_width, window_height;
Shader scattering_shader;
Mesh cube, quad;
mat4 projection_matrix, view_matrix;

// Light properties
vec3 light_position(0.0f, 0.0f, 7.0f);
vec3 light_color(1.0f, 0.8f, 0.6f);

float light_intensity = 2.0f;
float light_radius = 0.2f;

// Subsurface scattering parameters
float s_ambient = 0.20f;
float s_distortion = 0.07f;
float s_sharpness = 10.0f;
float s_scale = 3.50f;

// Camera parameters
float zoom = 3.0f;
float rotation_x = 0.0f;
float rotation_y = 0.0f;

bool init_app(int width, int height)
{
    window_width = width;
    window_height = height;
    float aspect_ratio = float(width) / height;

    // Load scattering shader
    string res =
            "/data/data/com.arm.malideveloper.openglessdk.translucency/files/";
    if (!scattering_shader.load_from_file(res+"scattering.vs", res+"scattering.fs"))
        return false;

    if (!scattering_shader.link())
        return false;

    // Generate meshes
    cube = gen_normal_cube();
    quad = gen_quad();

    // Set up projection matrix
    projection_matrix = perspective(PI / 4.0f, aspect_ratio, 0.1f, 100.0f);

    return true;
}

void update_app(float dt)
{
    // Animate light position
    float time = get_elapsed_time();
    light_position.x = 2.0f * sin(time);
    light_position.y = 2.0f * cos(time);

    // Update view matrix with simple rotation
    rotation_y += 0.5f * dt;
    view_matrix =
            translate(0.0f, 0.0f, -zoom) *
            rotateY(rotation_y);
}

void render_app(float dt)
{
    // Clear buffers
    glClearColor(0.1f, 0.1f, 0.2f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    // Use scattering shader
    use_shader(scattering_shader);

    // Set shader uniforms
    uniform("projection", projection_matrix);
    uniform("view", view_matrix);

    // Cube model matrix with rotation
    mat4 model_matrix =
            translate(0.0f, 0.0f, 0.0f) *
            scale(0.5f) *
            rotateX(get_elapsed_time());
    uniform("model", model_matrix);

    // Light uniforms
    uniform("lightPos", light_position);
    uniform("lightColor", light_color);
    uniform("lightIntensity", light_intensity);
    uniform("lightRadius", light_radius);


    // Subsurface scattering parameters
    uniform("ambient", s_ambient);
    uniform("distortion", s_distortion);
    uniform("sharpness", s_sharpness);
    uniform("scale", s_scale);
    uniform("alpha", 1.0f);
    // Render cube
    cube.bind();
    attribfv("position", 3, 6, 0);
    attribfv("normal", 3, 6, 3);
    glDrawElements(GL_TRIANGLES, cube.num_indices, GL_UNSIGNED_INT, 0);
    glDepthMask(GL_TRUE);

}

// Simplified placeholder implementations
void on_pointer_down(float x, float y) {}
void on_pointer_up(float x, float y) {}
void free_app()
{
    scattering_shader.dispose();
}