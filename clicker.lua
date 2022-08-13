if game.PlaceId == 5490351219 then
       
    getgenv().autotap = false;
    getgenv().autorebirth = false;
    getgenv().autohatch = false;
    rebirthtimes = 10
    hatchtype = ('lava')
    teleportplace = ('Fire')
    -- UI THEMES
    local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

    local w = library:CreateWindow("Clicker") -- Creates the window
    local b = w:CreateFolder("Main Farming")
    local a = w:CreateFolder("Teleports")

    -- Creates the folder(U will put here your buttons,etc)
    --FUNCTION IG(CLICKING REBIRTH HATCH)

        b:Label("Clicker",{
            TextSize = 25; -- Self Explaining
            TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
            BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
            
        }) 

        b:Toggle("AutoClick",function(bool)
            getgenv().autotap = bool
            print("auto tap is  ", bool);
            if bool then
                dotap();
            end
        end)

        b:Toggle("AutoRebirth",function(bool)
            getgenv().autorebirth = bool
            print("Rebirth  ", bool);
            if bool then
                Autorebirths(rebirthtimes);
            end
        end)


        b:Toggle("hatch",function(bool)
            getgenv().autohatch = bool
            print("Rebirth  ", bool);
            if bool then
                buyegg(hatchinfo);
            end
        end)

        a:Button("Desert",function()
            teleportWorld("Desert")
        end)

        a:Button("Winter",function()
            teleportWorld("Winter")
        end)

        a:Button("Lava",function()
            teleportWorld("Lava")
        end)

        a:Button("Toxic",function()
            teleportWorld("Toxic")
        end)

        a:Button("Ocean",function()
            teleportWorld("Ocean")
        end)

        a:Button("Candy",function()
            teleportWorld("Candy")
        end)

        a:Button("Space",function()
            teleportWorld("Space")
        end)

        a:Button("Forest",function()
            teleportWorld("Forest")
        end)

        a:Button("City",function()
            teleportWorld("City")
        end)

        a:Button("Blocks",function()
            teleportWorld("Blocks")
        end)

        a:Button("Future",function()
            teleportWorld("Future")
        end)

        a:Button("Infinity",function()
            teleportWorld("Infinity")
        end)

        a:Button("Moon",function()
            teleportWorld("Moon")
        end)

        a:Button("Fire",function()
            teleportWorld("Fire")
        end)

        a:Button("Dominus",function()
            teleportWorld("Dominus")
        end)

        a:Button("Storm",function()
            teleportWorld("Storm")
        end)









        --VARIABLES AND FUNCTIONS 
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

        b:DestroyGui()

        function buyegg(eggtype, egglimit)
            spawn(function()
                if autohatch then
                    for i=1, egglimit, 1 do
                        game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(eggtype)
                        wait()
                    end
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

    --TELEPORT SCRIPTS

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
    end
