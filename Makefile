prog:=TG
comp:=gcc
flags:=-Wall
tflags:=-I test -Wall
dir.o:=build/src
tdir.o:=build/test
dir.c:=src
tdir.c:=test
.PHONY:clean test

All: test

test:$(tdir.o)/tg_test.o $(tdir.o)/TG_test.o $(tdir.o)/main.o
	$(comp) $(tdir.o)/tg_test.o $(tdir.o)/TG_test.o $(tdir.o)/main.o -o bin/$(prog)-test

$(tdir.o)/tg_test.o:
	$(comp) $(flags) -c $(tdir.c)/tg_test.c -o $(tdir.o)/tg_test.o

$(tdir.o)/TG_test.o:
	$(comp) $(flags) -c $(tdir.c)/TG_test.c -o $(tdir.o)/TG_test.o

$(tdir.o)/main.o:
	$(comp) $(flags) -c $(tdir.c)/main.c -o $(tdir.o)/main.o


