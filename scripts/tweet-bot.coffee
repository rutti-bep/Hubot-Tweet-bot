cronJob  = require('cron').CronJob
moment = require('moment')

module.exports = (robot) ->
        robot.respond /こんにちは/i, (msg) ->
                msg.send "こんにちはー。元気？"

        new cronJob
                cronTime: "0 0,5,10,15,20,25,30,35,40,45,50,55 * * * *" # 月〜金の毎時00分に実行
                onTick: -> robot.send {"screen_name": "", "user": {"user": "","status_id":""}},"#{moment().utc().add(9, 'h').format("MM月DD日 HH時mm分現在サ
ーバー稼働中です!")}"
                start: true
                timeZone: "Asia/Tokyo"

