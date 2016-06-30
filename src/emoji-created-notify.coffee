# Description:
#   Notify about updates.

module.exports = (robot) ->

  robot.adapter.client?.on? 'raw_message', (msg) ->
    if msg?.type == 'emoji_changed'
      robot.messageRoom "#general", "New emoji! :#{msg.name}:"
