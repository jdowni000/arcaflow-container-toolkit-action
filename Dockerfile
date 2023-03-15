FROM ubuntu:latest

COPY paramter_run.sh /paramter_run.sh

ENTRYPOINT ["/paramter_run.sh"]
