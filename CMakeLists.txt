cmake_minimum_required(VERSION 3.0)

project(oopoker)

# Create a list of all C and H files in the root directory
file(GLOB SOURCES "*.cpp" "*.h")

# Create an executable target with all the source files
add_executable(${PROJECT_NAME} ${SOURCES})