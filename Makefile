CC=gcc
CFLAGS=-Wall -g
RR_EXEC=RR_inital
SJF_EXEC=SJF_inital

all:$(RR_EXEC) $(SJF_EXEC)

$(RR_EXEC): $(RR_EXEC).c
	$(CC) $(CFLAGS) -o $(RR_EXEC) $(RR_EXEC).c

$(SJF_EXEC): $(SJF_EXEC).c
	$(CC) $(CFLAGS) -o $(SJF_EXEC) $(SJF_EXEC).c

run_rr: $(RR_EXEC)
	./$(RR_EXEC)

run_sjf: $(SJF_EXEC)
	./$(SJF_EXEC)