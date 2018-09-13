# Description:
#   Retrieves random cat facts.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot catfact - Reply back with random cat fact.
#
# Author:
#   scottmeyer

module.exports = (robot) ->
	robot.respond /CATFACT$/i, (msg) ->
		msg.http('http://cat-fact.herokuapp.com/facts/random?amount=1')
            .get() (error, response, body) ->
                # passes back the complete reponse
                response = JSON.parse(body)
                if response.success == "true"
                	msg.send response.text
                else
                	msg.send "Unable to get cat facts right now."
                  msg.send error
		
