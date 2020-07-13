FROM steamcmd/steamcmd:latest

LABEL maintainer "massimilianopasquini"

RUN addgroup --gid 1000 pavlov \
    && adduser --system --shell /bin/bash --uid 1000 --ingroup pavlov --home /home/pavlov pavlov 

COPY --chown=pavlov:pavlov File/ /home/pavlov/
RUN chmod +x /home/pavlov/pavlov-server/Start

EXPOSE 7/udp 7000/udp 7200/udp 7777/udp

ENTRYPOINT ["/home/pavlov/pavlov-server/Start"]