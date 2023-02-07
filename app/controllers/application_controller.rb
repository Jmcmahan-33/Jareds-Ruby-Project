class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # get "/tests" do
  #   { students: "Good luck with your project!" }.to_json
  # end

  # TEACHERS CRUD
   #  Read 
  get '/teachers' do
    # get all the teachers from the database
    teachers = Teacher.all
    # return a JSON response with an array of all the teachers data
    teachers.to_json
  end


  # STUDENTS CRUD
    # Read
  get '/students' do
    # get all the students from the database
    students = Student.all
    # return a JSON response with an array of all the students data
    students.to_json
  end

  # Add new Student
  post '/students' do
    student = Student.create(name: params[:name], instrument: params[:instrument], comment: params[:comment],teacher_id: params[:teacher_id])
    student.to_json
  end

  # UPDATE

  # DELETE 
  delete "/students/:id" do
    student = Student.find(params[:id])
    student.destroy
    student.to_json
  end

end
