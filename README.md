# sprout-wrap-sydney

[![Build Status](https://travis-ci.org/pivotal-sydney/sprout-wrap-sydney.png?branch=master)](https://travis-ci.org/pivotal-sydney/sprout-wrap-sydney)

This project uses [soloist](https://github.com/mkocher/soloist) and [librarian-chef](https://github.com/applicationsonline/librarian-chef)
to run a subset of the recipes in sprout's cookbooks.

If you've never used Chef before - we highly recommend you buy &amp; watch [this excellent 17 minute screencast](http://railscasts.com/episodes/339-chef-solo-basics) by Ryan Bates. 

## Installation under El Capitan

### 1. Install Command Line Tools
  
    xcode-select --install

### 2. Clone this project

    git clone https://github.com/pivotal/sprout-wrap-sydney.git
    cd sprout-wrap-sydney

### 3. Install soloist & and other required gems

If you're running under rvm or rbenv, you shouldn't preface the following commands with `sudo`.

    sudo gem install bundler
    bundle install --path vendor/bundle

### 4. Run soloist

[The `caffeinate` command will keep your computer awake while installing; depending on your network connection, soloist can take from 10 minutes to 2 hours to complete.]

    caffeinate bundle exec soloist
