OBJECTS=main.o

all: build

build: $(OBJECTS)
	gcc -Wall -Wextra -Werror -pedantic \
		-I /usr/include/bcc/compat \
		$(OBJECTS) -o chowncount \
		-lbcc

.phony: clean

clean:
	rm -vf chowncount
	rm -vf *.o
