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

  stbrnrds = ['https://static7.depositphotos.com/1002772/733/i/950/depositphotos_7336885-stock-photo-st-bernard-dog.jpg','https://cdn3.volusion.com/xgyjj.dsnkf/v/vspfiles/photos/006-2.jpg?1484819742','http://saintbernardkeg.com/wp-content/uploads/2015/08/swiss-snow.jpg','http://saintbernardkeg.com/wp-content/uploads/2015/08/16752328459_4781b05d48_k.jpg','http://i.imgur.com/9tLQ5PS.jpg','http://www.houseofswitzerland.org/sites/default/files/styles/portrait/public/story/portrait/Gallia%20et%20son%20tonnelet%20%C2%A9%20Iris%20Kuerschner%2C%20www.powerpress.ch%202%20%28Large%29.jpg?itok=xyYCkZ3R','http://i.telegraph.co.uk/multimedia/archive/01828/stbernard620_1828831b.jpg', 'http://www.saintbernardkeg.com/images/dogs/leonberger%20with%20swiss%20cross%20barrel.jpg','http://saintbernardkeg.com/wp-content/uploads/2015/08/canada.jpg']

  robot.hear /StBrnrd/i, (res) ->
     res.send res.random stbrnrds 

  robot.hear /tiny love gnome/i, (res) ->
     res.send 'http://i.imgur.com/6MhSNzK.gif'

  goats = [ 'https://i.pinimg.com/736x/4c/92/f2/4c92f2a5f7f2fb845485b0f28033b368.jpg', 'https://pbs.twimg.com/media/CBjwA5sUMAAhboy.jpg' ]

  robot.hear /frolicking goats/i, (res) ->
    res.send res.random goats 

  ponies = [ 
    'https://i.pinimg.com/236x/bf/3d/df/bf3ddf9c1a49fe914540ceba210d4c97.jpg',
    'https://www.visitscotland.com/blog/wp-content/uploads/2013/02/shetland-ponies-cardigans6.jpg', 
    'https://i.amz.mshcdn.com/nXXA4s9V1iWnQBQJMyw54c8G9SM=/950x534/filters:quality(90)/https%3A%2F%2Fblueprint-api-production.s3.amazonaws.com%2Fuploads%2Fcard%2Fimage%2F389602%2F9cb3c9da-95a1-4690-9f1e-6845db03279e.jpg', 
    'https://i.pinimg.com/236x/bf/3d/df/bf3ddf9c1a49fe914540ceba210d4c97.jpg' ]

  robot.hear /ponies in sweaters/i, (res) ->
    res.send res.random ponies

  manatees = [ 
    'http://calmingmanatee.com/img/xmanatee21.jpg.pagespeed.ic.XSj96sryjW.webp',
    'http://calmingmanatee.com/img/xmanatee7.jpg.pagespeed.ic.ixr9pIvkts.webp',
    'http://calmingmanatee.com/img/xmanatee9.jpg.pagespeed.ic.Ae_Vfb0v5V.webp'
  ]

  robot.hear /calming manatee/i, (res) ->
    res.send res.random manatees

  
  robot.hear /([^:]|\A)alot/i, (res) ->
    res.send ':alot:'

  robot.hear /I love this bar and everyone in it/i, (res) ->
    res.send ':heart: :orange_heart: :yellow_heart: :green_heart: :blue_heart: :purple_heart:'
