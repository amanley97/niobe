cmake_minimum_required(VERSION 3.10)

project(niobe)

set(CMAKE_CXX_STANDARD 17)

# Shared source files
set(SHARED_SRC_FILES
    src/cpu/CPU.cpp
    src/cpu/Instruction.cpp
    src/memory/Memory.cpp
    src/emulator/Emulator.cpp
    src/utils/Logger.cpp
)

# Shared header files
set(SHARED_HEADER_FILES
    src/cpu/CPU.h
    src/cpu/Instruction.h
    src/memory/Memory.h
    src/emulator/Emulator.h
    src/utils/Logger.h
    include/common.h
)

# Create a library for shared code
add_library(niobe_lib ${SHARED_SRC_FILES} ${SHARED_HEADER_FILES})

# Add the main executable
add_executable(niobe src/main.cpp)
target_link_libraries(niobe PRIVATE niobe_lib)

# Add tests directory
enable_testing()
add_subdirectory(tests)
