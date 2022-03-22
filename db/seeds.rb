# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Post.destroy_all
User.destroy_all
ActiveRecord::Base.connection.tables.each do |t|
    ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

user2 = User.create!(name: 'Victor', email: 'vic@gmail.com')
user3 = User.create!(name: 'Joshua', email: 'josh@gmail.com')
user4 = User.create!(name: 'john doe', email: 'john@gmail.com')
user5 = User.create!(name: 'Glorey', email: 'glorey@gmail.com')

user1 = User.create!(name: 'Tufoin', email: 'tufoin@gmail.com')

post2= user5.posts.create!(title: 'Effect of Bush Burning', description: 'Bush burning, whether the result of a wildfire or a controlled burn, affects not only the appearance of the landscape, but the quality of the soil. The landscape may quickly recover after a fire, with fresh new growth and emerging seedlings. However, bush burning has a negative effect on soil conditions, and soil may take much longer to recover, according to the National Resources Conservation Service.', picture: 'https://images.unsplash.com/photo-1518495973542-4542c06a5843?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fG5hdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
post1 = user1.posts.create!(title: 'Over flooding and Causes', description: 'Believe it or not, flooding is the deadliest type of severe weather. There’s probably a lot about floods and flooding you don’t know.

    In this guide, we’ll go over everything there is to know about flooding; answering common questions like “What causes flooding?” and “Where does flooding occur?”
    
    Use the buttons below to jump to the flood facts you care about the most, or read the entire Flooding 101 guide to become an expert!', picture: 'https://images.unsplash.com/photo-1510784722466-f2aa9c52fff6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fG5hdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
post3 = user3.posts.create!(title: 'How to stop bush burning', description: 'Believe it or not, flooding is the deadliest type of severe weather. There’s probably a lot about floods and flooding you don’t know.

    In this guide, we’ll go over everything there is to know about flooding; answering common questions like “What causes flooding?” and “Where does flooding occur?”
    
    Use the buttons below to jump to the flood facts you care about the most, or read the entire Flooding 101 guide to become an expert!', picture: 'https://images.unsplash.com/photo-1518837695005-2083093ee35b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fG5hdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
user1.posts.create!(title: 'Thunder struck a priest', description: 'Suspected herdsmen, on Wednesday, attacked a Catholic priest and the Vicar of St Theresa’s Parish Agulu, Rev Fr Cornelius Okoye, along Ugwuoba/Amansea axis, Enugu- Onitsha Expressway, Enugu State.

    The priest, who narrowly escaped death, recounted his ordeal.
    He said he was coming back from a crusade when the herdsmen attacked him.
    
    According to him, his attackers shot at his car severally. They attacked him with different weapons and took him to a thick forest, where they blindfolded him.
    He added that they made attempts to open his heart with a dagger before lightning and thunder', picture: 'https://media.istockphoto.com/photos/rhine-river-flooded-a-street-picture-id1302466743?b=1&k=20&m=1302466743&s=170667a&w=0&h=2tuHqaYov8MSmZ81LgT-qDeaQJoYPGY2hQWCMtEBjsE=')
user1.posts.create!(title: 'Effect of Fossil fuel Burning', description: 'When fossil fuels are burned, they release large amounts of carbon dioxide, a greenhouse gas, into the air. Greenhouse gases trap heat in our atmosphere, causing global warming. Already the average global temperature has increased by 1C. Warming above 1.5°C risks further sea level rise, extreme weather, biodiversity loss and species extinction, as well as food scarcity, worsening health and poverty for millions of people worldwide.', picture: 'https://images.unsplash.com/photo-1475924156734-496f6cac6ec1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fG5hdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
user1.posts.create!(title: 'Is climate change a scam?', description: 'As stated by the Intergovernmental Panel on Climate Change (IPCC), the largest contributor to global warming is the increase in atmospheric carbon dioxide (CO2) since 1750, particularly from fossil fuel combustion, cement production, and land use changes such as deforestation.[5] The IPCC\'s Fifth Assessment Report (AR5) states:

Human influence has been detected in warming of the atmosphere and the ocean, in changes in the global water cycle, in reductions in snow and ice, in global mean sea level rise, and in changes in some climate extremes. This evidence for human influence has grown since AR4. It is extremely likely (95–100%) that human influence has been the dominant cause of the observed warming since the mid-20th century

— IPCC AR5 WG1 Summary for Policymakers[6][7]
The evidence for global warming due to human influence has been recognized by the national science academies of all the major industrialized countries.[8] No scientific body of national or international standing maintains a formal opinion dissenting from the summary conclusions of the IPCC.[9]

Despite this scientific consensus on climate change, allegations have been made that scientists and institutions involved in global warming research are part of a global scientific conspiracy or engaged in a manipulative hoax.[10] There have been allegations of malpractice, most notably in the Climatic Research Unit email controversy (\"ClimateGate\"). Eight committees investigated these allegations and published reports, each finding no evidence of fraud or scientific misconduct.[11] The Muir Russell report stated that the scientists \"rigor and honesty as scientists are not in doubt,\" that the investigators \"did not find any evidence of behavior that might undermine the conclusions of the IPCC assessments,\" but that there had been \"a consistent pattern of failing to display the proper degree of openness.\"[12][13] The scientific consensus that global warming is occurring as a result of human activity remained unchanged at the end of the investigations', picture: 'https://images.unsplash.com/photo-1490730141103-6cac27aaab94?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fG5hdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
user2.posts.create!(title: 'How do we cure our planet', description: 'Our planet supports the life to more than 8.7 million species and is currently experiencing extreme degradation and unprecedented climate change. 97% of scientists believe much of our planet’s challenges are caused by human activity. At Heal The Planet, we believe that Small Acts create Huge Impact, and we are extremely excited to share our
    100+ Ways To Heal The Planet.  
    
    Most people are not aware that Americans are the biggest consumers on the planet. As a small example, even though Americans constitute less than 5% of the world’s population, we consume 24% of the world’s energy. The greatest concern to our health and well-being, as well as our planet, is that we’re simply not conscious of what we buy, how it’s made, where it comes from, or the massive destruction caused in the manufacturing process. Simply reducing your overall consumption is the greatest act you can do for our planet. If there is something you need to buy, please consider purchasing it from a conscious company whose core values and integrity will Heal The Planet. You can find over 600 companies like this on our new sister website, TheConsciousBuyer.com.', picture: 'https://images.unsplash.com/photo-1431794062232-2a99a5431c6c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fG5hdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
user2.posts.create!(title: 'Eating healthy effective for climate change', description: 'World Food Day is a call to make healthy and sustainable diets affordable and accessible for everyone, while nurturing the planet at the same time.

    But how can this be achieved?
    
    One way, according to a new study, would be to introduce different ways for countries across the world to adapt their diets.
    
    Researchers at the US-based Johns Hopkins Center for a Livable Future looked at diets in 140 countries across the world and measured the ecological impact of their food production in order to identify ways to mitigate climate change.
    
    The study, called "Country-specific dietary shifts to mitigate climate and water crises",  found that an important first step would be to shift Europe and the United States away from a diet heavy in meat and dairy.
    
    But study co-author, Martin Bloem, notes that the solutions needed are not one-size-fits-all.', picture: 'https://images.unsplash.com/photo-1470770903676-69b98201ea1c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fG5hdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
user2.posts.create!(title: 'Climate change in the larger picture', description: 'Global warming is the defining issue of our time, with significant and serious impacts already felt here in the UK and around the world.

    To find out more about the impacts and how to protect your home and loved ones from the worst of climate change, such as floods and overheating, then please read on.
    
    It\'s relatively easy to prevent climate change from getting far worse. The solutions are switching to clean energy and a low-carbon lifestyle. However, this window of opportunity is for a limited period before the damage is too great to repair hence, the need to slash pollution.', picture: 'https://images.unsplash.com/photo-1473773508845-188df298d2d1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDF8fG5hdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
user2.posts.create!(title: 'Eat Green Live Green', description: 'What is green eating? This simple sustainable eating guide shows how simple shifts can mean eating a green, healthy diet that is good for you and the planet.You’re mindful about sustainability. You carry a reusable grocery bag, recycle cans and bottles, and have even dabbled in composting. You try to choose eco-friendly cleaning products, ride your bike on short errands, and even did a closet purge that one week you decided to be a minimalist.', picture: 'https://images.unsplash.com/photo-1420745981456-b95fe23f5753?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTd8fG5hdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
user2.posts.create!(title: 'Advance towards Green Energy', description: 'Green energy is any energy type that is generated from natural resources, such as sunlight, wind or water. It often comes from renewable energy sources although there are some differences between renewable and green energy, which we will explore, below.

    The key with these energy resources are that they don\'t harm the environment through factors such as releasing greenhouse gases into the atmosphere.', picture: 'https://images.unsplash.com/photo-1499002238440-d264edd596ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjZ8fG5hdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')

firstcomment =user5.comments.create!( post: post2, description: 'this is a eat posts by user1')
firstcomment =user1.comments.create!( post: post1, description: 'this is a great posts by user1')
firstcomment =user3.comments.create!( post: post3, description: 'this is a great posts by user1')
