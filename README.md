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

### Run all roles

```
$ ansible-playbook -i hosts main.yml -K
```

### Run specific roles

```
$ ansible-playbook -i hosts main.yml -K --tags "apt,git"
```

### Run all tasks except specific roles

```
$ ansible-playbook -i hosts main.yml -K --skip-tags "apt,git"
```
