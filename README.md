# Ubuntu-bootstrap

My personal settings for Ubuntu linux.

## Requirement

- Ubuntu linux(BoW or normal one)
- Ansbile

## Install ansible

```
$ sudo apt-get update
$ sudo apt-get install ansible
```

## Target

### bash_on_ubuntu.yml

For bash on ubuntu on Windows

### desktop.yml

For desktop linux

## Usage

Some of the roles needs to run on zsh. So, first you need to run this script on zsh.

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
