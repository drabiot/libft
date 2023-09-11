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

CC = gcc							#Compilation
CFLAGS = -Wall -Wextra -Werror		#Flags for compilation
GFLAGS = $(CFLAGS) -g				#Flag for gdb or valgrind
NAME = libft						#Name of lib
SRC =								#Include source files
INCLUDE =							#Include headers
OBJS = $(SRC:.c=.o)					#Change .c to .o

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
