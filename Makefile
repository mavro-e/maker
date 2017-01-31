objects = program.o file2.o
program : $(objects)
	gcc -o program $(objects)
program.o: program.h
file2.o: program.h

.PHONY: clean
clean : 
	rm program $(objects)
