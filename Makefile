SOURCES=$(wildcard src/*.cpp)
CXXFLAGS?=-lm -lc -lstdc++
CXXFLAGS_sdl=$(shell pkg-config --cflags --libs sdl2) -lSDL2_image -lSDL2_gfx
CXXFLAGS_my=-Iinclude -std=gnu++1y -lpthread -lrt
CXXFLAGS_p_debug=-O0 -ggdb -gdwarf-4
CXXFLAGS_p_release=-O3 -s -g0
.PHONY: all
all: bin/wip.debug

bin/wip.%: $(SOURCES)
	$(CC) -x c++ $(CXXFLAGS) $(CXXFLAGS_sdl) $(CXXFLAGS_my) $(CXXFLAGS_p_$?) -Ibin -std=gnu++1y $(SOURCES) -o $@
