# DevOps App

## Table of Contents
1. [Introduction](#introduction)
2. [Gems](#gems)
3. [System Requirements](#system-requirements)
    1. [Install Ruby in Vagrant Box](#install-ruby-in-vagrant-box)
    2. [Configure Git](#configure-git)
    3. [Install Gems](#install-gem)
4. [How to Initialize the App](#how-to-initialize-the-app)


## Introduction
This program was built to be used in the practices that will be performed in DevOps course.

- **Language**: Ruby 2.3.3

## Gems

- **bundle**: v1.14.3
- **rake**: v12.0.0
- **sinatra**: v1.4.8
- **rubocop**: v0.47.1
- **sinatra-cross_origin**: v0.4.0
- **activerecord**: v5.0.1

## System Requirements


### Install Ruby in Vagrant Box

The first step is to install some dependencies for Ruby.

```
sudo apt-get update
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev nodejs
```

Installing with rbenv is a simple two step process. First you install rbenv, and then ruby-build:

1. First install rbenv

    ```
    cd
    git clone https://github.com/rbenv/rbenv.git ~/.rbenv
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(rbenv init -)"' >> ~/.bashrc
    exec $SHELL
    
    git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
    echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
    exec $SHELL
    ```

2. Install ruby build 2.3.3

    ```
    rbenv install 2.3.3
    rbenv global 2.3.3
    ruby -v
    ```
    
    
3. Install Bundle gem using a cmd console:

    ```
    gem install bundler
    ```

### Configure Git

We'll be using Git for our version control system so we're going to set it up to match our Github
account. If you don't already have a Github account, make sure to register. It will come in handy 
for the future.

Replace my name and email address in the following steps with the ones you used for your Github 
account.

```
git config --global color.ui true
git config --global user.name "YOUR NAME"
git config --global user.email "YOUR@EMAIL.com"
ssh-keygen -t rsa -b 4096 -C "YOUR@EMAIL.com"
```

The next step is to take the newly generated SSH key and add it to your Github account. 
You want to copy and paste the output of the following command and paste it here.

```
cat ~/.ssh/id_rsa.pub
```

Once you've done this, you can check and see if it worked:

```
ssh -T git@github.com
```

You should get a message like this:

```
Hi excid3! You've successfully authenticated, but GitHub does not provide shell access.
```

### Install Gems 

To install all Gems that will be used in the app, In the CMD console Go to the
repository path cloned or downloaded and execute:

```
 bundle install
```

## How to Initialize the App

To initialize this application perform the following steps:

1. Open a Console in the current repository path.
2. To execute the App type:

    ```
    rake devops:start_app
    ```

3. Open a Browser and Go to the [Home Page](http://localhost:2000) of the application



