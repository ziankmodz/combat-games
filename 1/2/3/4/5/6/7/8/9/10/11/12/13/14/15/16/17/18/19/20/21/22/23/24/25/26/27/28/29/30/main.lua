local walkSpeed = 48



local gmt = getrawmetatable(game)

setreadonly(gmt, false)

local oldindex = gmt.__index

gmt.__index = newcclosure(function(self,b)

if b == "WalkSpeed" then

return 16

end

return oldindex(self,b)

end)



game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = walkSpeed
