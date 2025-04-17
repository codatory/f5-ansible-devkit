# f5-ansible-devkit
Batteries Included development kit for F5 Ansible Playbooks

## devcontainer.json

```json
{
  "image": "ghcr.io/codatory/f5-ansible-devkit:v1.1.2",
  "customizations": {
    "vscode": {
      "extensions": [
        "redhat.ansible"
      ]
    }
  }
}
```

## interactive use

```bash
docker run -it --rm -v $PWD:/ansible ghcr.io/codatory/f5-ansible-devkit:v1.1.2
```
