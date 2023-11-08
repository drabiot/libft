# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tchartie <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/09/11 18:05:50 by tchartie          #+#    #+#              #
#    Updated: 2023/11/08 16:06:25 by tchartie         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc								#Compilation
CFLAGS = -Wall -Wextra -Werror		#Flags for compilation
GFLAGS = $(CFLAGS) -g				#Flag for gdb or valgrind
NAME = libft.a						#Name of lib
SRCS = ft_isalpha.c \
	ft_isdigit.c \
	ft_isalnum.c \
	ft_isascii.c \
	ft_isprint.c \
	ft_strlen.c \
	ft_memset.c \
	ft_bzero.c \
	ft_memcpy.c \
	ft_memmove.c \
	ft_strlcpy.c \
	ft_strlcat.c \
	ft_toupper.c \
	ft_tolower.c \
	ft_strchr.c \
	ft_strrchr.c \
	ft_strncmp.c \
	ft_memchr.c \
	ft_memcmp.c \
	ft_strnstr.c \
	ft_atoi.c \
	ft_calloc.c \
	ft_strdup.c \
	ft_substr.c \
	ft_strjoin.c \
	ft_strtrim.c \
	ft_split.c \
	ft_itoa.c \
	ft_strmapi.c \
	ft_striteri.c \
	ft_putchar_fd.c \
	ft_putstr_fd.c \
	ft_putendl_fd.c \
	ft_putnbr_fd.c
BONUS_SRCS = ft_lstnew.c \
	ft_lstadd_front.c \
	ft_lstadd_back.c \
	ft_lstsize.c \
	ft_lstlast.c \
	ft_lstdelone.c \
	ft_lstclear.c \
	ft_lstiter.c \
	ft_lstmap.c
OBJS = $(SRCS:.c=.o)				#Change madatory .c to .o
BONUS_OBJS = $(BONUS_SRCS:.c=.o)	#Change bonus part .c to .o

all : $(NAME)

$(NAME) : $(OBJS)
	ar -rcs $(NAME) $(OBJS)

%.o : %.c libft.h
	$(CC) $(CFLAGS) -c $< -o $@

clean :								#Rule clean (Delete all .o)
	rm -rf $(OBJS) $(BONUS_OBJS)

fclean : clean						#Rule fclean (Delete all .o & libft.a)
	rm -rf $(NAME)

re : fclean all						#Rule re (Delete all .o & libft.a, Create all .o and libft.a)

bonus : $(OBJS) $(BONUS_OBJS)		#Rule bonus (Compile Bonus part functions)
	ar -rcs $(NAME) $(OBJS) $(BONUS_OBJS)
	
.PHONY : all bonus clean fclean re
