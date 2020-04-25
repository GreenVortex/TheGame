require "rainbow/ext/string"

#Hashes
PlayerPhisical = Hash.new
PlayerPersonality = Hash.new
PlayerEquipment = Hash.new

#Physical Appearance
@Race = ["Oriantal","White","Black"]
@Age = Random.rand(16..76).to_s
@Height = Random.rand(132..210).to_s + "cm"
@Hair_Color = ["Blond","Ginger","Brown","Strawberry blond"]
@Eye_Color = ["Blue","Hazel","Green","Brown","Purple"]
@Shoe_Size = Random.rand(3..14).to_s
@Gender = ["Male","Female"]
PlayerPhisical[:Race] = @Race.sample
PlayerPhisical[:Age] = @Age
PlayerPhisical[:Height] = @Height
PlayerPhisical[:Hair_Color] = @Hair_Color.sample
PlayerPhisical[:Eye_Color] = @Eye_Color.sample
PlayerPhisical[:Shoe_Size] = @Shoe_Size
PlayerPhisical[:Gender] = @Gender.sample

#Personality
@Sexual_Orientation = ["Heterosexual","Homosexual","Bisexual"]
PlayerPersonality[:Sexual_Orientation] = @Sexual_Orientation.sample

#Abilities
@Abilities = ["Fireball","Necromancy","Telekinesis"]
PlayerEquipment[:Ability01] = @Abilities.sample
PlayerEquipment[:Ability02] = @Abilities.sample


#Charachter Stats Display
def Appearance()
  puts "-----------------------------------"
  puts "Appearance".color(:cyan)
  puts "-----------------------------------"
  puts "Race:" + PlayerPhisical[:Race].color(:green)
  puts "Age:" + PlayerPhisical[:Age].color(:green)
  puts "Height:" + PlayerPhisical[:Height].color(:green)
  puts "Hair Color:" + PlayerPhisical[:Hair_Color].color(:green)
  puts "Eye Color:" + PlayerPhisical[:Eye_Color].color(:green)
  puts "Shoe size:" + PlayerPhisical[:Shoe_Size].color(:green)
  puts "Gender:" + PlayerPhisical[:Gender].color(:green)
  puts ""
end

def Traits()
  puts "-----------------------------------"
  puts "Personality".color(:cyan)
  puts "-----------------------------------"
  puts "Orientation:" + PlayerPersonality[:Sexual_Orientation].color(:green)
  puts ""
end

def Equipment()
  puts "-----------------------------------"
  puts "Abilities".color(:cyan)
  puts "-----------------------------------"
  puts  "Ability:" + PlayerEquipment[:Ability01].color(:green)
  puts  "Ability:" + PlayerEquipment[:Ability02].color(:green)
  puts ""
end

def Stats()
  puts "-----------------------------------"
  puts "Stats".color(:cyan)
  puts "-----------------------------------"
  puts "Level:" + PlayerStats[:Level].to_s.color(:green)
  puts "Attack:" + PlayerStats[:Attack].to_s.color(:green)
  puts "Defence:" + PlayerStats[:Defence].to_s.color(:green)
  puts "Health:" + PlayerStats[:Health].to_s.color(:green)
end
