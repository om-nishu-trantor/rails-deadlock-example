# README

$ ruby -v
ruby 2.3.1p112 (2016-04-26 revision 54768) [x86_64-darwin15]

$ rails -v
Rails 5.0.0.1
$ rails new rails-deadlock-example -d postgresql

$ uname -prsv
Darwin 15.6.0 Darwin Kernel Version 15.6.0: Thu Sep  1 15:01:16 PDT 2016; root:xnu-3248.60.11~2/RELEASE_X86_64 i386

$ psql -d postgres
psql (9.6.0)
Type "help" for help.

postgres=# create database rails_deadlock_example_development;
CREATE DATABASE
postgres=# \q

rails db:setup

bundle exec rspec spec
