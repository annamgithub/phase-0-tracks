# In this exercise we shall assume I have a desk with two drawers, each with various items inside.


desk = {
  desktop: {
    total_item_count: 16,
    pencil_count_in_jar: 10,
    other_items: 6
    },
    desktop_items: [
      'pencil jar', 
      'laptop', 
      'extra monitor', 
      'external keyboard', 
      'notebook', 
      'coffee cup'
    ],

  drawer_1: {
    total_item_count: 3
    },
    drawer_1_items: [
      '3 empty notebooks'
    ],

  drawer_2: {
    total_item_count: 2
    },
    drawer_2_items: [
      'empty envelope',
      'fountain pen'
    ]
}

desktopitems = desk[:desktop][:total_item_count]
penciljar = desk[:desktop_items][0]
pencilcount = desk[:desktop][:pencil_count_in_jar]
fountainpen = desk[:drawer_2_items][1]

puts "The desktop has a total of #{desktopitems} items. One of these items is a #{penciljar} containing #{pencilcount} pencils."

puts "When I want to write with a fancy pen, I open my second drawer and take out my #{fountainpen}."

desk[:drawer_2_items].push('bottle of ink')
ink = desk[:drawer_2_items][2]

puts "When it runs out of ink, I reach into my second drawer for my #{ink}."

