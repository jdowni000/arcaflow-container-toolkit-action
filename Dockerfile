FROM alpinelinux/docker-cli

COPY parameter_run.sh /parameter_run.sh

ENTRYPOINT ["/parameter_run.sh"]
