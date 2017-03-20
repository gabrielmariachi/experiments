all: 
	#g++ -c -I. hello-tp.c
	g++ -finstrument-functions -c testF.c
	g++ -o main testF.o -llttng-ust -ldl #hello-tp.o -llttng-ust -ldl

clean:
	rm main *.o

