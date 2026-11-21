CFLAGS += -Wall
OBJS = echo.o

myecho: $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $(OBJS)

clean:
	rm -f myecho $(OBJS)
