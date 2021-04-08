CC			=	gcc
CPPFLAGS	=	-I$(BREW_DIR)/include
CFLAGS		=	-W -Wall -Wextra -Werror
LDFLAGS		=	-L$(BREW_DIR)/lib -lcriterion

SRC			=	$(wildcard src/*.c)
OBJ			=	$(SRC:.c=.o)

TARGET		=	./vx.exe

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
