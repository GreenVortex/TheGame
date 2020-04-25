require "rainbow/ext/string"

#Setting the screensize
def ScreenSize(width,height)
  system("mode " + width.to_s + "," + height.to_s)
end

#Pause
@Pause = 1
@PauseText = 2
def Wait(sleepTime)
  if sleepTime == @Pause
      @Wait = gets
  elsif sleepTime ==  @PauseText
      puts ""
      puts "Press enter to continue".color(:yellow)
      @Wait = gets
      ClearScreen()
  else
      sleep(sleepTime)
  end
end

#Clear the screen
def ClearScreen()
system("cls")
end

#Enemy stats
def EnemyStats(level,name,attack,defence,health,dialogue)
puts ""
puts "level:".color(:red) + level.to_s
puts "Name:".color(:red) + name
puts "Attack:".color(:red) + attack.to_s
puts "Defence:".color(:red) + defence.to_s
puts "Health:".color(:red) + health.to_s
puts dialogue
end

#Battle System
def Battle(enemyattack,enemydefence,enemyhealth)
  @RevertEnemyLifeValue = enemyhealth
  while enemyhealth > 0
    @StartEnemyLife = enemyhealth
    enemyhealth = (enemyhealth+enemydefence) - PlayerStats[:Attack]
    @Damage = @StartEnemyLife - enemyhealth
    puts "You've done:" + @Damage.to_s.color(:red) + " Damage".color(:red)
    @Damage = 0
    if enemyhealth <= 0
      puts "You Triumphed!".color(:green)
      enemyhealth = @RevertEnemyLifeValue
      PlayerStats[:Health] = PlayerStats[:MaxHealth]
      Wait(@PauseText)
      break
    end
    Wait(@Pause)
    if PlayerStats[:Health] <= 0
      puts "Match Lost".color(:red)
      puts @Text_GameOver
      Wait(@PauseText)
      abort()
    else
      @StartPlayerLife = PlayerStats[:Health]
      PlayerStats[:Health] = (PlayerStats[:Health] + PlayerStats[:Defence]) - enemyattack
      @Damage = @StartPlayerLife - PlayerStats[:Health]
      puts "You've recieved:" + @Damage.to_s.color(:red) + " Damage".color(:red)
      @Damage = 0
    end
  end
end
