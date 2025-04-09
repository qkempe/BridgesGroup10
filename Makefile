SRCS = Snake.cpp
EXE=a.out


# Everything below that should not have to change ever.

CXX=g++
LD=g++
CC=g++

TARGET =  all 

OBJS = $(SRCS:.cpp=.o)

CXXFLAGS = -g  -std=c++14 -Wall -Wextra -fsanitize=address

LDFLAGS = -g -pthread
LIBS =  -lcurl -l bridges 

$(EXE): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $(EXE) $(OBJS) $(LDFLAGS) $(LIBS)

.SUFFIXES: .cpp .cc

.cpp.o:  
	$(CXX) $(CXXFLAGS) -c $< -o $@

all : $(EXE)

clean:
	-rm $(OBJS)
	-rm $(EXE)

