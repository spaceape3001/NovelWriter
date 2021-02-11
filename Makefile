CXXFLAGS := $(CXXFLAGS) -std=c++17 -Wall -g
SRCFILES := chunkify.cpp format.cpp html.cpp latex.cpp markdown.cpp text.cpp rtf.cpp nv.cpp 
LIBFLAGS := -lstdc++fs
OBJFILES := $(SRCFILES:.cpp=.o)
TARGET   := nw

all: $(TARGET)

$(TARGET): $(OBJFILES)
	g++ -o $(TARGET) $(CXXFLAGS) $(OBJFILES) $(LIBFLAGS)
	