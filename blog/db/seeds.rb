# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

officeArticle = Article.create({text: "1: Buy a dope desk. 2: Buy a dope computer. 3: Plug in the computer. 4: Enjoy!", title: "How to Setup a Dope Home Office"})
officeArticle.comments.create({text: "Dope article dude!", likes: 0})
officeArticle.comments.create({text: "Thanks for the tips - can't wait to do this!", likes: 3})
officeArticle.comments.create({text: "Step #1 blows my mind.", likes: 1000})
officeArticle.comments.create({text: "YESSSS", likes: 23})
cookingArticle = Article.create({text: "I like to cook sometimes. The end.", title: "Cooking is Kinda Dope"})
cookingArticle.comments.create({text: "Cooking blows", likes: 33})
