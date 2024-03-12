NAME        :=            libft.a
CC          :=            clang
CFLAGS      :=            -Wall -Wextra -Werror 

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

INCS = libft.h
INCS_DIR = ./

.c.o: $(INCS)
	$(CC) $(CFLAGS) -c $< -o $(<:.c=.o) -I $(INCS_DIR)

$(NAME):	$(OBJ)
			ar rcs $(NAME) $(OBJ)

all:		$(NAME)

bonus:		$(BONUS_OBJ)
			ar rcs $(NAME) $(BONUS_OBJ)

clean:
			rm -f $(OBJ) $(BONUS_OBJ)

fclean:		clean
			rm -f $(NAME)

re:			fclean all

.PHONY:		all bonus clean fclean re


