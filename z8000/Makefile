CC=gcc
CFLAGS=-O0 -g3 -I. -std=c89 -Wno-implicit-int -Wno-implicit-function-declaration -Wno-return-mismatch -Wno-int-conversion

.PHONY: all ar as8k c8k clean
all: ld8k as8k c8k cc8k

ld8k: ld8k.c a.out.h
	$(CC) $(CFLAGS) -o ld8k ld8k.c

ar: ar.c a.out.h
	$(CC) $(CFLAGS) -o $@ ar.c

as8k:
	$(MAKE) -C $@

c8k:
	$(MAKE) -C $@

cc8k: cc8k.c
	$(CC) $(CFLAGS) -o $@ cc8k.c

install:
	cp ldz8 /usr/local/bin
	cp az8/az8 /usr/local/bin
	cp cz8/cz8 /usr/local/bin

clean:
	rm -f ld8k cc8k ar
	make -C as8k clean
	make -C c8k clean
