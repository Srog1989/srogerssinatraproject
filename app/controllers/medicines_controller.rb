class MedicinesController < ApplicationController


    get '/medicnes' do
        erb :index
    end

    get '/medicines/new' do
        @medicne = Medicne.new
        erb :"medicine/new"
    end

    post '/medicines' do
        @medicine = Medicine.create(params)
        redirect "/medicines/#{@medicine.id}"
      end



    
end