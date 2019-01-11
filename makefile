DEBUG=-g
CC=g++ ${DEBUG}
PROJECT_DIR=${HOME}/projects/c++/hello-world
LIB_DIR=${PROJECT_DIR}/lib
OBJ_DIR=${PROJECT_DIR}/obj
INCLUDE_DIR=${PROJECT_DIR}/include
SRC_DIR=${PROJECT_DIR}/src


default: greeter

all: greeter hello 

greeter: ${SRC_DIR}/greeter.cpp
	${CC} -c -o ${OBJ_DIR}/$@.o -I${INCLUDE_DIR} ${SRC_DIR}/$@.cpp

hello: ${SRC_DIR}/hello.cpp
	${CC} -o $@ -I${INCLUDE_DIR}  ${OBJ_DIR}/greeter.o ${SRC_DIR}/$@.cpp



