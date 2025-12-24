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

NAME_PROG = winkey
EXE_PROG  = $(NAME_PROG).exe

NAME_SERV = svc
EXE_SERV  = $(NAME_SERV).exe

SRC_DIR_SERV = tinky\srcs
OBJ_DIR_SERV = tinky\.objs

SRC_DIR_PROG = winkey\srcs
OBJ_DIR_PROG = winkey\.objs

SRCS_PROG= \
    $(SRC_DIR_PROG)\main.c \

SRCS_SERV = \
    $(SRC_DIR_SERV)\main.c \

all: $(EXE_SERV) $(EXE_PROG)

$(EXE_SERV): $(SRCS_SERV)
	if not exist $(OBJ_DIR_SERV) mkdir $(OBJ_DIR_SERV)
	$(CC) $(CFLAGS) /Fo$(OBJ_DIR_SERV)\ /Fe$(EXE_SERV) $(SRCS_SERV)

$(EXE_PROG): $(SRCS_PROG)
	if not exist $(OBJ_DIR_PROG) mkdir $(OBJ_DIR_PROG)
	$(CC) $(CFLAGS) /Fo$(OBJ_DIR_PROG)\ /Fe$(EXE_PROG) $(SRCS_PROG)

clean:
	-del /Q $(OBJ_DIR_SERV)\*.obj 2>nul
	-del /Q $(OBJ_DIR_PROG)\*.obj 2>nul

fclean: clean
	-del /Q $(EXE_SERV) 2>nul
	-del /Q $(EXE_PROG) 2>nul

re: fclean all
