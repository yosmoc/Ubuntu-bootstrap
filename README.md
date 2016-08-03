# Windows 10 bootstrap

## Requirement
- Windows10
- bash on ubuntu on windows
- Ansbile

## Install ansible

```
$ sudo apt-add-repository ppa:ansible/ansible
$ sudo apt-get update
$ sudo apt-get install ansible
```

## Usage
```
ansible-playbook -i hosts main.yml -K
```
