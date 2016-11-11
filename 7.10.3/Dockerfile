FROM imvu/alpine-ghc-base:7.10.3

COPY stack.yaml /root/.stack/global-project/stack.yaml

RUN : "Layer 3: install stack" && \
    apk --update add sqlite-dev gmp-dev alpine-sdk xz curl file gmp openssh openssl zlib-dev strace autoconf pcre-dev ncurses-dev libcap-dev && \
    cabal update && \
    cabal install --global stack && \
    stack setup && \
    : Clean up to keep the image small && \
    rm -rf /root/.cabal

COPY groupadd useradd usermod groupmod /usr/sbin/



RUN apk update && \
    apk add stack mariadb-dev ncurses-static
CMD ["bash"]
