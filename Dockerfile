FROM ghcr.io/ansible/community-ansible-dev-tools:v25.2.1

COPY requirements.yaml /workdir/requirements.yaml

RUN ansible-galaxy install -fr /workdir/requirements.yaml

WORKDIR /workdir

ENTRYPOINT ["/opt/builder/bin/entrypoint", "dumb-init"]

CMD ["zsh"]
