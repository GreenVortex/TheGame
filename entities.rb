#Starter Player
PlayerStats = Hash.new
PlayerStats[:Level] = 1
PlayerStats[:Attack] = 5
PlayerStats[:Defence] = 4
PlayerStats[:MaxHealth] = 10
PlayerStats[:Health] = 10

#Soldier
Enemies_Soldier = Hash.new
Enemies_Soldier[:Level] = 1
Enemies_Soldier[:Name] = "Soldier"
Enemies_Soldier[:Attack] = 5
Enemies_Soldier[:Defence] = 4
Enemies_Soldier[:Health] = 2
Enemies_Soldier[:Dialogue] = "@Soldier:".color(:red) + " I'm gonna watch you  bleed!"

#Vampire
Enemies_Vampire = Hash.new
Enemies_Vampire[:Level] = 3
Enemies_Vampire[:Name] = "Vampire"
Enemies_Vampire[:Attack] = 5
Enemies_Vampire[:Defence] = 5
Enemies_Vampire[:Health] = 6
Enemies_Vampire[:Dialogue] = "@Soldier:".color(:red) + " You looking like a real snacc!"
