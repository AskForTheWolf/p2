Post.destroy_all
Comment.destroy_all

#Seeding the posts so that there's "stock" data in there to look at
#How boring would this be if you had to make everything yourself every time?
#I also liked the last entry from Scribble so I kept some of the text
posts = Post.create!([
  {title:"The Nathan Explosion", body: "EXACTLY ONE HUNDRED BEERS.", glass: "BEERS."},
  {title:"Ginger Margarita", body: "1 oz of silver tequila, one ounce of Domaine de Canton, 4 ounces of sour mix.  Shake, blend, or roll, then serve.", glass: "Rocks, cocktail, or highball"},
  {title:"Big Data’s Radical Potential", body: "Four loko and then you leave", glass: "The can. Both ways."}
])

comments = Comment.create([
  {body:"Delicious", post: posts[0]},
  {body:"Try setting it on fire.  It didn't work, but I did get a free visit from the fire dept.", post: posts[1]},
  {body:"EXACTLY WHAT I NEEDED", post: posts[2]}
])
