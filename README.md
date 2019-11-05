# README

This project is from the microverse curriculum using The Odin Project
The goal is to do practice with rails authentication. 
HTML Form / Railsy Forms with #form_tag / Railsy-er Forms with #form_for / Editing

## Setup & Use
To run the project first clone the repo:

```
git clone https://github.com/mapra99/members-only.git

```
Then cd to the project folder:
```
cd members-only
```

Upadte gems from the Gemfile:
```
bundle update
```

Then migrate the database:
```
rails db:migrate
```
If there are any errors for the Gemfile, then please install as said in the error messages.

Navigate through the project tables from the console:
```
rails console
```

To run all the tests:
```
rails db:migrate RAILS_ENV=test
rails test
```

## Requirements
Ruby version 2.6.4
Rails version 6.0.0
Bundler version 2.0.2

Authors: [Brham Dev Mahato](https://github.com/dev1980),  [Miguel Prada](https://github.com/mapra99)