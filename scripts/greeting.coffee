# Description:
#  Toastbot says hello.
#
# Commands:
#  hubot (hi|hello|hey) - reply with a greeting
#  hubot get join message for <channel id>
#  hubot set join message for <channel id> to "<message>"
#
# Author:
#  @hungrier.robot and @kellbot

JoinMessage  = require './models/join-message'

module.exports = (robot) ->
  robot.brain.data.joinMessages or= {}
  JoinMessage.robot = robot

  robot.respond /hi|hello|hey/i, (msg) ->
    msg.send "Greetings, Toastie!"

  robot.respond /set join message for ([A-Z0-9]*) to "((.*\s*)+)"/i, (res) ->
    channel = res.match[1]
    message = res.match[2]
   
    response = JoinMessage.set channel, message
    res.send response

  robot.respond /get join message for ([A-Z0-9]*)/i, (res) ->
    channel = res.match[1]
   
    response = JoinMessage.get channel
    res.send response
