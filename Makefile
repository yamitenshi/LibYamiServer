CXX = g++
CXX_FLAGS = -Wall -Wextra -Werror -std=c++11 -pthread
OUTFILE = bin/libyamiserver.so
SOURCES = $(wildcard src/*.cpp)
OBJECTS = $(addprefix bin/,$(notdir $(SOURCES:.cpp=.o)))

all: library

library: $(OBJECTS)
	$(CXX) -fPIC -shared $(OBJECTS) -o $(OUTFILE)

bin/%.o: src/%.cpp
	$(CXX) -c -fPIC $(CXX_FLAGS) $< -o $@

clean:
	@rm -f $(OBJECTS)

distclean: clean
	@rm -f $(OUTFILE)
