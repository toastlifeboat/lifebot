# Description:
#   Lets mods "clock in/out" and makes it easy for everyon to see who is on duty
#
# Notes:
#   mods can DM the bot with 'on duty' or 'off duty'
#   the bot listens (either in a channel or DM) for the command 'whosamod'

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

  robot.hear /(whosamod|whosonduty|adminonduty|admin please)/i, (res) ->

    mods = robot.brain.data.modsonduty
    if mods.length
      res.reply "On duty admins are: #{mods.join(', ')}"
    else
      res.reply "No admins on duty at the moment."
