
rem set INC_DIR_SOCKET=socket\src
rem set GCC_FLAGS=-I %INC_DIR_SOCKET%

g++ -I socket\src -I base64 -c webserver.cpp
g++ -I socket\src           -c main.cpp
g++                         -c stdHelpers.cpp
g++                         -c UrlHelper.cpp
g++ -I socket\src           -c socket\src\Socket.cpp -o Socket.o
g++                         -c base64\base64.cpp     -o base64.o


g++ webserver.o base64.o main.o stdHelpers.o UrlHelper.o Socket.o -lwsock32 -o WebServer.exe
