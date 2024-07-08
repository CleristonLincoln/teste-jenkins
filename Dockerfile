FROM ubuntu:latest
LABEL authors="cleri"

ENTRYPOINT ["top", "-b"]