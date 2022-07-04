--[[
    //

        Title:          Write-line.wtf
        Description:    Environment to make the code less messy.
        Authors:        Null, hook                        

    // 
]]





-- // Variables

local Start             = tick()
local GetService        = game.GetService

local Global            = GetService(game, "Workspace")
local Players           = GetService(game, "Players")
local Storage           = GetService(game, "ReplicatedStorage")

local ScriptContext     = GetService(game, "ScriptContext")
local LogService        = GetService(game, "LogService")

local Client            = Players.LocalPlayer

local Information = {
    Map = {
        SpawnedScraps = {},
        SpawnedTools  = {},
        SpawnedCash   = {},

        Dealers       = {}
    },

    Clients = {
        Characters    = {},
        Client        = {}
    }
}





-- // Functions

function ACBypass()
    local Args = {"A", "B", "GP", "EN"}

    local function ScanTable(Table)
        for i, v in ipairs(Args) do
            if (not rawget(Table, v)) then
                return false
            end
        end

        return true
    end
    
    local Functions do
        for i,v in pairs(getgc(true)) do
            if typeof(v) == "table" and ScanTable(v) then
                Functions = v
                break
            end
        end
    end
    
    if Functions and (Functions.A and Functions.B) then
        hookfunction(Functions.A, function() end)
        hookfunction(Functions.B, function() end)
    end
end

function TableRemove(Table, Item)
    local Index = nil

    for i, v in ipairs (Table) do 
        if (v == Item) then
            Index = i 
        end
    end
    
    table.remove(Table, Index)
end

function Information:CheckIfCharacterValid(Character)
    if Character ~= nil and Character:FindFirstChild("Humanoid") and Character:FindFirstChild("Humanoid").Health > 0 then
        return true
    else
        return false
    end
end

function Information:CheckIfHoldingGun(Character)
    if Character:FindFirstChildWhichIsA("Tool") and Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("IsGun") then
        return true
    else
        return false
    end
end

function Information:CheckIfHoldingMelee(Character)
    if Character:FindFirstChildWhichIsA("Tool") and Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("MeleeClient") then
        return true
    else
        return false
    end
end

function Information:CheckIfToolHasConfig(Tool)
    if Tool:FindFirstChild("Config") then
        return true
    else
        return false
    end
end

function Information:CheckIfUserHasFF(Character)
    if Character:FindFirstChildWhichIsA("ForceField") then
        return true
    else
        return false
    end
end

function Information:CheckIfUserIsDowned(Player)
    if Storage.Values.LegacyDowningSystem.Value == false then
        if Storage.CharStats[Player.Name].Downed.Value == true then
            return true
        else
            return false
        end 
    elseif Storage.Values.LegacyDowningSystem.Value == true then
        if Player.Character.Torso:FindFirstChild("PointLight") then
            return true
        else
            return false
        end 
    end
end

function Information:CheckIfUserIsFriendly(MainClient, TargetClient)
    if TargetClient:IsFriendsWith(MainClient.UserId) then
        return true
    else
        return false
    end
end

function Information:ClosestSafe(Character, Distance)
    Distance = Distance or 10

    for i, Safe in pairs(workspace.Map.BredMakurz:GetChildren()) do
        if string.find(Safe.Name, "Safe") then
            if (Character.HumanoidRootPart.Position - Safe.MainPart.Position).Magnitude < Distance then
                if Safe:FindFirstChild("Values") then
                    return Safe, Safe:FindFirstChild("Values")
                end
            end
        end
    end
end

function Information:ClosestRegister(Character, Distance)
    Distance = Distance or 10

    for i, Register in pairs(workspace.Map.BredMakurz:GetChildren()) do
        if string.find(Register.Name, "Register") then
            if (Character.HumanoidRootPart.Position - Register.MainPart.Position).Magnitude < Distance then
                if Register:FindFirstChild("Values") then
                    return Register, Register:FindFirstChild("Values")
                end
            end
        end
    end
end

function Information:ClosestDoor(Character, Distance)
    Distance = Distance or 10

    for i, Door in pairs(workspace.Map.Doors:GetChildren()) do
        if Door ~= nil and Door.DoorBase ~= nil then
            if (Character.HumanoidRootPart.Position - Door.DoorBase.Position).Magnitude < Distance then
                if Door:FindFirstChild("Values") and Door:FindFirstChild("Events") then
                    return Door, Door:FindFirstChild("Values"), Door:FindFirstChild("Events") 
                end
            end 
        end
    end
end

function Information:ClosestScrap(Character, Distance)
    Distance = Distance or 10

    for i, Scrap in pairs(Global.Filter.SpawnedPiles:GetChildren()) do
        if Scrap ~= nil then
            if (Character.HumanoidRootPart.Position - Scrap.MeshPart.Position).Magnitude < Distance then
                return Scrap
            end 
        end
    end
end

function Information:ClosestTool(Character, Distance)
    Distance = Distance or 10

    for i, Tool in pairs(Global.Filter.SpawnedTools:GetChildren()) do
        if Tool ~= nil then
            if (Character.HumanoidRootPart.Position - Tool.PrimaryPart.Position).Magnitude < Distance then
                return Tool
            end 
        end
    end
end

function Information:ClosestMoney(Character, Distance)
    Distance = Distance or 10

    for i, Money in pairs(Global.Filter.SpawnedBread:GetChildren()) do
        if Money ~= nil then
            if (Character.HumanoidRootPart.Position - Money.Position).Magnitude < Distance then
                return Money
            end
        end
    end
end

function Information:ClosestPlayer(Character, Distance)
    Distance = Distance or 10

    for i, Player in pairs(Players:GetChildren()) do
        if Player ~= Client and Player.Character ~= nil and Player.Character:FindFirstChild("HumanoidRootPart") then
            if (Character.HumanoidRootPart.Position - Player.Character.HumanoidRootPart.Position).Magnitude < Distance then
                return Player
            end 
        end
    end
end

function Information:GenerateSeed(Type, Character)
    if Information:CheckIfHoldingMelee(Character) then
        local GeneratedSeed

        if Type == "Finish" then
            GeneratedSeed = Storage.Events:FindFirstChild("XMHH.1"):InvokeServer("\240\159\154\168", tick(), Character:FindFirstChildWhichIsA("Tool"), "EXECQQ")
        elseif Type == "Hit" then
            GeneratedSeed = Storage.Events:FindFirstChild("XMHH.1"):InvokeServer("\240\159\154\168", tick(), Character:FindFirstChildWhichIsA("Tool"), "43TRFWJ", "Normal", tick(), true) 
        elseif Type == "BreakSafe" then
            GeneratedSeed = Storage.Events:FindFirstChild("XMHH.1"):InvokeServer("\240\159\154\168", tick(), Character:FindFirstChildWhichIsA("Tool"), "DZDRRRKI", Information:ClosestSafe(Character, 10), "Register") 
        elseif Type == "BreakRegister" then
            GeneratedSeed = Storage.Events:FindFirstChild("XMHH.1"):InvokeServer("\240\159\154\168", tick(), Character:FindFirstChildWhichIsA("Tool"), "DZDRRRKI", Information:ClosestRegister(Character, 10), "Register") 
        elseif Type == "BreakDoor" then
            GeneratedSeed = Storage.Events:FindFirstChild("XMHH.1"):InvokeServer("\240\159\154\168", tick(), Character:FindFirstChildWhichIsA("Tool"), "DZDRRRKI", Information:ClosestDoor(Character, 10), "Door") 
        end

        if GeneratedSeed ~= nil then
            return GeneratedSeed
        end
    end
end





-- // Signal Events

Players.PlayerAdded:Connect(function(PlayerAdded)
    if PlayerAdded ~= Client then

        PlayerAdded.CharacterAdded:Connect(function(CharacterAdded)
            table.insert(Information.Clients.Characters, CharacterAdded)
        end)
    
        PlayerAdded.CharacterRemoving:Connect(function(CharacterRemoved)
            TableRemove(Information.Clients.Characters, CharacterRemoved)
        end)

        table.insert(Information.Clients.Client, PlayerAdded)
    end
end)

Players.PlayerRemoving:Connect(function(ClientRemoved)
    TableRemove(Information.Clients.Client, ClientRemoved)
end)

Global.Filter.ChildAdded:Connect(function(Object)
    if Object.Parent == Global.Filter.SpawnedBread then
        table.insert(Information.Map.SpawnedCash, Object)
    else
        if Object.Parent == Global.Filter.SpawnedTools then
            table.insert(Information.Map.SpawnedTools, Object)
        else
            if Object.Parent == Global.Filter.SpawnedPiles then
                table.insert(Information.Map.SpawnedScraps, Object)
            end
        end
    end
end)

Global.Filter.ChildRemoved:Connect(function(Object)
    if Object.Parent == Global.Filter.SpawnedBread then
        TableRemove(Information.Map.SpawnedCash, Object)
    else
        if Object.Parent == Global.Filter.SpawnedTools then
            TableRemove(Information.Map.SpawnedTools, Object)
        else
            if Object.Parent == Global.Filter.SpawnedPiles then
                TableRemove(Information.Map.SpawnedScraps, Object)
            end
        end
    end
end)

for _, Connection in next, getconnections(LogService.MessageOut) do
    Connection:Disable()
end

for _, Connection in next, getconnections(ScriptContext.Error) do
    Connection:Disable()
end

for _, PlayerConnected in next, Players:GetPlayers() do
    table.insert(Information.Clients.Client, PlayerConnected)
end

for _, Character in next, Global.Characters:GetChildren() do
    table.insert(Information.Clients.Characters, Character)
end

for _, Object in next, Global.Filter.SpawnedBread:GetChildren() do
    table.insert(Information.Map.SpawnedCash, Object)
end

for _, Object in next, Global.Filter.SpawnedTools:GetChildren() do
    table.insert(Information.Map.SpawnedTools, Object)
end

for _, Object in next, Global.Filter.SpawnedPiles:GetChildren() do
    table.insert(Information.Map.SpawnedScraps, Object)
end

for _, Object in next, Global.Map.Shopz:GetChildren() do
    table.insert(Information.Map.Dealers, Object)
end

ACBypass()

return Information
