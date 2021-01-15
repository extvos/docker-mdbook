FROM rust:1-slim AS overlay
ARG MDBOOK_VERSION="0.4.6"
LABEL maintainer="mps299792458@gmail.com" \
      version=$MDBOOK_VERSION

RUN cargo install mdbook --vers ${MDBOOK_VERSION}


FROM debian:buster-slim AS mdbook
LABEL maintainer="Mingcai SHEN <archsh@gmail.com>" \
      version=$MDBOOK_VERSION

COPY --from=overlay  /usr/local/cargo/bin/mdbook /usr/local/bin/

WORKDIR /data
VOLUME ["/data"]
