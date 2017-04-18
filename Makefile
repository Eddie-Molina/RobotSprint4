# Makefile for Project
CXXFLAGS += --std=c++11

LDFLAGS = -L/usr/local/lib -lfltk -lXext -lX11 -lm


all: main

debug: CXXFLAGS += -g
debug: main

rebuild: clean main

main: robot.cpp
	$(CXX) $(CXXFLAGS) $(fltk-config --cxxflags) -o main robot.cpp $(LDF

clean:
	-rm -f *.o *~ a.out