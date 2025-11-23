#include "std_function_strategy.hpp"

int main() {
    // Draw a circle using the OpenGL implementation.
    Circle opengl_circle(0.25, openGLDrawCircleStrategy);
    opengl_circle.draw();

    // Draw a circle using the Vulkan implementation.
    Circle vulkan_circle(0.25, vulkanDrawCircleStrategy);
    vulkan_circle.draw();

    // TODO: Draw a square using the DirectX implementation.
    Circle directx_circle(0.25, directXDrawCircleStrategy);
    directx_circle.draw();

    // TODO: Draw a square using the DirectX implementation.
    Square directx_square(0.5, directXDrawSquareStrategy);
    directx_square.draw();
}