require '/home/felixt/prj/dailymile-ruby/lib/dailymile.rb'
include dailymile

Dailymile::Client.set_client_credentials 'qnFYExIvAhpsBLY4DU7w4jJerrmtBTUOQ4zccS1e', 'uE2tbUVPAjzXftUVZySLGvISEQkyeGQrSuh3Jz1n'
client = Dailymile::Client.new 'S2HQUHnnreOWHN0vsLxmf0U7GEfgkBkAxdTwPYnN'

workout = Dailymile::Workout.new

workout.set_activity_type( "running" )
workout.set_distance( "5", "km" )

#puts workout.get_workout
client.post_workout(workout.get_workout)

# workout.post_workout

