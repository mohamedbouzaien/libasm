# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mbouzaie <mbouzaie@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/16 15:11:53 by mbouzaie          #+#    #+#              #
#    Updated: 2021/04/17 19:56:01 by mbouzaie         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME =		libasm.a

SRCS =		ft_strlen.s \
			ft_write.s \
			ft_read.s \
			ft_strcmp.s \
			ft_strcpy.s \
			ft_strdup.s

OBJS =		$(SRCS:.s=.o)

%.o	:		%.s
			nasm -f macho64 $< -o $@

$(NAME) :	$(OBJS)
			ar rcs $(NAME) $(OBJS)

all:		$(NAME)

try:		all
			gcc -Wall -Wextra -Werror -I./libasm.h libasm.a main.c -o try
			./try

clean:		
			/bin/rm $(OBJS)

fclean:		clean
			@/bin/rm $(NAME)
			@/bin/rm try

re:			fclean all
