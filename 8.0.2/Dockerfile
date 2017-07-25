FROM imvu/alpine-edge:050817

RUN apk --update add ghc --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted

RUN : "Layer 1: install dynamic dependencies" && \
    apk --update add bash sqlite-dev gmp-dev alpine-sdk xz curl file gmp openssh openssl libressl-dev zlib-dev strace autoconf pcre-dev ncurses-dev libcap-dev icu-dev icu-libs


COPY groupadd useradd usermod groupmod /usr/sbin/

RUN apk update && \
    apk add mariadb-dev ncurses-static

COPY stack-1.4.0 /usr/local/bin/stack

#RUN stack --system-ghc --local-bin-path /usr/local/bin install happy alex

CMD ["bash"]
