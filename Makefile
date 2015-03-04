CC=	clang
CFLAGS=	-Weverything -Wno-padded
SRC=	list-draft.c
TARGET=	test-list

all:
	${CC} ${CFLAGS} ${SRC} -o ${TARGET}

test:
	${CC} ${CFLAGS} ${SRC} -o ${TARGET}
	./${TARGET}

debug:
	lldb ./a.out