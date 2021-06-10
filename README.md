![](https://img.shields.io/badge/Microverse-blueviolet)

# Micro Reddit Database

>This database is a project developed as part of the Microverse curriculum, to be more specific, is part of the Ruby on Rails module.
It consists in a database created for a Micro Reddit app, no front end implement at this point, only the database models

### Relational Model

![Database Model](./database_model.png)



### Built using
    - Ruby
    - Ruby On Rails
    - Rubocop
    - SQLite3
    - Github
    - RubyMine

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

* Make sure that **Ruby Environment** is installed in your computer (try to run _ruby_ from your prompt), if not you can install it from [here.](https://www.ruby-lang.org/en/downloads/)

* [Download](https://github.com/kensayo/micro-reddit/archive/refs/heads/development.zip) and unzip **or** [clone this repository](https://docs.github.com/es/github/creating-cloning-and-archiving-repositories/cloning-a-repository)


### Setup

- Open your terminal and move to the root of the project, using ```cd``` command.
- Then you must run ```$ rails db:migrate```, so you can work locally with the database.
- Run ```$ rails db:create``` so you create the database
- You must run ```$ bundle install```  
- Start server using ```$ rails s```
- Finally go to the Ruby console with `$ rails c`

### Usage

- You can create rows using Active Record in the`Ruby Console`
- First let's create a couple of users, _the Active Record validate the length of the user (min 5), that email have an `@` and belongs to a domain, also the password require at least 1 uppercase character, 1 lowercase character, 1 special character and 1 digit. All the fields are required_
  
    
    User.create username:'Rafael', email:'rafael@gmail.com', pwd:'RAfa123**' 

    User.create username:'Viviana', email:'vivana@mail.com', pwd:'Vivi22*'
  
- Now we can create a post, _the Active Record validate the length of the title (min 8 max 50), also the link must be a valid link (i.e. www.microvere.org, https://www.google.com, github.com)_


    User.first.posts.create title:'Welcome to Microverse', link:'www.microverse.org'

    User.last.posts.create title:'Search engine', link:'www.google.com'

- Finally we add comments in our posts with the next command, a comment to the first post from our first user


    Post.first.comments.new comment:'Awesome page, thanks', user_id:1
  
    Post.last.comments.new comment:'Is not the best site, but thanks', user_id:2
  
    Post.last.comments.new comment:'Awesome page, thanks', user_id:1





## 👤 Kenny Ortega

- GitHub: [kensayo](https://github.com/kensayo)
- Twitter: [@kensayo](https://twitter.com/kensayo)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/kenny-ortega-3580aa33/)



### Contributions and issues are welcome!

License
This project is MIT licensed.
