class Comment < ActiveRecord::Base
    belongs_to :teacher
    belongs_to :student
end