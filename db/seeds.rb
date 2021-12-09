puts 'Seeding...'
Food.create([{
  dietary_pref: 'Vegan', 
  ingredients: 'Lentils scotch bonnet plantain and rice and peas', 
  cooking_instructions: 'Fry lentils with scotch bonnet and plantain, then boil rice and peas', 
  cooking_time: 30
},
{
  dietary_pref: 'Carnivore',
  ingredients: 'Chicken, jerk seasoning, salt, vinegar',
  cooking_instructions: 'Wash chicken with salt and white vinegar, then poke holes into chicken and marinate with jerk seasoning.',
  cooking_time: 60
},
{
  dietary_pref: 'Vegatarian',
<<<<<<< HEAD
  ingredients: 'Salmon, mixed vegetables, sweet potatoes, all purpose seasoning, salt, pepper and honey',
  cooking_instructions: 'Descale salmon, marinate with all purpose seasoning, thyme and honey and put in oven. Boil vegetables. Marinate sweet potatoes with salt and pepper, and put in oven.',
=======
  ingredients: 'Samon, mixed vegetables, sweet potatoes, all purpose seasoning, salt, pepper and honey',
  cooking_instructions: 'Descale Salmon, marinate with all purpose seasoning, thyme and honey and put in oven. Boil vegetables. Marinate sweet potatoes with salt and pepper, and put in oven.',
>>>>>>> a5ba3ac6 (spelling errors)
  cooking_time: 60
}])
puts 'Seeding done.'
