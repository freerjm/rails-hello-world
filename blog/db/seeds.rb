# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

office_article = Article
  .create({
    id: SecureRandom.uuid,
    text: "1: Buy a dope desk. 2: Buy a dope computer. 3: Plug in the computer. 4: Enjoy!",
    title: "How to Setup a Dope Home Office"
  })
office_article
  .comments
  .create({
    id: SecureRandom.uuid,
    text: "Dope article dude!",
    likes: 0,
    article_id: office_article.id
  })
office_article
  .comments
  .create({
    id: SecureRandom.uuid,
    text: "Thanks for the tips - can't wait to do this!",
    likes: 3,
    article_id: office_article.id
  })
office_article
  .comments
  .create({
    id: SecureRandom.uuid,
    text: "Step #1 blows my mind.",
    likes: 1000,
    article_id: office_article.id
  })
office_article
  .comments
  .create({
    id: SecureRandom.uuid,
    text: "YESSSS",
    likes: 23,
    article_id: office_article.id
  })
cooking_article = Article
  .create({
    id: SecureRandom.uuid,
    text: "I like to cook sometimes. The end.",
    title: "Cooking is Kinda Dope"
  })
cooking_article
  .comments
  .create({
    id: SecureRandom.uuid,
    text: "Cooking blows",
    likes: 33,
    article_id: cooking_article.id
  })
