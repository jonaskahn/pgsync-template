FROM python:3.10-slim-bullseye

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y bash nano curl lynx net-tools wait-for-it && apt-get clean
RUN apt-get autoremove && apt-get autoclean

RUN pip install pgsync
RUN touch /etc/schema.json

COPY entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh

WORKDIR /logs

ENTRYPOINT [ "/entrypoint.sh" ]