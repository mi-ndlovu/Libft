# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mndlovu <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/06/02 17:14:07 by mndlovu           #+#    #+#              #
#    Updated: 2017/06/10 17:18:01 by mndlovu          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CFLAGS = -Wall -Wextra -Werror

SRC = ft_strlen.c ft_strcmp.c ft_strncmp.c ft_atoi.c ft_strcpy.c \
	  ft_strncpy.c ft_strdup.c ft_strcat.c ft_strstr.c ft_strchr.c \
	  ft_strrchr.c ft_strnstr.c ft_strncat.c ft_strlcat.c \
	  ft_tolower.c ft_toupper.c ft_memset.c ft_memcpy.c ft_memccpy.c \
	  ft_memmove.c ft_memchr.c ft_memcmp.c ft_bzero.c ft_isprint.c \
	  ft_isascii.c ft_isalnum.c ft_isdigit.c ft_isalpha.c \
	  ft_putchar.c ft_putstr.c ft_putendl.c ft_putnbr.c ft_strclr.c \
	  ft_memalloc.c ft_memdel.c ft_strnew.c ft_strdel.c ft_strequ.c \
	  ft_strnequ.c ft_strjoin.c ft_putchar_fd.c ft_putstr_fd.c \
	  ft_putendl_fd.c ft_strrev.c ft_int_len.c ft_striter.c \
	  ft_striteri.c ft_strmap.c ft_strmapi.c ft_strsub.c ft_strtrim.c \
	  ft_itoa.c ft_abs.c ft_putnbr_fd.c ft_strsplit.c 

all: $(NAME)

$(NAME):
	gcc $(CFLAGS) -c $(SRC)
	ar rc $(NAME) *.o
	ranlib $(NAME)

clean:
	rm -f *.o

fclean: clean
	rm -f $(NAME)

re: fclean all