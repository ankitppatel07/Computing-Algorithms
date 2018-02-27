all: apatel72_phone_directory

apatel72_phone_directory:	apatel72_phone_directory.o
	gcc -g apatel72_phone_directory.o -o apatel72_phone_directory.out

apatel72_phone_directory.o: apatel72_phone_directory.c   
	gcc -g -c apatel72_phone_directory.c

checkmem:	apatel72_phone_directory
	valgrind ./apatel72_phone_directory.out $(arg1)

run:	apatel72_phone_directory
	./apatel72_phone_directory.out $(arg1)

clean:
	rm -rf *.o apatel72_phone_directory.out 
