# ------------------------------------
# Makefile TEMPLATE
# ------------------------------------


# ------------------
# Compiler
# ------------------
CC       = gcc
# compiling flags here
CFLAGS   = -std=c99 -Wall -I.

# ------------------
# Linker
# ------------------
LINKER   = gcc
# linking flags here
LFLAGS   = -Wall -I. -lm

# -------------------
# Name of Directories
# -------------------
SRCDIR   = src
OBJDIR   = obj
INCDIR   = inc
BINDIR   = bin

# -------------------
# Source Directory
# -------------------
SRCS=$(SRCDIR)/main.c

# -------------------
# Define flags
# -------------------
SOURCES  := $(wildcard $(SRCDIR)/*.c)
INCLUDES := $(wildcard $(INCDIR)/*.h)
OBJS  := $(SRCS:$(SRCDIR)/%.c=$(OBJDIR)/%.o)
rm       = rm -f

# -------------------
# Name of executable
# -------------------
TARGET = $(BINDIR)/main

all: $(TARGET)

$(OBJS): $(OBJDIR)/%.o : $(SRCDIR)/%.c
	@$(CC) $(CFLAGS) -c $< -o $@
	@echo "Compiled "$<" successfully!"

$(TARGET): $(OBJS) 
	${CC} ${CFLAGS} -o $@ $(OBJS)
	@echo "Linking complete!"

# -------------------
# Clean: remove all obj file
# -------------------
.PHONY: remove
clean:
	@$(rm) $(OBJS)
	@echo "Obj removed!"

# -------------------
# Clean: remove exe
# -------------------
remove: clean
	@$(rm) $(BINDIR)/$(TARGET)
	@echo "Executable removed!".PHONY: remove

# -------------------
# Cleanall: Remove obj and exe
cleanall:
	@$(rm) $(OBJS)
	@$(rm) $(BINDIR)/$(TARGET) 
	@echo "Obj and Executable removed!".PHONY: remove
# -------------------------------------------
