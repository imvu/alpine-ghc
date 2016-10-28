This container is used to produce ACTUALLY static binaries of ghc projects

You can use it by adding the following pattern to you stack.yaml (given that a proper {GHC_VERSION} container exists in the imvu docker hub)

>  docker:
>    enable: true
>    stack-exe: "image"
>    repo: "imvu/alpine-ghc:8.0.1"


process atm is to

* `docker pull mitchty/alpine-ghc:{VERSION}`
* * where {VERSION} is `latest` for ghc 8.0.1 (as of 10/28/16), and `7.10` for 7.10.3. Misleadingly 8.0 tag is actually 8.0.0.2223232bullshit
* `docker tag mitchty/alpine-ghc:{VERSION} imvu/alpine-ghc-base:{GHC_VERSION}`
* * example {GHC_VERSION}s:  7.10.3, 8.0.1
* `docker push imvu/alpine-ghc-base:{GHC_VERSION}`(you should have access to (https://hub.docker.com/u/imvu/dashboard/)
* update the corresponding Dockerfile in the corresponding {GHC_VERSION} folder to use the new base
* `docker build -t imvu/alpine-ghc:{GHC_VERSION} .`
* `docker push imvu/alpine-ghc:{GHC_VERSION}`


at some point this will change if ghc is accepted into alpine

The process is done like this so that our base only changes when we trigger it rather than when some third party changes
