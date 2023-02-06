LIB = ar rcs
RM = rm -f

CC = gcc
CFLAGS = -Wall -Wextra -Werror

NAME = libft.a
SRC = ft_bzero.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c \
ft_isprint.c ft_memcpy.c ft_memmove.c ft_memset.c ft_strlen.c ft_tolower.c \
ft_toupper.c ft_strlcpy.c ft_strlcat.c ft_atoi.c ft_strchr.c ft_strrchr.c ft_strnstr.c \
ft_strncmp.c ft_memchr.c ft_memcmp.c ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c \
ft_strtrim.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_strmapi.c \
ft_striteri.c ft_itoa.c ft_split.c
OBJ = $(SRC:.c=.o)
INCLUDE = libft.h

BONUS_SRC = ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c \
ft_lstadd_back_bonus.c ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c
BONUS_OBJ = $(BONUS_SRC:.c=.o)
					
all: $(NAME)

$(NAME): $(OBJ)
	$(LIB) $(NAME) $(OBJ)

bonus: $(OBJ) $(BONUS_OBJ)
	$(LIB) $(NAME) $(BONUS_OBJ) $(OBJ)

clean:
	$(RM) $(OBJ) $(BONUS_OBJ)
fclean: clean
	$(RM) $(NAME)
re: fclean all

rebonus: fclean bonus

.PHONY: all bonus clean fclean re rebonus
