yess: decodeStage.o dump.o executeStage.o fetchStage.o main.o memory.o memoryStage.o registers.o tools.o writebackStage.o
	gcc -g decodeStage.o dump.o executeStage.o fetchStage.o main.o memory.o memoryStage.o registers.o tools.o writebackStage.o -o yess

decodeStage.o: decodeStage.h tools.h
	gcc -g -c decodeStage.c -o decodeStage.o

dump.o: decodeStage.h dump.h executeStage.h fetchStage.h memory.h memoryStage.h registers.h writebackStage.h
	gcc -g -c dump.c -o dump.o

executeStage.o: executeStage.h tools.h
	gcc -g -c executeStage.c -o executeStage.o

fetchStage.o: fetchStage.h tools.h
	gcc -g -c fetchStage.c -o fetchStage.o

main.o: main.c tools.h memory.h dump.h
	gcc -g -c main.c -o main.o 

memory.o: memory.h tools.h
	gcc -g -c memory.c -o memory.o 

memoryStage.o: memoryStage.h tools.h
	gcc -g -c memoryStage.c -o memoryStage.o 

registers.o: registers.h tools.h
	gcc -g -c registers.c -o registers.o 

tools.o: tools.h
	gcc -g -c tools.c -o tools.o

writebackStage.o: writebackStage.h tools.h
	gcc -g -c writebackStage.c -o writebackStage.o

clean:
	rm -f *.o
