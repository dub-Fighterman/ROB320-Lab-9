#include "command.hpp"

int main() {
    // Draw and remove a circle with OpenGL.
    Circle opengl_circle(0.25, std::make_unique<OpenGLCircleCommand>());
    opengl_circle.draw();
    opengl_circle.remove();

    // TODO: Draw and remove a circle with Vulkan.
    Circle vulkan_circle(0.25, std::make_unique<VulkanCircleCommand>());
    vulkan_circle.draw();
    vulkan_circle.remove();
}