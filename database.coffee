# for database 
mongoose = require 'mongoose'

mongoose.connect process.env.MONGOLAB_URI

# a single user in the database
Player = new mongoose.Schema { name: String}

player = new Player
player.name = 'Testuser'

player.save (err) ->
  console.log("saving")

MyModel.find {}, (err, docs) ->
  _.each docs, (d)-> console.log(d)

