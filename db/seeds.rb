# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


en_US = Lang.create(code: "en_US", name: "English (US)")
pt_BR = Lang.create(code: "pt_BR", name: "Portuguese (Brasil)")

sentence1 = en_US.sentences.create(text: "The cat is in the bag")
sentence1.next = en_US.sentences.create(text: "The book is on the table")
sentence1.save