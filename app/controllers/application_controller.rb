class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # before table drop 
  # TEACHERS CRUD
   #  READ 

  #  possible include method for teachers.to_json
  get '/teachers' do
    teachers = Teacher.all
    teachers.to_json
  end
    # CREATE
  post '/teachers' do
    teacher = Teacher.create(name: params[:name], musical_talents: params[:musical_talents], rate: params[:rate])
    teacher.to_json
  end


  # STUDENTS CRUD
    # READ
  get '/students' do
    students = Student.all
    students.to_json
  end
    # CREATE
    # possible refactor, talk to Enoch about post
    # create a student through teacher 
      # finding a teacher through the teacher
      # then go with line 31, the create
      # make a variable equal to find_by teacher id. 
  
  post '/students' do
    student = Student.create(name: params[:name], instrument: params[:instrument], teacher_id: params[:teacher_id])
    student.to_json
  end

 
    # UPDATE 
      # Possible update of the instrument. 
      patch '/students/:id' do
        student = Student.find(params[:id])
        student.update(
          name: params[:name],
          instrument: params[:instrument],
         
        )
        student.to_json
      end
    # DELETE 
     delete "/students/:id" do
    student = Student.find(params[:id])
    student.destroy
    student.to_json
  end
end









  # COMMENTS CRUD
    # READ 
  # get '/comments' do
  #   # get all the teachers from the database
  #   comments = Comment.all
  #   # return a JSON response with an array of all the comments data
  #   comments.to_json
  # end
  #   # CREATE
  # post '/comments' do
  #   student = Student.find_by(id: params[:id])
  #   comment = Comment.create(body: params[:body], student_id: params[:student_id], teacher_id: params[:teacher_id])
  #   comment.to_json
  # end
  # # UPDATE
  # patch '/comments/:id' do
  #   # find the comment using the ID
  #   comment = Comment.find(params[:id])

  #   # update the comment in the database
  #   comment.update(
  #     body: params[:body],
  #     student_id: params[:student_id],
  #     teacher_id: params[:teacher_id],
  #   )
  #   # send back the updated comment as JSON
  #   comment.to_json
  # end
  #  # DELETE 
  #  delete "/comments/:id" do
  #   comment = Comment.find(params[:id])
  #   comment.destroy
  #   comment.to_json
  # end
