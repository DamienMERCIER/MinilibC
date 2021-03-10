##
## EPITECH PROJECT, 2021
## Makefile
## File description:
## Makefile
##

NAME	=	libasm.so

SRCS	=	src/my_strlen.asm	\
			src/my_memcpy.asm	\
			src/my_strcmp.asm	\
			src/my_strncmp.asm	\
			src/my_memset.asm	\
			src/my_strchr.asm	\
			src/my_rindex.asm	\
			src/memmove.asm	\
			src/strcasecmp.asm	\
			src/strcspn.asm	\
			src/strpbrk.asm	\
			src/strstr.asm	\

OBJS	=	$(SRCS:.asm=.o)

ASMF	=	-fPIC -shared

CC		=	gcc

LD		=	ld

LDFLAGS	=	-shared -o

CFLAGS	=	-Wall -Wextra -Werror

CPPFLAGS	= -I include

all:	$(NAME)

$(NAME):	CFLAGS+=-fPIC
$(NAME):	$(OBJS)
			$(LD) $(LDFLAGS) $(NAME) $(OBJS)
%.o : %.asm
		nasm -f elf64 -o $@ $<

clean:
			$(RM) $(OBJS)
			$(RM) *.gcno
			$(RM) *.gcda

fclean:		clean
			$(RM) $(NAME)

re:		fclean all

.PHONY:		all clean fclean re