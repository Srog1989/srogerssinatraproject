#This is where I will create some data to work with and test assocation.

#create 2 users

karen = User.create(username: "Karen", password: "password")
kevin = User.create(username: "Kevin", password: "password")

#create some medicines

Medicine.create(name: "tylenol", user_id: kevin.id)
Medicine.create(name: "ibuprofen", user_id: karen.id)
Medicine.create(name: "sudafed", user_id: karen.id)

#use AR to pre associate data


#flash errors to use
flash[:error] = "You are not logged in, please login to continue."
flash[:error] = "Account information not found, please signup to create an account."
flash[:error] = "You are not authorized to edit this medicination"
