CC			=	gcc
CFLAGS		=	-W -Wall -Wextra -Werror
LDFLAGS		=	

SRC			=	$(wildcard src/*.c)
OBJ			=	$(SRC:.c=.o)

TARGET		=	./vx.exe

all			:	$(TARGET)

watch		:	all
			$(TARGET)

$(TARGET)	:	$(OBJ)
			$(CC) -o $@ $^ $(LDFLAGS)

clean		:
			$(RM) $(OBJ)

fclean		:	clean
			$(RM) $(TARGET)

re			:	fclean all