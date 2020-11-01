####### Environment Define #####################################################
CXX_SRC_DIR = ./src
C_SRC_DIR   = ./src
INC_DIR     = ./inc
OBJ_DIR     = ./obj
BIN_DIR     = ./bin

CC      = g++
RM		= rm
MKDIR	= /c/Users/Public/DevKit/MSYS2-x64/usr/bin/mkdir.exe
ENV     = LINUX
CFLAGS  = -D$(ENV) -m64 $(foreach var, $(INC_DIR), -I$(var))
LDFLAGS = -lm
####### Project Define #########################################################
BIN_NAME = main
################################################################################

ifeq ($(MAKECMDGOALS), debug)
    CFLAGS += -g3 -w
else
    CFLAGS += -O3 -w
endif

vpath %.h   $(INC_DIR)
vpath %.cpp $(CXX_SRC_DIR)
vpath %.c   $(C_SRC_DIR)

INCS     = $(foreach var, $(INC_DIR), $(wildcard $(addsuffix /*.h, $(var))))
CPP_SRCS = $(foreach var, $(CXX_SRC_DIR), $(wildcard $(addsuffix /*.cpp, $(var))))
CPP_OBJS = $(addprefix $(OBJ_DIR)/cpp/, $(notdir $(CPP_SRCS:.cpp=.o)))
C_SRCS   = $(foreach var, $(C_SRC_DIR), $(wildcard $(addsuffix /*.c, $(var))))
C_OBJS   = $(addprefix $(OBJ_DIR)/c/, $(notdir $(C_SRCS:.c=.o)))
BIN      = $(BIN_DIR)/$(BIN_NAME)

.PHONY: all debug clean clean_pat

all debug: $(BIN)

$(BIN): $(CPP_OBJS) $(C_OBJS)
	$(MKDIR) -p $(BIN_DIR)
	$(MKDIR) -p ./result
	$(MKDIR) -p ./pat
	$(CC) -o $@ $^ $(LDFLAGS) 

$(OBJ_DIR)/cpp/%.o: %.cpp $(INCS)
	$(MKDIR) -p $(OBJ_DIR)/cpp
	$(CC) $(CFLAGS) -c -o $@ $<

$(OBJ_DIR)/c/%.o: %.c $(INCS)
	$(MKDIR) -p $(OBJ_DIR)/c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	-$(RM) -rf $(BIN_DIR)/*
	-$(RM) -rf $(OBJ_DIR)/*

clean_pat:
	-$(RM) -rf ./result/*
	-$(RM) -rf ./pat/*

