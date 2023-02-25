class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # before table drop 
  # TEACHERS CRUD
   #  READ 

  #  possible include method for teachers.to_json
  get '/teachers' do
    teachers = Teacher.all
    teachers.to_json(include: :students)
  end
    # CREATE
  post '/teachers' do
    teacher = Teacher.create(name: params[:name], musical_talents: params[:musical_talents], rate: params[:rate])
    teacher.to_json(include: :students)
  end

  get '/teachers/:id' do
    # look up the teacher in the database using its ID
    teacher = Teacher.find(params[:id])
    # send a JSON-formatted response of the teacher data
    teacher.to_json(include: :students)
  end


  # STUDENTS CRUD
    # READ
  get '/students' do
    students = Student.all
    students.to_json(include: :teacher)
  end
    # CREATE
    # possible refactor, talk to Enoch about post
    # create a student through teacher 
      # finding a teacher through the teacher
      # then go with line 31, the create
      # make a variable equal to find_by teacher id. 
  
  post '/students' do
    student = Student.create(name: params[:name], instrument: params[:instrument], teacher_id: params[:teacher_id])
    student.to_json(include: :teacher)
  end

 
    # UPDATE 
      # Possible update of the instrument. 
      patch '/students/:id' do
        student = Student.find(params[:id])
        student.update(
          name: params[:name],
          instrument: params[:instrument],
         
        )
        student.to_json(include: :teacher)
      end
    # DELETE 
     delete "/students/:id" do
    student = Student.find(params[:id])
    student.destroy
    student.to_json(include: :teacher)
  end
end








