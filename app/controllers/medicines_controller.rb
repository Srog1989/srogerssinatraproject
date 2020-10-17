class MedicinesController < ApplicationController


  
 # GET: /medicines
 get "/medicines" do
    if logged_in?
       @user = User.find_by(session[:user_id])
       @medicines = @user.medicines.all
        erb :"/medicines/index"
    else
        redirect '/login'
  end
end
  # GET: /medicines/new
  get "/medicines/new" do


    erb :"/medicines/new"
  end

  # POST: /medicines
  post "/medicines" do
    user = User.find_by(session[:user_id])
    @medicine = user.medicines.create(params)
    redirect "/medicines/#{@medicine.id}"
  end
  # GET: /medicines/5
  get "/medicines/:id" do
    @medicine = Medicine.find_by_id(params[:id])
    erb :"/medicines/show"
  end
  # GET: /medicines/5/edit
  get "/medicines/:id/edit" do
    erb :"/medicines/edit"
  end
  # PATCH: /medicines/5
  patch "/medicines/:id" do
    redirect "/medicines/:id"
  end
  # DELETE: /medicines/5/delete
  delete "/medicines/:id/delete" do
    @medicine = Medicine.find_by_id(params[:id])
    @medicine.destroy
    redirect "/users/medicines"
  end

    
end