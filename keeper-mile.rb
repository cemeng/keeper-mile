require 'sinatra'
require 'erb'
require 'runkeeper-activities'
require 'dailymile'

  
get '/' do
	@user = RunKeeperActivities::User.find_by_username('cemeng')
	#activity = user.activities
	erb :index
end

get '/login' do

end

get '/daily-mile-test' do
	Dailymile::Client.set_client_credentials 'qnFYExIvAhpsBLY4DU7w4jJerrmtBTUOQ4zccS1e', 'uE2tbUVPAjzXftUVZySLGvISEQkyeGQrSuh3Jz1n'
  client = Dailymile::Client.new 'S2HQUHnnreOWHN0vsLxmf0U7GEfgkBkAxdTwPYnN'
  #user = client.get '/people/me'
  
  client.entries :nearby, 37.77916, -122.420049
  @details = client.get '/people/ben'
	erb :dailyMileTest
end

get '/callback' do

end



get '/post-workout' do

end

#
#Client ID
#    qnFYExIvAhpsBLY4DU7w4jJerrmtBTUOQ4zccS1e
#Client Secret
#    uE2tbUVPAjzXftUVZySLGvISEQkyeGQrSuh3Jz1n
#Callback URL
#    http://keeper-mile.heroku.com/activities
#

#ask user to go here:
#https://api.dailymile.com/oauth/authorize?response_type=code&client_id=qnFYExIvAhpsBLY4DU7w4jJerrmtBTUOQ4zccS1e&redirect_uri=http://keeper-mile.heroku.com/callback

#I've got the code
#Got2nbeklN6EzoUE98a3

#Do another post then
#curl -d "grant_type=authorization_code&client_id=qnFYExIvAhpsBLY4DU7w4jJerrmtBTUOQ4zccS1e&client_secret=uE2tbUVPAjzXftUVZySLGvISEQkyeGQrSuh3Jz1n&redirect_uri=http://keeper-mile.heroku.com/callback&code=Got2nbeklN6EzoUE98a3" https://api.dailymile.com/oauth/token

#{"access_token":"S2HQUHnnreOWHN0vsLxmf0U7GEfgkBkAxdTwPYnN","token_type":"bearer"}

#Dailymile Test Account
#JJwiSogTSYZZD8Z9uEod
#curl -d "grant_type=authorization_code&client_id=qnFYExIvAhpsBLY4DU7w4jJerrmtBTUOQ4zccS1e&client_secret=uE2tbUVPAjzXftUVZySLGvISEQkyeGQrSuh3Jz1n&redirect_uri=http://keeper-mile.heroku.com/callback&code=JJwiSogTSYZZD8Z9uEod" https://api.dailymile.com/oauth/token

#{"access_token":"XXVTcIrfN2cIs43Yg3de56LIYGsWjTXmNiRmR6H4","token_type":"bearer"}f
