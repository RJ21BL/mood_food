puts 'Seeding...'

@ingredients = ['Lentils', 'Scotch bonnet', 'Plantain', 'rice and peas']
@cooking_instructions = ['Fry lentils with scotch bonnet and plantain, then boil rice and peas']

Food.create([{
  name: 'Plant power',
  dietary_pref: 'Vegan', 
  ingredients: @ingredients,
  cooking_instructions: @cooking_instructions,
  cooking_time: 30,
  allergies: 'None'
},
{
  name: 'Jerk chicks',
  dietary_pref: 'Carnivore',
  ingredients: 'Chicken, jerk seasoning, salt, vinegar',
  cooking_instructions: 'Wash chicken with salt and white vinegar, then poke holes into chicken and marinate with jerk seasoning.',
  cooking_time: 60,
  allergies: 'May contain traces of nuts'
},
{
  name: 'Go fish',
  dietary_pref: 'Vegatarian',
  ingredients: 'Salmon, mixed vegetables, sweet potatoes, all purpose seasoning, salt, pepper and honey',
  cooking_instructions: 'Descale salmon, marinate with all purpose seasoning, thyme and honey and put in oven. Boil vegetables. Marinate sweet potatoes with salt and pepper, and put in oven.',
  cooking_time: 60,
  allergies: 'May contain traces of wheat'
}])
puts 'Seeding done.'
