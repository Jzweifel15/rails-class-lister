### Class Lister

## Description
**Class Lister** web application using the Rails framework that is helpful for any student wanting to keep track of their all their current semester classes. A student can see all available classes in alphabetical order, and can choose whatever class they want to add to their list. If a student is not sure what a class is like, they can go to a class's own show page that includes a description of that class.


## Installation
Fork and clone the repository to get started creating your own class list using Class Lister or to add your own ideas to the project.

## How to use?
Using **Class Lister** is very simple. The first page a user will encounter when using the web app is the sign-in page. A return user can sign-in using the email and password that they provided upon signing-up for an account. If a user is new to **Class Lister**, then there is the option of signing-up for an account as a new student or signing-in using Facebook. 

Upon signing-in/signing-up, the user is immediately redirected to their home page where they can see their current class schedule or, if they don't have a schedule, have the option of creating a new class schedule. Students who already have a class schedule have the option of editing or deleting their current schedule.

Upon creating a new schedule or editing a current schedule, a user can see a full list of available classes to choose from. If a student is not sure what a course is like, the user can click on the course to be directed to a course's show page where they can read a description of the course before deciding to add it to their class list. 

## Tech/Framework used
1. Rails
2. Ruby
3. HTML5
4. CSS3
5. JavaScript

## Code Example
Rails utilizes a MVC architecture. There were three models used for the implementation of **Class Lister**:
```ruby
class Student < ApplicationRecord
  has_one :list   # A Student can only have one class list at a time (per semester)
  has_many :courses, through: :list   # A Student can have many courses through the class
                                      # List they create
end
#
#
class List < ApplicationRecord
  belongs_to :student   # A List belongs to a Student and no one else
  has_many :courses     # A List can have many Courses at a time on one class List
end
#
#
class Course < ApplicationRecord
  has_many :students, through: :list    # A Course can have many Students through the Lists 
                                        # a Student creates
end
```

## License
MIT License
Copyright (c) 2020 Jzweifel15
