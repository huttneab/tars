# Description:
#   ask me anything
#
# Notes:
#

module.exports = (robot) ->
  robot.respond /will /i, (msg) ->
    num_choices = 5
    rand = Math.floor(Math.random() * num_choices)

    magic_8_ball = switch rand
      when 1 then "maybe"
      when 2 then "definitely"
      when 3 then "not a chance"
      when 4 then "outlook is good"
      else "not sure"

    msg.send magic_8_ball