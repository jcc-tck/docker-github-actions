FROM alpine:latest as europe

# ADD MADRID TIMEZONE
RUN apk --update add tzdata \
 && rm -rf /var/lib/apt/lists/* \
 && rm /var/cache/apk/*

RUN cp /usr/share/zoneinfo/Europe/Madrid /etc/localtime \
 && echo "Europe/Madrid" > /etc/timezone

COPY . .

# --- # --- #

FROM alpine:latest as africa

# ADD MADRID TIMEZONE
RUN apk --update add tzdata git\
 && rm -rf /var/lib/apt/lists/* \
 && rm /var/cache/apk/*

RUN cp /usr/share/zoneinfo/Africa/Cairo /etc/localtime \
 && echo "Africa/Cairo" > /etc/timezone

# --- # --- #

FROM alpine:latest as asia

# ADD MADRID TIMEZONE
RUN apk --update add tzdata git\
 && rm -rf /var/lib/apt/lists/* \
 && rm /var/cache/apk/*

RUN cp /usr/share/zoneinfo/Asia/Pyongyang /etc/localtime \
 && echo "Asia/Pyongyang" > /etc/timezone
