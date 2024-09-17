FROM almalinux:9.4-20240723

RUN dnf install -y epel-release; /usr/bin/crb enable; dnf install -y python3.12 python3.12-devel oniguruma oniguruma-devel; dnf groupinstall -y "Development Tools"; dnf update -y; dnf clean all

RUN python3.12 -m venv ~/ansible-venv; source ~/ansible-venv/bin/activate; python3.12 -m pip install --upgrade pip; python3.12 -m pip install ansible-dev-tools==24.9.0; python3.12 -m pip install ansible==10.4.0; python3.12 -m pip cache purge

COPY requirements.yaml /root/requirements.yaml

RUN source ~/ansible-venv/bin/activate; ansible-galaxy install -fr /root/requirements.yaml

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["bash"]
