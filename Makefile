# Set compliler
CC = gcc
# Compliler settings
CFLAGS = -Wall -Wextra -std=c11

SOURCES = ./src
BUILD_DIR = ./build

RELEASE = brain_games

default: $(SOURCES*)
	make build

run: $(BUILD_DIR)/$(RELEASE)
	$(BUILD_DIR)/$(RELEASE)

$(BUILD_DIR)/$(RELEASE) build: $(SOURCES*)
	$(CC) $(CFLAGS) $(SOURCES)/brain_games.c -o $(BUILD_DIR)/$(RELEASE)

clean:
	rm -rf $(BUILD_DIR)
	mkdir $(BUILD_DIR)
	touch $(SOURCES)/brain_games.c
