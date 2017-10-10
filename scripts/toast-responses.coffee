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

  stbrnrds = ['https://static7.depositphotos.com/1002772/733/i/950/depositphotos_7336885-stock-photo-st-bernard-dog.jpg','https://cdn3.volusion.com/xgyjj.dsnkf/v/vspfiles/photos/006-2.jpg?1484819742','http://saintbernardkeg.com/wp-content/uploads/2015/08/swiss-snow.jpg','http://saintbernardkeg.com/wp-content/uploads/2015/08/16752328459_4781b05d48_k.jpg','http://i.imgur.com/9tLQ5PS.jpg','http://www.houseofswitzerland.org/sites/default/files/styles/portrait/public/story/portrait/Gallia%20et%20son%20tonnelet%20%C2%A9%20Iris%20Kuerschner%2C%20www.powerpress.ch%202%20%28Large%29.jpg?itok=xyYCkZ3R','http://i.telegraph.co.uk/multimedia/archive/01828/stbernard620_1828831b.jpg', 'http://www.saintbernardkeg.com/images/dogs/leonberger%20with%20swiss%20cross%20barrel.jpg','http://saintbernardkeg.com/wp-content/uploads/2015/08/canada.jpg',
    'https://images-na.ssl-images-amazon.com/images/I/51TytopN7-L._SY355_.jpg',
    'http://www.pilotguides.com/wordpress/wp-content/uploads/2013/10/Saint-Bernard10.jpg',
    'http://i.telegraph.co.uk/multimedia/archive/01828/stbernard620_1828831b.jpg',
    'http://saintbernardkeg.com/wp-content/uploads/2015/08/canada.jpg',
    'http://saintbernardkeg.com/wp-content/uploads/2015/08/16752328459_4781b05d48_k.jpg',
    'http://dogkeg.com/wp-content/uploads/2015/04/saint_bernard__dog_keg_barrel-1-640x480.jpg'
  ]

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
    
  robot.hear /quid censes/i, (res) ->
    res.send 'Carthago delenda est!'
    
  whoisms = [
    'reverse the polarity of the neutron flow',
    'Wear a fez. Fezzes are cool.',
    "Those reports of the sunspots and the solar flares, they're wrong. It's not the Sun, it's you. The sky is full of a million million voices saying, \"Yes, of course we'll help.\" You've touched so many lives, saved so many people, did you think when your time came you'd really have to do more than just ask? You've decided that the universe is better off without you. But the universe doesn't agree",
    "I've never met anyone who isn't important",
    '"I never bother with sleeping. I just do standing-up cat naps."
    "And when do you do that?"
    "Generally, when everyone else is talking. I like to skip ahead to my bits"',
    "No! Not the mind probe!",
    'Lots of planets have a north!',
    "People assume that time is A strict progression from cause to effect, But actually...its more like a big ball of wibbly wobbly timey wimey...stuff.
Look at these people, these human beings. Consider their potential! From the day they arrive on the planet, blinking, step into the sun, there is more to see than can ever be seen, more to do than - no, hold on. Sorry, that's The Lion King...
Everybody lives Rose. Just this once, everybody lives.",
    'Fear me, I\'ve killed hundreds of Time Lords.
    Fear me, I killed them all.',
    'Are you my mummy?',
    "I saw the Fall of Troy! World War Five! I was pushing boxes at the Boston Tea Party! Now I'm gonna die in a dungeon.... [disgustedly] in Cardiff!",
    "Hello. I'm The Doctor. Basically... run.",
    "Funny little human brains. How do you get around in those things?",
    '"You\'re all irresponsible fools!"
    Doctor: "But we\'re very experienced irresponsible fools."',
    "There are Worlds out there where the sky is burning. Where the seas are asleep and the rivers dream. People made of smoke, and cities made of song. Somewhere there's danger. Somewhere there's injustice. And somewhere the tea's getting cold. Come Ace. We've got work to do.",
    "Do you know like we were saying about the Earth revolving? It's like when you were a kid. The first time they tell you the world's turning and you just can't quite believe it because everything looks like it's standing still. I can feel it. The turn of the Earth. The ground beneath our feet is spinning at a thousand miles an hour, and the entire planet is hurtling round the sun at sixty seven thousand miles an hour, and I can feel it. We're falling through space, you and me, clinging to the skin of this tiny little world, and if we let go. That's who I am.",
    "You want weapons? We're in a library. Books are the best weapon in the world. This room's the greatest arsenal we could have. Arm yourself!",
    "Don't blink. Blink and you're dead. They are fast. Faster than you can believe. Don't turn your back. Don't look away. And don't blink. Good Luck.",
    "Never eat pears. They're too squishy and they always make your chin wet. That one's quite important. Write it down."
    ]

  robot.hear /reverse the polarity/i, (res) ->
    res.send res.random whoisms
    
  robot.hear /we just don't know/i, (res) ->
    res.send 'https://68.media.tumblr.com/e91df694c327a40c573d2a18341fc52c/tumblr_inline_on3ehuH0nb1qgs5mf_500.gif'
    
  robot.hear /everything happens so much/i, (res) ->
    res.send 'https://i.imgur.com/pe4Y58G.jpg'
