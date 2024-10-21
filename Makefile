# Název výsledného souboru
TARGET = winapp

# Cross-kompilátor a flagy
CC = x86_64-w64-mingw32-gcc
CFLAGS = -Wall -g

# Cílový soubor
SRC = main.c

# Linkování knihovny GDI32
LIBS = -lgdi32

# Výchozí cíl
all: $(TARGET)

# Pravidlo pro kompilaci aplikace
$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET).exe $(SRC) $(LIBS)

# Pravidlo pro vyčištění projektu
clean:
	rm -f $(TARGET).exe
