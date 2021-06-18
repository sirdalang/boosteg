# Makefile for boosteg

DIR_INC = -I../OUTPUT/include/boost-1_76
DIR_SRC = .
DIR_OBJ = ./obj
DIR_LIB = -L../OUTPUT/lib

SRCPP = $(wildcard $(DIR_SRC)/*.cpp)
OBJ += $(patsubst %.cpp,$(DIR_OBJ)/%.o,$(notdir $(SRCPP)))

TARGET = test.out

CC = g++ --std=c++11
MKDIR = mkdir -p

CFLAGS = -g -Wall $(DIR_INC)
LFLAGS = $(DIR_LIB)

$(TARGET):$(OBJ)
	$(CC) -o $@ $(OBJ) $(LFLAGS)

$(DIR_OBJ)/%.o:$(DIR_SRC)/%.cpp | $(DIR_OBJ)
	$(CC) $(CFLAGS) -c $< -o $@

$(DIR_OBJ):
	$(MKDIR) $@

.PHONY: clean

clean:
	rm -v $(OBJ)
	rm -v $(TARGET)
	