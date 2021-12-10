puts 'Seeding...'

@ingredients = ['Lentils', 'Scotch bonnet', 'Plantain', 'rice and peas']
@cooking_instructions = ['Fry lentils with scotch bonnet and plantain', 'then boil rice and peas']

Food.create([{
  name: 'Plant power',
  dietary_pref: 'Vegan', 
  ingredients: @ingredients,
  cooking_instructions: @cooking_instructions,
  cooking_time: 30,
  allergies: 'None'
}])
puts 'Seeding done.'
