class Teacher < ActiveRecord::Base
    has_many :students
    has_many :comments, through: :students 

    # def all_student_comments
    #     self.comments.map do |comment|
    #       comment.body
    #     end
    # end
end