# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.destroy_all
User.destroy_all
Review.destroy_all
Cast.destroy_all
Celebrity.destroy_all
Rating.destroy_all


require 'json'
#-------------------------------------------Movie1 ---------------------------------------------------------------------------------------------------------------------
@url = "http://www.omdbapi.com/?t=Top+Gun+&apikey=e19affc1"


@response= RestClient.get(@url)
@body = @response.body 
@output = JSON.parse(@body)






Movie.create(title: @output["Title"], year: @output["Year"], plot: @output["Plot"], genre: @output["Genre"],director: @output["Director"], award: @output["Awards"], poster: @output["Poster"] )
# ---------------------------------------Movie2---------------------------------------------------------------------------------------------------------------------------

@url1 = "http://www.omdbapi.com/?i=tt3896198&apikey=e19affc1"

@response= RestClient.get(@url1)
@body1 = @response.body 
@output1 = JSON.parse(@body1)



Movie.create(title: @output1["Title"], year: @output1["Year"], plot: @output1["Plot"], genre: @output1["Genre"],director: @output1["Director"], award: @output1["Awards"], poster: @output1["Poster"]   )


#------------------------------------Movie3---------------------------------------------------------------------------------



@url2 = "http://www.omdbapi.com/?t=The+Shawshank+Redemption+&apikey=e19affc1"

@response= RestClient.get(@url2)
@body2 = @response.body 
@output2 = JSON.parse(@body2)



Movie.create(title: @output2["Title"], year: @output2["Year"], plot: @output2["Plot"], genre: @output2["Genre"],director: @output2["Director"], award: @output2["Awards"],poster: @output2["Poster"]  )

#------------------------------------Movie4---------------------------------------------------------------------------------



@url3 = "http://www.omdbapi.com/?t=%09%09Spenser+Confidential+&apikey=e19affc1"

@response= RestClient.get(@url3)
@body3 = @response.body 
@output3 = JSON.parse(@body3)


Movie.create(title: @output3["Title"], year: @output3["Year"], plot: @output3["Plot"], genre: @output3["Genre"],director: @output3["Director"], award: @output3["Awards"],poster: @output3["Poster"]  )


#------------------------------------Movie5---------------------------------------------------------------------------------



@url4 = "http://www.omdbapi.com/?t=Onward&apikey=e19affc1"

@response= RestClient.get(@url4)
@body4 = @response.body 
@output4 = JSON.parse(@body4)



Movie.create(title: @output4["Title"], year: @output4["Year"], plot: @output4["Plot"], genre: @output4["Genre"],director: @output4["Director"], award: @output4["Awards"], poster: @output4["Poster"]  )

#------------------------------------Movie6---------------------------------------------------------------------------------



@url5 = "http://www.omdbapi.com/?t=%09The+Platform&apikey=e19affc1"

@response= RestClient.get(@url5)
@body5 = @response.body 
@output5 = JSON.parse(@body5)


Movie.create(title: @output5["Title"], year: @output5["Year"], plot: @output5["Plot"], genre: @output5["Genre"],director: @output5["Director"], award: @output5["Awards"], poster: @output5["Poster"] )


#------------------------------------Movie7---------------------------------------------------------------------------------



@url6 = "http://www.omdbapi.com/?t=%09Trolls+World+Tour&apikey=e19affc1"

@response= RestClient.get(@url6)
@body6 = @response.body 
@output6 = JSON.parse(@body6)


Movie.create(title: @output6["Title"], year: @output6["Year"], plot: @output6["Plot"], genre: @output6["Genre"],director: @output6["Director"], award: @output6["Awards"],poster: @output6["Poster"]  )


#------------------------------------Movie8---------------------------------------------------------------------------------



@url7 = "http://www.omdbapi.com/?t=%09The+Gentlemen&apikey=e19affc1"

@response= RestClient.get(@url7)
@body7 = @response.body 
@output7 = JSON.parse(@body7)



Movie.create(title: @output7["Title"], year: @output7["Year"], plot: @output7["Plot"], genre: @output7["Genre"],director: @output7["Director"], award: @output7["Awards"],poster: @output7["Poster"]  )

#------------------------------------Movie9---------------------------------------------------------------------------------



@url8 = "http://www.omdbapi.com/?t=%09Extraction&apikey=e19affc1"

@response= RestClient.get(@url8)
@body8 = @response.body 
@output8 = JSON.parse(@body8)




Movie.create(title: @output8["Title"], year: @output8["Year"], plot: @output8["Plot"], genre: @output8["Genre"],director: @output8["Director"], award: @output8["Awards"],poster: @output8["Poster"]  )


#------------------------------------Movie10---------------------------------------------------------------------------------



@url9 = "http://www.omdbapi.com/?t=%09Once+Upon+a+Time...+in+Hollywood&apikey=e19affc1"

@response= RestClient.get(@url9)
@body9 = @response.body 
@output9 = JSON.parse(@body9)


Movie.create(title: @output9["Title"], year: @output9["Year"], plot: @output9["Plot"], genre: @output9["Genre"],director: @output9["Director"], award: @output9["Awards"], poster: @output9["Poster"] )

#------------------------------------Movie11---------------------------------------------------------------------------------



@url10 = "http://www.omdbapi.com/?t=%09Parasite&apikey=e19affc1"

@response= RestClient.get(@url10)
@body10 = @response.body 
@output10 = JSON.parse(@body10)


Movie.create(title: @output10["Title"], year: @output10["Year"], plot: @output10["Plot"], genre: @output10["Genre"],director: @output10["Director"], award: @output10["Awards"],poster: @output10["Poster"]  )


#------------------------------------Movie12---------------------------------------------------------------------------------



@url11 = "http://www.omdbapi.com/?t=%09Bad+Boys+for+Life&apikey=e19affc1"

@response= RestClient.get(@url11)
@body11 = @response.body 
@output11 = JSON.parse(@body11)


Movie.create(title: @output11["Title"], year: @output11["Year"], plot: @output11["Plot"], genre: @output11["Genre"],director: @output11["Director"], award: @output11["Awards"], poster: @output11["Poster"] )



#--------------------------------------------Celebrity---------------------------------------------------------------------------------------------------------------------------

 

Celebrity.create(name:@output["Actors"].split(",")[0] )
Celebrity.create(name:@output["Actors"].split(",")[1] )
Celebrity.create(name:@output7["Actors"].split(",")[0])
Celebrity.create(name:@output2["Actors"].split(",")[1])
Celebrity.create(name:@output2["Actors"].split(",")[2])
#-------------------------------------------User--------------------------------------------------------------------------------------------------------------------------------------



#-----------------------------------------Review---------------------------------------------------------------------------------------------------------------------------------------





#-----------------------------------------------Cast---------------------------------------------------------------------------------------------------------------------------------------




