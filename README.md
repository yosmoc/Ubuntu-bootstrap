# Ubuntu-bootstrap

My personal settings for Ubuntu linux.

## Requirement

- Ubuntu linux(BoW or normal one)
- Ansbile

## Install ansible

```
$ sudo apt-add-repository ppa:ansible/ansible
$ sudo apt-get update
$ sudo apt-get install ansible
```

## Target

### bash_on_ubuntu.yml

For bash on ubuntu on Windows

### desktop.yml

For desktop linux

## Usage

### Run all roles

```
$ ansible-playbook -i hosts bash_on_ubuntu.yml -K
```

### Run specific roles

```
$ ansible-playbook -i hosts bash_on_ubuntu.yml -K --tags "apt,git"
```

### Run all tasks except specific roles

```
$ ansible-playbook -i hosts bash_on_ubuntu.yml -K --skip-tags "apt,git"
```
