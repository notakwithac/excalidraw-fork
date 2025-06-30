FROM nginx:1.21-alpine

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh

COPY build /usr/share/nginx/html

HEALTHCHECK CMD wget -q -O /dev/null http://localhost || exit 1

ENTRYPOINT [ "/entrypoint.sh" ]