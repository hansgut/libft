################################################################################
#                                     CONFIG                                   #
################################################################################

NAME        :=            libft.a
CC          :=            cc
CFLAGS      :=            -Wall -Wextra -Werror 
################################################################################
#                                 PROGRAM'S SRCS                               #
################################################################################

SRC         :=            ft_strnstr.c \
                          ft_isdigit.c \
                          ft_strlcpy.c \
                          ft_strlen.c \
                          ft_memcmp.c \
                          ft_strchr.c \
                          ft_bzero.c \
                          ft_isascii.c \
                          ft_memcpy.c \
                          ft_isprint.c \
                          ft_toupper.c \
                          ft_strrchr.c \
                          ft_isalpha.c \
                          ft_memchr.c \
                          ft_memset.c \
                          ft_strncmp.c \
                          ft_memmove.c \
                          ft_strlcat.c \
                          ft_calloc.c \
                          ft_strdup.c \
                          ft_atoi.c \
                          ft_isalnum.c \
                          ft_tolower.c \
                          ft_strjoin.c \
                          ft_substr.c \
                          ft_striteri.c \
                          ft_strmapi.c \
                          ft_itoa.c \
                          ft_split.c \
                          ft_strtrim.c \
                          ft_putchar_fd.c \
                          ft_putstr_fd.c \
                          ft_putendl_fd.c \
                          ft_putnbr_fd.c
                          
OBJ         := $(SRC:.c=.o)

BONUS_SRC   :=            ft_lstnew.c \
                          ft_lstadd_front.c \
                          ft_lstsize.c \
                          ft_lstlast.c \
                          ft_lstadd_back.c \
                          ft_lstdelone.c \
                          ft_lstclear.c \
                          ft_lstiter.c \
                          ft_lstmap.c

BONUS_OBJ   := $(BONUS_SRC:.c=.o)

.c.o:
	${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

################################################################################
#                                  Makefile  objs                              #
################################################################################


CLR_RMV		:= \033[0m
RED		    := \033[1;31m
GREEN		:= \033[1;32m
YELLOW		:= \033[1;33m
BLUE		:= \033[1;34m
CYAN 		:= \033[1;36m
RM		    := rm -f

${NAME}:	${OBJ}
			@echo "$(GREEN)Compilation ${CLR_RMV}of ${YELLOW}$(NAME) ${CLR_RMV}..."
			ar rcs ${NAME} ${OBJ}
			ranlib ${NAME}
			@echo "$(GREEN)$(NAME) created[0m ✔️"

all:		${NAME}

bonus:		${OBJ} ${BONUS_OBJ}
			@echo "$(GREEN)Compilation ${CLR_RMV}of ${YELLOW}$(NAME) ${CLR_RMV}..."
			ar rcs ${NAME} ${BONUS_OBJ}
			ranlib ${NAME}

clean:
			@ ${RM} *.o */*.o */*/*.o
			@ echo "$(RED)Deleting $(CYAN)$(NAME) $(CLR_RMV)objs ✔️"

fclean:		clean
			@ ${RM} ${NAME}
			@ echo "$(RED)Deleting $(CYAN)$(NAME) $(CLR_RMV)binary ✔️"

re:			fclean all

.PHONY:		all clean fclean re


