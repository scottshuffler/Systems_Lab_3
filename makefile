yess: decodeStage.o dump.o executeStage.o fetchStage.o main.o memory.o memoryStage.o registers.o tools.o writebackStage.o
	gcc -g yess.o decodeStage.o dump.o executeStage.o fetchStage.o main.o memory.o memoryStage.o registers.o tools.o writebackStage.o -o yess
decodeStage.o: decodeStage.h
	gcc -g -c decodeStage.c -o decodeStage.o
dump.o: dump.h
	gcc -g -c dump.c -o dump.o
executeStage.o: executeStage.h
	gcc -g -c executeStage.c -o executeStage.o
fetchStage.o: fetchStage.h
	gcc -g -c fetchStage.c -o fetchStage.o
main.o: main.h
	gcc -g -c main.c -o main.o 
memory.o: memory.h
	gcc -g -c memory.c -o memory.o 
memoryStage.o: memoryStage.h
	gcc -g -c memoryStage.c -o memoryStage.o 
registers.o: registers.h
	gcc -g -c registers.c -o registers.o 
tools.o: tools.h
	gcc -g -c tools.c -o tools.o
writebackStage.o: writebackStage.h
	gcc -g -c writebackStage.c -o writebackStage.o
yess.o: yess.h
	gcc -g -c yess.c -o yess.o
clean:
	rm -f *.o
