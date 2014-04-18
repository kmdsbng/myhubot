# Description:
#   JOJOの名言を返す
#
# Commands:
#   hubot jojo - JOJOの名言を返す

exec = require('child_process').exec

module.exports = (robot) ->
  robot.respond /jojo$/i, (msg) ->
    cmd = 'jojo'
    exec(cmd, {timeout: 1000},
      (error, stdout, stderr) ->
        msg.send stdout
    )

