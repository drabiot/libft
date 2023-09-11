# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tchartie <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/09/11 18:05:50 by tchartie          #+#    #+#              #
#    Updated: 2023/09/11 18:05:50 by tchartie         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc												#Compilation
CFLAGS = -Wall -Wextra -Werror							#Flags for compilation
GFLAGS = $(CFLAGS) -g									#Flag for gdb or valgrind
NAME = libft											#Name of lib
SRC = ft_strlen.c ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_toupper.c ft_tolower.c
INCLUDE = libft.h										#Include headers
OBJS = $(SRC:.c=.o)										#Change .c to .o

all : $(NAME)

$(NAME): $(OBJS)
	$(CC) -o $(NAME) $(OBJS)

%.o : %.c
	$(CC) $(FLAGS) -c $< -o $@

clean:
	rm -rf *.o

fclean: clean
	rm -rf $(NAME)

re: fclean all
