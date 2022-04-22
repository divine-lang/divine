CC = gcc
CFLAGS = -O4 -I src/mpc
PROGRAM = divine
DEPSMAIN = mpc.so

all: $(PROGRAM)

$(PROGRAM): $(DEPSMAIN)
	$(CC) $(DEPSMAIN) src/divine/*.c $(CFLAGS) -o $(PROGRAM)

mpc.so: src/mpc/mpc.c src/mpc/mpc.h
	$(CC) src/mpc/*.c $(CFLAGS) -o mpc.so -fPIC -shared
