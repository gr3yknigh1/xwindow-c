CC = clang
CFLAGS = -g

INCLS =
LDFLAGS =-lX11 -lGL -lGLU

default: all

all: main

main: main.o
	$(CC) $(CFLAGS) $< -o $@ $(INCLS) $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@ $(INCLS)

clean:
	rm *.o
	rm main
