class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  # final repo backend test 
  # Add your routes here
  get "/tests" do
    { message: "Good luck with your project!" }.to_json
  end

  # get '/tests' do
  #   "Hello World"
  # end

end
