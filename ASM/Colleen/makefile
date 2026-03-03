NAME = Colleen
SRC = Colleen.s
OBJ = $(SRC:.s=.o)
NASM = nasm
NFLAGS = -f elf64
CC = gcc
CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(NAME)

%.o: %.s
	$(NASM) $(NFLAGS) $< -o $@

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re