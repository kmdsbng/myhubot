# Description:
#   Reply running machine
#
# Commands:
#   hubot whereareyou - Reply hubot running machine

exec = require('child_process').exec

module.exports = (robot) ->
  robot.respond /whereareyou$/i, (msg) ->
    cmd = 'hostname'
    exec(cmd, {timeout: 20000},
      (error, stdout, stderr) ->
        host = "I run on " + stdout

        cmd = 'pwd'
        exec(cmd, {timeout: 20000},
          (error, stdout, stderr) ->
            msg.send host + stdout
        )
    )

