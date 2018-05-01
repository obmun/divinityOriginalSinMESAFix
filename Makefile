CC=gcc

all: divos-hack.so
divos-hack.so: divos-hack.c
	$(CC) -s -O2 -shared -fPIC -o $@ $< -ldl
