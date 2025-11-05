CXX = g++
CXXFLAGS = -Iinclude -Wall -Wextra -std=c++17

SRC = $(wildcard src/*.cpp)
OBJ = $(SRC:.cpp=.o)
TARGET = app

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $^

clean:
	rm -f src/*.o $(TARGET)