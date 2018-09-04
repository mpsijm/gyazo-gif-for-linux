TARGET := byzanz-get-rect

CFLAGS += -Wall -Wno-deprecated-declarations
CFLAGS += `pkg-config --cflags gtk+-3.0`
LDFLAGS += `pkg-config --libs gtk+-3.0`

all: $(TARGET)

$(TARGET): byzanz-get-rect.c
	$(CC) $(CFLAGS) -o $@ $< $(LDFLAGS)

clean:
	rm $(TARGET)

.PHONY: all clean
