# Description:
#   Lets mods "clock in/out" and makes it easy for everyon to see who is on duty
#
# Notes:
#   mods can DM the bot with 'on duty' or 'off duty'
#   the bot listens (either in a channel or DM) for the command 'whosamod'

module.exports = (robot) ->

  mods = robot.brain.data.modsonduty or= []
  facilitators = mods = robot.brain.data.facilsonduty or= [] 

  robot.respond /^on duty/i, (res) ->
    res.reply "You must specify either 'admin on duty' or 'facilitator on duty'"
  
  robot.respond /(admin|facilitator) on duty/i, (res) ->

    name = res.message.user.name
    role = res.match[1]

    if role == 'admin'
        robot.brain.data.modsonduty.push name
    if role == 'facilitator'
        robot.brain.data.facilsonduty.push name
    res.reply "Good to see you, #{name}."

  robot.respond /off duty/i, (res) ->

    name = res.message.user.name
    
    index = robot.brain.data.modsonduty.indexOf(name)
    robot.brain.data.modsonduty.splice(index, 1)
    index = robot.brain.data.facilsonduty.indexOf(name)
    robot.brain.data.facilsonduty.splice(index, 1)
    
    res.reply "Have a good one, #{name}."

  robot.hear /(whosamod|whosonduty|adminonduty|admin please)/i, (res) ->

    mods = robot.brain.data.modsonduty
    facilitators = robot.brain.data.facilsonduty
    if mods.length || facilitators.length
      res.reply "On duty admins are: #{mods.join(', ')}\nOn duty faciliatators are: #{facilitators.join(', ')}"
    else
      res.reply "No admins or facilitators on duty at the moment."
      
    
