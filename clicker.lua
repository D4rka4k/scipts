getgenv().autotap = false;
getgenv().autorebirth = false;
getgenv().autohatch = false;


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("PrisonLife", "Sentinel")


local Tab = Window:NewTab("Farming")
local Section = Tab:NewSection("Farming")
Section:NewToggle("ToggleText", "ToggleInfo", function(state)
end)

local Tab = Window:NewTab("Pets")
local Section = Tab:NewSection("Pets")


local Tab = Window:NewTab("Teleports")
local Section = Tab:NewSection("Teleports")




function dotap()
    spawn (function()
        while autotap == true do
            local args = {[1] = 1}   
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ClickService.Click:FireServer(unpack(args))
            wait()
        end
    end)
end
dotap()

function Autorebirths(rebirthamount)
spawn(function()
    while autorebirth do 
        local args = {[1] = rebirthamount}
        game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.BuyRebirths:FireServer(unpack(args))
        wait()
        end
    end)
end

Autorebirths(10)



function buyegg(eggtype)
    spawn(function()
        if autohatch then
                game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(eggtype)
        end
    end)
end

buyegg("basic", 5);

function getlocation()
   local player = game.Players.LocalPlayer;
   if player.Character then
        return player.Character.HumanoidRootPart.Position;
   end
    return false;
end

function teleport(placeCFrame)
    local player = game.Players.LocalPlayer;
    if player.Character then
        player.Character.HumanoidRootPart.CFrame = placeCFrame;
    end
 end

function teleportWorld(world)
    if game:GetService("Workspace").Worlds:FindFirstChild(world) then
        teleport(game:GetService("Workspace").Worlds[world].Teleport.CFrame)
    end
end
teleportWorld("Desert")