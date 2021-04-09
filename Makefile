CC			=	gcc
CPPFLAGS	=	
CFLAGS		=	-W -Wall -Wextra -Werror
LDFLAGS		=	-lcriterion

SRC			=	$(wildcard src/*.c)
OBJ			=	$(SRC:.c=.o)

NAME		=	vx
TARGET		=	./$(NAME).exe

all			:	$(TARGET)

test		:	all
			clear
			$(TARGET)

$(TARGET)	:	$(OBJ)
			$(CC) -o $@ $^ $(LDFLAGS)

clean		:
			$(RM) $(OBJ)

fclean		:	clean
			$(RM) $(TARGET)

re			:	fclean all

docker		:
			docker build -t kdridi/$(NAME) .

watch		:	docker
			docker run --name watch --rm -v $PWD:/mnt -w /mnt kdridi/$(NAME) bash -c '$HOME/.cargo/bin/watchexec --exts c,h make test'

.PHONY		:	all test clean fclean re docker watch