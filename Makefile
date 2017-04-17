# Makefile for Project
CXXFLAGS += --std=c++11

all: main

debug: CXXFLAGS += -g
debug: main

rebuild: clean main

main: robot.o
	$(CXX) $(CXXFLAGS) robot.o

main.o: robot.cpp 
	$(CXX) $(CXXFLAGS) -c robot.cpp



clean:
	-rm -f *.o *~ a.out