FROM ghcr.io/ansible/community-ansible-dev-tools:v24.12.0

COPY requirements.yaml /workdir/requirements.yaml

RUN ansible-galaxy install -fr /workdir/requirements.yaml

COPY --chmod=0755 docker-entrypoint.sh /usr/local/bin/

WORKDIR /workdir

ENTRYPOINT ["/opt/builder/bin/entrypoint", "dumb-init"]

CMD ["zsh"]