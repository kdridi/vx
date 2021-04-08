CC			=	gcc
CFLAGS		=	-W -Wall -Wextra -Werror
LDFLAGS		=	

SRC			=	$(wildcard src/*.c)
OBJ			=	$(SRC:.c=.o)

TARGET		=	./vx.exe

all			:	$(TARGET)

test		:	all
			clear
			$(TARGET)

watch		:
			@watchexec --exts c,h make -s test

$(TARGET)	:	$(OBJ)
			$(CC) -o $@ $^ $(LDFLAGS)

clean		:
			$(RM) $(OBJ)

fclean		:	clean
			$(RM) $(TARGET)

re			:	fclean all