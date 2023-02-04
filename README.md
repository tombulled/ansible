# ansible
Ansible Desktop Configuration

## Boostrapping
```console
curl "https://raw.githubusercontent.com/tombulled/ansible/main/boostrap.sh" | bash
```

## Ansible Pull
```console
sudo ansible-pull -U https://github.com/tombulled/ansible.git
```

## Development
### Boostrapping
```console
curl "https://raw.githubusercontent.com/tombulled/ansible/feature/some-branch/boostrap.sh" | bash
```

### Ansible Pull
```console
sudo ansible-pull -U https://github.com/tombulled/ansible.git --checkout feature/some-branch
```
