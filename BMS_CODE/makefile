HOME=/home/koenig/src/opencv-2.4.9
SRCDIR=./src
INCLDIR=./src $(HOME)/include # change to your opencv include folder
LIBDIR=$(HOME)/build/lib # change to your opencv lib folder
LIBS=opencv_core opencv_highgui opencv_imgproc
CFLAGS=-Wall -O2 -fopenmp $(patsubst %,-I%,$(INCLDIR)) `pkg-config opencv --cflags`
LDFLAGS=$(patsubst %,-L%,$(LIBDIR)) $(patsubst %,-l%,$(LIBS)) 
SOURCES=main.cpp BMS.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=BMS

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	g++ $(CFLAGS) $(LDFLAGS) -o $@ $^ `pkg-config opencv --libs`

%.o: $(SRCDIR)/%.cpp
	g++ -c $(CFLAGS) $< -o $@ `pkg-config opencv --libs`


clean: 
	rm -rf *o $(EXECUTABLE)
