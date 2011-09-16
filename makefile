CC     := g++ 
CFLAGS := -Wall -O0 -g
OBJ    := $(patsubst %.cpp,%.o,$(wildcard *.cpp))
EXE    := $(patsubst %.cpp,%,$(wildcard *.cpp))
SYM    := $(patsubst %.cpp,%.dSYM,$(wildcard *.cpp))
SRC    := $(wildcard *.cpp)
all : $(EXE)
intro1 : intro1.cpp
	$(CC) $(CFLAGS) $< -o $@
intro2 : intro2.cpp
	$(CC) $(CFLAGS) $< -o $@
intro3 : intro3.cpp
	$(CC) $(CFLAGS) $< -o $@
intro4 : intro4.cpp
	$(CC) $(CFLAGS) $< -o $@
intro5 : intro5.cpp
	$(CC) $(CFLAGS) $< -o $@	
run   : all
	./intro1
	./intro2
	./intro3
	./intro4
	./intro5
clean :
	rm -fr *~ $(EXE) *.o *.dSYM
list :
		@echo src: $(SRC)
		@echo obj: $(OBJ)
		@echo exe: $(EXE)
		@echo sym: $(SYM)