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

  stbrnrds = ['https://static7.depositphotos.com/1002772/733/i/950/depositphotos_7336885-stock-photo-st-bernard-dog.jpg','https://cdn3.volusion.com/xgyjj.dsnkf/v/vspfiles/photos/006-2.jpg?1484819742','http://saintbernardkeg.com/wp-content/uploads/2015/08/swiss-snow.jpg','http://saintbernardkeg.com/wp-content/uploads/2015/08/16752328459_4781b05d48_k.jpg','http://i.imgur.com/9tLQ5PS.jpg','http://www.houseofswitzerland.org/sites/default/files/styles/portrait/public/story/portrait/Gallia%20et%20son%20tonnelet%20%C2%A9%20Iris%20Kuerschner%2C%20www.powerpress.ch%202%20%28Large%29.jpg?itok=xyYCkZ3R','http://i.telegraph.co.uk/multimedia/archive/01828/stbernard620_1828831b.jpg']

  robot.hear /StBrnrd/i, (res) ->
     res.send res.random stbrnrds 
  
