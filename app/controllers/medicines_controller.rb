class MedicinesController < ApplicationController


  
 # GET: /medicines
 get "/medicines" do
    erb :"/medicines/index.html"
  end
  # GET: /medicines/new
  get "/medicines/new" do
    erb :"/medicines/new.html"
  end
  # POST: /medicines
  post "/medicines" do
    redirect "/medicines"
  end
  # GET: /medicines/5
  get "/medicines/:id" do
    erb :"/umedicines/show.html"
  end
  # GET: /medicines/5/edit
  get "/medicines/:id/edit" do
    erb :"/medicines/edit.html"
  end
  # PATCH: /medicines/5
  patch "/medicines/:id" do
    redirect "/medicines/:id"
  end
  # DELETE: /medicines/5/delete
  delete "/medicines/:id/delete" do
    redirect "/medicines"
  end

    
end