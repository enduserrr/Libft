# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: asalo <asalo@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/23 14:37:45 by asalo             #+#    #+#              #
#    Updated: 2023/11/17 11:27:27 by asalo            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS   		= ft_isprint.c ft_putendl_fd.c ft_strlcat.c ft_substr.c \
			ft_atoi.c ft_itoa.c ft_putnbr_fd.c ft_strlcpy.c \
			ft_tolower.c ft_bzero.c ft_memchr.c ft_putstr_fd.c \
			ft_strlen.c ft_toupper.c ft_calloc.c ft_memcmp.c \
			ft_split.c ft_strmapi.c ft_isalnum.c ft_memcpy.c \
			ft_strchr.c ft_strncmp.c ft_isalpha.c ft_memmove.c \
			ft_strdup.c ft_strnstr.c ft_isascii.c ft_memset.c \
			ft_striteri.c ft_strrchr.c ft_isdigit.c ft_putchar_fd.c \
			ft_strjoin.c ft_strtrim.c

OBJS		= $(SRCS:.c=.o)

SRCSB  		= ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c \
       		ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c \

OBJSB		= $(SRCSB:.c=.o)

NAME		= libft.a
AR			= ar rc
CC			= cc
CFLAGS		= -Wall -Wextra -Werror
RM			= rm -f

.c.o:
			${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

${NAME}: 	${OBJS}
					${AR} ${NAME} ${OBJS}

all:		${NAME}

bonus:		$(NAME) $(OBJSB)
					$(AR) $(NAME) $(OBJSB)
					
clean:
			${RM} ${OBJS} ${OBJSB}

fclean: 	clean
					${RM} ${NAME} ${OBJSB} 

re: 		fclean all

.PHONY  :		all bonus clean fclean re