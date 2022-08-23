-- if you steal this script then go hell!!

        local Library =
            loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
        local Window = Library.CreateLib("NOTHING SCRIPT hub V1.0", "Serpent")
        -- MAIN
        local Main = Window:NewTab("Main")
        local MainSection = Main:NewSection("Main")

MainSection:NewButton("Silent Aim", "Hitbox changer", function()
local CoreGui = game:GetService("StarterGui") -- Variable of StarterGui
	CoreGui:SetCore("SendNotification", {
  -- Customizable
		Title = "Silent Aim on",
		Text = "Headshot 100%",
		Duration = 7,-- Set the duration to how much you want this to stay
		-- More code in part 2
	})
loadstring(game:HttpGet("https://raw.githubusercontent.com/ziankmodz/ziankmodz/main/aimbot.main", true))()
            end)
    
    MainSection:NewButton("CHAMS", "ALL CHAMS (WHITE)", function()
local CoreGui = game:GetService("StarterGui") -- Variable of StarterGui
	CoreGui:SetCore("SendNotification", {
  -- Customizable
		Title = "Chams on",
		Text = "All chams",
		Duration = 7,-- Set the duration to how much you want this to stay
		-- More code in part 2
	})
loadstring(game:HttpGet("https://raw.githubusercontent.com/ziankmodz/ziankmodz/main/chamsv1.main", true))()
            end)
    
        MainSection:NewButton("COPY DC LINK", "Discord link", function()
local CoreGui = game:GetService("StarterGui") -- Variable of StarterGui
	CoreGui:SetCore("SendNotification", {
  -- Customizable
		Title = "Paste To Google",
		Text = "Copied To Clipboard",
		Duration = 7, -- Set the duration to how much you want this to stay
		-- More code in part 2
	})
    setclipboard("https://discord.gg/3XGwrT8Gef")
	toclipboard("https://discord.gg/3XGwrT8Gef")
            end)
        
        MainSection:NewButton("COPY DC LINK", "Discord link", function()
local CoreGui = game:GetService("StarterGui") -- Variable of StarterGui
	CoreGui:SetCore("SendNotification", {
  -- Customizable
		Title = "Paste To Google",
		Text = "Copied To Clipboard",
		Duration = 7, -- Set the duration to how much you want this to stay
		-- More code in part 2
	})
local Players = game.Players

local RunService = game:GetService(“RunService”)

local SpeedPerStud = 0.1 –Configure this to your liking!!!!!

local StudsTraveled = 0

local LastPosition = nil

function playerAdded(player) –Fires when a player joins the server

local Speed = Instance.new(“NumberValue”) –In case the player dies, save their speed

Speed.Name = “SpeedValue”

Speed.Value = 45

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
            end)
  
