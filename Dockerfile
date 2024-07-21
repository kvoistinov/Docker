FROM archlinux/base

RUN pacman -Syu --noconfirm && pacman -S --noconfirm g++ clang

COPY main.cpp /app

WORKDIR /app

RUN g++ -Wall -O3 main.cpp -o bin

CMD ["./bin"]

