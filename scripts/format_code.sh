#!/bin/bash
# Script to format code
clang-format -i $(find . -name '*.cpp' -o -name '*.h')
