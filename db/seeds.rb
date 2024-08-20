10.times { Category.create!(name: Faker::Lorem.word) }

10.times { Source.create!(name: Faker::Company.name) }

50.times {
  category = Category.all.sample
  source = Source.all.sample
  Article.create!(
    title: Faker::Lorem.sentence,
    url: Faker::Internet.url,
    category: category,
    source: source
  )
}
