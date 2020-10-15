class UsersController < ApplicationController

    get '/signup' do
        if logged_in?
            redirect to '/medicines'
        else 
            erb :'users/signup'
        end 
    end 

    post '/signup' do
        erb :'users/login'
    end


    get "/login" do
        erb :"users/login"
    end

    # post "/login" do 

    # end
#  # GET: /users
 get "/users" do
    erb :"/users/index.html"
  end
  # GET: /users/new
  get "/users/new" do
    erb :"/users/new.html"
  end
  # POST: /users
  post "/users" do
    redirect "/users"
  end
  # GET: /users/5
  get "/users/:id" do
    erb :"/use_rs/show.html"
  end
  # GET: /users/5/edit
  get "/users/:id/edit" do
    erb :"/users/edit.html"
  end
  # PATCH: /users/5
  patch "/users/:id" do
    redirect "/users/:id"
  end
  # DELETE: /users/5/delete
  delete "/users/:id/delete" do
    redirect "/users"
  end
end