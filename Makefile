#
# In order to execute this "Makefile" just type "make"
#

OBJS	 = HelloWorld.o
SOURCE	 = *.cpp
OUT	 = hello
CC	 = g++
FLAGS	 = -g -c -Wall
LFLAGS	 = 
YFLAGS   =
# LFLAGS - Extra flags for lex
# YFLAGS - Extra flags for yacc
# -g option enables debugging mode
# -c flag generates object code for separate files

##########################################
#    Don't touch anything below this     #
##########################################
all: $(OBJS)
	$(CC) -g $(OBJS) -o $(OUT) $(LFLAGS)
	# uncomment below line if you have doxygen support to generate documentation
	# doxygen GameDocs_Configs
	echo "Done"

# create/compile the individual files >>separately<<
HelloWorld.o: HelloWorld.cpp
	$(CC) $(FLAGS) HelloWorld.cpp -std=c++11 -o HelloWorld.o


# clean up
clean:
	rm -f $(OBJS) $(OUT)
