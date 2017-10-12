class JoinMessage

  @robot = null

  @store: ->
    throw new Error('robot is not set up') unless @robot
    @robot.brain.data.joinMessages or= {}

  @get: (channel) ->
    return null unless @exists channel
    messageData = @store()[channel]
    return messageData.message

  @set: (channel, message) ->
    if @exists(channel)
      old_message = @get(channel)
      @create(channel, message)
      return 'Message replaced'
    else
      @create(channel, message)
      return 'New message set'

  @create: (channel, message) ->
    @store()[channel] =
      channel: channel
      message: message
    new JoinMessage(channel, message)

  @exists: (channel) ->
    channel of @store()

  constructor: (channel, message) ->
    @channel = channel
    @message = message

module.exports = JoinMessage




