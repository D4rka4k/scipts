if game.PlaceId == 155615604 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("PrisonLife", "Sentinel")
    
    --MAIN
     
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    MainSection:NewDropdown("Give Gun", "Gives Your PLayer A Gun", {"M9", "Remington 870", "AK-47"}, function(v)
        local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver[v].ITEMPICKUP
        local Event = game:GetService("Workspace").Remote.ItemHandler
        Event:InvokeServer(A_1)
   end)
 
     --PLAYER   

    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Character")
    PlayerSection:NewSlider("Walk Speed", "How Fast You Are", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)
    PlayerSection:NewSlider("Jump Power", "How High You Jump", 500, 50, function(v) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)
    PlayerSection:NewButton("ButtonText", "ButtonInfo", function()
        loadstring(game:HttpGet("https://pastebin.com/raw/snDPg81C",true))()
    end)
end