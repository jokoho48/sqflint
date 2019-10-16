FROM python:3.7-alpine

# Install dependencies required to git clone.
RUN apk update && \
    apk add --update git

RUN pip3 install https://github.com/jokoho48/sqf/archive/master.zip

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

CMD ["--exit e", "--directory addons"]
ENTRYPOINT ["/entrypoint.sh"]
