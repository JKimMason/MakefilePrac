# ------------------------------------
# Makefile for NotepadInC
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
# Define flags
# -------------------
SOURCES  := $(wildcard $(SRCDIR)/*.c)
INCLUDES := $(wildcard $(INCDIR)/*.h)
OBJECTS  := $(SRCS:$(SRCDIR)/%.c=$(OBJDIR)/%.o)
rm       = rm -f

# -------------------
# Name of executable
# -------------------
TARGET = $(BINDIR)/

$(TARGET): $(OBJECTS)
	@$(LINKER) $(OBJECTS) $(LFLAGS) -o $@
	@echo "Linking complete!"

$(OBJS): $(OBJDIR)/%.o : $(SRCDIR)/%.c
	@$(CC) $(CFLAGS) -c $< -o $@
	@echo "Compiled "$<" successfully!"

# -------------------
# Clean: remove all obj file
# -------------------
.PHONY: clean
clean:
	@$(rm) $(OBJECTS)
	@echo "Cleanup complete!"

# -------------------
# Clean: remove exe
# -------------------
remove: clean
	@$(rm) $(BINDIR)/$(TARGET)
	@echo "Executable removed!".PHONY: remove

# -------------------
# Cleanall: Remove obj and exe
cleanall:
	@$(rm) $(OBJECTS)
	@$(rm) $(BINDIR)/$(TARGET) 
	@echo "Obj and Executable removed!".PHONY: remove
# -------------------------------------------
