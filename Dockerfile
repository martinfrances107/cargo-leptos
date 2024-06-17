FROM --platform=amd64 rust:1.79 as build

RUN cargo install cargo-leptos

FROM --platform=amd64 rust:1.79

COPY --from=build /usr/local/cargo/bin/cargo-leptos /usr/local/cargo/bin/cargo-leptos

ENTRYPOINT ["cargo-leptos"]
