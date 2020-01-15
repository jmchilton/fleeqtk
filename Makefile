CC=gcc
CFLAGS=-g -Wall -O2 -Wno-unused-function

all:fleeqtk

fleeqtk:fleeqtk.c khash.h kseq.h
		$(CC) $(CFLAGS) fleeqtk.c -o $@ $(LDFLAGS) -lz -lm

clean:
		rm -fr gmon.out *.o ext/*.o a.out fleeqtk trimadap *~ *.a *.dSYM session*
