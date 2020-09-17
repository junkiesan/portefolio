# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts "💥💥💥 Destroy Projects 💥💥💥"
Project.destroy_all

puts "💥💥💥 Destroy Languages 💥💥💥"
Language.destroy_all

puts "🌚🌚🌚 Project in creation... 🌚🌚🌚"
project_100km = Project.new(title: '100km 🗺', description: '⚠️ Lancez la recherche avec Aix-en-Provence ⚠️ Des idées de randonnées près de Paris, aux joies de l’itinérance en Bourgogne-Franche-Comté en passant par la découverte de la Nouvelle-Aquitaine, en France les escapades rêvées sont à portée de main.', url: 'http://www.100km.xyz/')
#photo = "100_km.png"
photo = URI.open('http://res.cloudinary.com/dxmeh3in0/image/upload/v1595270329/ltagjvkvftah0mqlidkv.png')
project_100km.photo.attach(io: photo, filename: 'project_100km.png', content_type: 'image/png')
project_100km.languages = Language.all
project_100km.save!

puts "First Project created!"

puts "🌚🌚🌚 Project in creation... 🌚🌚🌚"
truckabulous = Project.new(title: 'Truckabulous 🚚', description: 'Découvrez nos camions concept et vivez une expérience personnalisée pour vos événements! Que vous fêtiez un anniversaire, un diplôme, une fête de bureau ou des vacances, nos camions concept rendront votre fête encore plus mémorable!', url: 'https://truckabulous.herokuapp.com/')
#photo = "project_100km.png"
photo = URI.open('http://res.cloudinary.com/dxmeh3in0/image/upload/v1595270354/wgzvlztmjwwquwyxy8qm.png')
truckabulous.photo.attach(io: photo, filename: 'truckabulous.png', content_type: 'image/png')
truckabulous.languages = Language.all

truckabulous.save!

puts "Second Project created!"

flore = Project.new(title: 'Flore 🌱', description: '💻 Site en construction 💻 Apprenez à gérer votre jardin composez de vos nombreuses plantes. Doonez un petit nom et ne laissez plus vos plantes mourir de soif ! Découvrez et évcrivez des conseils de jardinage sur le blog. Make Plants Great Again avec Flore !', url: 'https://flore-project.herokuapp.com/')
photo = URI.open('https://res.cloudinary.com/dxmeh3in0/image/upload/v1600356870/flore.png')
flore.photo.attach(io: photo, filename: 'flore.png', content_type: 'image/png')
flore.languages = Language.all

flore.save!

puts "Second Project created!"

ruby = Language.new(name: 'Ruby')
photo = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Ruby_logo.svg/1024px-Ruby_logo.svg.png')
ruby.photo.attach(io: photo, filename: 'ruby.png', content_type: 'image/png')
ruby.save!
puts "1 Languages"

rails = Language.new(name: 'Rails')
photo = URI.open('https://miro.medium.com/max/400/1*eRErB-NQYgwF52eUUK_kkQ.png')
rails.photo.attach(io: photo, filename: 'rails.png', content_type: 'image/png')
rails.save!

puts "2 Languages"

bootstrap = Language.new(name: 'Bootstrap')
photo = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Bootstrap_logo.svg/1200px-Bootstrap_logo.svg.png')
bootstrap.photo.attach(io: photo, filename: 'bootstrap.png', content_type: 'image/png')
bootstrap.save!

puts "3 Languages"

javascript = Language.new(name: 'JavaScript')
photo = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Unofficial_JavaScript_logo_2.svg/1200px-Unofficial_JavaScript_logo_2.svg.png')
javascript.photo.attach(io: photo, filename: 'javascript.png', content_type: 'image/png')
javascript.save!

puts "4 Languages"

html = Language.new(name: 'HTML')
photo = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/HTML5_logo_and_wordmark.svg/768px-HTML5_logo_and_wordmark.svg.png')
html.photo.attach(io: photo, filename: 'html.png', content_type: 'image/png')
html.save!

puts "5 Languages"

css = Language.new(name: 'CSS')
photo = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/CSS3_logo_and_wordmark.svg/1200px-CSS3_logo_and_wordmark.svg.png')
css.photo.attach(io: photo, filename: 'css.png', content_type: 'image/png')
css.save!
