Article.destroy_all
Author.destroy_all
Magazine.destroy_all

a1 = Author.create( name: "Edgar Allen Poe", age: 45 )
a2 = Author.create( name: "Robert Frost", age: 45 )
a3 = Author.create( name: "Hunter S. Thompson", age: 61)

m1 = Magazine.create( name: "Sports Illustrated", category: "Sports")
m2 = Magazine.create( name: "Max PC", category: "Technology")
m3 = Magazine.create( name: "Rolling Stone", category: "Lifestyle")

Article.create( title: "Loving Them Sports", author: a1, magazine: m1)
Article.create( title: "How to Code", author: a2, magazine: m2)
Article.create( title: "Fear and Loathing", author: a3, magazine: m3)