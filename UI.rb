require "rainbow/ext/string"

#Startup
def Startup()
ScreenSize(80,40)
print @Text_Title
print @Text_Author
puts ""
puts "Press any key to begin".color(:yellow)
Wait(@Pause)
ClearScreen()
print @Text_Title_Character
end

#Preset Identifiers
@Tutorial = "@".color(:yellow) + "Tutorial:".color(:cyan)
