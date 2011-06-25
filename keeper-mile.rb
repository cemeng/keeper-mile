require 'sinatra'
require 'erb'
require 'runkeeper-activities'
  
get '/' do
	@user = RunKeeperActivities::User.find_by_username('cemeng')
	#activity = user.activities
	erb :index
end



