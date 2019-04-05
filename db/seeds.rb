# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seed data for users
hai = User.create(username: 'hai', password: "123456", bio: "I know what you cooked last summer.", avatar: "https://i.ibb.co/1TdN4MS/hai-small.png", wins: 10, losses: 2, games_played: 12, highest_score: 160)
# End of seed data for users

# Seed data for plates
clean_plate = Plate.create(name: 'clean_plate', image: "https://i.ibb.co/wCfjbd6/clean-plate.png", kind: 'tool')
# End of seed data for plates

# Seed data for level 1
level1 = Level.create(name: "level1", clock: 90, qualified_points: 50, logo: "https://i.ibb.co/rZVFWQC/logo-level1.png")

watermelon_recipe = Recipe.create(level: level1, name: 'watermelon', image: "https://i.ibb.co/SBFT3G3/watermelon-recipe.png", instruction: "https://i.ibb.co/QjxnRZd/instruction-watermelon.png", kind: 'recipe')
cherries_recipe = Recipe.create(level: level1, name: 'cherries', image: "https://i.ibb.co/qmXdjq1/cherries-recipe.png", instruction: "https://i.ibb.co/rxSpWjb/instruction-cherries.png", kind: 'recipe')
kiwi_recipe = Recipe.create(level: level1, name: 'kiwi', image: "https://i.ibb.co/kQzGhgF/kiwi-recipe.png", instruction: "https://i.ibb.co/Pt10ch4/instruction-kiwi.png", kind: 'recipe')

watermelon = Ingredient.create(name: 'watermelon', image: "https://i.ibb.co/ZSGqz2n/watermelon-1f349.png", kind:'ingredient')
cherries = Ingredient.create(name: 'cherries', image: "https://i.ibb.co/CmGMtmh/cherries-1f352.png", kind:'ingredient')
kiwi = Ingredient.create(name: 'kiwi', image: "https://i.ibb.co/Gpbbx4t/kiwifruit-1f95d.png", kind:'ingredient')


RecipeIngredient.create(recipe: watermelon_recipe, ingredient: watermelon)
RecipeIngredient.create(recipe: cherries_recipe, ingredient: cherries)
RecipeIngredient.create(recipe: kiwi_recipe, ingredient: kiwi)

LevelPlate.create(level: level1, plate: clean_plate)

# End of seed data for level 1
