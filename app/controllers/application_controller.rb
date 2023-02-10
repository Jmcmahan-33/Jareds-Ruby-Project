class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # get "/tests" do
  #   { students: "Good luck with your project!" }.to_json
  # end

  # COMMENTS CRUD
    # READ 
  get '/comments' do
    # get all the teachers from the database
    comments = Comment.all
    # return a JSON response with an array of all the comments data
    comments.to_json
  end
    # CREATE
  post '/comments' do
    comment = Comment.create(body: params[:body], student_id: params[:student_id], teacher_id: params[:teacher_id])
    comment.to_json
  end

  # UPDATE
  patch '/comments/:id' do
    # find the comment using the ID
    comment = Comment.find(params[:id])

    # update the comment in the database
    comment.update(
      body: params[:body],
      student_id: params[:student_id],
      teacher_id: params[:teacher_id],
    )

    # send back the updated comment as JSON
    comment.to_json
  end


   # DELETE 
   delete "/comments/:id" do
    comment = Comment.find(params[:id])
    comment.destroy
    comment.to_json
  end

  


  # TEACHERS CRUD
   #  READ 
  get '/teachers' do
    # get all the teachers from the database
    teachers = Teacher.all
    # return a JSON response with an array of all the teachers data
    teachers.to_json
  end
    # CREATE
  post '/teachers' do
    teacher = Teacher.create(name: params[:name], instrument: params[:instrument], availability: params[:availability], rate: params[:rate])
    teacher.to_json
  end

  # UPDATE

   # DELETE 
   delete "/teachers/:id" do
    teacher = Teacher.find(params[:id])
    teacher.destroy
    teacher.to_json
  end





  # STUDENTS CRUD
    # READ
  get '/students' do
    # get all the students from the database
    students = Student.all
    # return a JSON response with an array of all the students data
    students.to_json
  end

    # CREATE
  post '/students' do
    student = Student.create(name: params[:name], instrument: params[:instrument], comment: params[:comment],teacher_id: params[:teacher_id])
    student.to_json
  end

  # UPDATE
  # patch '/students/:id' do
  #   # find the comment using the ID
  #   comment = Comment.find_by(id: params[:id])

  #   # update the comment in the database
  #   comment.update(
  #     body: params[:body],
  #     student_id: params[:student_id],
  #     teacher_id: params[:teacher_id],
  #   )
  # end


  # DELETE 
  delete "/students/:id" do
    student = Student.find(params[:id])
    student.destroy
    student.to_json
  end

end
