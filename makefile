PYTHON_VERSION = 3.5
PYTHON_INCLUDE = /usr/include/python$(PYTHON_VERSION)

BOOST_INC := $(BOOST_ROOT)/include
BOOST_LIB := $(BOOST_ROOT)/lib

INC := inc
OBJ := obj

# compile mesh classes
TARGET = p1

$(TARGET).so: $(OBJ)/$(TARGET).o
	g++ -shared -Wl,--export-dynamic $(OBJ)/$(TARGET).o -L$(BOOST_LIB) -lboost_python3 -o $(TARGET).so
 
$(OBJ)/$(TARGET).o: intf/$(TARGET).c
	g++ -I$(PYTHON_INCLUDE) -I$(BOOST_INC) -I$(INC) -fPIC -c intf/$(TARGET).c -o $(OBJ)/$(TARGET).o

clean:
	rm -rf  $(OBJ)/*.o *.so
