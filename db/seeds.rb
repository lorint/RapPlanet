# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

RapperSong.destroy_all
Song.destroy_all
Rapper.destroy_all

Airport.destroy_all

Airport.create(name: "Louis Armstrong", code: "MSY")
Airport.create(name: "Bergstrom", code: "AUS")
Airport.create(name: "Mahlon Sweet Field", code: "EUG")
Airport.create(name: "Truckee", code: "TRK")
Airport.create(name: "Wilcox Field", code: "MIA")
Airport.create(name: "Reagan", code: "DCA")
Airport.create(name: "Martha's Vineyard", code: "MVY")


k = Rapper.create(name: "Kendrick Lamar", age: 26)
m = Rapper.create(name: "Macklemore", age: 30)
d = Rapper.create(name: "Dr. Dre", age: 49)
dr = Rapper.create(name: "Drake", age: 27)
l = Rapper.create(name: "Lil Wayne", age: 31)
r = Rapper.create(name: "Ryan Lewis", age: 26)

the_recipe = Song.create(title: "The Recipe", url: "http://vimeo.com/55626514", duration: 345)
bdkmv = Song.create(title: "Bitch, don't kill my vibe", url: "https://www.youtube.com/watch?v=GF8aaTu2kg0", duration: 312)
poetic_justice = Song.create(title: "Poetic Justice", url: "https://www.youtube.com/watch?v=yyr2gEouEMM", duration: 327)
adhd = Song.create(title: "A.D.H.D.", url: "https://www.youtube.com/watch?v=QjlFqgRbICY", duration: 225)
cant_hold_us = Song.create(title: "Can't Hold Us", url: "https://www.youtube.com/watch?v=bgjwAZ9TR3U", duration: 273)


# # And here's where we relate all these songs to rappers
# l.songs.create(title: "Love me", duration: 180)
# l.songs.create(title: "Moment", duration: 180)
# d.songs.create(title: "Straight outta compton", duration: 280)
# dr.songs.create(title: "Started from the bottom", duration: 200)
# m.songs.create(title: "Thrift shop", duration: 240)
# m.songs.create(title: "Can't hold us", duration: 240)
# bdkmv.rappers << k
# the_recipe.rappers << k
# the_recipe.rappers << d
# poetic_justice.rappers << k
# poetic_justice.rappers << dr
# adhd.rappers << k
# cant_hold_us.rappers << m
# cant_hold_us.rappers << r

