C_FILES := $(wildcard *.c)
OBJ_FILES := $(patsubst %.c,%.o,$(C_FILES))


all: dusty

install: dusty
	cp dusty ..

clean:
	rm $(OBJ_FILES)
	rm dusty

%.o: %.c
	$(CC) -c $<

rsp: $(OBJ_FILES)
	$(CC) -o $@ $(OBJ_FILES)
