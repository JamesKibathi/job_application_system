# Jobs Application System

-This is a backend API that helps hiring agencies to keep track of different job opportunities and applicants. 

VIDEO DEMO

![caption](https://drive.google.com/file/d/1iLQa4HYPTDRj20YLFDXlSLJOyjfCBksT/view?usp=sharing)


## Table of contents

- [Description](#description)
- [Technologies Used](#technologies-used)
- [Requirements](#requirements)
- [Configuration](#Configuration)
- [Routes](#routes)
- [License](#License)
- [Authors' Info](#authors-infor)

## Description

 The API has 3 main functionalities: 

  1. Takes in a list of available job openings and saves them to the Database
  2. Take in the names of applicants, job applied and resumes and save them to a Database. 
  3. Returns a list of applicants details and the jobs applied.

- Auth

  Was achieved using JWT and Bcrypt
   
  1. An applicant cannot be able to apply for a Job Without login.

  2. An applicant must be logged to set up and edit profile 

- CRUD operations

  The routes for these and other functionalities are provided on the [Routes](#routes) section.


## Technologies Used

- Ruby on rails for backend
- SQLite for database​
- Active Records ORM

## Requirements

- Ruby 2.7.0


## Configuration
This API runs on local host

```
$ Fork and clone the repo: git clone https://github.com/JamesKibathi/job_application_system
$ cd job_application_system
$ git remote rm origin
```

You can then run the following commands to get started:

```
1.Install Ruby Gems (dependencies)
$ bundle install 

2.Run migrations
$ rails db:migrate 

3.Seed data 
$ rails db:seed 

4.Run server
$ rails s 
```

## End points

```
  # Applicant Sign up
  POST http://127.0.0.1:3000/users

  # Display All Available Jobs
  GET http://127.0.0.1:3000/jobs

  # Applicant Profile set up - resume 
  POST http://127.0.0.1:3000/profiles

  # Update User Profile
  PATCH http://127.0.0.1:3000/profiles/#{id}

  # Applicant Login
  POST http://127.0.0.1:3000/login

  # Apply Job
  POST http://127.0.0.1:3000/apply

  # Display All Job Applications
  GET http://127.0.0.1:3000/applications


  # Show Applicants Details & Jobs Applied
  GET http://127.0.0.1:3000/users

  # Display specific Applicant Details & Jobs Applied
  GET http://127.0.0.1:3000/users/#{id}
   
```

## License

Copyright (c) 2022 James Njenga

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Authors' Info

- [James Njenga](#njenga.consulting@gmail.com)


