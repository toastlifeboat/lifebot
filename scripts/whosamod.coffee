# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

module.exports = (robot) ->

  mods = robot.brain.data.modsonduty or= [] 

  robot.respond /on duty/i, (res) ->

    name = res.message.user.name

    robot.brain.data.modsonduty.push name
    res.reply "Good to see you, #{name}."

  robot.respond /off duty/i, (res) ->

    name = res.message.user.name
    
    index = robot.brain.data.modsonduty.indexOf(name)
    robot.brain.data.modsonduty.splice(index, 1)
    res.reply "Have a good one, #{name}."

  robot.hear /whosamod/i, (res) ->

    mods = robot.brain.data.modsonduty
    if mods.length
      res.reply "On duty mods are: #{mods.toString()}"
    else
      res.reply "No mods on duty at the moment."
