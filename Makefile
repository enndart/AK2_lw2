CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++11
AR = ar
ARFLAGS = rcs

TARGET = calculator_app
LIB_TARGET = libcalculator.a

LIB_OBJS = calculator.o
APP_OBJS = main.o

.PHONY: all clean

all: $(TARGET)

$(LIB_TARGET): $(LIB_OBJS)
	$(AR) $(ARFLAGS) $@ $^

$(TARGET): $(APP_OBJS) $(LIB_TARGET)
	$(CXX) $(CXXFLAGS) -o $@ $(APP_OBJS) -L. -lcalculator

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f *.o $(LIB_TARGET) $(TARGET)
