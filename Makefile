CXX = g++  # Compiler
CMAKE = cmake  # CMake executable

# Define build and source directories
BUILD_DIR = build
SRC_DIR = ./

# Target executable name
TARGET = oopoker

.PHONY: all clean

all: $(BUILD_DIR)/Makefile
	$(MAKE) -C $(BUILD_DIR)
	@echo "Build finished. To run the program, use: ./$(BUILD_DIR)/$(TARGET)"

$(BUILD_DIR)/Makefile: $(SRC_DIR)/CMakeLists.txt
	mkdir -p $(BUILD_DIR)
	cd $(BUILD_DIR) && $(CMAKE) ../$(SRC_DIR)

clean:
	$(MAKE) -C $(BUILD_DIR) clean
	rm -rf $(BUILD_DIR)

run: all
	./$(BUILD_DIR)/$(TARGET)