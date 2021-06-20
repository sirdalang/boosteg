# Makefile for boosteg

DIR_INC = -I../OUTPUT/include
DIR_SRC = .
DIR_OBJ = ./obj
DIR_LIB = -L../OUTPUT/lib
ADDTIONAL_LIBS +=
LIBS = -lpthread $(ADDTIONAL_LIBS) 

SRCPP = $(wildcard $(DIR_SRC)/*.cpp)
OBJ += $(patsubst %.cpp,$(DIR_OBJ)/%.o,$(notdir $(SRCPP)))

TARGET = test.out

CC = g++ --std=c++11 --static
MKDIR = mkdir -p

CFLAGS = -g -Wall $(DIR_INC) -fdata-sections -ffunction-sections
LFLAGS += -Wl,--start-group $(LIBS) -Wl,--end-group $(DIR_LIB) -Wl,--gc-sections -static-libstdc++

$(TARGET):$(OBJ)
	$(CC) -o $@   $(OBJ) $(LFLAGS)

$(DIR_OBJ)/%.o:$(DIR_SRC)/%.cpp | $(DIR_OBJ)
	$(CC) $(CFLAGS) -c $< -o $@

$(DIR_OBJ):
	$(MKDIR) $@

.PHONY: clean

clean:
	@rm -fv $(OBJ)
	@rm -fv $(TARGET)
	