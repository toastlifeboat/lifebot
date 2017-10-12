# Description:
#  Toastbot says hello.
#
# Commands:
#  hubot (hi|hello|hey) - reply with a greeting
#  hubot get join message for #<channel name> - get the join message for a channel
#  hubot set join message for #<channel name> to "<message>" - like it says on the tin
#
# Author:
#  @hungrier.robot and @kellbot

JoinMessage  = require './models/join-message'

module.exports = (robot) ->

  robot.brain.data.joinMessages or= {}
  JoinMessage.robot = robot

  robot.respond /hi|hello|hey/i, (msg) ->
    msg.send "Greetings, Toastie!"

  robot.respond /set join message for #([A-Z0-9-_]*) to "((.*\s*)+)"/i, (res) ->
    channel_name = res.match[1]
    channel = robot.adapter.client.rtm.dataStore.getChannelByName(channel_name).id   
    message = res.match[2]
   
    response = JoinMessage.set channel, message
    res.send response

  robot.respond /get join message for #([a-zA-Z0-9-_]*)/i, (res) ->
    channel_name = res.match[1]
    channel = robot.adapter.client.rtm.dataStore.getChannelByName(channel_name).id   

    response = JoinMessage.get channel
    if response 
      res.send response
    else
      res.send "No channel message found for \##{channel_name}"
 
  robot.enter (res) ->
    channel = res.message.room
    if JoinMessage.exists(channel)
      user_id = res.message.user.id
      message = JoinMessage.get(channel)
      robot.adapter.client.web.chat.postEphemeral(channel, message, user_id, {as_user: true})
