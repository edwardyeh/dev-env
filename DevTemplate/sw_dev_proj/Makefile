####### Environment Define #####################################################
SRC_DIR = ./src
INC_DIR = ./inc
OBJ_DIR = ./obj
BIN_DIR = ./bin

CC      = g++
RM		= rm
MKDIR	= C:\Users\Public\DevKit\MSYS2-x64\usr\bin\mkdir.exe
ENV     = LINUX
CFLAGS  = -D$(ENV) -m64 -I$(INCDIR)
LDFLAGS = -lm
####### Project Define #########################################################
BIN_NAME = main
################################################################################

ifeq ($(MAKECMDGOALS), debug)
    CFLAGS += -g3 -w
else
    CFLAGS += -O3 -w
endif

ifeq ($(CC), g++)
    SUFFIX = .cpp
else
    SUFFIX = .c
endif

vpath %$(SUFFIX) $(SRC_DIR)
vpath %.h        $(INC_DIR)

INCS = $(wildcard $(addsuffix /*.h, $(INC_DIR)))
SRCS = $(wildcard $(addsuffix /*$(SUFFIX), $(SRC_DIR)))
OBJS = $(addprefix $(OBJ_DIR)/, $(notdir $(SRCS:$(SUFFIX)=.o)))
BIN  = $(BIN_DIR)/$(BIN_NAME)

.PHONY: all debug clean clean_pat

all debug: $(BIN)

$(BIN): $(OBJS)
	$(MKDIR) -p $(BIN_DIR)
	$(MKDIR) -p ./result
	$(MKDIR) -p ./pat
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

$(OBJ_DIR)/%.o: %$(SUFFIX) $(INCS)
	$(MKDIR) -p $(OBJ_DIR)
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	-$(RM) -rf $(BIN_DIR)/*
	-$(RM) -rf $(OBJ_DIR)/*

clean_pat:
	-$(RM) -rf ./result/*
	-$(RM) -rf ./pat/*

