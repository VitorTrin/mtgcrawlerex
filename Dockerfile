FROM elixir:1.8.2-alpine

ADD . app
WORKDIR app

RUN apk add git
RUN mix do local.hex --force, local.rebar --force
RUN mix do deps.get, deps.clean --unused, compile