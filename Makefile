CC=gcc
CFLAGS=-Wall -Wextra -std=c11

TARGETS=httpclient httpserver httpserver_fork multi_service_server

all: $(TARGETS)

httpclient: httpclient.c
	$(CC) $(CFLAGS) -o httpclient httpclient.c

httpserver: httpserver.c
	$(CC) $(CFLAGS) -o httpserver httpserver.c

httpserver_fork: httpserver_fork.c
	$(CC) $(CFLAGS) -o httpserver_fork httpserver_fork.c

multi_service_server: multi_service_server.c
	$(CC) $(CFLAGS) -o multi_service_server multi_service_server.c

clean:
	rm -f $(TARGETS)
