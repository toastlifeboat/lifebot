# Description:
#  Toastbot says hello.
#
# Commands:
#  toastbot (hi|hello|hey) - reply with a greeting
#
# Author:
#  @hungrier.robot


module.exports = (robot) ->
  robot.respond /hi|hello|hey/i, (msg) ->
	    msg.send "Greetings, Toastie!"

  robot.hear /set join message "(.*)"/i, (res) ->
    message = res.match[1]
    robot.brain.set 'joinMessage', message

    res.send "set join message for new users" 

  robot.hear /set start channel (.*)/i, (res) ->
    channel_id = res.match[1]
    robot.brain.set 'startChannel', channel_id

    res.send "set start channel to #{channel_id}" 

  robot.enter (res) ->
    join_message = robot.brain.get('joinMessage')
    start_channel = robot.brain.get('startChannel')
    
    channel = res.message.room
        
    if channel == start_channel
      if join_message?
        user_id = res.message.user.id
        robot.adapter.client.web.chat.postEphemeral(channel, join_message,  user_id, {as_user: true})


