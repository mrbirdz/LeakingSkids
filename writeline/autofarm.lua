--[[
    //

        Title:          sashley.wtf
        Description:    Epic criminality autofarm.
        Authors:        Null

    // 
]]

local GetService                        = game.GetService
local Request                           = (syn and syn.request) or request

-- #region // Services

    local Global                        = GetService(game, "Workspace")
    local Players                       = GetService(game, "Players")
    local Storage                       = GetService(game, "ReplicatedStorage")

    local HttpService                   = GetService(game, "HttpService")
    local RunService                    = GetService(game, "RunService")
    local UserInputService              = GetService(game, "UserInputService")

-- #endregion

-- #region // Variables

    local TPCooldown
    local CurrentTarget
    local CanStartDoing
    local FarmingRN
    local CanFarmHalal
    local Environment                   


    local Client
    local Character

    local Library   

-- #endregion

-- #region // Functions

    function ClosestObject()
        for i, Object in pairs(Global.Map.BredMakurz:GetChildren()) do
            if Object:FindFirstChild("Values") then
                if Object:FindFirstChild("Values").Broken.Value == false then
                    if Object:FindFirstChild("Values").Broken.Value == false then
                        return Object, Object:FindFirstChild("Values")
                    end
                end
            end
		end
    end

    function SafeLoad(Link)
        local Success, Result
        Success, Result = pcall(function()
            return loadstring((Request({ Url = Link }).Body))()
        end)

        return Result
    end
    
    function Teleport(Position, MSG)
        if not TPCooldown then
            TPCooldown                        = true
            Library:Notify(string.format("%s", MSG), 5)

            Client.Character.HumanoidRootPart.Position         = Vector3.new(5.587935447592871e-09, -3.4028234663852886e+38, -1.3969838619232178e-09)
            
            Client.Character.HumanoidRootPart.Parent.Humanoid:UnequipTools()

            delay(1, function()
                Client.Character.HumanoidRootPart.Position     = Position
                Client.Character.HumanoidRootPart.Parent.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Crowbar") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fists"))
            end)
            
            delay(5, function()
                TPCooldown                    = false
            end)
        end
    end

    function PickNearCash()
        for i, Money in pairs(Global.Filter.SpawnedBread:GetChildren()) do
            if (Client.Character.HumanoidRootPart.Position - Money.Position).Magnitude < 10 then
                return Money
            end
        end
    end

    function GetDealer(StockNeeded)
        for i, Dealer in pairs(Global.Map.Shopz:GetChildren()) do
            if Dealer:FindFirstChild("CurrentStocks") and Dealer:FindFirstChild("Type").Value == "IllegalStore" then
                if Dealer:FindFirstChild("CurrentStocks"):FindFirstChild(StockNeeded).Value > 0 then
                    return Dealer
                end
            end
        end
    end

    function GetATM()
        for i, ATMz in pairs(Global.Map.ATMz:GetChildren()) do
            return ATMz
        end
    end

-- #endregion

-- #region // Fake

    TPCooldown                          = false
    CanFarmHalal                        = false

    Library                             = SafeLoad("https://cdn.sashley.wtf/load/library/Linoria")
    Environment                         = SafeLoad("https://cdn.sashley.wtf/load/library/Environment")

    Client                              = Players.LocalPlayer
    Character                           = Client.Character or Client.CharacterAdded:Wait()

-- #endregion

Library:Notify("Loaded.")

Client.CharacterAdded:Connect(function(NewChar)
    Character                               = NewChar
end)

Storage.PlayerbaseData2[Client.Name].CanRespawn.Changed:Connect(function(NewValue)
    if NewValue == true then
        Storage.Events.DeathRespawn:InvokeServer()

        CurrentTarget = nil
        FarmingRN = false
        CanFarmHalal = false

        Library:Notify("Dead. Rip Bozo")
    else
        repeat
            wait()
        until not Environment:CheckIfUserIsDowned(Client) and Environment:CheckIfCharacterValid(Client.Character)

        wait(5)

        Library:Notify("Respawned")

        CurrentTarget = nil
        FarmingRN = false
        CanFarmHalal = false
    end
end)

RunService.RenderStepped:Connect(function()
    local Success, Error = pcall(function()
        if Storage.PlayerbaseData2[Client.Name].Cash.Value < 10000 then
            if CurrentTarget ~= nil then
                if CanFarmHalal == false then
                    CanFarmHalal = true
        
                    if not Environment:CheckIfUserIsDowned(Client) then
                        if Character then
                            if Character:FindFirstChild("HumanoidRootPart") then
                                if Character:FindFirstChild("Crowbar") or Client.Backpack:FindFirstChild("Crowbar") then
                                    if (Character.HumanoidRootPart.Position - CurrentTarget.MainPart.Position).Magnitude > 5 then
                                        Teleport(CurrentTarget.MainPart.CFrame * Vector3.new(0, 1.75, -3), string.format("Teleporting to %q ...", CurrentTarget.Name))
            
                                        delay(5, function()
                                            CanFarmHalal = false
                                        end)
                                    else
                                        delay(5, function()
                                            if CurrentTarget then
                                                if (Character.HumanoidRootPart.Position - CurrentTarget.MainPart.Position).Magnitude < 5 then
                                                    CanStartDoing = true
                                                    CurrentTarget = nil
                                                end
                                            end
            
                                            CanFarmHalal = false
                                        end)
                                    end
                                else
                                    if Storage.PlayerbaseData2[Client.Name].Cash.Value > 120 then
                                        if (Character.HumanoidRootPart.Position - CurrentTarget.MainPart.Position).Magnitude > 5 then
                                            Teleport(CurrentTarget.MainPart.CFrame * Vector3.new(0, 1.75, -3), string.format("Teleporting to %q ...", CurrentTarget.Name))
            
                                            delay(5, function()
                                                CanFarmHalal = false
                                            end)
                                        else
                                            delay(5, function()
                                                if CurrentTarget then
                                                    if (Character.HumanoidRootPart.Position - CurrentTarget.MainPart.Position).Magnitude < 5 then
                                                        if not Character:FindFirstChild("Crowbar") or not Client.Backpack:FindFirstChild("Crowbar") then
                                                            Storage.Events.SSHPRMTE1:InvokeServer("IllegalStore", "Melees", "Crowbar", CurrentTarget.MainPart)
                                                            CurrentTarget   = nil 
                                                        end
                                                    end 
                                                end 
                
                                                CanFarmHalal = false
                                            end)
                                        end
                                    end
                                end
                            end 
                        end
                    else
                        CurrentTarget = false
                        CanFarmHalal = false
                    end
                end
            end
        end

        if Storage.PlayerbaseData2[Client.Name].Cash.Value > 10000 then
            if (Character.HumanoidRootPart.Position - GetATM().MainPart.Position).Magnitude > 5 then
                Teleport(GetATM().MainPart.CFrame * Vector3.new(0, 1.75, -3), string.format("Teleporting to %q ...", GetATM().Name))

                delay(5, function()
                    CanFarmHalal = false
                end)
            else
                delay(5, function()
                    if (Character.HumanoidRootPart.Position - GetATM().MainPart.Position).Magnitude < 5 then
                        Storage.Events.ATM:InvokeServer("DP", Storage.PlayerbaseData2[Client.Name].Cash.Value, GetATM().MainPart)
                        CurrentTarget = nil
                    end

                    CanFarmHalal = false
                end)
            end
        end
    end)

    if Error then
        setclipboard(tostring(Error))

        game.Players.LocalPlayer:Kick("Error, Send to staff (copied to clipboard)")
    end
end)

function Halal()
    pcall(function() 
        if Storage.PlayerbaseData2[Client.Name].Cash.Value < 10000 then
            if Character:FindFirstChild("Crowbar") or Client.Backpack:FindFirstChild("Crowbar") and not Environment:CheckIfUserIsDowned(Client) then
                local FarmObject, ValuesFolder      = ClosestObject()
    
                if FarmObject then
                    CurrentTarget                   = FarmObject
                    FarmingRN                       = true
    
                    repeat
                        wait()
                    until CanStartDoing == true or Environment:CheckIfUserIsDowned(Client) and Character.Humanoid.Health < 1
        
                    if Environment:CheckIfUserIsDowned(Client) and Character.Humanoid.Health < 1 then
                        delay(1, function()
                            CurrentTarget = nil
                            FarmingRN = false
                            CanStartDoing = false
                        end)
                    elseif CanStartDoing then    
                        Library:Notify(string.format('Successfully Teleported to %q. Proceeding to the "Breaking" stage.', FarmObject.Name))
        
                        repeat
                            GeneratedSeed = Storage.Events:FindFirstChild("XMHH.1"):InvokeServer(
                                "\240\159\154\168",
                                tick(),
                                Character:FindFirstChild("Crowbar"),
                                "DZDRRRKI",
                                FarmObject,
                                "Register"
                            ) 
            
                            if GeneratedSeed ~= nil then
                                Storage.Events:FindFirstChild("XMHH2.1"):FireServer(
                                    "\240\159\154\168",
                                    tick(),
                                    Character:FindFirstChild("Crowbar"),
                                    "2389ZFX33",
                                    GeneratedSeed,
                                    false,
                                    Character:FindFirstChild("Crowbar"):FindFirstChild("Handle"),
                                    FarmObject.MainPart,
                                    FarmObject,
                                    FarmObject.MainPart.Position,
                                    FarmObject.MainPart.Position
                                ) 
                            end
                        until ValuesFolder.Broken.Value == true or Environment:CheckIfUserIsDowned(Client) and Character.Humanoid.Health < 1
                        
                        if Environment:CheckIfUserIsDowned(Client) and Character.Humanoid.Health < 1 then 
                            delay(1, function()
                                CurrentTarget = nil
                                FarmingRN = false
                                CanStartDoing = false
                            end)
                        elseif ValuesFolder.Broken.Value == true then
                            Library:Notify(string.format('Successfully broke %q. Proceeding to the "Pick Cash" stage.', FarmObject.Name))                
                        end
            
                        repeat
                            local Cash = PickNearCash()
                        
                            if Cash ~= nil then
                                Storage.Events:FindFirstChild("CZDPZUS"):FireServer(Cash)                
                                wait(2)
                            end
                        until PickNearCash() == nil or Environment:CheckIfUserIsDowned(Client) and Character.Humanoid.Health < 1
                        
                        if Environment:CheckIfUserIsDowned(Client) and Character.Humanoid.Health < 1 then                            
                            delay(1, function()
                                CurrentTarget = nil
                                FarmingRN = false
                                CanStartDoing = false
                            end)      
                        elseif PickNearCash() == nil then
                            Library:Notify(string.format('Successfully farmed %q.', FarmObject.Name))       
                            
                            delay(1, function()
                                CurrentTarget = nil
                                FarmingRN = false
                                CanStartDoing = false
                            end)
                        end
                    end
                else
                    Library:Notify("There are currently no farm object left")
                end
            else
                CurrentTarget = GetDealer("Crowbar")
            end  
        end
    end)
end

while wait(5) do
    pcall(function()        
        if not Environment:CheckIfUserIsDowned(Client) and Environment:CheckIfCharacterValid(Client.Character) then
            if not FarmingRN then
                Halal()
            end 
        end
    end)
end
