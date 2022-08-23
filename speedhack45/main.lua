local Players = game.Players

local RunService = game:GetService(“RunService”)

local SpeedPerStud = 0.1 –Configure this to your liking!!!!!

local StudsTraveled = 0

local LastPosition = nil

function playerAdded(player) –Fires when a player joins the server

local Speed = Instance.new(“NumberValue”) –In case the player dies, save their speed

Speed.Name = “SpeedValue”

Speed.Value = 42

Speed.Parent = player

local RootPartHeartbeat = nil

player.CharacterAdded:Connect(function(character)

LastPosition = character.HumanoidRootPart.Position

RootPartHeartbeat = RunService.Heartbeat:Connect(function()

if character:FindFirstChild(“HumanoidRootPart”) then –If the player jumps into the void or their character doesn’t exist for some reason, this will stop this block of code from running

local DistanceFromLastPosition = (character.HumanoidRootPart.Position-LastPosition).magnitude

Speed.Value = Speed.Value+(DistanceFromLastPosition*SpeedPerStud)

character.Humanoid.WalkSpeed = Speed.Value

LastPosition = character.HumanoidRootPart.Position

end

end)

end)

player.CharacterRemoving:Connect(function()

RootPartHeartbeat:Disconnect() –Prevents **serious** memory leaks AND errors!

end)

end

Players.PlayerAdded:Connect(playerAdded)
