#include <memory>

#include "strategy.hpp"

int main() {
    // Draw a circle using the OpenGL implementation.
    auto opengl_drawer = std::make_unique<OpenGLCircleStrategy>();
    Circle opengl_circle(0.25, std::move(opengl_drawer));
    opengl_circle.draw();

    // Draw a circle using the Vulkan implementation.
    auto vulkan_drawer = std::make_unique<VulkanCircleStrategy>();
    Circle vulkan_circle(0.25, std::move(vulkan_drawer));
    vulkan_circle.draw();

    // TODO: Draw a square using the DirectX implementation.
    auto directx_drawer = std::make_unique<DirectXCircleStrategy>();
    Circle directx_circle(0.25, std::move(directx_drawer));
    directx_circle.draw();

    // TODO: Draw a square using the DirectX implementation.
    auto directx_drawer_2 = std::make_unique<DirectXSquareStrategy>();
    Square directx_square(0.5, std::move(directx_drawer_2));
    directx_square.draw();
}