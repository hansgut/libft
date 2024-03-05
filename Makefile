################################################################################
#                                     CONFIG                                   #
################################################################################

NAME        := libft.a
CC        := cc
FLAGS    := -Wall -Wextra -Werror 
################################################################################
#                                 PROGRAM'S SRCS                               #
################################################################################

SRCS        :=      srcs/ft_strnstr.c \
                          srcs/ft_isdigit.c \
                          srcs/ft_strlcpy.c \
                          srcs/ft_strlen.c \
                          srcs/ft_memcmp.c \
                          srcs/ft_strchr.c \
                          srcs/ft_bzero.c \
                          srcs/ft_isascii.c \
                          srcs/ft_memcpy.c \
                          srcs/ft_isprint.c \
                          srcs/ft_toupper.c \
                          srcs/ft_strrchr.c \
                          srcs/ft_isalpha.c \
                          srcs/ft_memchr.c \
                          srcs/ft_memset.c \
                          srcs/ft_strncmp.c \
                          srcs/ft_memmove.c \
                          srcs/ft_strlcat.c \
                          srcs/ft_calloc.c \
                          srcs/ft_strdup.c \
                          srcs/ft_atoi.c \
                          srcs/ft_isalnum.c \
                          srcs/ft_tolower.c \
                          srcs/ft_strjoin.c \
                          srcs/ft_substr.c \
                          srcs/ft_striteri.c \
                          srcs/ft_strmapi.c \
                          srcs/ft_itoa.c \
                          srcs/ft_split.c \
                          srcs/ft_strtrim.c \
                          srcs/ft_putchar_fd.c \
                          srcs/ft_putstr_fd.c \
                          srcs/ft_putendl_fd.c \
                          srcs/ft_putnbr_fd.c
                          
OBJS        := $(SRCS:.c=.o)

BONUS_SRCS  :=            srcs/ft_lstnew.c \
                          srcs/ft_lstadd_front.c \
                          srcs/ft_lstsize.c \
                          srcs/ft_lstlast.c \
                          srcs/ft_lstadd_back.c \
                          srcs/ft_lstdelone.c \
                          srcs/ft_lstclear.c \
                          srcs/ft_lstiter.c \
                          srcs/ft_lstmap.c

BONUS_OBJS  := $(BONUS_SRCS:.c=.o)

.c.o:
	${CC} ${FLAGS} -c $< -o ${<:.c=.o}

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

${NAME}:	${OBJS}
			@echo "$(GREEN)Compilation ${CLR_RMV}of ${YELLOW}$(NAME) ${CLR_RMV}..."
			ar rcs ${NAME} ${OBJS}
			ranlib ${NAME}
			@echo "$(GREEN)$(NAME) created[0m ✔️"

all:		${NAME}

bonus:		${BONUS_OBJS}
			@echo "$(GREEN)Compilation ${CLR_RMV}of ${YELLOW}$(NAME) ${CLR_RMV}..."
			ar rcs ${NAME} ${BONUS_OBJS}
			ranlib ${NAME}

clean:
			@ ${RM} *.o */*.o */*/*.o
			@ echo "$(RED)Deleting $(CYAN)$(NAME) $(CLR_RMV)objs ✔️"

fclean:		clean
			@ ${RM} ${NAME}
			@ echo "$(RED)Deleting $(CYAN)$(NAME) $(CLR_RMV)binary ✔️"

re:			fclean all

.PHONY:		all clean fclean re


