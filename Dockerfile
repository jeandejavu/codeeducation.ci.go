FROM scratch

COPY bin/sum /sum

ENTRYPOINT ["/sum"]