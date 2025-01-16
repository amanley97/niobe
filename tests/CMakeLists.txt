# Add a test executable
add_executable(niobe_tests
    cpu_tests.cpp
    emulator_tests.cpp
    instruction_tests.cpp
    memory_tests.cpp
)

# Link the test executable to the shared library
target_link_libraries(niobe_tests PRIVATE niobe_lib)

# Add tests for CTest
enable_testing()
add_test(NAME CPU_Tests COMMAND niobe_tests)
