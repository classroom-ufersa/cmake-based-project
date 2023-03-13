# define the C compiler to use
CC = gcc

# define any compile-time flags
CFLAGS = -Wall -g

# define any directories containing header files other than /usr/include
#
INCLUDES = -I/usr/local/include

# define library paths in addition to /usr/lib
#   if I wanted to include libraries not in /usr/lib I'd specify
#   their path using -Lpath, something like:
#
LFLAGS = -L/usr/local/lib

# define any libraries to link into executable:
#   if I wanted to include libraries not in /usr/lib I'd specify
#   their name using -lname, something like:
#
LIBS = -lm

# define the C source files
SRCS = main.c

# define the C object files
#
# This uses Suffix Replacement within a macro:
#   $(name:string1=string2)
# The macro `name' is expanded and the resulting string
# has all occurrences of `string1' replaced by `string2'.
#

OBJS = $(SRCS:.c=.o)

all:
	$(CC) $(CFLAGS) $(INCLUDES) -c $(SRCS)
	$(CC) $(CFLAGS) $(INCLUDES) $(LFLAGS) -o main $(OBJS) $(LIBS)

clean:
	$(RM) *.o *~ main

