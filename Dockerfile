FROM imvu/alpine-ghc-base:7.10

RUN : "Layer 3: install stack" && \
    apk --update add sqlite-dev gmp-dev alpine-sdk xz curl file gmp openssh openssl zlib-dev strace autoconf pcre-dev && \
    cabal update && \
    cabal install --global stack && \
    stack setup && \
    : Clean up to keep the image small && \
    rm -rf /root/.cabal

COPY groupadd useradd usermod groupmod /usr/sbin/



RUN apk update && \
    apk add stack mariadb-dev
CMD ["bash"]
