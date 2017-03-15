FROM imvu/alpine-edge:021417

RUN apk --update add ghc --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted

RUN : "Layer 1: install dynamic dependencies" && \
    apk --update add bash sqlite-dev gmp-dev alpine-sdk xz curl file gmp openssh openssl zlib-dev strace autoconf pcre-dev ncurses-dev libcap-dev

COPY groupadd useradd usermod groupmod /usr/sbin/

RUN apk update && \
    apk add mariadb-dev ncurses-static

COPY stack-1.4.0 /usr/local/bin/stack

CMD ["bash"]
