require "rainbow/ext/string"
require_relative "player"
require_relative "features"
require_relative "UI"
require_relative "art"
require_relative "entities"

#Startup
Startup()
#Charachter Stats
Appearance()
Traits()
#Pause
Wait(@PauseText)

#Tutorial intro
puts @Tutorial +  "Welcome Stranger"
Wait(@Pause)
puts @Tutorial +  "I understand you've come a long way from your original land"
Wait(@Pause)
puts @Tutorial +  "You must be lost by the look of things"
Wait(@Pause)
puts @Tutorial +  "Do you need some help?"
Wait(@Pause)
puts @Tutorial +  "Your'e a quite one I see"
Wait(@Pause)
puts @Tutorial +  "Let's get you trained up shall we?"
Wait(@PauseText)

#Battle Tutorial
puts @Tutorial +  "Let's have a look at your stats and equipment"
Wait(@Pause)
Stats()
Equipment()
Wait(@Pause)
puts @Tutorial +  "Don't look to bad let's put them to use"
Wait(@PauseText)
puts @Tutorial +  "How about this guy for your first enemy?"
Wait(@PauseText)
EnemyStats(Enemies_Soldier[:level],Enemies_Soldier[:Name],Enemies_Soldier[:Attack],Enemies_Soldier[:Defence],Enemies_Soldier[:Health],Enemies_Soldier[:Dialogue])
Wait(@Pause)
Battle(Enemies_Soldier[:Attack],Enemies_Soldier[:Defence],Enemies_Soldier[:Health])
Wait(@Pause)
Battle(Enemies_Soldier[:Attack],Enemies_Soldier[:Defence],Enemies_Soldier[:Health])
Wait(@Pause)
Battle(Enemies_Vampire[:Attack],Enemies_Vampire[:Defence],Enemies_Vampire[:Health])
Wait(@Pause)
