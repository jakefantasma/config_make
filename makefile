#windows 10 
#COMPILER
CC = g++
#OUT
BIN = bin.exe
SRC = src\\
BUILD = build\\
#set config build and out objects
%.o : %.cpp
	$(CC) -c $< -o "$(BUILD)$@"
%.o : $(SRC)%.cpp
	$(CC) -c $< -o "$(BUILD)$@"
%.o : $(SRC)%.hpp
	$(CC) -c $< -o "$(BUILD)$@"
#build b
Funciones.o : $(SRC)Funciones.hpp
main.o : main.cpp
#object to boild in bin 
objs = main.o Funciones.o
rutas: 
	mkdir $(BUILD)
#build bin 
all: $(objs) 
	$(CC) -g "$(BUILD)*.o"  -o "$(BUILD)$(BIN)"
clean: 
	@cd $(BUILD)  && rm -f $(objs) $(BINw) 