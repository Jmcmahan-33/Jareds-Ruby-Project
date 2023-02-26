# J-Rock Music Lessons Backend


## Description

The J-Rock Music Lessons is an App that allows students to sign up for music lessons. During sign up the student can pick which teacher they want to conduct lessons with. Fortunately, our teachers are multi-talented Rock musicians, so if the student changes their mind on what Instrument they want to play, they have the ability to do so while keeping the same teacher for the Semester. Since the school is an ever growing business, the app has the ability to hire new teachers. Everytime a student signs up, they will have the ability to pick the  hired teachers. Lastly, if the student wants to cancel lessons, they can go ahead and delete themselves from the student page.

## Installation
In the terminal create a new directory with new file name. Once you are in the file of the new directory, you can fork and clone from the following: https://github.com/learn-co-curriculum/phase-3-sinatra-react-project/fork.
Install steps:
  - Grab SSH Key from the forked github repository.
  - In your Backend directory file, run the command: "git clone" (SSH KEY)
  - After that, run the command to install the Ruby gems: "bundle install" 
  - To view the backend has successfully installed, run command: "bundle exec rake server"
  - Go to browser and type the following: http://localhost:9292.
  - To test, create a Get Route in the back end application controller http://localhost:9292/teachers.
  - Then on the front end, create a fetch request: fetch("http://localhost:9292/teachers").
  -Go to console and see the teachers data. 






## Project Startup:

### Start App
In the project directory located at "phase-3-project", cd into "phase-3-sinatra-react-project"
  then run the following command: "bundle exec rake server" 
  This will fire up port http://localhost:9292/

  *SIDE NOTE: Need to run "npm start" on the front end for App to work properly. 


## Usage  

Add  db.json file to create your own json-server with an array of objects and key/pairs. 
Two models using CRUD
Teachers:
* GET Request: "http://localhost:9292/teachers"  
* POST Request: "http://localhost:9292/teachers"  

Students (FULL CRUD)
* GET Request: "http://localhost:9292/students" 
* POST Request: "http://localhost:9292/students"  
* PATCH Request: "http://localhost:9292/students/${student.id}"  
* DELETE Request: "http://localhost:9292/students/${student.id}"  

## Migration Usage
 * Commands:  
 rake db:create_migration NAME=create_students_table  
 rake db:migrate

 ## Tables and Assocations
 * Relationship: Student belongs to Teacher
 * Relationship: Teacher has many students
 * Foreign Key: teacher_id on students table 

 * class CreateStudents < ActiveRecord::Migration[6.1]  
 def change  
 create_table :students do |t|  
 t.string :name  
 t.string :instrument  
 t.integer :teacher_id  
 t.timestamps  
 end

* class CreateTeachers < ActiveRecord::Migration[6.1]  
def change  
create_table :teachers do |t|  
t.string :name  
t.string :instrument  
t.integer :rate  
t.timestamps  
end

  

 



## ToDo's  
* Route to display students when clicking on certain teacher ID 
* Fix bugs 
* Add Join Table Comments


