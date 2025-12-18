# cmake/CudaOverride.cmake
# 覆盖 CMake 默认的 CUDA 编译命令模板
set(CMAKE_CUDA_COMPILE_OBJECT
    "<CMAKE_CUDA_COMPILER> -x ivcore <DEFINES> <INCLUDES> <FLAGS> -c <SOURCE> -o <OBJECT>"
)
