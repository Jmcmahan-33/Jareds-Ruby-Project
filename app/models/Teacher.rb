class Teacher < ActiveRecord::Base
    has_many :students
    has_many :comments through: :students 
end