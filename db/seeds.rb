# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    #t.date "birth_date", null: false
    # t.string "color", null: false
    # t.string "name", null: false
    # t.string "sex", limit: 1, null: false
    # t.text "description", null: false
    # t.datetime "created_at", null: false
    # t.datetime "updated_at", null: false

w = Cat.create(birth_date: '2015/01/20',color: "red", name: "whiskers", sex: "M", description: "This cat is so great, he is just great.")
a = Cat.create(birth_date: '1915/01/20',color: "orange", name: "athhole", sex: "F", description: "Loves to eat apples")
