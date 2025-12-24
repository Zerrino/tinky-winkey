# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zerrino <zerrino@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/06/03 12:08:43 by alexafer          #+#    #+#              #
#    Updated: 2025/12/02 16:43:19 by alexafer         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC     = cl
CFLAGS = /nologo /Wall /WX /Iincludes

NAME = tinky-winkey
EXE  = $(NAME).exe

SRC_DIR = srcs
OBJ_DIR = .objs

SRCS = \
	$(SRC_DIR)\main.c

OBJS = \
	$(OBJ_DIR)\main.obj

all: $(EXE)

$(EXE): $(OBJS)
	$(CC) $(CFLAGS) /Fe$(EXE) $(OBJS)

$(OBJ_DIR)\main.obj: $(SRC_DIR)\main.c
	if not exist $(OBJ_DIR) mkdir $(OBJ_DIR)
	$(CC) $(CFLAGS) /c /Fo$(OBJ_DIR)\main.obj $(SRC_DIR)\main.c

clean:
	-del /Q $(OBJS) 2>nul

fclean: clean
	-del /Q $(EXE) 2>nul

re: fclean all
