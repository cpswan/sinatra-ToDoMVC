sinatra-ToDoMVC
===============

ToDo application using Sinatra, DataMapper, &amp; MySQL


apt repos (Ubuntu 12.04):
-------------------------

    sudo apt-get install -y rubygems libmysqlclient-dev

Originally `libsqlite3-dev` was used, but it's been replaced by MySQL

apt repos (Ubuntu 14.04):
-------------------------

Use the BrightBox Ruby Repo to get 1.8.7

    sudo apt-get install -y software-properties-common
    sudo apt-add-repository -y ppa:brightbox/ruby-ng
    sudo apt-get update
    sudo apt-get install -y rubygems1.8 libmysqlclient-dev

gems:
----

    sudo gem install --version 2.3.5 --no-rdoc --no-ri addressable 
    sudo gem install --version 1.5.2 --no-rdoc --no-ri rack 
    sudo gem install --version 1.4.4 --no-rdoc --no-ri sinatra 
    sudo gem install --version 1.4.1 --no-rdoc --no-ri sinatra-contrib 
    sudo gem install --version 1.2.0 --no-rdoc --no-ri data_mapper 
    sudo gem install --version 1.2.0 --no-rdoc --no-ri dm-mysql-adapter 

Originally `dm-sqlite-adapter` was used, but it's been replaced by MySQL

running:
--------

    cd sinatra-ToDoMVC

    ruby app.rb
