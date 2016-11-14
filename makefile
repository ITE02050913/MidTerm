all: server thread

client: client.o
	gcc -o client client.o

server: server.o doprocessing.o
	gcc -o server server.o doprocessing.o


thread:	thread.o handler.o
	gcc -o thread thread.o handler.o -l pthread

clean:
	/bin/rm -rf server client handler *.o
