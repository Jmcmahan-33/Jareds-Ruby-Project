class Student < ActiveRecord::Base
    belongs_to :teacher
    
    def get_teacher_name
        self.teacher.name
      end
end