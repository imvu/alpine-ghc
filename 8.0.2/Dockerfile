FROM imvu/alpine-ghc-base:8.0.2

RUN : "Layer 1: install dynamic dependencies" && \
    apk --update add sqlite-dev gmp-dev alpine-sdk xz curl file gmp openssh openssl zlib-dev strace autoconf pcre-dev ncurses-dev libcap-dev

COPY groupadd useradd usermod groupmod /usr/sbin/

RUN apk update && \
    apk add mariadb-dev ncurses-static

COPY stack-1.3.2 /usr/local/bin/stack

CMD ["bash"]
