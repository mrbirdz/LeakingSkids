--* Script Info *--
local script_version_number = "v6.1"
local last_updated = "30/12/2022"

--* Setup Script *--
repeat wait() until game:IsLoaded() 


local success, response = nil, nil

-- Main veriables
local plrs          = game["Players"]
local ws            = game["Workspace"]
local Workspace     = game["Workspace"]
local uis           = game["UserInputService"]
local rs            = game["RunService"]
local hs            = game["HttpService"]
local cgui          = game:GetService("CoreGui")
local lighting      = game["Lighting"]
local GuiService    = game["GuiService"]
local repStorage    = game["ReplicatedStorage"]
local tweenService  = game["TweenService"]

local Terrain       = ws:FindFirstChildOfClass("Terrain")
local plr           = plrs.LocalPlayer
local mouse         = plr:GetMouse()
local Camera        = ws.CurrentCamera
local VFXModule     = require(repStorage.Modules.VFX)
local FPSModule     = require(repStorage.Modules.FPS)
local ReplicatedPlayers = repStorage:FindFirstChild("Players")
local worldToViewportPoint = Camera.worldToViewportPoint

local Distance_Type_ = "Studs"

-- Aimbot
local Environment = {}
local updateTick = 0
local PlayersEstimatedVelocity
local UniversalTables = require(repStorage.Modules:WaitForChild("UniversalTables"))

repeat wait() until ReplicatedPlayers

Library = loadstring(game:HttpGet("https://pastebin.com/raw/iY5SipTz"))({
    cheatname = 'Notification Library',
    gamename = 'Notification Library',
    fileext = '.json'
})
Utility = Library.utility
Library:init()

local UpdateScript  = loadstring(game:HttpGet("https://cdn.sourceb.in/bins/QT5qKHcA8t/0"))()
local KeybindUI     = loadstring(game:HttpGet("https://cdn.sourceb.in/bins/jfzb1ADr4F/0"))()
local PlrDetectorUI = loadstring(game:HttpGet("https://cdn.sourceb.in/bins/xkyZg6MiOw/0"))()

local Anti_Predicition = loadstring(game:HttpGet("https://cdn.sourceb.in/bins/nC37iwP1g5/0"))()
local Anti_Aim         = loadstring(game:HttpGet("https://cdn.sourceb.in/bins/XHema6dNq1/0"))()

local library       = loadstring(game:HttpGet("https://raw.githubusercontent.com/Callumgm/INFINITY/main/assets/ui.lua"))()
local watermark     = library:Watermark("1NF1N17Y | 60 fps | 60ms | " .. script_version_number .. " | Paid")
local ESP, ESP_RenderStepped, Framework = loadstring(game:HttpGet("https://raw.githubusercontent.com/Callumgm/INFINITY/main/assets/esp2"))()

local headSound = Framework:Instance("Sound", {Volume = 10, Parent = cgui})
local bodySound = Framework:Instance("Sound", {Volume = 10, Parent = cgui})
local killSound = Framework:Instance("Sound", {Volume = 10, Parent = cgui})

function IsPartVisible(part, partancestor)
    local character = plr.Character or plr.CharacterAdded:Wait()
    local campos = Camera.CFrame.Position

    local vector, onscreen = Camera:WorldToViewportPoint(part.Position)

    if onscreen then
        local rayparams = RaycastParams.new()
        rayparams.FilterType = Enum.RaycastFilterType.Blacklist
        rayparams.FilterDescendantsInstances = {Camera, character}

        local result = workspace:Raycast(campos, part.Position - campos, rayparams)

        if result then
            local hit = result.Instance
            return not hit or hit:IsDescendantOf(partancestor)
        end
    end

    return false
end

local AllGunsTable = {
    Melee = {
        GoldenDV2 = "GoldenDV2",
        DV2 = "DV2",
        AnarchyTomahawk = "AnarchyTomahawk",
        PlasmaNinjato = "PlasmaNinjato",
    },

    Snipers = {
        Mosin = "Mosin",
        SVD = "SVD",
    },
    
    Rilfes = {
        AsVal = "AsVal",
        AKMN = "AKMN",
        M4 = "M4",
        AKM = "AKM",
    },
    
    SMGs = {
        PPSH41 = "PPSH41",
        MP5SD = "MP5SD",
        VZ61 = "VZ61",
    },
    
    Pistols = {
        Makarov = "Makarov",
        TFZ0 = "TFZ0",
        MP443 = "MP443",
        TT33 = "TT33",
    },
    
    Shotguns = {
        IZh81 = "IZh81",
    },
    
    -- Others

    Specials = {
        FlareGun = "FlareGun",
        Lighter = "Lighter",
    },

    Keys = {
        FuelingStationKey = "FuelingStationKey",
        LighthouseKey = "LighthouseKey",
        VillageKey = "VillageKey",
        CraneKey = "CraneKey",
        FactoryGarageKey = "FactoryGarageKey",
    },

    Meds = {
        AA2 = "AA2",
        Rags = "Rags",
        AI2 = "AI2",
        Bandage = "Bandage",
    },

    Grenades = {
        F1 = "F1",
        RGO = "RGO",
        RGD5 = "RGD5",
        M84 = "M84",
    },

    Consuables = {
        ResKola = "ResKola",
        CatfrogSoda = "CatfrogSoda",
        BloxyCola = "BloxyCola",
        Beans = "Beans",
        MaxEnergy = "MaxEnergy",
    },
}
local ItemScannerTable = {
    "Mosin",
    "SVD",
    "AsVal",
    "AKMN",
    "M4",
    "AKM",
    "PPSH41",
    "MP5SD",
    "FlareGun",

    "Altyn",
    "Attack5",
    "JPC",
    "FastMT",
    "FlareGun",
}

local Sky = lighting:FindFirstChildOfClass("Sky")
if not Sky then
    Sky = Framework:Instance("Sky", {Parent = lighting})
end
local SkyBoxes = {
    ["Standard"] = {
        ["SkyboxBk"] = Sky.SkyboxBk,
        ["SkyboxDn"] = Sky.SkyboxDn,
        ["SkyboxFt"] = Sky.SkyboxFt,
        ["SkyboxLf"] = Sky.SkyboxLf,
        ["SkyboxRt"] = Sky.SkyboxRt,
        ["SkyboxUp"] = Sky.SkyboxUp,
    },
    ["Among Us"] = {
        ["SkyboxBk"] = "rbxassetid://5752463190",
        ["SkyboxDn"] = "rbxassetid://5752463190",
        ["SkyboxFt"] = "rbxassetid://5752463190",
        ["SkyboxLf"] = "rbxassetid://5752463190",
        ["SkyboxRt"] = "rbxassetid://5752463190",
        ["SkyboxUp"] = "rbxassetid://5752463190"
    },
    ["Neptune"] = {
        ["SkyboxBk"] = "rbxassetid://218955819",
        ["SkyboxDn"] = "rbxassetid://218953419",
        ["SkyboxFt"] = "rbxassetid://218954524",
        ["SkyboxLf"] = "rbxassetid://218958493",
        ["SkyboxRt"] = "rbxassetid://218957134",
        ["SkyboxUp"] = "rbxassetid://218950090"
    },
    ["Aesthetic Night"] = {
        ["SkyboxBk"] = "rbxassetid://1045964490",
        ["SkyboxDn"] = "rbxassetid://1045964368",
        ["SkyboxFt"] = "rbxassetid://1045964655",
        ["SkyboxLf"] = "rbxassetid://1045964655",
        ["SkyboxRt"] = "rbxassetid://1045964655",
        ["SkyboxUp"] = "rbxassetid://1045962969"
    },
    ["Redshift"] = {
        ["SkyboxBk"] = "rbxassetid://401664839",
        ["SkyboxDn"] = "rbxassetid://401664862",
        ["SkyboxFt"] = "rbxassetid://401664960",
        ["SkyboxLf"] = "rbxassetid://401664881",
        ["SkyboxRt"] = "rbxassetid://401664901",
        ["SkyboxUp"] = "rbxassetid://401664936"
    },
    ["Galaxy"] = {
        ["SkyboxBk"] = "rbxassetid://10623658813",
        ["SkyboxDn"] = "rbxassetid://10623658813",
        ["SkyboxFt"] = "rbxassetid://10623658813",
        ["SkyboxLf"] = "rbxassetid://10623658813",
        ["SkyboxRt"] = "rbxassetid://10623658813",
        ["SkyboxUp"] = "rbxassetid://10623658813"
    },
    ["Dark Clouds"] = {
        ["SkyboxBk"] = "rbxassetid://48020371",
        ["SkyboxDn"] = "rbxassetid://48020144",
        ["SkyboxFt"] = "rbxassetid://48020234",
        ["SkyboxLf"] = "rbxassetid://48020211",
        ["SkyboxRt"] = "rbxassetid://48020254",
        ["SkyboxUp"] = "rbxassetid://48020383"
    },
    ["Space"] = {
        ["SkyboxBk"] = "rbxassetid://166509999",
        ["SkyboxDn"] = "rbxassetid://166510057",
        ["SkyboxFt"] = "rbxassetid://166510116",
        ["SkyboxLf"] = "rbxassetid://166510092",
        ["SkyboxRt"] = "rbxassetid://166510131",
        ["SkyboxUp"] = "rbxassetid://166510114"
    },
}

--[Main Variables]

--* Aimbot *--
-- Variables
local RequiredDistance, Typing, Loaded, Running, Animation = math.huge, false, false, true, nil
local ServiceConnections = {
    ESPPlayerAddedConnection = nil,
    CameraConnection = nil,
    ServerInfo2Connection = nil, 
    LightingConnection = nil, 
    VehiclesUAZAddedConnection = nil, 
    VehiclesUAZRemovedConnection = nil, 
    LockedDoorsAddedConnection = nil, 
    LockedDoorsRemovedConnection = nil, 
    ExitLocationsAddedConnection = nil, 
    ExitLocationsRemovedConnection = nil, 
    ContainersAddedConnection = nil, 
    ContainersRemovedConnection = nil, 
    DroppedItemsAddedConnection = nil, 
    DroppedItemsRemovedConnection = nil, 
    AiZonesRemovedConnection = nil, 
    AiZonesAddedConnection = nil, 
    VisorConnection = nil, 
    RenderSteppedConnection = nil, 
    InputBeganConnection = nil, 
    InputEndedConnection = nil, 
    TypingStartedConnection = nil, 
    TypingEndedConnection = nil, 
    MouseMoveConnection = nil , 
    ServerLabelConnection = nil
}
ServiceConnections.TypingStartedConnection = uis.TextBoxFocused:Connect(function()
	Typing = true
end)
ServiceConnections.TypingEndedConnection = uis.TextBoxFocusReleased:Connect(function()
	Typing = false
end)


AutoLootSettings = {
    Backpack = {
        Size = 60,
    },
    Container = {
        Size = 20,
    },
    Chestrig = {
        Size = 6,
    },
    Shirt = {
        Size = 6,
    },
    Pants = {
        Size = 6,
    },
}
local MuzzleVelocityValue = 0

local Monuments = {
    Factory = {
        Vector = Vector3.new(2692.241455078125, 42.4687385559082, -661.0178833007812),
        Text = Drawing.new("Text"),
        Name = "Factory"
    },
    Crane = {
        Vector = Vector3.new(2006.1868896484375, 42.42124938964844, -1276.12451171875),
        Text = Drawing.new("Text"),
        Name = "Crane"
    },
    Lighthouse = {
        Vector = Vector3.new(2658.75390625, 165.3370361328125, -1952.0677490234375),
        Text = Drawing.new("Text"),
        Name = "Lighthouse"
    },
    Castle = {
        Vector = Vector3.new(1366.834716796875, 44.9999885559082, -2470.385498046875),
        Text = Drawing.new("Text"),
        Name = "Castle"
    },
    Powerplant = {
        Vector = Vector3.new(-200.30404663085938, 53.4531135559082, -1177.74658203125),
        Text = Drawing.new("Text"),
        Name = "Powerplant"
    },
    Village = {
        Vector = Vector3.new(-596.4548950195312, 55.193458557128906, -2147.983642578125),
        Text = Drawing.new("Text"),
        Name = "Village"
    },
    Sawmil = {
        Vector = Vector3.new(-2448.877685546875, 38.13755798339844, -3444.984375),
        Text = Drawing.new("Text"),
        Name = "Sawmil"
    },
    GasStation = {
        Vector = Vector3.new(-2060.00244140625, 35.1249885559082, -1688.3397216796875),
        Text = Drawing.new("Text"),
        Name = "Gas Station"
    }
}

for _, Place in pairs(Monuments) do
    local Vector, OnScreen = Camera:WorldToViewportPoint(Place.Vector)

    Place.Text.Text = tostring(Place.Name)
    Place.Text.Size = 18
    Place.Text.Outline = true
    Place.Text.Color = Color3.fromRGB(255, 255, 255)
    Place.Text.Position = Vector2.new(Vector.X, Vector.Y)
end

local Hit_Found, PlayerKilled, Hit_Target = false, false, nil


-- Script Settings
Environment.Settings = {
    HighlightTarget = nil,
    SaveSettings = false, -- Re-execute upon changing
    ReloadOnTeleport = true,
    Enabled = false,
    TargetLock = false, -- Script will relock to the closet person if locked if false
    SilentAimEnabled = false,
    TimeToTarget = 0,
    SilentAimMisschance = 0,
    AliveCheck = true,
    WallCheck = false, -- Laggy
    Sensitivity = 0, -- Animation length (in seconds) before fully locking onto target
    ThirdPerson = false, -- Uses mousemoverel instead of CFrame to support locking in third person (could be choppy)
    ThirdPersonSensitivity = 3, -- Boundary: 0.1 - 5
    TriggerKey = "MouseButton2",
    SnapLines = false,
    SnapLineColor = "255, 0, 0",
    Prediction = false,
    PredictionMultiplier = 20,
    MaxDistance = 1000,
    AiAimbotEnabled = false,
    WallBang = false,
    WallType = "Wood",
    WallTypes = {"Wood", "WoodPlanks", "Fabric", "CorrodedMetal", "Plastic"},
    Toggle = false,
    LockPart = "Head", -- Body part to lock on
    AILocked = false
}
Environment.FOVSettings = {
    Enabled = false,
    Visible = true,
    Amount = 90,
    Color = "255, 255, 255",
    LockedColor = "255, 0, 0",
    Transparency = 0.7,
    Sides = 60,
    Thickness = 1,
    Filled = false
}
Environment.FOVCircle = Drawing.new("Circle")
Environment.FOVCircleOutline1 = Drawing.new("Circle")
Environment.FOVCircleOutline2 = Drawing.new("Circle")
Environment.SnapLine  = Drawing.new("Line")
Environment.Locked    = nil

local ThirdPersonKeyBind = false
local Old_Gravity = workspace.Gravity
local Old_Decoration = gethiddenproperty(Terrain, "Decoration")
local Default_Walkspeed = plr.Character.Humanoid.WalkSpeed
local Default_JumpHeight = plr.Character.Humanoid.JumpHeight
local Old_FOV = Camera.FieldOfView
local Old_Lighting = {
    Ambient = lighting.Ambient,
    Brightness = lighting.Brightness,
    ColorShift_Bottom = lighting.ColorShift_Bottom,
    ColorShift_Top = lighting.ColorShift_Top,
    EnvironmentDiffuseScale = lighting.EnvironmentDiffuseScale,
    EnvironmentSpecularScale = lighting.EnvironmentSpecularScale,
    GlobalShadows = lighting.GlobalShadows,
    OutdoorAmbient = lighting.OutdoorAmbient,
    ClockTime = lighting.ClockTime,
    TimeOfDay = lighting.TimeOfDay,
    ExposureCompensation = lighting.ExposureCompensation
}

--* Core Functions *--
local function GetColor(Color)
    local R = tonumber(string.match(Color, "([%d]+)[%s]*,[%s]*[%d]+[%s]*,[%s]*[%d]+"))
    local G = tonumber(string.match(Color, "[%d]+[%s]*,[%s]*([%d]+)[%s]*,[%s]*[%d]+"))
    local B = tonumber(string.match(Color, "[%d]+[%s]*,[%s]*[%d]+[%s]*,[%s]*([%d]+)"))

    return Color3.fromRGB(R, G, B)
end

local function IsDown(EnumItem)
    return (EnumItem.EnumType == Enum.KeyCode and uis:IsKeyDown(EnumItem)) or (EnumItem.EnumType == Enum.UserInputType and uis:IsMouseButtonPressed(EnumItem))
end

local function rotateVector2(v2, r)
    local c = math.cos(r);
    local s = math.sin(r);
    return Vector2.new(c * v2.X - s*v2.Y, s*v2.X + c*v2.Y)
end

local function Alive(Player)
    if Player and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") ~= nil and Player.Character:FindFirstChild("Humanoid") ~= nil and Player.Character:FindFirstChild("Head") ~= nil then
        return true
    end
    return false
end

GetClosestPlayer = function()
    if Alive(plr) then
        Environment.Settings.HighlightTarget = nil
        local ClosestPlayer = nil
        local RequiredDistanceFOV = nil
        local RequiredDistancePlayer = Environment.Settings.MaxDistance
        local WallBangPossible = false
        Environment.Settings.AILocked = false

        if Environment.FOVSettings.Enabled then
            RequiredDistanceFOV = Environment.FOVSettings.Amount
        else
            RequiredDistanceFOV = Camera.ViewportSize.X / 2
        end

        if Environment.Settings.AiAimbotEnabled then
            local AiZones = Workspace:FindFirstChild("AiZones")
            for _, Zone in pairs(AiZones:GetChildren()) do
                for _, Item in pairs(Zone:GetChildren()) do
                    if Item:FindFirstChild("HumanoidRootPart") then
                        if Environment.Settings.AliveCheck and Item.Humanoid.Health <= 0 then continue end
                        if Environment.Settings.WallCheck and not IsPartVisible(Item[Environment.Settings.LockPart], Item) then continue end

                        local Vector, OnScreen   = Camera:WorldToViewportPoint(Item.HumanoidRootPart.Position)
                        local DistanceFromMouse  = (Vector2.new(uis:GetMouseLocation().X, uis:GetMouseLocation().Y) - Vector2.new(Vector.X, Vector.Y)).Magnitude
                        local DistanceFromPlayer = (plr.Character.HumanoidRootPart.Position - Item.HumanoidRootPart.Position).Magnitude
                        DistanceFromPlayer = Framework:Distance_Type_Change(Distance_Type_, DistanceFromPlayer)
                        if OnScreen then
                            if DistanceFromMouse <= RequiredDistanceFOV then
                                if DistanceFromPlayer <= RequiredDistancePlayer then
                                    RequiredDistancePlayer = DistanceFromPlayer
                                    ClosestPlayer = Item
                                    Environment.Settings.AILocked = true
                                end
                            end
                        end
                    end
                end
            end
        end

        for _, v in next, plrs:GetPlayers() do
            if v ~= plr then
                if library.flags["aimbotfriendcheckEnabled"] then 
                    if plr:GetFriendStatus(v) ~= Enum.FriendStatus.Friend then
                        local HumanoidRootPart = v.Character and v.Character:FindFirstChild("HumanoidRootPart")
                        if v.Character and HumanoidRootPart then
                            local PlayerYPos = math.floor(HumanoidRootPart.Position.Y)
                            if PlayerYPos ~= -362 then
                                local dwHumanoid = v.Character:FindFirstChild("Humanoid")
                                if Environment.Settings.AliveCheck and dwHumanoid and v.Character.Humanoid.Health <= 0 then continue end
                                if Environment.Settings.WallCheck and not IsPartVisible(v.Character[Environment.Settings.LockPart], v.Character) then continue end

                                local Vector, OnScreen   = Camera:WorldToViewportPoint(v.Character[Environment.Settings.LockPart].Position)
                                local DistanceFromMouse  = (Vector2.new(uis:GetMouseLocation().X, uis:GetMouseLocation().Y) - Vector2.new(Vector.X, Vector.Y)).Magnitude
                                local DistanceFromPlayer = (plr.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
                                DistanceFromPlayer = Framework:Distance_Type_Change(Distance_Type_, DistanceFromPlayer)
                                if OnScreen then
                                    if DistanceFromMouse <= RequiredDistanceFOV then
                                        if DistanceFromPlayer <= RequiredDistancePlayer then
                                            RequiredDistancePlayer = DistanceFromPlayer
                                            ClosestPlayer = v
                                            Environment.Settings.AILocked = false
                                        end
                                    end
                                end
                            end
                        end
                    end
                else
                    local HumanoidRootPart = v.Character and v.Character:FindFirstChild("HumanoidRootPart")
                    if v.Character and HumanoidRootPart then
                        local PlayerYPos = math.floor(HumanoidRootPart.Position.Y)
                        if PlayerYPos ~= -362 then
                            local dwHumanoid = v.Character:FindFirstChild("Humanoid")
                            if Environment.Settings.AliveCheck and dwHumanoid and v.Character.Humanoid.Health <= 0 then continue end
                            if Environment.Settings.WallCheck and not IsPartVisible(v.Character[Environment.Settings.LockPart], v.Character) then continue end

                            local Vector, OnScreen   = Camera:WorldToViewportPoint(v.Character[Environment.Settings.LockPart].Position)
                            local DistanceFromMouse  = (Vector2.new(uis:GetMouseLocation().X, uis:GetMouseLocation().Y) - Vector2.new(Vector.X, Vector.Y)).Magnitude
                            local DistanceFromPlayer = (plr.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
                            DistanceFromPlayer = Framework:Distance_Type_Change(Distance_Type_, DistanceFromPlayer)
                            if OnScreen then
                                if DistanceFromMouse <= RequiredDistanceFOV then
                                    if DistanceFromPlayer <= RequiredDistancePlayer then
                                        RequiredDistancePlayer = DistanceFromPlayer
                                        ClosestPlayer = v
                                        Environment.Settings.AILocked = false
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end

        Environment.Settings.HighlightTarget = ClosestPlayer
        Environment.Locked = ClosestPlayer
    end
end

local HitChamsFolder = Framework:Instance("Folder", {Parent = Camera})

local BanRemote
local Character = plr.Character
if Character then
    local Humanoid = Character:FindFirstChildOfClass("Humanoid")
    if Humanoid then
        for _, connection in pairs(getconnections(Humanoid.StateChanged)) do
            local Function = connection.Function
            local Constants = getconstants(Function)
            if table.find(Constants, "FireServer") then
                connection:Disable()
                local Upvalues = getupvalues(Function)
                for i, v in pairs(Upvalues) do
                    if typeof(v) == "Instance" and v:IsA("RemoteEvent") then
                        BanRemote = v
                    end
                end
            end
        end
    end
end

__newindex = hookmetamethod(game, "__newindex", function(i, v, n_v)
    if not Running then return __newindex(i, v, n_v) end

    if i == Camera and v == "CFrame" then
        LastCameraCFrame = n_v

        if library.flags["nocamerabobEnabled"] then
            local Script = getcallingscript()
            if tostring(Script) == "CharacterController" then
                return __newindex(i, v, Camera.CFrame)
            end
        end
    end

    return __newindex(i, v, n_v)
end)
--local Salo = {{stepAmount = 43, dropTiming = 0.0005}}
__namecall = hookmetamethod(game, "__namecall", function(self, ...)
    if not Running then return __namecall(self, ...) end
    local args = {...}

    if getnamecallmethod() == "FireServer" and tostring(self) == "Drowning" then
        if library.flags["antidrownEnabled"] then
            return
        end
    end

    if tostring(self) == "ProjectileInflict" then

        if library.flags["hitsoundsEnabled"] then
            Hit_Found = true
            Hit_Target = args[2]
        end

        if library.flags["hitmarkersEnabled"] then
            task.spawn(function()
                local HitPos = args[2].Position
                local Vector, onScreen = Camera:WorldToViewportPoint(HitPos)


                local Finished = false

                -- draw a hitmarker using 4 lines with a circle in the middle
                local Line1 = Drawing.new("Line")
                local Line2 = Drawing.new("Line")
                local Line3 = Drawing.new("Line")
                local Line4 = Drawing.new("Line")

                Line1.Visible = onScreen
                Line2.Visible = onScreen
                Line3.Visible = onScreen
                Line4.Visible = onScreen

                Line1.Thickness = 2
                Line2.Thickness = 2
                Line3.Thickness = 2
                Line4.Thickness = 2

                Line1.Color = library.flags["hitmarkersColor"]
                Line2.Color = library.flags["hitmarkersColor"]
                Line3.Color = library.flags["hitmarkersColor"]
                Line4.Color = library.flags["hitmarkersColor"]

                Line1.Transparency = 1
                Line2.Transparency = 1
                Line3.Transparency = 1
                Line4.Transparency = 1

                Line1.From = Vector2.new(Vector.X - 10, Vector.Y - 10)
                Line1.To = Vector2.new(Vector.X - 5, Vector.Y - 5)

                Line2.From = Vector2.new(Vector.X + 10, Vector.Y - 10)
                Line2.To = Vector2.new(Vector.X + 5, Vector.Y - 5)

                Line3.From = Vector2.new(Vector.X - 10, Vector.Y + 10)
                Line3.To = Vector2.new(Vector.X - 5, Vector.Y + 5)

                Line4.From = Vector2.new(Vector.X + 10, Vector.Y + 10)
                Line4.To = Vector2.new(Vector.X + 5, Vector.Y + 5)
                
                local c; c = rs.RenderStepped:Connect(function()
                    if Running and Alive(plr) then
                        if not Finished then
                            local Vector, onScreen = Camera:WorldToViewportPoint(HitPos)

                            Line1.Visible = onScreen
                            Line2.Visible = onScreen
                            Line3.Visible = onScreen
                            Line4.Visible = onScreen
                            
                            Line1.From = Vector2.new(Vector.X - 10, Vector.Y - 10)
                            Line1.To = Vector2.new(Vector.X - 5, Vector.Y - 5)

                            Line2.From = Vector2.new(Vector.X + 10, Vector.Y - 10)
                            Line2.To = Vector2.new(Vector.X + 5, Vector.Y - 5)

                            Line3.From = Vector2.new(Vector.X - 10, Vector.Y + 10)
                            Line3.To = Vector2.new(Vector.X - 5, Vector.Y + 5)

                            Line4.From = Vector2.new(Vector.X + 10, Vector.Y + 10)
                            Line4.To = Vector2.new(Vector.X + 5, Vector.Y + 5)
                        else
                            c:Disconnect()
                        end
                    end
                end)

                wait(library.flags["hitmarkersDuration"])
                while Line1.Transparency > 0 do
                    Line1.Transparency = Line1.Transparency - 0.05
                    Line2.Transparency = Line2.Transparency - 0.05
                    Line3.Transparency = Line3.Transparency - 0.05
                    Line4.Transparency = Line4.Transparency - 0.05
                    wait(0.03)
                end

                Finished = true
                Line1:Remove()
                Line2:Remove()
                Line3:Remove()
                Line4:Remove()
            end)
        end

        if library.flags["hitnotificationsEnabled"] then
            local Hit = args[2]
            local HitDistance = (plr.Character.HumanoidRootPart.Position - Hit.Position).Magnitude
            HitDistance = Framework:Distance_Type_Change(Distance_Type_, HitDistance)

            Library:SendNotification(("Hit Registration | Player: %s, Hit: %s, Distance: (%s studs)"):format(Hit.Parent.Name, Hit.Name, HitDistance), tonumber(library.flags["hitnotificationsDuration"]), library.flags["hitnotificationsColor"])
        end

        if library.flags["bulletlineEnabled"] then
            task.spawn(function()
                local HitPos = args[2].Position
                local Vector, onScreen = Camera:WorldToViewportPoint(HitPos)
                local Finished = false

                local Part = Instance.new("Part")
                Part.CanCollide = false
                Part.Anchored = true
                Part.Parent = ws

                local Attachment = Instance.new("Attachment")
                Attachment.Position = plr.Character.Head.Position 
                Attachment.Parent = Part
                Attachment.Visible = false

                local Attachment2 = Instance.new("Attachment")
                Attachment2.Position = HitPos
                Attachment2.Parent = Part
                Attachment2.Visible = false

                local BulletLine = Instance.new("Beam")
                BulletLine.Enabled = onScreen
                BulletLine.Brightness = 10
                BulletLine.LightInfluence = 0.75
                BulletLine.LightEmission = 0.1
                BulletLine.Attachment0 = Attachment
                BulletLine.Attachment1 = Attachment2
                BulletLine.Texture = "rbxassetid://7216850022"
                BulletLine.TextureLength = 7
                BulletLine.TextureMode = "Stretch"
                BulletLine.TextureSpeed = 6.21
                BulletLine.Color = ColorSequence.new(library.flags["bulletlineColor"])
                BulletLine.Transparency = NumberSequence.new(0)
                BulletLine.Parent = Part
                BulletLine.CurveSize0 = 0
                BulletLine.CurveSize1 = 0
                BulletLine.FaceCamera = true
                BulletLine.Segments = 10
                BulletLine.Width0 = 2
                BulletLine.Width1 = 2
                BulletLine.ZOffset = 0

                local c; c = rs.RenderStepped:Connect(function()
                    if Running and Alive(plr) then
                        if not Finished then
                            BulletLine.Enabled = onScreen
                        else
                            c:Disconnect()
                        end
                    end
                end)

                if not Finished then
                    wait(library.flags["bulletlineDelay"])
                    Finished = true
                    Part:Destroy()
                end
            end)
        end

        if library.flags["hitchamsEnabled"] then
            task.spawn(function()
                local Hit = args[2]
                local Character = args[1]
                local Finished = false

                Character.Archivable = true
                local Clone = Character:Clone()
                Character.Archivable = false
                for _, Child in pairs(Clone:GetDescendants()) do
                    if Child:IsA("SurfaceAppearance") or Child:IsA("Humanoid") or Child:IsA("BillboardGui") or Child:IsA("Decal") or Child.Name == "HumanoidRootPart" then
                        Child:Destroy()
                        continue
                    end
                    if Child:IsA("BasePart") then
                        Child.CanCollide = false
                        Child.Anchored = true
                        Child.Transparency = 0
                        Child.Material = Enum.Material.ForceField
                        Child.Color = library.flags["hitchamsColor"] 
                        Child.Size = Child.Size + Vector3.new(0.025, 0.025, 0.025)
                    end
                end
                Clone.Parent = HitChamsFolder

                wait(library.flags["hitchamsDuration"])
                Clone:Destroy()
            end)
        end

        return __namecall(self, unpack(args))
    end

    return __namecall(self, unpack(args))
end)

function Bypass_Client()
    for i, v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "A1Sent") ~= nil then 
            rawset(v, "A1Sent", true)
        end
    end
end

local ChatScript
for i, v in pairs(getgc(true)) do
    if type(v) == 'table' and rawget(v, "CreateMessageLabel") then
        ChatScript = v
    end
end

local ChatScript_CreateMessageLabel = ChatScript.CreateMessageLabel
ChatScript.CreateMessageLabel = function(...)
    local Args = {...}
    local Message = Args[2].Message
    if Message then
        if Message:lower():find("[system]") and Message:lower():find(plr.Name:lower()) then
            if Message:find("by ".. plr.Name) then
                if library.flags["removeKilledBy"] then
                    Args[2].Message = "[System] Get better bruh - from INFINITY Owner"
                end
                PlayerKilled = true
                if library.flags["killmessageEnabled"] then
                    local args = {
                        [1] = library.flags["Kill Message"] or "Get better bruh - from INFINITY User",
                        [2] = "Global"
                    }
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
                end
            else
                if library.flags["removeKilledBy"] then
                    Args[2].Message = "[System] INFINITY user died to a config issue"
                end
                PlayerKilled = false
            end
        end
    end
    return ChatScript_CreateMessageLabel(unpack(Args))
end

local Visor
local Utility
Bypass_Client()

do
    local old_
    old_ = hookfunction(FPSModule.fovUpdate, function(...)
        args = {...}
        if library.flags["cameraFOVEnabled"] then
            return library.flags["cameraFOVValue"]
        end
        if library.flags["cameraFOVZoomEnabled"] then
            return library.flags["cameraFOVZoomValue"]
        end
        return old_(unpack(args));
    end)
end

do
    function a(...)
        if library.flags["norecoilEnabled"] then
            return 0
        end
        return unpack({...})
    end
    
    local old
    old = hookfunction(VFXModule.RecoilCamera, function(...)
        return old(a(...));
    end)
end

SilentAimMissMath = function(Pos)
    local Where = math.random(1, 4)
    if Where == 1 then
        Pos = Pos + Vector3.new(0, 10, 0)
    elseif Where == 2 then
        Pos = Pos + Vector3.new(0, -10, 0)
    elseif Where == 3 then
        Pos = Pos + Vector3.new(10, 0, 0)
    elseif Where == 4 then
        Pos = Pos + Vector3.new(-10, 0, 0)
    end

    return Pos
end

PredictionMath = function(Player, head, Prediction)
    if Environment.Settings.Prediction then
        local PlayerRoot = Player:FindFirstChild("HumanoidRootPart")
        local PlayersVelocity = PlayerRoot.Velocity
        PlayersVelocity = Vector3.new(PlayersVelocity.X, 0, PlayersVelocity.Z)    
        PlayerRoot.AssemblyLinearVelocity = Vector3.new(PlayersVelocity.X, 0, PlayersVelocity.Z)

        if library.flags["resolverEnabled"] then
            PlayersVelocity = PlayersEstimatedVelocity
        end

        local Drag = 0.013
        local TargetStuds = (head - Camera.CFrame.p).Magnitude
        -- calculate time to target in seconds with muzzle velocity and target studs and drag
        local TimeToTarget = (TargetStuds / (MuzzleVelocityValue * (1 - Drag * TargetStuds / MuzzleVelocityValue))) ^ 0.5
        local TimeToTarget_ = TargetStuds / MuzzleVelocityValue
        
        Prediction = PlayersVelocity * TimeToTarget_

        -- Constants
        -- predict bullet drop with gravity and drag

        -- convert the Gravity to studs gravity
        local StudsGravity = workspace.Gravity / 196.2

        -- calculate bullet drop on Y axis but for studs
        local BulletDrop = StudsGravity * (TimeToTarget ^ 2) / 2

        -- calculate bullet drag on X and Z axis but for studs
        local DragDrop = PlayersVelocity * Drag * TimeToTarget

        Prediction = Prediction + Vector3.new(0, -BulletDrop, 0) + DragDrop
    end

    return Prediction
end

local HitBoxParts = {'Head', 'LeftUpperArm', 'LeftLowerArm', 'LeftHand', 'RightUpperArm', 'RightLowerArm', 'RightHand', 'LeftUpperLeg', 'LeftLowerLeg', 'LeftFoot', 'RightUpperLeg', 'RightLowerLeg', 'RightFoot', 'UpperTorso', 'LowerTorso'}
local dwHitBoxParts = {'Head', 'UpperTorso', 'LowerTorso'}
-- local BulletReplay = require(repStorage.Modules.FPS.Bullet)
-- local BulletReplayArgs = nil
-- local BulletReplayEnabled = false

--* Silent Aim *--
local oldHook = nil	
oldHook = hookfunction(require(repStorage.Modules.FPS.Bullet).CreateBullet, function(...)
    local args = {...}

    if Environment.Settings.SilentAimEnabled and Environment.Locked ~= nil then
        local shouldMiss = false
        if Environment.Settings.SilentAimMisschance >= math.random(1, 100) then
            shouldMiss = true
        end

        local head = nil
        local Part = nil
        local Prediction = Vector3.new(0, 0, 0)

        if Environment.Settings.AILocked then
            head = Environment.Locked:FindFirstChild(Environment.Settings.LockPart).Position
            Part = Environment.Locked:FindFirstChild(Environment.Settings.LockPart)
            Prediction = PredictionMath(Environment.Locked, head, Prediction)
        else
            head = Environment.Locked.Character:FindFirstChild(Environment.Settings.LockPart).Position
            Part = Environment.Locked.Character:FindFirstChild(Environment.Settings.LockPart)
            Prediction = PredictionMath(Environment.Locked.Character, head, Prediction)
        end

        if head ~= nil then
            if shouldMiss then
                head = SilentAimMissMath(head)
            end 

            args[9] = {CFrame = CFrame.lookAt(
                plr.Character.HumanoidRootPart.Position + Vector3.new(
                    0, UniversalTables.UniversalTable.GameSettings.RootScanHeight, 0
                ),
                head + Prediction
            )}
        end
    end

    -- if library.flags["bulletreplayEnabled"] then
    --     BulletReplayArgs = args
    --     BulletReplayEnabled = true
    -- end

    return oldHook(table.unpack(args))
end)

--* Keybind Viewer Init *--
local _WalkspeedKeybind
local _CameraZoomKeybind
local _HipHeightKeybind
local _AntiPredictionKeybind

-- Setup Table
local Old_Ammo = {
    ["762x54AP"] = {
        ["Drop"]  = repStorage.AmmoTypes["762x54AP"]:GetAttribute("ProjectileDrop"),
        ["Speed"] = repStorage.AmmoTypes["762x54AP"]:GetAttribute("MuzzleVelocity"),
        ["Damage"] = repStorage.AmmoTypes["762x54AP"]:GetAttribute("Damage"),
        ["Pellets"] = repStorage.AmmoTypes["762x54AP"]:GetAttribute("Pellets"),
        ["ArmorPen"] = repStorage.AmmoTypes["762x54AP"]:GetAttribute("ArmorPen"),
        ["Drag"] = repStorage.AmmoTypes["762x54AP"]:GetAttribute("Drag")
    },
    ["9x18AP"] = {
        ["Drop"]  = repStorage.AmmoTypes["9x18AP"]:GetAttribute("ProjectileDrop"),
        ["Speed"] = repStorage.AmmoTypes["9x18AP"]:GetAttribute("MuzzleVelocity"),
        ["Damage"] = repStorage.AmmoTypes["9x18AP"]:GetAttribute("Damage"),
        ["Pellets"] = repStorage.AmmoTypes["9x18AP"]:GetAttribute("Pellets"),
        ["ArmorPen"] = repStorage.AmmoTypes["9x18AP"]:GetAttribute("ArmorPen"),
        ["Drag"] = repStorage.AmmoTypes["9x18AP"]:GetAttribute("Drag")
    },
    ["762x39AP"] = {
        ["Drop"]  = repStorage.AmmoTypes["762x39AP"]:GetAttribute("ProjectileDrop"),
        ["Speed"] = repStorage.AmmoTypes["762x39AP"]:GetAttribute("MuzzleVelocity"),
        ["Damage"] = repStorage.AmmoTypes["762x39AP"]:GetAttribute("Damage"),
        ["Pellets"] = repStorage.AmmoTypes["762x39AP"]:GetAttribute("Pellets"),
        ["ArmorPen"] = repStorage.AmmoTypes["762x39AP"]:GetAttribute("ArmorPen"),
        ["Drag"] = repStorage.AmmoTypes["762x39AP"]:GetAttribute("Drag")
    },
    ["9x18Z"] = {
        ["Drop"]  = repStorage.AmmoTypes["9x18Z"]:GetAttribute("ProjectileDrop"),
        ["Speed"] = repStorage.AmmoTypes["9x18Z"]:GetAttribute("MuzzleVelocity"),
        ["Damage"] = repStorage.AmmoTypes["9x18Z"]:GetAttribute("Damage"),
        ["Pellets"] = repStorage.AmmoTypes["9x18Z"]:GetAttribute("Pellets"),
        ["ArmorPen"] = repStorage.AmmoTypes["9x18Z"]:GetAttribute("ArmorPen"),
        ["Drag"] = repStorage.AmmoTypes["9x18Z"]:GetAttribute("Drag")
    },
    ["762x25Tracer"] = {
        ["Drop"]  = repStorage.AmmoTypes["762x25Tracer"]:GetAttribute("ProjectileDrop"),
        ["Speed"] = repStorage.AmmoTypes["762x25Tracer"]:GetAttribute("MuzzleVelocity"),
        ["Damage"] = repStorage.AmmoTypes["762x25Tracer"]:GetAttribute("Damage"),
        ["Pellets"] = repStorage.AmmoTypes["762x25Tracer"]:GetAttribute("Pellets"),
        ["ArmorPen"] = repStorage.AmmoTypes["762x25Tracer"]:GetAttribute("ArmorPen"),
        ["Drag"] = repStorage.AmmoTypes["762x25Tracer"]:GetAttribute("Drag")
    },
    ["556x45Tracer"] = {
        ["Drop"]  = repStorage.AmmoTypes["556x45Tracer"]:GetAttribute("ProjectileDrop"),
        ["Speed"] = repStorage.AmmoTypes["556x45Tracer"]:GetAttribute("MuzzleVelocity"),
        ["Damage"] = repStorage.AmmoTypes["556x45Tracer"]:GetAttribute("Damage"),
        ["Pellets"] = repStorage.AmmoTypes["556x45Tracer"]:GetAttribute("Pellets"),
        ["ArmorPen"] = repStorage.AmmoTypes["556x45Tracer"]:GetAttribute("ArmorPen"),
        ["Drag"] = repStorage.AmmoTypes["556x45Tracer"]:GetAttribute("Drag")
    },
    ["762x25AP"] = {
        ["Drop"]  = repStorage.AmmoTypes["762x25AP"]:GetAttribute("ProjectileDrop"),
        ["Speed"] = repStorage.AmmoTypes["762x25AP"]:GetAttribute("MuzzleVelocity"),
        ["Damage"] = repStorage.AmmoTypes["762x25AP"]:GetAttribute("Damage"),
        ["Pellets"] = repStorage.AmmoTypes["762x25AP"]:GetAttribute("Pellets"),
        ["ArmorPen"] = repStorage.AmmoTypes["762x25AP"]:GetAttribute("ArmorPen"),
        ["Drag"] = repStorage.AmmoTypes["762x25AP"]:GetAttribute("Drag")
    },
    ["762x39Tracer"] = {
        ["Drop"]  = repStorage.AmmoTypes["762x39Tracer"]:GetAttribute("ProjectileDrop"),
        ["Speed"] = repStorage.AmmoTypes["762x39Tracer"]:GetAttribute("MuzzleVelocity"),
        ["Damage"] = repStorage.AmmoTypes["762x39Tracer"]:GetAttribute("Damage"),
        ["Pellets"] = repStorage.AmmoTypes["762x39Tracer"]:GetAttribute("Pellets"),
        ["ArmorPen"] = repStorage.AmmoTypes["762x39Tracer"]:GetAttribute("ArmorPen"),
        ["Drag"] = repStorage.AmmoTypes["762x39Tracer"]:GetAttribute("Drag")
    },
    ["762x54Tracer"] = {
        ["Drop"]  = repStorage.AmmoTypes["762x54Tracer"]:GetAttribute("ProjectileDrop"),
        ["Speed"] = repStorage.AmmoTypes["762x54Tracer"]:GetAttribute("MuzzleVelocity"),
        ["Damage"] = repStorage.AmmoTypes["762x54Tracer"]:GetAttribute("Damage"),
        ["Pellets"] = repStorage.AmmoTypes["762x54Tracer"]:GetAttribute("Pellets"),
        ["ArmorPen"] = repStorage.AmmoTypes["762x54Tracer"]:GetAttribute("ArmorPen"),
        ["Drag"] = repStorage.AmmoTypes["762x54Tracer"]:GetAttribute("Drag")
    },
    ["9x19Tracer"] = {
        ["Drop"]  = repStorage.AmmoTypes["9x19Tracer"]:GetAttribute("ProjectileDrop"),
        ["Speed"] = repStorage.AmmoTypes["9x19Tracer"]:GetAttribute("MuzzleVelocity"),
        ["Damage"] = repStorage.AmmoTypes["9x19Tracer"]:GetAttribute("Damage"),
        ["Pellets"] = repStorage.AmmoTypes["9x19Tracer"]:GetAttribute("Pellets"),
        ["ArmorPen"] = repStorage.AmmoTypes["9x19Tracer"]:GetAttribute("ArmorPen"),
        ["Drag"] = repStorage.AmmoTypes["9x19Tracer"]:GetAttribute("Drag")
    },
    ["9x18Tracer"] = {
        ["Drop"]  = repStorage.AmmoTypes["9x18Tracer"]:GetAttribute("ProjectileDrop"),
        ["Speed"] = repStorage.AmmoTypes["9x18Tracer"]:GetAttribute("MuzzleVelocity"),
        ["Damage"] = repStorage.AmmoTypes["9x18Tracer"]:GetAttribute("Damage"),
        ["Pellets"] = repStorage.AmmoTypes["9x18Tracer"]:GetAttribute("Pellets"),
        ["ArmorPen"] = repStorage.AmmoTypes["9x18Tracer"]:GetAttribute("ArmorPen"),
        ["Drag"] = repStorage.AmmoTypes["9x18Tracer"]:GetAttribute("Drag")
    },
    ["9x19AP"] = {
        ["Drop"]  = repStorage.AmmoTypes["9x19AP"]:GetAttribute("ProjectileDrop"),
        ["Speed"] = repStorage.AmmoTypes["9x19AP"]:GetAttribute("MuzzleVelocity"),
        ["Damage"] = repStorage.AmmoTypes["9x19AP"]:GetAttribute("Damage"),
        ["Pellets"] = repStorage.AmmoTypes["9x19AP"]:GetAttribute("Pellets"),
        ["ArmorPen"] = repStorage.AmmoTypes["9x19AP"]:GetAttribute("ArmorPen"),
        ["Drag"] = repStorage.AmmoTypes["9x19AP"]:GetAttribute("Drag")
    },
    ["556x45AP"] = {
        ["Drop"]  = repStorage.AmmoTypes["556x45AP"]:GetAttribute("ProjectileDrop"),
        ["Speed"] = repStorage.AmmoTypes["556x45AP"]:GetAttribute("MuzzleVelocity"),
        ["Damage"] = repStorage.AmmoTypes["556x45AP"]:GetAttribute("Damage"),
        ["Pellets"] = repStorage.AmmoTypes["556x45AP"]:GetAttribute("Pellets"),
        ["ArmorPen"] = repStorage.AmmoTypes["556x45AP"]:GetAttribute("ArmorPen"),
        ["Drag"] = repStorage.AmmoTypes["556x45AP"]:GetAttribute("Drag")
    },
    ["9x39Z"] = {
        ["Drop"]  = repStorage.AmmoTypes["9x39Z"]:GetAttribute("ProjectileDrop"),
        ["Speed"] = repStorage.AmmoTypes["9x39Z"]:GetAttribute("MuzzleVelocity"),
        ["Damage"] = repStorage.AmmoTypes["9x39Z"]:GetAttribute("Damage"),
        ["Pellets"] = repStorage.AmmoTypes["9x39Z"]:GetAttribute("Pellets"),
        ["ArmorPen"] = repStorage.AmmoTypes["9x39Z"]:GetAttribute("ArmorPen"),
        ["Drag"] = repStorage.AmmoTypes["9x39Z"]:GetAttribute("Drag")
    },
    ["9x39AP"] = {
        ["Drop"]  = repStorage.AmmoTypes["9x39AP"]:GetAttribute("ProjectileDrop"),
        ["Speed"] = repStorage.AmmoTypes["9x39AP"]:GetAttribute("MuzzleVelocity"),
        ["Damage"] = repStorage.AmmoTypes["9x39AP"]:GetAttribute("Damage"),
        ["Pellets"] = repStorage.AmmoTypes["9x39AP"]:GetAttribute("Pellets"),
        ["ArmorPen"] = repStorage.AmmoTypes["9x39AP"]:GetAttribute("ArmorPen"),
        ["Drag"] = repStorage.AmmoTypes["9x39AP"]:GetAttribute("Drag")
    },
    ["12gaSlug"] = {
        ["Drop"]  = repStorage.AmmoTypes["12gaSlug"]:GetAttribute("ProjectileDrop"),
        ["Speed"] = repStorage.AmmoTypes["12gaSlug"]:GetAttribute("MuzzleVelocity"),
        ["Damage"] = repStorage.AmmoTypes["12gaSlug"]:GetAttribute("Damage"),
        ["Pellets"] = repStorage.AmmoTypes["12gaSlug"]:GetAttribute("Pellets"),
        ["ArmorPen"] = repStorage.AmmoTypes["12gaSlug"]:GetAttribute("ArmorPen"),
        ["Spread"] = repStorage.AmmoTypes["12gaSlug"]:GetAttribute("AccuracyDeviation"),
        ["Drag"] = repStorage.AmmoTypes["12gaSlug"]:GetAttribute("Drag")
    },
    ["12gaBuckshot"] = {
        ["Drop"] = repStorage.AmmoTypes["12gaBuckshot"]:GetAttribute("ProjectileDrop"),
        ["Speed"] = repStorage.AmmoTypes["12gaBuckshot"]:GetAttribute("MuzzleVelocity"),
        ["Damage"] = repStorage.AmmoTypes["12gaBuckshot"]:GetAttribute("Damage"),
        ["Pellets"] = repStorage.AmmoTypes["12gaBuckshot"]:GetAttribute("Pellets"),
        ["ArmorPen"] = repStorage.AmmoTypes["12gaBuckshot"]:GetAttribute("ArmorPen"),
        ["Spread"] = repStorage.AmmoTypes["12gaBuckshot"]:GetAttribute("AccuracyDeviation"),
        ["Drag"] = repStorage.AmmoTypes["12gaBuckshot"]:GetAttribute("Drag")
    },
    ["12gaFlechette"] = {
        ["Drop"] = repStorage.AmmoTypes["12gaFlechette"]:GetAttribute("ProjectileDrop"),
        ["Speed"] = repStorage.AmmoTypes["12gaFlechette"]:GetAttribute("MuzzleVelocity"),
        ["Damage"] = repStorage.AmmoTypes["12gaFlechette"]:GetAttribute("Damage"),
        ["Pellets"] = repStorage.AmmoTypes["12gaFlechette"]:GetAttribute("Pellets"),
        ["ArmorPen"] = repStorage.AmmoTypes["12gaFlechette"]:GetAttribute("ArmorPen"),
        ["Spread"] = repStorage.AmmoTypes["12gaFlechette"]:GetAttribute("AccuracyDeviation"),
        ["Drag"] = repStorage.AmmoTypes["12gaFlechette"]:GetAttribute("Drag")
    }
}
local esp = {
    players = {},
    objects = {},
    otherObjects = {},
    enabled = false,
    teamcheck = false,
    fontsize = 13,
    rainbowmode = false,
    rainbowcolor = Color3.fromHSV(0, 1, 1),
    font = 2,
    settings = {
        name = {enabled = false, outline = true, displaynames = false, color = Color3.fromRGB(255, 255, 255)},
        box = {enabled = false, outline = true, color = Color3.fromRGB(255, 255, 255)},
        tool = {enabled = false, outline = true, color = Color3.fromRGB(255, 255, 255)},
        healthbar = {enabled = false, outline = true},
        healthtext = {enabled = false, outline = true, color = Color3.fromRGB(255, 255, 255)},
        distance = {enabled = false, outline = true, color = Color3.fromRGB(255, 255, 255)},
        viewangle = {enabled = false, color = Color3.fromRGB(255, 255, 255)},
        tracers = {enabled = false, color = Color3.fromRGB(255, 255, 255)},
        skeleton = {enabled = false, color = Color3.fromRGB(255, 255, 255)},
        chams = {enabled = false, color = Color3.fromRGB(255, 255, 255)},
        chamsOutline = {enabled = false, color = Color3.fromRGB(255, 255, 255)},
        offscreenarrows = {enabled = false, color = Color3.fromRGB(255, 255, 255)},
    }
}

local main = library:Load{ Name = "1NF1N17Y - " .. script_version_number .. " - Last Updated: " .. last_updated .. " - Paid", SizeX = 600, SizeY = 600, Theme = "Midnight", Extension = "json",  Folder = "1NF1N17Y-Configs" }

--* Tabs *--
local Tabs = {
    Aimbot = main:Tab("Aimbot"),
    Combat = main:Tab("Combat"),
    Visuals = main:Tab("Visuals"),
    Misc = main:Tab("Misc"),
}

--* Sections *--
local Sections = {
    Aimbot = {
        Aimbot = Tabs.Aimbot:Section{Name = "Aimbot", Side = "Left"},
        Settings = Tabs.Aimbot:Section{Name = "Aimbot Settings", Side = "Right"},
        FOV_Circle = Tabs.Aimbot:Section{Name = "FOV", Side = "Left"},
    },
    Combat = {
        WeaponMods = Tabs.Combat:Section{Name = "Weapon Mods", Side = "Left"},
        HitSounds = Tabs.Combat:Section{Name = "Custom Hit Sounds", Side = "Right"},
        AntiAim = Tabs.Combat:Section{Name = "Anti Prediction", Side = "Left"},
        AntiAim2 = Tabs.Combat:Section{Name = "Anti Aim", Side = "Right"},
    },
    Visuals = {
        Objects = Tabs.Visuals:Section{Name = "Objects", Side = "Right"},
        ESP = Tabs.Visuals:Section{Name = "ESP", Side = "Left"},
        InventoryScanner = Tabs.Visuals:Section{Name = "Inventory Viewer", Side = "Right"},
        FreeCamera = Tabs.Visuals:Section{Name = "Free Camera", Side = "Right"},
        RainbowSettings = Tabs.Visuals:Section{Name = "Rainbow ESP", Side = "Right"},
    },
    Misc = {
        Lighting = Tabs.Misc:Section{Name = "Lighting", Side = "Left"},
        Removals = Tabs.Misc:Section{Name = "Removals", Side = "Right"},
        LocalPlayer = Tabs.Misc:Section{Name = "Local Player", Side = "Left"},
        Misc = Tabs.Misc:Section{Name = "Misc", Side = "Right"},
    },
}

--* Aimbot *--
local AimbotToggle = Sections.Aimbot.Aimbot:Toggle{
    Name = "Enabled",
    Flag = "aimbotEnabled",
    Default = false,
    Callback  = function(bool)
        Environment.Settings.Enabled = bool
    end
}
AimbotToggle:Keybind{
    Default = Enum.UserInputType.MouseButton2,
    Blacklist = {Enum.UserInputType.MouseButton1},
    Flag = "aimbotKeybind",
    Mode = "nil", -- mode to nil if u dont want it to toggle the toggle
    Callback = function(key, fromsetting)
        local key = tostring(key):gsub("Enum.UserInputType.", "")
        Environment.Settings.TriggerKey = key
    end
}
local SilentAim = Sections.Aimbot.Aimbot:Toggle{
    Name = "Silent Aim",
    Flag = "silentaimEnabled",
    Tooltip = "Aimbot but no snapping.",
    Tooltipplace = "Left",
    Callback  = function(bool)
        Environment.Settings.SilentAimEnabled = bool
    end
}
SilentAim:Slider{
    Text = "Misschance: [value]%",
    Default = 1,
    Min = 1,
    Max = 100,
    Float = 1,
    Flag = "silentaimMisschance",
    Callback = function(value)
        Environment.Settings.SilentAimMisschance = value
    end
}
Sections.Aimbot.Aimbot:Toggle{
    Name = "AI",
    Flag = "aiaimbotEnabled",
    Callback  = function(bool)
        Environment.Settings.AiAimbotEnabled = bool
    end
}
Sections.Aimbot.Aimbot:Toggle{
    Name = "Friend Check",
    Flag = "aimbotfriendcheckEnabled"
}
Sections.Aimbot.Aimbot:Toggle{
    Name = "Prediction",
    Flag = "predictionEnabled",
    Callback = function(bool)
        Environment.Settings.Prediction = bool
    end
}
Sections.Aimbot.Aimbot:Toggle{
    Name = "Visible Check",
    Flag = "visiblecheckEnabled",
    Callback = function(bool)
        Environment.Settings.WallCheck = bool
    end
}
Sections.Aimbot.Aimbot:Toggle{
    Name = "Resolver",
    Flag = "resolverEnabled",
    Tooltip = "Only use against other hackers.",
    Tooltipplace = "Left",
}
local aimbotSnaplines = Sections.Aimbot.Aimbot:Toggle{
    Name = "Snap Lines",
    Flag = "snaplinesEnabled",
    Callback = function(bool)
        Environment.Settings.SnapLines = bool
    end
}
aimbotSnaplines:ColorPicker{
    Default = Color3.fromRGB(255, 0, 0), 
    Flag = "snaplinesColor",
    Callback = function(color)
        Environment.Settings.SnapLineColor = string.format("%s, %s, %s", math.round(color.R * 255), math.round(color.G * 255), math.round(color.B * 255))
    end
}
local highlighttargetEnabled = Sections.Aimbot.Aimbot:Toggle{
    Name = "Highlight Target",
    Flag = "highlighttargetEnabled"
}
highlighttargetEnabled:ColorPicker{
    Default = Color3.fromRGB(255, 0, 0), 
    Flag = "highlighttargetColor"
}

local HitNotifications = Sections.Aimbot.Settings:Toggle{
    Name = "Hit Notifications",
    Flag = "hitnotificationsEnabled"
}
HitNotifications:ColorPicker{
    Default = Color3.fromRGB(255, 0, 0), 
    Flag = "hitnotificationsColor"
}
HitNotifications:Slider{
    Text = "Duration: [value]s",
    Default = 2,
    Min = 1,
    Max = 5,
    Float = 0.1,
    Flag = "hitnotificationsDuration"
}

local HitMarkers = Sections.Aimbot.Settings:Toggle{
    Name = "Hit Markers",
    Flag = "hitmarkersEnabled"
}
HitMarkers:ColorPicker{
    Default = Color3.fromRGB(255, 0, 0), 
    Flag = "hitmarkersColor"
}
HitMarkers:Slider{
    Text = "Duration: [value]s",
    Default = 2,
    Min = 0,
    Max = 5,
    Float = 0.1,
    Flag = "hitmarkersDuration"
}

local bulletlineEnabled = Sections.Aimbot.Settings:Toggle{
    Name = "Bullet Tracers",
    Flag = "bulletlineEnabled"
}
bulletlineEnabled:ColorPicker{
    Default = Color3.fromRGB(255, 255, 255), 
    Flag = "bulletlineColor"
}
bulletlineEnabled:Slider{
    Text = "Duration: [value] s",
    Default = 2,
    Min = 0,
    Max = 3,
    Float = 0.01,
    Flag = "bulletlineDelay"
}

local HitChams = Sections.Aimbot.Settings:Toggle{
    Name = "Hit Chams",
    Flag = "hitchamsEnabled",
}
HitChams:ColorPicker{
    Default = Color3.fromRGB(255, 255, 255), 
    Flag = "hitchamsColor"
}
HitChams:Slider{
    Text = "Duration: [value] s",
    Default = 2,
    Min = 0,
    Max = 5,
    Float = 0.01,
    Flag = "hitchamsDuration"
}

local RandomAimbotPartToggle = Sections.Aimbot.Settings:Toggle{
    Name = "Random Hit Part",
    Flag = "aimbotrandomhitpartEnabled"
}
Sections.Aimbot.Settings:Dropdown{
    Name = "Aim Part",
    Default = "Head",
    Content = HitBoxParts,
    Flag = "aimbotSnapPart",
    Callback = function(option)
        Environment.Settings.LockPart = tostring(option)
    end
}

Sections.Aimbot.Settings:Slider{
    Name = "Sensitivity",
    Text = "[value] ms",
    Default = 0,
    Min = 0,
    Max = 1,
    Float = 0.01,
    Flag = "aimbotSensitivity",
    Callback = function(value)
        Environment.Settings.Sensitivity = value
    end
}

Sections.Aimbot.Settings:Slider{
    Name = "Max Aim Distance",
    Text = "[value] m",
    Default = 1000,
    Min = 0,
    Max = 5000,
    Float = 1,
    Flag = "aimbotMaxDistance",
    Callback = function(value)
        Environment.Settings.MaxDistance = value
    end
}

--* FOV Circle *--
local fovCircle = Sections.Aimbot.FOV_Circle:Toggle{
    Name = "Enabled",
    Flag = "fovcircleEnabled",
    Callback = function(bool)
        Environment.FOVSettings.Enabled = bool
    end
}
fovCircle:ColorPicker{
    Default = Color3.fromRGB(255, 255, 255), 
    Flag = "fovcircleColor",
    Callback = function(color)
        Environment.FOVSettings.Color = string.format("%s, %s, %s", math.round(color.R * 255), math.round(color.G * 255), math.round(color.B * 255))
    end
}
Sections.Aimbot.FOV_Circle:Slider{
    Name = "Size",
    Text = "[value]",
    Default = 90,
    Min = 1,
    Max = Camera.ViewportSize.X / 2 + 200,
    Float = 1,
    Flag = "fovcircleSize",
    Callback = function(value)
        Environment.FOVSettings.Amount = value
    end
}
Sections.Aimbot.FOV_Circle:Slider{
    Name = "Sides",
    Text = "[value]",
    Default = 50,
    Min = 1,
    Max = 65,
    Float = 1,
    Flag = "fovcircleSides",
    Callback = function(value)
        Environment.FOVSettings.Sides = value
    end
}
Sections.Aimbot.FOV_Circle:Slider{
    Name = "Thickness",
    Text = "[value]",
    Default = 1,
    Min = 1,
    Max = 10,
    Float = 1,
    Flag = "fovcircleThickness",
    Callback = function(value)
        Environment.FOVSettings.Thickness = value
    end
}

--* Weapon Mods *--
local OldWeaponMods_QuickAim = {}
Sections.Combat.WeaponMods:Toggle{
    Name = "Quick Aim",
    Flag = "quickaimEnabled",
    Callback = function(bool)
        if bool then
            OldWeaponMods_QuickAim = {}
            for i,v in next, repStorage.Players[plr.Name].Inventory:GetChildren() do
                local module = require(v.SettingsModule)

                table.insert(OldWeaponMods_QuickAim, module.AimInSpeed)
                table.insert(OldWeaponMods_QuickAim, module.AimOutSpeed)

                module.AimInSpeed = 0
                module.AimOutSpeed = 0
            end
        else
            for i,v in next, repStorage.Players[plr.Name].Inventory:GetChildren() do
                local module = require(v.SettingsModule)

                for i2,v2 in next, OldWeaponMods_QuickAim do
                    module.AimInSpeed = v2
                    module.AimOutSpeed = v2
                end
            end
        end
    end
}
Sections.Combat.WeaponMods:Toggle{
    Name = "No Recoil",
    Flag = "norecoilEnabled",
    Callback = function(bool)
        if bool then
            for i,v in pairs(repStorage.RangedWeapons:GetChildren()) do
                v:SetAttribute("RecoilPattern", nil)
            end
        else
            for i,v in pairs(repStorage.RangedWeapons:GetChildren()) do
                v:SetAttribute("RecoilPattern", nil)
            end
        end
    end
}
Sections.Combat.WeaponMods:Toggle{
    Name = "No Muzzle Flash",
    Flag = "nomuzzleflashEnabled",
    Callback = function(bool)
        for i,v in pairs(repStorage.RangedWeapons:GetChildren()) do
            v:SetAttribute("MuzzleEffect", not bool)
        end
    end
}
-- local BulletReplay__ = Sections.Combat.WeaponMods:Toggle{
--     Name = "Bullet Replay",
--     Flag = "bulletreplayEnabled"
-- }
-- BulletReplay__:Slider{
--     Text = "Shots: [value]/10",
--     Default = 1,
--     Min = 1,
--     Max = 10,
--     Float = 1,
--     Flag = "bulletreplayAmount"
-- }


--* Hit Sounds *--
Sections.Combat.HitSounds:Toggle{
    Name = "Enabled",
    Flag = "hitsoundsEnabled",
    Callback = function(bool)
        if bool then
            game:GetService("ReplicatedStorage").SFX.Hits.HitMarkers.Helmet.Volume = 0
            game:GetService("ReplicatedStorage").SFX.Hits.HitMarkers.BodyArmor.Volume = 0
            game:GetService("ReplicatedStorage").SFX.Hits.HitMarkers.Bodyshot.Volume = 0
            game:GetService("ReplicatedStorage").SFX.Hits.HitMarkers.Headshot.Volume = 0

            game:GetService("ReplicatedStorage").SFX.Hits.ProjectileHits.Default.Hit.Volume = 0
            game:GetService("ReplicatedStorage").SFX.Hits.ProjectileHits.Blood.Hit.Volume = 0
        else
            game:GetService("ReplicatedStorage").SFX.Hits.HitMarkers.Helmet.Volume = 7
            game:GetService("ReplicatedStorage").SFX.Hits.HitMarkers.BodyArmor.Volume = 7
            game:GetService("ReplicatedStorage").SFX.Hits.HitMarkers.Bodyshot.Volume = 7
            game:GetService("ReplicatedStorage").SFX.Hits.HitMarkers.Headshot.Volume = 7

            game:GetService("ReplicatedStorage").SFX.Hits.ProjectileHits.Default.Hit.Volume = 1
            game:GetService("ReplicatedStorage").SFX.Hits.ProjectileHits.Blood.Hit.Volume = 1
        end
    end
}
-- Miscellaneous - Hit Sound
local hitSounds = {
    Neverlose = "rbxassetid://8726881116",
    Gamesense = "rbxassetid://4817809188",
    Rust = "rbxassetid://1255040462",
    ["Among Us"] = "rbxassetid://5700183626",
    ["CS:GO"] = "rbxassetid://6937353691",
    ["Call of Duty"] = "rbxassetid://5952120301",
    Click = "rbxassetid://8053704437",
    Steve = "rbxassetid://4965083997",
}

local allSounds = {}
allSounds[1] = "Standard"
for i, v in pairs(hitSounds) do
    allSounds[#allSounds + 1] = i
end

local HeadSoundList = Sections.Combat.HitSounds:Dropdown{
    Name = "Head",
    Default = "Standard",
    Content = allSounds,
    Flag = "headSound",
    Callback = function(option)
        local standardHitsound = option == "Standard"
        if standardHitsound then
            headSound.SoundId = ""
        else
            headSound.SoundId = hitSounds[option]
        end
        if not headSound.IsPlaying then
            headSound:Play()
        end
    end
}
Sections.Combat.HitSounds:Slider{
    Name = "Head Sound Volume",
    Text = "[value]",
    Default = 5,
    Min = 0,
    Max = 10,
    Float = 0.1,
    Flag = "headSoundVolume",
    Callback = function(value)
        headSound.Volume = value
        if not headSound.IsPlaying then
            headSound:Play()
        end
    end
}

local BodySoundList = Sections.Combat.HitSounds:Dropdown{
    Name = "Body",
    Default = "Standard",
    Content = allSounds,
    Flag = "bodySound",
    Callback = function(option)
        local standardHitsound = option == "Standard"
        if standardHitsound then
            bodySound.SoundId = ""
        else
            bodySound.SoundId = hitSounds[option]
        end
        if not bodySound.IsPlaying then
            bodySound:Play()
        end
    end
}
Sections.Combat.HitSounds:Slider{
    Name = "Body Sound Volume",
    Text = "[value]",
    Default = 5,
    Min = 0,
    Max = 10,
    Float = 0.1,
    Flag = "bodySoundVolume",
    Callback = function(value)
        bodySound.Volume = value
        if not bodySound.IsPlaying then
            bodySound:Play()
        end
    end
}

local KillSoundList = Sections.Combat.HitSounds:Dropdown{
    Name = "Kill",
    Default = "Standard",
    Content = allSounds,
    Flag = "killSound",
    Callback = function(option)
        local standardHitsound = option == "Standard"
        if standardHitsound then
            killSound.SoundId = ""
        else
            killSound.SoundId = hitSounds[option]
        end
        if not killSound.IsPlaying then
            killSound:Play()
        end
    end
}
Sections.Combat.HitSounds:Slider{
    Name = "Kill Sound Volume",
    Text = "[value]",
    Default = 5,
    Min = 0,
    Max = 10,
    Float = 0.1,
    Flag = "killSoundVolume",
    Callback = function(value)
        killSound.Volume = value
        if not killSound.IsPlaying then
            killSound:Play()
        end
    end
}

--* Anti Aim *--
local AntiPrediction = Sections.Combat.AntiAim:Toggle{
    Name = "Anti Prediction",
    Flag = "antipredictionEnabled",
    Tooltip = "Very good against other hackers using prediction.",
    Tooltipplace = "Left",
}
AntiPrediction:Keybind{
    Default = Enum.KeyCode.F,
    Blacklist = {Enum.UserInputType.MouseButton1, Enum.UserInputType.MouseButton2, Enum.UserInputType.MouseButton3},
    Flag = "antipredictionKeybind",
    Mode = "nill", 
    Callback = function(key, fromsetting)
        local key = tostring(key):gsub("Enum.KeyCode.", "")
        _AntiPredictionKeybind = key

        if not fromsetting then
            AntiPrediction_ = not AntiPrediction_
            if AntiPrediction_ and library.flags["antipredictionEnabled"] then
                KeybindUI.AddKeybind("Anti Predic", _AntiPredictionKeybind)
            end
            if not AntiPrediction_ and library.flags["antipredictionEnabled"] then
                KeybindUI.RemoveKeybind("Anti Predic")
            end
        end
    end
}
AntiPrediction:Slider{
    Text = "Power: [value]/100",
    Default = 200,
    Min = 0,
    Max = 100,
    Float = 1,
    Flag = "antiaimPower"
}
Sections.Combat.AntiAim:Slider{
    Name = "X Value",
    Text = "[value]",
    Default = 50,
    Min = 0,
    Max = 100,
    Float = 1,
    Flag = "antiaimX"
}
Sections.Combat.AntiAim:Slider{
    Name = "Y Value",
    Text = "[value]",
    Default = 50,
    Min = 0,
    Max = 100,
    Float = 1,
    Flag = "antiaimY"
}
Sections.Combat.AntiAim:Slider{
    Name = "Z Value",
    Text = "[value]",
    Default = 50,
    Min = 0,
    Max = 100,
    Float = 1,
    Flag = "antiaimZ"
}
Sections.Combat.AntiAim:Toggle{
    Name = "Randomize",
    Flag = "antiaimRandom"
}

Sections.Combat.AntiAim2:Toggle{ Name = "Anti Aim", Flag = "blatantantiaimEnabled", Tooltip = "Anti aim to stop other players from hitting head.", Tooltipplace = "Right"}
Sections.Combat.AntiAim2:Slider{ Text = "Pitch: [value]/0.75", Default = 0, Min = -0.75, Max = 0.75, Float = 0.01, Flag = "blatantantiaimPitch"}
Sections.Combat.AntiAim2:Slider{ Name = "Yaw", Text = "[value]/360", Default = 0, Min = 0, Max = 360, Float = 1, Flag = "blatantantiaimYaw"}
Sections.Combat.AntiAim2:Slider{ Name = "Roll", Text = "[value]/1", Default = 0, Min = -1, Max = 1, Float = 1, Flag = "blatantantiaimRoll"}
Sections.Combat.AntiAim2:Toggle{ Name = "Randomize Pitch", Flag = "blatantantiaimRandomPitch"}
Sections.Combat.AntiAim2:Toggle{ Name = "Randomize Yaw", Flag = "blatantantiaimRandomYaw"}
Sections.Combat.AntiAim2:Toggle{ Name = "Randomize Roll", Flag = "blatantantiaimRandomRoll"}
Sections.Combat.AntiAim2:Slider{ Name = "Roll Tick", Text = "[value]/25", Default = 0, Min = 0, Max = 25, Float = 1, Flag = "blatantantiaimRandomRollTick"}

Sections.Combat.AntiAim2:Toggle{ Name = "No Auto Rotate", Flag = "blatantantiaimautorotateEnabled",
Callback = function(bool)
    if bool then
        plr.Character.Humanoid.AutoRotate = false
    else
        plr.Character.Humanoid.AutoRotate = true
    end
end}


-- * ESP * --
local ESPEnabledToggle = Sections.Visuals.ESP:Toggle{
    Name = "Enabled",
    Flag = "espEnabled",
    Callback = function(bool)
        esp.enabled = bool
    end
}
local espFriendCheck = Sections.Visuals.ESP:Toggle{
    Name = "Friend Check",
    Flag = "friendcheckEnabled",
    Callback = function(bool)
        
    end
}
espFriendCheck:ColorPicker{
    Default = Color3.fromRGB(255, 255, 255), 
    Flag = "friendcheckColor",
    Callback = function(color)
        
    end
}
local espName = Sections.Visuals.ESP:Toggle{
    Name = "Name",
    Flag = "espnameEnabled",
    Callback = function(bool)
        esp.settings.name.enabled = bool
    end
}
espName:ColorPicker{
    Default = Color3.fromRGB(255, 255, 255), 
    Flag = "espnameColor",
    Callback = function(color)
        esp.settings.name.color = color
    end
}
local espBox = Sections.Visuals.ESP:Toggle{
    Name = "Box",
    Flag = "espboxEnabled",
    Callback = function(bool)
        esp.settings.box.enabled = bool
    end
}
espBox:ColorPicker{
    Default = Color3.fromRGB(255, 255, 255), 
    Flag = "espboxColor",
    Callback = function(color)
        esp.settings.box.color = color
    end
}
espBox:ColorPicker{
    Default = Color3.fromRGB(24, 24, 24), 
    Flag = "espboxoutlineColor"
}
local espTool = Sections.Visuals.ESP:Toggle{
    Name = "Tool",
    Flag = "esptoolEnabled",
    Callback = function(bool)
        esp.settings.tool.enabled = bool
    end
}
espTool:ColorPicker{
    Default = Color3.fromRGB(255, 255, 255), 
    Flag = "esptoolColor",
    Callback = function(color)
        esp.settings.tool.color = color
    end
}
Sections.Visuals.ESP:Toggle{
    Name = "Health Bar",
    Flag = "esphealthbarEnabled",
    Callback = function(bool)
        esp.settings.healthbar.enabled = bool
    end
}
local espHealthText = Sections.Visuals.ESP:Toggle{
    Name = "Health Text",
    Flag = "esphealthtextEnabled",
    Callback = function(bool)
        esp.settings.healthtext.enabled = bool
    end
}
espHealthText:ColorPicker{
    Default = Color3.fromRGB(255, 255, 255), 
    Flag = "esphealthtextColor",
    Callback = function(color)
        esp.settings.healthtext.color = color
    end
}
local espDistance = Sections.Visuals.ESP:Toggle{
    Name = "Distance",
    Flag = "espdistanceEnabled",
    Callback = function(bool)
        esp.settings.distance.enabled = bool
    end
}
espDistance:ColorPicker{
    Default = Color3.fromRGB(255, 255, 255), 
    Flag = "espdistanceColor",
    Callback = function(color)
        esp.settings.distance.color = color
    end
}
local espViewAngle = Sections.Visuals.ESP:Toggle{
    Name = "View Angle",
    Flag = "espviewangleEnabled",
    Callback = function(bool)
        esp.settings.viewangle.enabled = bool
    end
}
espViewAngle:ColorPicker{
    Default = Color3.fromRGB(255, 255, 255), 
    Flag = "espviewangleColor",
    Callback = function(color)
        esp.settings.viewangle.color = color
    end
}
local espTracers = Sections.Visuals.ESP:Toggle{
    Name = "Tracers",
    Flag = "esptracersEnabled",
    Callback = function(bool)
        esp.settings.tracers.enabled = bool
    end
}
espTracers:ColorPicker{
    Default = Color3.fromRGB(255, 255, 255), 
    Flag = "esptracersColor",
    Callback = function(color)
        esp.settings.tracers.color = color
    end
}
local espSkeleton = Sections.Visuals.ESP:Toggle{
    Name = "Skeleton",
    Flag = "espskeletonEnabled",
    Callback = function(bool)
        esp.settings.skeleton.enabled = bool
    end
}
espSkeleton:ColorPicker{
    Default = Color3.fromRGB(255, 255, 255), 
    Flag = "espskeletonColor",
    Callback = function(color)
        esp.settings.skeleton.color = color
    end
}
local espChams = Sections.Visuals.ESP:Toggle{
    Name = "Chams",
    Flag = "espchamsEnabled",
    Callback = function(bool)   
        esp.settings.chams.enabled = bool
    end
}
espChams:ColorPicker{
    Default = Color3.fromRGB(0, 255, 0), 
    Flag = "chamsvisibleColor"
}
espChams:ColorPicker{
    Default = Color3.fromRGB(255, 0, 0), 
    Flag = "chamsnotvisibleColor"
}
local espChamsOutline = Sections.Visuals.ESP:Toggle{
    Name = "Chams Outline",
    Flag = "espchamsoutlineEnabled",
    Callback = function(bool)   
        esp.settings.chamsOutline.enabled = bool
    end
}
espChamsOutline:ColorPicker{
    Default = Color3.fromRGB(255, 255, 255), 
    Flag = "espchamsoutlineColor",
    Callback = function(color)
        esp.settings.chamsOutline.color = color
    end
}
local OffScreenArrowsToggle = Sections.Visuals.ESP:Toggle{
    Name = "Off Screen Arrows",
    Flag = "espoffscreenarrowsEnabled",
    Callback = function(bool)
        esp.settings.offscreenarrows.enabled = bool
    end
}
OffScreenArrowsToggle:Slider{
    Text = "Radius: [value]/" .. Camera.ViewportSize.X / 2,
    Default = 100,
    Min = 5,
    Max = Camera.ViewportSize.X / 2,
    Float = 1,
    Flag = "espoffscreenarrowsRadius"
}
Sections.Visuals.ESP:Toggle{
    Name = "Arrows Info",
    Flag = "espoffscreenarrowsInfoEnabled"
}

Sections.Visuals.ESP:Separator("ESP Settings")
Sections.Visuals.ESP:Dropdown{
    Name = "Tracer Location",
    Default = "Bottom",
    Content = {
        "Bottom",
        "Middle",
    },
    Flag = "tracerFromLocation",
    Callback = function(option)
        
    end
}
Sections.Visuals.ESP:Slider{
    Name = "Max Distance",
    Text = "[value] m",
    Default = 1000,
    Min = 1,
    Max = 5000,
    Float = 1,
    Flag = "espMaxDistance",
    Callback = function(value)
    end
}
Sections.Visuals.ESP:Slider{
    Name = "Font Size",
    Text = "[value]/13",
    Default = 13,
    Min = 5,
    Max = 30,
    Float = 0.01,
    Flag = "espFontSize",
    Callback = function(value)
        esp.fontsize = value
    end
}

---------------------------------
    --* OBJECT ESP *--
---------------------------------
local objectConnections = {}
Sections.Visuals.Objects:Toggle{
    Name = "Enabled",
    Flag = "espobjectsEnabled",
    Callback = function(bool)
        ESP.Objects_Enabled = bool
    end
}


local MonumentsESP = Sections.Visuals.Objects:Toggle{
    Name = "Monuments",
    Flag = "espobjectsmonumentsEnabled"
}
MonumentsESP:ColorPicker{
    Default = Color3.fromRGB(255, 255, 255), 
    Flag = "espobjectsmonumentsColor"
}

local AiZones = ws:FindFirstChild("AiZones")
if AiZones then
    for _, Zone in pairs(AiZones:GetChildren()) do
        ServiceConnections.AiZonesAddedConnection = Zone.ChildAdded:Connect(function(Child)
            if Running then
                if Child:IsA("Model") then
                    if library.flags["espobjectsaientitiesEnabled"] and library.flags["espobjectsEnabled"] then
                        if Child.PrimaryPart then
                            ESP:Object(Child, {
                                Type = "Bandit",
                                Color = library.flags["espobjectsaientitiesColor"]
                            })
                        end
                    end
                    if objectConnections[Child] == nil then
                        objectConnections[Child] = Child:GetPropertyChangedSignal("PrimaryPart"):Connect(function()
                            if Running then
                                if Child.PrimaryPart == nil then
                                    local Object = ESP:GetObject(Child)
                                    if Object then
                                        Object:Destroy()
                                    end
                                elseif library.flags["espobjectsaientitiesEnabled"] and library.flags["espobjectsEnabled"] then
                                    ESP:Object(Child, {
                                        Type = "Bandit",
                                        Color = library.flags["espobjectsaientitiesColor"]
                                    })
                                end
                            end
                        end)
                    end
                end
            end
        end)
        ServiceConnections.AiZonesRemovedConnection = Zone.ChildRemoved:Connect(function(Child)
            if Running then
                if Child:IsA("Model") then
                    local Object = ESP:GetObject(Child)
                    if Object then
                        Object:Destroy()
                    end
                end
            end
        end)
    end
    local espobjectsAiEntities = Sections.Visuals.Objects:Toggle{
        Name = "AI Entities",
        Flag = "espobjectsaientitiesEnabled",

        Callback = function(bool)
            if bool then
                for _, Zone in pairs(AiZones:GetChildren()) do
                    for _, Item in pairs(Zone:GetChildren()) do
                        if Item.Name ~= "PMN2" then
                            ESP:Object(Item, {
                                Type = "Bandit",
                                Color = library.flags["espobjectsaientitiesColor"]
                            })
                        end
                        if objectConnections[Item] == nil then
                            objectConnections[Item] = Item:GetPropertyChangedSignal("PrimaryPart"):Connect(function()
                                if Running then
                                    if Item.PrimaryPart == nil then
                                        local Object = ESP:GetObject(Item)
                                        if Object then
                                            Object:Destroy()
                                        end
                                    elseif library.flags["espobjectsaientitiesEnabled"] and library.flags["espobjectsEnabled"] then
                                        if Item.Name ~= "PMN2" then
                                            ESP:Object(Item, {
                                                Type = "Bandit",
                                                Color = library.flags["espobjectsaientitiesColor"]
                                            })
                                        end
                                    end
                                end
                            end)
                        end
                    end
                end
            else
                for _, Object in pairs(ESP.Objects) do
                    if Object.Type == "Bandit" then
                        Object:Destroy()
                    end
                end
            end
        end
    }
    espobjectsAiEntities:ColorPicker{
        Default = Color3.fromRGB(255, 255, 255), 
        Flag = "espobjectsaientitiesColor",
        Callback = function(color)
            for _, Object in pairs(ESP.Objects) do
                if Object.Type == "Bandit" then
                    for _, Drawing in pairs(Object.Components) do
                        Drawing.Color = color
                    end
                end
            end
        end
    }
end
local Containers = ws:FindFirstChild("Containers")
if Containers then
    Containers.ChildAdded:Connect(function(Child)
        if Child:IsA("Model") then
            if Child.PrimaryPart and library.flags["espobjectscontainersEnabled"] and library.flags["espobjectsEnabled"] then
                ESP:Object(Child, {
                    Type = "Container",
                    Color = Flags.objectsContainersColor,
                    Transparency = Framework:Drawing_Transparency(Options.objectsContainersColor.trans),
                    Outline = Flags.objectOutline
                })
            end
            if objectConnections[Child] == nil then
                objectConnections[Child] = Utility:Connection(Child:GetPropertyChangedSignal("PrimaryPart"), function()
                    if Child.PrimaryPart == nil then
                        local Object = ESP:GetObject(Child)
                        if Object then
                            Object:Destroy()
                        end
                    elseif library.flags["espobjectscontainersEnabled"] and library.flags["espobjectsEnabled"] then
                        ESP:Object(Child, {
                            Type = "Container",
                            Color = library.flags["espobjectscontainersColor"]
                        })
                    end
                end)
            end
        end
    end)
    Containers.ChildRemoved:Connect(function(Child)
        if Child:IsA("Model") then
            local Object = ESP:GetObject(Child)
            if Object then
                Object:Destroy()
            end
        end
    end)
    local espobjectsContainers = Sections.Visuals.Objects:Toggle{
        Name = "Containers",
        Flag = "espobjectscontainersEnabled",
        Callback = function(bool)
            if bool then
                for _, Item in pairs(Containers:GetChildren()) do
                    ESP:Object(Item, {
                        Type = "Container",
                        Color = library.flags["espobjectscontainersColor"]
                    })
                    if objectConnections[Item] == nil then
                        objectConnections[Item] = Item:GetPropertyChangedSignal("PrimaryPart"):Connect(function()
                            if Item.PrimaryPart == nil then
                                local Object = ESP:GetObject(Item)
                                if Object then
                                    Object:Destroy()
                                end
                            elseif library.flags["espobjectscontainersEnabled"] and library.flags["espobjectsEnabled"] then
                                ESP:Object(Item, {
                                    Type = "Container",
                                    Color = library.flags["espobjectscontainersColor"]
                                })
                            end
                        end)
                    end
                end
            else
                for _, Object in pairs(ESP.Objects) do
                    if Object.Type == "Container" then
                        Object:Destroy()
                    end
                end
            end
        end
    }
    espobjectsContainers:ColorPicker{
        Default = Color3.fromRGB(255, 255, 255), 
        Flag = "espobjectscontainersColor",
        Callback = function(color)
            for _, Object in pairs(ESP.Objects) do
                if Object.Type == "Container" then
                    for _, Drawing in pairs(Object.Components) do
                        Drawing.Color = color
                    end
                end
            end
        end
    }
end
local DroppedItems = ws:FindFirstChild("DroppedItems")
if DroppedItems then
    ServiceConnections.DroppedItemsAddedConnection = DroppedItems.ChildAdded:Connect(function(Child)
        if Running then
            if Child:IsA("Model") then
                if Child.PrimaryPart and library.flags["espobjectsdroppeditemsEnabled"] and library.flags["espobjectsEnabled"] then
                    ESP:Object(Child, {
                        Type = "Dropped",
                        Color = library.flags["espobjectsdroppeditemsColor"]
                    })
                end
                if objectConnections[Child] == nil then
                    objectConnections[Child] = Child:GetPropertyChangedSignal("PrimaryPart"):Connect(function()
                        if Running then
                            if Child.PrimaryPart == nil then
                                local Object = ESP:GetObject(Child)
                                if Object then
                                    Object:Destroy()
                                end
                            elseif library.flags["espobjectsdroppeditemsEnabled"] and library.flags["espobjectsEnabled"] then
                                ESP:Object(Child, {
                                    Type = "Dropped",
                                    Color = library.flags["espobjectsdroppeditemsColor"]
                                })
                            end
                        end
                    end)
                end
            end
        end
    end)
    ServiceConnections.DroppedItemsRemovedConnection = DroppedItems.ChildRemoved:Connect(function(Child)
        if Running then
            if Child:IsA("Model") then
                local Object = ESP:GetObject(Child)
                if Object then
                    Object:Destroy()
                end
            end
        end
    end)
    local espobjectsDroppedItems = Sections.Visuals.Objects:Toggle{
        Name = "Dropped Items",
        Flag = "espobjectsdroppeditemsEnabled",
        Tooltip = "View dropped items and dead bodies",
        Tooltipplace = "Right",
        Callback = function(bool)
            if bool then
                for _, Item in pairs(DroppedItems:GetChildren()) do
                    ESP:Object(Item, {
                        Type = "Dropped",
                        Color = library.flags["espobjectsdroppeditemsColor"]
                    })
                    if objectConnections[Item] == nil then
                        objectConnections[Item] = Item:GetPropertyChangedSignal("PrimaryPart"):Connect(function()
                            if Running then
                                if Item.PrimaryPart == nil then
                                    local Object = ESP:GetObject(Item)
                                    if Object then
                                        Object:Destroy()
                                    end
                                elseif library.flags["espobjectsdroppeditemsEnabled"] and library.flags["espobjectsEnabled"] then
                                    ESP:Object(Item, {
                                        Type = "Dropped",
                                        Color = library.flags["espobjectsdroppeditemsColor"]
                                    })
                                end
                            end
                        end)
                    end
                end
            else
                for _, Object in pairs(ESP.Objects) do
                    if Object.Type == "Dropped" then
                        Object:Destroy()
                    end
                end
            end
        end
    }
    espobjectsDroppedItems:ColorPicker{
        Default = Color3.fromRGB(255, 255, 255), 
        Flag = "espobjectsdroppeditemsColor",
        Callback = function(color)
            for _, Object in pairs(ESP.Objects) do
                if Object.Type == "Dropped" then
                    for _, Drawing in pairs(Object.Components) do
                        Drawing.Color = color
                    end
                end
            end
        end
    }
end
local NoCollision = ws:FindFirstChild("NoCollision")
if NoCollision then
    local ExitLocations = NoCollision:FindFirstChild("ExitLocations")
    if ExitLocations then
        ServiceConnections.ExitLocationsAddedConnection = ExitLocations.ChildAdded:Connect(function(Child)
            if Running then
                if Child:IsA("BasePart") and library.flags["espobjectsextractsEnabled"] and library.flags["espobjectsEnabled"] then
                    ESP:Object(Child, {
                        Type = "Exit",
                        Color = library.flags["espobjectsextractsColor"]
                    })
                end
            end
        end)
        ServiceConnections.ExitLocationsRemovedConnection = ExitLocations.ChildRemoved:Connect(function(Child)
            if Running then
                if Child:IsA("BasePart") then
                    local Object = ESP:GetObject(Child)
                    if Object then
                        Object:Destroy()
                    end
                end
            end
        end)
        local espobjectsExtracts = Sections.Visuals.Objects:Toggle{
            Name = "Extracts",
            Flag = "espobjectsextractsEnabled",
    
            Callback = function(bool)
                if bool then
                    for _, Item in pairs(ExitLocations:GetChildren()) do
                        if Item:IsA("BasePart") then
                            ESP:Object(Item, {
                                Type = "Exit",
                                Color = library.flags["espobjectsextractsColor"]
                            })
                        end
                    end
                else
                    for _, Object in pairs(ESP.Objects) do
                        if Object.Type == "Exit" then
                            Object:Destroy()
                        end
                    end
                end
            end
        }
        espobjectsExtracts:ColorPicker{
            Default = Color3.fromRGB(255, 255, 255), 
            Flag = "espobjectsextractsColor",
            Callback = function(color)
                for _, Object in pairs(ESP.Objects) do
                    if Object.Type == "Exit" then
                        for _, Drawing in pairs(Object.Components) do
                            Drawing.Color = color
                        end
                    end
                end
            end
        }
    end
end
local LockedDoors = ws:FindFirstChild("Door")
if LockedDoors then
    ServiceConnections.LockedDoorsAddedConnection = LockedDoors.ChildAdded:Connect(function(Child)
        if Running then
            if Child.Name == "Hinge" then
                if v:FindFirstChild("Unlock") and library.flags["espobjectslockeddoorsEnabled"] and library.flags["espobjectsEnabled"] then
                    ESP:Object(Child, {
                        Name = "Locked Door",
                        Type = "Locked Door",
                        Color = library.flags["espobjectslockeddoorsColor"]
                    })
                end
            end
        end
    end)
    ServiceConnections.LockedDoorsRemovedConnection = LockedDoors.ChildRemoved:Connect(function(Child)
        if Running then
            if Child:IsA("BasePart") then
                local Object = ESP:GetObject(Child)
                if Object then
                    Object:Destroy()
                end
            end
        end
    end)
    local espobjectsLockedDoors = Sections.Visuals.Objects:Toggle{
        Name = "Locked Doors",
        Flag = "espobjectslockeddoorsEnabled",

        Callback = function(bool)
            if bool then
                for _, v in pairs(ws:GetDescendants()) do
                    if v.Name == "Hinge" then
                        if v:FindFirstChild("Unlock") then
                            ESP:Object(v, {
                                Name = "Locked Door",
                                Type = "Locked Door",
                                Color = library.flags["espobjectslockeddoorsColor"]
                            })
                        end
                    end
                end
            else
                for _, Object in pairs(ESP.Objects) do
                    if Object.Type == "Locked Door" then
                        Object:Destroy()
                    end
                end
            end
        end
    }
    espobjectsLockedDoors:ColorPicker{
        Default = Color3.fromRGB(255, 255, 255), 
        Flag = "espobjectslockeddoorsColor",
        Callback = function(color)
            for _, Object in pairs(ESP.Objects) do
                if Object.Type == "Locked Door" then
                    for _, Drawing in pairs(Object.Components) do
                        Drawing.Color = color
                    end
                end
            end
        end
    }
end
local VehiclesUAZ = ws:FindFirstChild("Vehicles")
if VehiclesUAZ then
    ServiceConnections.VehiclesUAZAddedConnection = VehiclesUAZ.ChildAdded:Connect(function(Child)
        if Running then
            if Child.Name == "UAZ" then
                if v:FindFirstChild("Body") and library.flags["espobjectsvehiclesEnabled"] and library.flags["espobjectsEnabled"] then
                    ESP:Object(Child.Body, {
                        Name = "Vehicle",
                        Type = "Vehicle",
                        Color = library.flags["espobjectsvehiclesColor"]
                    })
                end
            end
        end
    end)
    ServiceConnections.VehiclesUAZRemovedConnection = VehiclesUAZ.ChildRemoved:Connect(function(Child)
        if Running then
            if Child:IsA("BasePart") then
                local Object = ESP:GetObject(Child)
                if Object then
                    Object:Destroy()
                end
            end
        end
    end)
    local espobjectsVehicles = Sections.Visuals.Objects:Toggle{
        Name = "Vehicles",
        Flag = "espobjectsvehiclesEnabled",
        Callback = function(bool)
            if bool then
                for _, v in pairs(ws.Vehicles:GetDescendants()) do
                    if v.Name == "UAZ" then
                        if v:FindFirstChild("Body") then
                            ESP:Object(v.Body, {
                                Name = "Vehicle",
                                Type = "Vehicle",
                                Color = library.flags["espobjectsvehiclesColor"]
                            })
                        end
                    end
                end
            else
                for _, Object in pairs(ESP.Objects) do
                    if Object.Type == "Vehicle" then
                        Object:Destroy()
                    end
                end
            end
        end
    }
    espobjectsVehicles:ColorPicker{
        Default = Color3.fromRGB(255, 255, 255), 
        Flag = "espobjectsvehiclesColor",
        Callback = function(color)
            for _, Object in pairs(ESP.Objects) do
                if Object.Type == "Vehicle" then
                    for _, Drawing in pairs(Object.Components) do
                        Drawing.Color = color
                    end
                end
            end
        end
    }
end

Sections.Visuals.Objects:Slider{
    Name = "Max Distance",
    Text = "[value] m",
    Default = 1000,
    Min = 1,
    Max = 8000,
    Float = 1,
    Flag = "espobjectMaxDistance",
    Callback = function(value)
        ESP.Object_Maximal_Distance = value
    end
}


---------------------------------
    --* INVENTORY VIEWER *--
---------------------------------
InventoryViewer = {
    Size = Vector2.new(300, 14), 
    
    Main = Framework:Draw("Square", {Thickness = 0, Size = Vector2.new(300, 14), Filled = true, Position = Vector2.new(100, 100), Color = library.flags["Tab Background"], Visible = false, Transparency = 0.5}),
    Border = Framework:Draw("Square", {Thickness = 2, Size = Vector2.new(301, 15), Filled = false, Position = Vector2.new(100, 100), Color = library.flags["Window Background"], Visible = false, Transparency = 0.5}),

    Texts = {}
}

function InventoryViewer:Clear()
    for i, v in pairs(self.Texts) do
        v:Remove()
        self.Texts[i] = nil
        self.Main.Size = self.Size
    end
end

function InventoryViewer:AddText(Text, Tabulated, Main_Text)
    local Main = self.Main
    local Border = self.Border
    local Drawing = Framework:Draw("Text", {Text = Text, Color = Color3.new(1, 1, 1), Transparency = 1, Size = 13, Font = 2, Outline = true, Visible = true})
    table.insert(self.Texts, Drawing)
    
    local Drawings = #self.Texts
    Main.Size = Vector2.new(self.Size.X, 14 * Drawings)
    Border.Size = Main.Size + Vector2.new(1, 1)
    Drawing.Position = Main.Position + Vector2.new(5, (Drawings - 1) * 14)
    if Main_Text then
        Drawing.Color = Color3.fromRGB(0,235,0)
        Drawing.Center = true
        Drawing.Position = Main.Position + Vector2.new(Main.Size.X / 2, 3)
    end
    if Tabulated then
        Drawing.Position = Main.Position + Vector2.new(20, (Drawings - 1) * 14)
    end
    return Drawing
end

function InventoryViewer:Update()
    InventoryViewer.Main.Visible = true
    InventoryViewer.Border.Visible = true
    self.Size = Vector2.new(300, 14)
    local DroppedItems = Workspace:FindFirstChild("DroppedItems")
    local Scan, Containers, _Players, _DeadBodys = {}, table.find(library.flags["inventoryscannerInventoryToScan"], "Containers") , table.find(library.flags["inventoryscannerInventoryToScan"], "Players"), table.find(library.flags["inventoryscannerInventoryToScan"], "Dead Bodys")
    if Containers then
        for i, v in pairs(Workspace.Containers:GetChildren()) do
            if v:IsA("Model") and v:FindFirstChild("Inventory") then
                table.insert(Scan, v)
            end
        end
    end
    if _Players then
        for i, v in pairs(plrs:GetPlayers()) do
            if v ~= plr and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChildOfClass("Humanoid") then
                table.insert(Scan, v.Character)
            end
        end
    end
    if _DeadBodys then
        for i, v in pairs(Workspace.DroppedItems:GetChildren()) do
            if v:IsA("Model") and v:FindFirstChild("Inventory") then
                table.insert(Scan, v)
            end
        end
    end
    local DroppedItemsEnabled2 = false
    local Target, lowMagnitude = nil, Camera.ViewportSize.X / 2
    for i, v in pairs(Scan) do
        local PrimaryPart = v.PrimaryPart
        if PrimaryPart then
            local Vector, onScreen = Camera:WorldToViewportPoint(PrimaryPart.Position)
            if onScreen then
                local Magnitude = (Camera.ViewportSize / 2 - Framework:V3_To_V2(Vector)).Magnitude
                if Magnitude <= lowMagnitude then
                    lowMagnitude = Magnitude
                    Target = v
                end
            end
        end
    end
    if not Target then
        InventoryViewer.Main.Visible = false
        InventoryViewer.Border.Visible = false
        self:Clear()
        wait(library.flags["inventoryscannerUpdateRate"])
        return
    end
    local MainText = nil
    local Humanoid = Target:FindFirstChildOfClass("Humanoid")
    self:Clear()
    local TotalRubleValue = 0
    if repStorage.Players:FindFirstChild(Target.Name) and Humanoid.Health > 0 then
        MainText = self:AddText(Target.Name, false, true)
    else
        MainText = self:AddText(Target.Name .. "Dead Body", false, true)
    end
    self:AddText("", false, false)
    Scan = {}
    local Maximal_X = 0
    if Humanoid then
        local Folder = repStorage.Players:FindFirstChild(Target.Name)
        if Folder then
            table.insert(Scan, Folder.Inventory)
            table.insert(Scan, Folder.Clothing)
            DroppedItemsEnabled2 = false
        else
            local Folder = ws.DroppedItems:FindFirstChild(Target.Name)
            if Folder then
                table.insert(Scan, Folder.Inventory)
                table.insert(Scan, Folder.Clothing)
                DroppedItemsEnabled2 = true
            end
        end
        for i, v in pairs(Scan) do
            local Name = v.Name
            if Name == "Inventory" then
                for _, Item in pairs(v:GetChildren()) do
                    local ItemProperties = Item:FindFirstChild("ItemProperties")
                    if ItemProperties then
                        local ammoString = ""
                        local isGun = false
                        local ItemType = ItemProperties:GetAttribute("ItemType")
                        if ItemType and ItemType == "RangedWeapon" then
                            isGun = true
                            local Attachments = Item:FindFirstChild("Attachments")
                            if Attachments then
                                local Magazine = Attachments:FindFirstChild("Magazine")
                                if Magazine then
                                    Magazine = Magazine:FindFirstChildOfClass("StringValue")
                                    if Magazine then
                                        local MagazineProperties = Magazine:FindFirstChild("ItemProperties")
                                        if MagazineProperties then
                                            local LoadedAmmo = MagazineProperties:FindFirstChild("LoadedAmmo")
                                            if LoadedAmmo then
                                                for _, Slot in pairs(LoadedAmmo:GetChildren()) do
                                                    local Amount = Slot:GetAttribute("Amount")
                                                    if tonumber(Amount) > 0 then
                                                        ammoString = ammoString .. Amount
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        if ammoString == "" and isGun == false then
                            self:AddText(Item.Name)
                        elseif ammoString == "" then
                            local HotbarDrawing = self:AddText(Item.Name .. " [OUT OF AMMO]")
                            local textBoundsX = HotbarDrawing.TextBounds.X
                            if textBoundsX > Maximal_X then
                                Maximal_X = textBoundsX
                            end
                            if Maximal_X > self.Size.X then
                                self.Size = Vector2.new(Maximal_X + 10, self.Main.Size.Y)
                                self.Main.Size = self.Size
                                MainText.Position = self.Main.Position + Vector2.new(self.Main.Size.X / 2, 0)
                            end
                        else
                            ammoString = ammoString:sub(0, ammoString:len() - 2)
                            local HotbarDrawing = self:AddText(Item.Name .. " ["..ammoString.."]")
                            local textBoundsX = HotbarDrawing.TextBounds.X
                            if textBoundsX > Maximal_X then
                                Maximal_X = textBoundsX
                            end
                            if Maximal_X > self.Size.X then
                                self.Size = Vector2.new(Maximal_X + 10, self.Main.Size.Y)
                                self.Main.Size = self.Size
                                MainText.Position = self.Main.Position + Vector2.new(self.Main.Size.X / 2, 0)
                            end
                        end
                    else
                        self:AddText(Item.Name)
                    end
                end
                self:AddText("", false, false)

            elseif Name == "Clothing" then
                for _, Clothing in pairs(v:GetChildren()) do
                    -- Clothing
                    local Attachments = Clothing:FindFirstChild("Attachments")
                    local attachmentString = ""
                    if Attachments then
                        for _, Slot in pairs(Attachments:GetChildren()) do
                            local Attachment = Slot:FindFirstChildOfClass("StringValue")
                            if Attachment then
                                attachmentString = attachmentString .. Attachment.Name .. "; "
                            end
                        end
                    end
                    attachmentString = attachmentString:sub(0, attachmentString:len() - 2)
                    if attachmentString == "" then
                        local ClothingDrawing = self:AddText(Clothing.Name)
                        ClothingDrawing.Color = Color3.fromRGB(255, 153, 51)
                    else
                        local ClothingDrawing = self:AddText(Clothing.Name .. " [".. attachmentString .."]")
                        ClothingDrawing.Color = Color3.fromRGB(255, 153, 51)
                        local textBoundsX = ClothingDrawing.TextBounds.X
                        if textBoundsX > Maximal_X then
                            Maximal_X = textBoundsX
                        end
                        if Maximal_X > self.Size.X then
                            self.Size = Vector2.new(Maximal_X + 10, self.Main.Size.Y)
                            self.Main.Size = self.Size
                            MainText.Position = self.Main.Position + Vector2.new(self.Main.Size.X / 2, 0)
                        end
                    end

                    -- Clothing Inventory
                    local Inventory = Clothing:FindFirstChild("Inventory")
                    if Inventory then
                        for _, Item in pairs(Inventory:GetChildren()) do
                            local ItemProperties = Item:FindFirstChild("ItemProperties")
                            
                            if ItemProperties then
                                local Amount = ItemProperties:GetAttribute("Amount")
                                if Amount then
                                    if Amount > 1 then
                                        if Item.Name == "Rubles" then
                                            local RublesDrawing = self:AddText(Item.Name .. " [" .. tostring(Amount) .. "]", true)
                                            RublesDrawing.Color = Color3.fromRGB(0, 255, 0)
                                        else
                                            self:AddText(Item.Name .. " [" .. tostring(Amount) .. "]", true)
                                        end
                                    else
                                        self:AddText(Item.Name, true)
                                    end
                                else
                                    self:AddText(Item.Name, true)
                                end
                            else
                                self:AddText(Item.Name, true)
                            end
                        end
                    end
                end
            end
        end
    else
        local Inventory = Target:FindFirstChild("Inventory")
        if Inventory then
            for _, Item in pairs(Inventory:GetChildren()) do
                local ItemProperties = Item:FindFirstChild("ItemProperties")
                if ItemProperties then
                    local Amount = ItemProperties:GetAttribute("Amount")
                    if Amount then
                        if Amount > 1 then
                            self:AddText(Item.Name .. " [" .. tostring(Amount) .. "]")
                        else
                            self:AddText(Item.Name)
                        end
                    else
                        self:AddText(Item.Name)
                    end
                else
                    self:AddText(Item.Name)
                end
            end
        end
    end
end

InventoryViewer.__index = InventoryViewer
local InventoryViewerToggle = false
local invViewer, canUpdate = nil, true

local InventoryViewerToggleBtn = Sections.Visuals.InventoryScanner:Toggle{
    Name = "Enabled",
    Flag = "inventoryscannerEnabled",
    Tooltip = "View players, deadbodys or containers inventorys.",
    Tooltipplace = "Right"
}
InventoryViewerToggleBtn:Keybind{
    Default = Enum.KeyCode.Y,
    Blacklist = {Enum.UserInputType.MouseButton1, Enum.UserInputType.MouseButton2, Enum.UserInputType.MouseButton3},
    Flag = "inventoryscannerKeybind",
    Mode = "nill", -- mode to nil if u dont want it to toggle the toggle
    Callback = function(key, fromsetting)
        if not fromsetting and not Typing then
            InventoryViewerToggle = not InventoryViewerToggle
            if InventoryViewerToggle and library.flags["inventoryscannerEnabled"] then
                if invViewer ~= nil then
                    invViewer:Disconnect()
                end
                invViewer = rs.Heartbeat:Connect(function()
                    if Running and Alive(plr) then
                        if not canUpdate then return end
                        canUpdate = false
                        InventoryViewer:Update()
                        wait(library.flags["inventoryscannerUpdateRate"])
                        canUpdate = true
                    end
                end)
                InventoryViewer.Main.Visible = true
                InventoryViewer.Border.Visible = true
            else
                if invViewer ~= nil then
                    invViewer:Disconnect()
                end
                for i, v in pairs(InventoryViewer.Texts) do
                    v:Remove()
                    InventoryViewer.Texts[i] = nil
                    InventoryViewer.Main.Size = InventoryViewer.Size
                end

                InventoryViewer.Main.Visible = false
                InventoryViewer.Border.Visible = false
            end
        end
    end
}
Sections.Visuals.InventoryScanner:Slider{
    Name = "Update Rate",
    Text = "[value] s",
    Default = 1,
    Min = 0,
    Max = 3,
    Float = 0.01,
    Flag = "inventoryscannerUpdateRate",
    Callback = function(value)
        
    end
}
Sections.Visuals.InventoryScanner:Slider{
    Name = "Frame X Pos",
    Text = "X Position: [value]",
    Default = 100,
    Min = 0,
    Max = Camera.ViewportSize.X - 300,
    Float = 1,
    Flag = "inventoryscannerFrameXPos",
    Callback = function(value)
        InventoryViewer.Main.Position = Vector2.new(value, InventoryViewer.Main.Position.Y)
        InventoryViewer.Border.Position = Vector2.new(value, InventoryViewer.Border.Position.Y)
    end
}
Sections.Visuals.InventoryScanner:Slider{
    Name = "Frame Y Pos",
    Text = "Y Position: [value]",
    Default = 100,
    Min = 0,
    Max = Camera.ViewportSize.Y,
    Float = 1,
    Flag = "inventoryscannerFrameYPos",
    Callback = function(value)
        InventoryViewer.Main.Position = Vector2.new(InventoryViewer.Main.Position.X, value)
        InventoryViewer.Border.Position = Vector2.new(InventoryViewer.Border.Position.X, value)
    end
}
Sections.Visuals.InventoryScanner:Dropdown{
    Name = "Inventory To Scan",
    Default = {"Players", "Dead Bodys"},
    Max = 3, -- makes it multi
    Content = {
        "Players",
        "Containers",
        "Dead Bodys",
    },
    Flag = "inventoryscannerInventoryToScan",
    Callback = function(option)
        
    end
}


--* Free Camera *--
Sections.Visuals.FreeCamera:Button{
    Name = "Enabled - Shift + P",
    Callback  = function()
        loadstring(game:HttpGet("https://cdn.sourceb.in/bins/6EO5uNsj0k/0"))()
    end
}

-- * Lighting * --
Sections.Misc.Lighting:Dropdown{
    Name = "Sky",
    Default = "Standard",
    Content = {"Standard", "Among Us", "Neptune", "Aesthetic Night", "Redshift"},
    Flag = "skyboxEnabled",
    Callback = function(option)
        for Index, Asset in pairs(SkyBoxes[option]) do
            Sky[Index] = Asset
        end
    end
}
Sections.Misc.Lighting:Toggle{
    Name = "Full Bright",
    Flag = "fullbrightEnabled",
    Callback = function(bool)
        if bool then
            lighting.Brightness = 1
            lighting.FogEnd = 1e10
            lighting.ClockTime = 12
            for i, v in pairs(lighting:GetDescendants()) do
                if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("SunRaysEffect") then
                    v.Enabled = false
                end
            end
        else
            lighting.Brightness = Old_Lighting.Brightness
            lighting.FogEnd = Old_Lighting.FogEnd
            lighting.ClockTime = Old_Lighting.ClockTime
        end
    end
}
local AmbientLighting = Sections.Misc.Lighting:Toggle{
    Name = "Ambient",
    Flag = "ambientlightingEnabled",
    Callback = function(bool)
        if bool then
            lighting.Ambient = library.flags["ambientlightingColor"]
        else
            lighting.Ambient = Old_Lighting.Ambient
        end
    end
}
AmbientLighting:ColorPicker{
    Default = Color3.fromRGB(255, 255, 255), 
    Flag = "ambientlightingColor",
    Callback = function(value)
        if library.flags["ambientlightingColor"] then
            lighting.Brightness = value
        end
    end
}
Sections.Misc.Lighting:Slider{
    Name = "Brightness",
    Text = "[value]/10",
    Default = 3,
    Min = 1,
    Max = 10,
    Float = 0.1,
    Flag = "brightnessValue",
    Callback = function(value)
        lighting.Brightness = value
    end
}

-- * Removals * --
Sections.Misc.Removals:Button{
    Name = "Name Above Head",
    Callback  = function()
        if Alive(plr) then
            if plr:FindFirstChild("Head") then
                if plr.Head:FindFirstChild("PlayerTag") then
                    plr.Head.PlayerTag:Destroy()
                    Library:SendNotification(("Player tag removed"), 5, Color3.fromRGB(255, 255, 255))
                end
            end
        end
        Library:SendNotification(("Failed to remove player tag"), 5, Color3.fromRGB(255, 255, 255))
    end
}
local dwLandMines = ws.AiZones:FindFirstChild("OutpostLandmines")
if dwLandMines then
    Sections.Misc.Removals:Toggle{
        Name = "Land Mines",
        Flag = "removeLandMines",
        Callback  = function()
            for i, v in pairs(ws.AiZones.OutpostLandmines:GetChildren()) do
                v:Destroy()
            end
        end
    }
    ws.AiZones.OutpostLandmines.ChildAdded:Connect(function(child)
        if library.flags["removeLandMines"] then
            child:Destroy()
        end
    end)
end
Sections.Misc.Removals:Toggle{
    Name = "Strip Name From Chat",
    Flag = "removeKilledBy",
    Tooltip = "Only works client side.",
    Tooltipplace = "Right"
}
Sections.Misc.Removals:Toggle{
    Name = "Ambient Sounds",
    Flag = "noambientsoundsEnabled",
    Callback  = function(bool)
        for i, v in pairs(ws.AmbientSounds:GetDescendants()) do
            if v:IsA("Sound") then
                if bool then
                    v.Volume = 0
                else
                    v.Volume = 2
                end
            end
        end
    end
}
Sections.Misc.Removals:Toggle{
    Name = "Anti Drown",
    Flag = "antidrownEnabled",
    Callback = function(bool)
        
    end
}
Sections.Misc.Removals:Toggle{
    Name = "Camera Bob",
    Flag = "nocamerabobEnabled",
    Callback = function(bool)
        
    end
}
local MainGui = plr.PlayerGui:FindFirstChild("MainGui")
if MainGui then 
    local MainFrame = MainGui:FindFirstChild("MainFrame")
    if MainFrame then 
        ScreenEffects = MainFrame:FindFirstChild("ScreenEffects")
        Visor = ScreenEffects:FindFirstChild("Visor")
        if Visor then
            Sections.Misc.Removals:Toggle{
                Name = "Visor",
                Flag = "novisorEnabled",
        
                Callback = function(bool)
                    if Visor.Visible and bool then
                        Visor.Visible = false
                    else
                        Visor.Visible = true
                    end
                end
            }
            ServiceConnections.VisorConnection = Visor:GetPropertyChangedSignal("Visible"):Connect(function()
                if Running and Alive(plr) then
                    if Visor.Visible and library.flags["novisorEnabled"] then
                        Visor.Visible = false
                    else
                        Visor.Visible = true
                    end
                end
            end)
        end
    end
end
local MainGui = plr.PlayerGui:FindFirstChild("MainGui")
if MainGui then 
    local MainFrame = MainGui:FindFirstChild("MainFrame")
    if MainFrame then 
        ScreenEffects = MainFrame:FindFirstChild("ScreenEffects")
        FlashBang = ScreenEffects:FindFirstChild("Flashbang")
        if FlashBang then
            Sections.Misc.Removals:Toggle{
                Name = "Anti Flashbang",
                Flag = "antiflashbangEnabled",
        
                Callback = function(bool)
                    if bool then
                        repStorage.SFX.Explosions.Flashbang.Volume = 0
                        ScreenEffects.Flashbang.Size = UDim2.new(0, 0, 0, 0)
                    else
                        repStorage.SFX.Explosions.Flashbang.Volume = 10
                        ScreenEffects.Flashbang.Size = UDim2.new(1, 0, 1, 0)
                    end
                end
            }
        end
    end
end
Sections.Misc.Removals:Toggle{
    Name = "Server Information",
    Flag = "noserverinfoEnabled",
    Callback = function(bool)
        for i,v in pairs(plr.PlayerGui.PerformanceMonitor2:GetChildren()) do
            if v:IsA("TextLabel") then
                v.Visible = not bool
            end
        end
    end
}
Sections.Misc.Removals:Separator("World")
waterBlur = lighting:WaitForChild("WaterBlur")
Sections.Misc.Removals:Toggle{
    Name = "Water Blur",
    Flag = "nowaterblurEnabled",
    Callback = function(bool)
        
    end
}
Atmosphere = lighting:FindFirstChildOfClass("Atmosphere")
if Atmosphere then
    Sections.Misc.Removals:Toggle{
        Name = "Atmosphere",
        Flag = "noatmosphereEnabled",

        Callback = function(bool)
            if library.flags["fullbrightEnabled"] then
                Atmosphere.Parent = bool and cgui or lighting
            end
        end
    }
end
Sections.Misc.Removals:Toggle{
    Name = "Grass",
    Flag = "nograssEnabled",
    Callback = function(bool)
        sethiddenproperty(Terrain, "Decoration", not bool)
    end
}
Clouds = Terrain:FindFirstChildOfClass("Clouds")
if Clouds then
    Sections.Misc.Removals:Toggle{
        Name = "Clouds",
        Flag = "nocloudsEnabled",

        Callback = function(bool)
            Clouds.Parent = bool and cgui or Terrain
        end
    }
end
leafTable = {}
dwFoliage = ws:FindFirstChild("SpawnerZones")
if dwFoliage then
    _dwFoliage = ws.SpawnerZones:FindFirstChild("Foliage")
    if _dwFoliage then
        Sections.Misc.Removals:Toggle{
            Name = "Foliage",
            Flag = "nofoliageEnabled",
            Callback = function(bool)
                if bool then
                    for i, v in next, ws.SpawnerZones.Foliage:GetDescendants() do
                        if v:IsA("MeshPart") and v.TextureID == "" then
                            leafTable[i] = {
                                Part = v,
                                Old = v.Parent
                            }
                            v.Parent = cgui
                        end
                    end
                else
                    pcall(function()
                        for i, v in pairs(leafTable) do
                            v.Part.Parent = v.Old
                        end
                        leafTable = {}
                    end)
                end
            end
        }
        ws.SpawnerZones.Foliage.ChildAdded:Connect(function(child)
            if library.flags["nofoliageEnabled"] and child:IsA("MeshPart") and child.TextureID == "" then
                leafTable[#leafTable + 1] = {
                    Part = child,
                    Old = child.Parent
                }
                child.Parent = cgui
            end
        end)
    end
end

--* Misc *--
Sections.Misc.Misc:Toggle{
    Name = "Kill Message Enabled",
    Flag = "killmessageEnabled",
    Tooltip = "Send a message into chat after killing somone.",
    Tooltipplace = "Right"
}
Sections.Misc.Misc:Box{
    Name = "Kill Message",
    Placeholder = "Enter Message Here",
    Flag = "Kill Message"
}

-- * Local Player Mods * --



local WalkSpeedKeybindToggledOld = false
local HipHeightToggled = false
local gmt = getrawmetatable(game)
setreadonly(gmt, false)
local oldindex = gmt.__index
gmt.__index = newcclosure(function(self,b)
    if b == "HipHeight" and library.flags["hipheightEnabled"] and HipHeightToggled then
        plr.Character.Humanoid.HipHeight = library.flags["hipheightValue"]
        return 2
    end
    if b == "JumpHeight" and library.flags["jumppowerEnabled"] then
        plr.Character.Humanoid.JumpHeight = library.flags["jumppowerValue"]
        return 3.299999952316284
    end
    if b == "WalkSpeed" and library.flags["walkspeedEnabledOld"] and WalkSpeedKeybindToggledOld then
        plr.Character.Humanoid.WalkSpeed = library.flags["walkspeedValueOld"]
        return 16
    end
    if tostring(self) == "Humanoid" then 
        if tostring(b) == "FloorMaterial" then
            return Enum.Material.Plastic
        end
    end

    return oldindex(self, b)
end)
Sections.Misc.LocalPlayer:Toggle{
    Name = "Bhop",
    Flag = "bhopEnabled"
}
local dwJumpPower = Sections.Misc.LocalPlayer:Toggle{
    Name = "Jump Height",
    Flag = "jumppowerEnabled",
    Risky = true,
    Tooltip = "Dont spam otherwise u will be kicked for flying.",
    Tooltipplace = "Left",
    Callback = function(bool)
        if not bool then
            plr.Character.Humanoid.JumpHeight = 3.299999952316284
        end
    end
}
dwJumpPower:Slider{
    Text = "Height: [value]/15",
    Default = 0,
    Min = 0,
    Max = 15,
    Float = 1,
    Flag = "jumppowerValue"
}
local dwHipHeight = Sections.Misc.LocalPlayer:Toggle{
    Name = "Hip Height",
    Flag = "hipheightEnabled",
    Callback = function(bool)
        if not bool then
            plr.Character.Humanoid.HipHeight = 2
        end
    end
}
dwHipHeight:Keybind{
    Default = Enum.KeyCode.L,
    Blacklist = {Enum.UserInputType.MouseButton1, Enum.UserInputType.MouseButton2, Enum.UserInputType.MouseButton3},
    Flag = "hipheightKeybinded",
    Mode = "nill", -- mode to nil if u dont want it to toggle the toggle
    Callback = function(key, fromsetting)
        local key = tostring(key):gsub("Enum.KeyCode.", "")
        _HipHeightKeybind = key

        if not fromsetting and not Typing then
            HipHeightToggled = not HipHeightToggled
            if HipHeightToggled and library.flags["hipheightEnabled"] then
                KeybindUI.AddKeybind("Hip Height", _HipHeightKeybind)
                
                plr.Character.Humanoid.HipHeight = library.flags["hipheightValue"]
            end
            if not HipHeightToggled and library.flags["hipheightEnabled"] then
                KeybindUI.RemoveKeybind("Hip Height")

                plr.Character.Humanoid.HipHeight = 2
            end
        end
    end
}
dwHipHeight:Slider{
    Text = "Height: [value]/7.5",
    Default = 2,
    Min = 2,
    Max = 7.5,
    Float = 0.001,
    Flag = "hipheightValue",
    Callback = function(value)
    end
}
local dwWalkSpeed = Sections.Misc.LocalPlayer:Toggle{
    Name = "Player Speed",
    Flag = "walkspeedEnabledOld"
}
dwWalkSpeed:Keybind{
    Default = Enum.KeyCode.C,
    Blacklist = {Enum.UserInputType.MouseButton1, Enum.UserInputType.MouseButton2, Enum.UserInputType.MouseButton3},
    Flag = "walkspeedKeybindOld",
    Mode = "nill", -- mode to nil if u dont want it to toggle the toggle
    Callback = function(key, fromsetting)
        local key = tostring(key):gsub("Enum.KeyCode.", "")
        _WalkspeedKeybind = key

        if not fromsetting and not Typing then
            WalkSpeedKeybindToggledOld = not WalkSpeedKeybindToggledOld
            if WalkSpeedKeybindToggledOld and library.flags["walkspeedEnabledOld"] then
                KeybindUI.AddKeybind("Walk Speed", _WalkspeedKeybind)
                -- SpoofProperty(plr.Character.Humanoid, "WalkSpeed")
                -- plr.Character.Humanoid.WalkSpeed = tonumber(library.flags["walkspeedValueOld"])
            end
            if not WalkSpeedKeybindToggledOld and library.flags["walkspeedEnabledOld"] then
                KeybindUI.RemoveKeybind("Walk Speed")
                -- SpoofProperty(plr.Character.Humanoid, "WalkSpeed")
                -- plr.Character.Humanoid.WalkSpeed = 16
            end
        end
    end
}
dwWalkSpeed:Slider{
    Text = "Speed: [value]/22",
    Default = 16,
    Min = 16,
    Max = 22,
    Float = 0.5,
    Flag = "walkspeedValueOld"
}
Sections.Misc.LocalPlayer:Separator("Camera Settings")
local FovZoomEnabled = false
local dwFOVZoom = Sections.Misc.LocalPlayer:Toggle{
    Name = "Camera FOV Zoom",
    Flag = "cameraFOVZoomEnabled",
    Callback = function(bool)
        if not bool then
            if Camera.FieldOfView ~= Old_FOV then
                Camera.FieldOfView = Old_FOV
                FovZoomEnabled = false
            end
        end
    end
}
dwFOVZoom:Keybind{
    Default = Enum.KeyCode.X,
    Blacklist = {Enum.UserInputType.MouseButton1, Enum.UserInputType.MouseButton2, Enum.UserInputType.MouseButton3},
    Flag = "cameraFOVZoomKeybind",
    Mode = "nill", -- mode to nil if u dont want it to toggle the toggle
    Callback = function(key, fromsetting)
        local key = tostring(key):gsub("Enum.KeyCode.", "")
        _CameraZoomKeybind = key

        if not fromsetting and not Typing then
            FovZoomEnabled = not FovZoomEnabled
            if library.flags["cameraFOVZoomEnabled"] and FovZoomEnabled then
                KeybindUI.AddKeybind("Camera Zoom", _CameraZoomKeybind)

                Camera.FieldOfView = library.flags["cameraFOVZoomValue"]
            end
            if library.flags["cameraFOVZoomEnabled"] and not FovZoomEnabled then
                KeybindUI.RemoveKeybind("Camera Zoom")

                Camera.FieldOfView = Old_FOV
            end
        end
    end
}
dwFOVZoom:Slider{
    Text = "Distance: [value]/120",
    Default = 15,
    Min = 1,
    Max = 120,
    Float = 1,
    Flag = "cameraFOVZoomValue",
    Callback = function(value)
    end
}
local dwFOV = Sections.Misc.LocalPlayer:Toggle{
    Name = "Camera FOV",
    Flag = "cameraFOVEnabled",
    Callback = function(bool)
        if not bool then
            Camera.FieldOfView = Old_FOV
        end
    end
}
dwFOV:Slider{
    Text = "Distance: [value]/120",
    Default = 90,
    Min = 1,
    Max = 120,
    Float = 1,
    Flag = "cameraFOVValue",
    Callback = function(value)
        if library.flags["cameraFOVEnabled"] then
            Camera.FieldOfView = value
        end
    end
}
local FakeLagEnabled = false
local NetworkClient = game:GetService("NetworkClient")
local VisualizeLagFolder
Sections.Misc.LocalPlayer:Separator("Fake Lag")
local dwVisualizeFakeLag = Sections.Misc.LocalPlayer:Toggle{
    Name = "Visualize Fake Lag",
    Flag = "visualizefakelagEnabled",
    Tooltip = "Spoofs your hitbox location, good against other hackers.",
    Tooltipplace = "Left",
    Callback = function(bool)
        if not bool then
            task.spawn(function()
                wait()
                VisualizeLagFolder:ClearAllChildren()
            end)
        end
    end
}
dwVisualizeFakeLag:ColorPicker{
    Default = Color3.fromRGB(255, 255, 255), 
    Flag = "visualizefakelagColor",
    Callback = function(color)
        
    end
}
VisualizeLagFolder = Framework:Instance("Folder", {Parent = Camera})
local dwFakeLag = Sections.Misc.LocalPlayer:Toggle{
    Name = "Fake Lag",
    Flag = "fakelagEnabled",
    Callback = function(bool)
        if not bool then
            task.spawn(function()
                wait()
                NetworkClient:SetOutgoingKBPSLimit(math.huge)
                VisualizeLagFolder:ClearAllChildren()
            end)
        end
    end
}
dwFakeLag:Keybind{
    Default = Enum.KeyCode.C,
    Blacklist = {Enum.UserInputType.MouseButton1, Enum.UserInputType.MouseButton2, Enum.UserInputType.MouseButton3},
    Flag = "fakelagKeybind",
    Mode = "nill", -- mode to nil if u dont want it to toggle the toggle
    Callback = function(key, fromsetting)
        if not fromsetting and not Typing then
            FakeLagEnabled = not FakeLagEnabled
        end
    end
}
dwFakeLag:Slider{
    Text = "Ticks: [value]/100",
    Default = 0,
    Min = 0,
    Max = 100,
    Float = 1,
    Flag = "fakelagLimit",
    Callback = function(value)
    end
}
local Tick = 0
local sec = nil
sec = tick()

ServiceConnections.CameraConnection = Camera:GetPropertyChangedSignal("FieldOfView"):Connect(function()
    if Running and Alive(plr) then
        if library.flags["cameraFOVEnabled"] then
            Camera.FieldOfView = library.flags["cameraFOVValue"]
        end
        if library.flags["cameraFOVZoomEnabled"] and FovZoomEnabled then
            Camera.FieldOfView = library.flags["cameraFOVZoomValue"]
        end
    end
end)

Sections.Misc.Misc:Separator("LocalPlayer Chams")

--* LocalPlayer Chams *--
local LocalPlayerChamsToggle = Sections.Misc.Misc:Toggle{
    Name = "Enabled",
    Flag = "localchamsEnabled",
    --Default = false,
    Callback = function(bool)
        
    end
}
LocalPlayerChamsToggle:ColorPicker{
    Default = Color3.fromRGB(255, 255, 255), 
    Flag = "localplayerchamsColor",
    Callback = function(color)
        
    end
}
LocalPlayerChamsToggle:ColorPicker{
    Default = Color3.fromRGB(0, 255, 255), 
    Flag = "localgunchamsColor",
    Callback = function(color)
        
    end
}
Sections.Misc.Misc:Dropdown{
    Name = "Player Material",
    Default = "ForceField",
    Content = {"ForceField", "Neon", "SmoothPlastic", "Glass", "Foil"},
    Flag = "localplayerchamsMaterial",
    Callback = function(option)
    end
}
Sections.Misc.Misc:Dropdown{
    Name = "Gun Material",
    Default = "ForceField",
    Content = {"ForceField", "Neon", "SmoothPlastic", "Glass", "Foil"},
    Flag = "localgunchamsMaterial",
    Callback = function(option)
    end
}

--* ESP Functions *--
esp.NewDrawing = function(type, properties)
    local newD = Drawing.new(type)
    for i,v in next, properties or {} do
        local s,e = pcall(function()
            newD[i] = v
        end)

        if not s then
            warn(e)
        end
    end
    return newD
end
esp.HasCharacter = function(v)
    local pass = false
    if v.Character and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Head") then
        pass = true
    end

    if s then return pass; end; return pass;
end
esp.NewPlayer = function(v)
    esp.players[v] = {
        name = esp.NewDrawing("Text", {Color = Color3.fromRGB(255, 255, 255), Outline = true, Center = true, Size = 13, Font = 2}),
        boxOutline = esp.NewDrawing("Square", {Color = Color3.fromRGB(0, 255, 0), Thickness = 3}),
        box = esp.NewDrawing("Square", {Color = Color3.fromRGB(255, 255, 255), Thickness = 1, Filled = false}),
        tool = esp.NewDrawing("Text", {Color = Color3.fromRGB(255, 255, 255), Outline = true, Center = true, Size = 13, Font = 2}),
        healthBarOutline = esp.NewDrawing("Line", {Color = Color3.fromRGB(0, 0, 0), Thickness = 3}),
        healthBar = esp.NewDrawing("Line", {Color = Color3.fromRGB(255, 255, 255), Thickness = 1}),
        healthText = esp.NewDrawing("Text", {Color = Color3.fromRGB(255, 255, 255), Outline = true, Center = true, Size = 13, Font = 2}),
        distance = esp.NewDrawing("Text", {Color = Color3.fromRGB(255, 255, 255), Outline = true, Center = true, Size = 13, Font = 2}),
        viewAngle = esp.NewDrawing("Line", {Color = Color3.fromRGB(255, 255, 255), Thickness = 1}),
        tracers = esp.NewDrawing("Line", {Color = Color3.fromRGB(255, 255, 255), Thickness = 1}),
        chams = Instance.new("Highlight"),
        offscreenarrows = {
            Arrows = esp.NewDrawing("Triangle", {Color = Color3.fromRGB(255, 255, 255), Thickness = 1}),
            TextName = esp.NewDrawing("Text", {Color = Color3.fromRGB(255, 255, 255), Outline = true, Center = true, Size = 13, Font = 2}),
            TextDistance = esp.NewDrawing("Text", {Color = Color3.fromRGB(255, 255, 255), Outline = true, Center = true, Size = 13, Font = 2}),
            HealthBarOutline = esp.NewDrawing("Line", {Color = Color3.fromRGB(0, 0, 0), Thickness = 2}),
            HealthBar = esp.NewDrawing("Line", {Color = Color3.fromRGB(255, 255, 255), Thickness = 1}),
        },
        skeleton = {
            Head = esp.NewDrawing("Line", {Color = Color3.fromRGB(255, 255, 255), Thickness = 1}),
            LeftHand = esp.NewDrawing("Line", {Color = Color3.fromRGB(255, 255, 255), Thickness = 1}),
            RightHand = esp.NewDrawing("Line", {Color = Color3.fromRGB(255, 255, 255), Thickness = 1}),
            LeftLowerArm = esp.NewDrawing("Line", {Color = Color3.fromRGB(255, 255, 255), Thickness = 1}),
            RightLowerArm = esp.NewDrawing("Line", {Color = Color3.fromRGB(255, 255, 255), Thickness = 1}),
            LeftUpperArm = esp.NewDrawing("Line", {Color = Color3.fromRGB(255, 255, 255), Thickness = 1}),
            RightUpperArm = esp.NewDrawing("Line", {Color = Color3.fromRGB(255, 255, 255), Thickness = 1}),
            LeftFoot = esp.NewDrawing("Line", {Color = Color3.fromRGB(255, 255, 255), Thickness = 1}),
            LeftLowerLeg = esp.NewDrawing("Line", {Color = Color3.fromRGB(255, 255, 255), Thickness = 1}),
            UpperTorso = esp.NewDrawing("Line", {Color = Color3.fromRGB(255, 255, 255), Thickness = 1}),
            LeftUpperLeg = esp.NewDrawing("Line", {Color = Color3.fromRGB(255, 255, 255), Thickness = 1}),
            RightFoot = esp.NewDrawing("Line", {Color = Color3.fromRGB(255, 255, 255), Thickness = 1}),
            RightLowerLeg = esp.NewDrawing("Line", {Color = Color3.fromRGB(255, 255, 255), Thickness = 1}),
            LowerTorso = esp.NewDrawing("Line", {Color = Color3.fromRGB(255, 255, 255), Thickness = 1}),
            RightUpperLeg = esp.NewDrawing("Line", {Color = Color3.fromRGB(255, 255, 255), Thickness = 1})
        }
    }
end

--* Rainbow Function *--
local rcurrent, gcurrent, bcurrent = 255, 0, 0
local redtime, bluetime2, greentime = true, false, false

local function ResetRainbow()
    redtime = true
    bluetime2 = false
    greentime = false
end

local function getRandomColor()
    local rnum = 0
    local bnum = 0
    local gnum = 0

    if rcurrent == 255 and gcurrent == 0 and bcurrent == 0 then
        ResetRainbow()
        rcurrent = 255
        gcurrent = 0
        bcurrent = 0
    end

    if gcurrent < 255 and not greentime then
        gnum = gcurrent + 15
        gcurrent = gnum

    elseif gcurrent == 255 and rcurrent > 0 and redtime and rcurrent ~= 0 then
        rnum = rcurrent - 15
        rcurrent = rnum

    elseif bcurrent < 255 and gcurrent == 255 and rcurrent == 0 and not bluetime2 then
        bnum = bcurrent + 15
        bcurrent = bnum

    elseif gcurrent > 0 and gcurrent ~= 0 and bcurrent == 255 and rcurrent == 0 and not bluetime2 then
        greentime = true
        gnum = gcurrent - 15
        gcurrent = gnum

    elseif bcurrent == 255 and gcurrent == 0 and rcurrent < 255 then
        redtime = false
        rnum = rcurrent + 15
        rcurrent = rnum

    elseif bcurrent > 0 and bcurrent ~= 0 and gcurrent == 0 and rcurrent == 255 then
        bluetime2 = true
        bnum = bcurrent - 15
        bcurrent = bnum
    end
    return Color3.fromRGB(rcurrent, gcurrent, bcurrent)
end

local rainbowespmode = Sections.Visuals.RainbowSettings:Toggle{
    Name = "Rainbow Mode",
    Flag = "rainbowmodeEnabled",
    Callback = function(bool)
        esp.rainbowmode = bool
    end
}
rainbowespmode:Slider{
    Text = "[value] ms",
    Default = 0,
    Min = 0,
    Max = 0.25,
    Float = 0.0001,
    Flag = "rainbowmodeSpeed",
    Callback = function(value)
    end
}
Sections.Visuals.RainbowSettings:Toggle{
    Name = "Local Chams",
    Flag = "rainbowlocalchamsEnabled"
}

Sections.Visuals.RainbowSettings:Toggle{
    Name = "ESP",
    Flag = "rainbowallespEnabled"
}
task.spawn(function()
    while wait(library.flags["rainbowmodeSpeed"]) do
        if Running and Alive(plr) then
            --* Rainbow Mode *--
            if esp.rainbowmode then
                local rand = getRandomColor()
                esp.rainbowcolor = rand
                for i,v in pairs(esp.players) do
                    if library.flags["rainbowallespEnabled"] then
                        library.flags["espnameColor"] = esp.rainbowcolor
                        library.flags["espboxColor"] = esp.rainbowcolor
                        library.flags["esptoolColor"] = esp.rainbowcolor
                        library.flags["esphealthtextColor"] = esp.rainbowcolor
                        library.flags["espdistanceColor"] = esp.rainbowcolor
                        library.flags["espviewangleColor"] = esp.rainbowcolor
                        library.flags["esptracersColor"] = esp.rainbowcolor
                        esp.settings.skeleton.color = esp.rainbowcolor
                    end
                    if library.flags["rainbowlocalchamsEnabled"] then
                        library.flags["localplayerchamsColor"] = esp.rainbowcolor
                    end
                end
            end
        end
    end
end)

local function calculateVelocity(PlayerToResolve)
    local currentPosition = PlayerToResolve.HumanoidRootPart.Position
    wait(0.1)
    local newPosition = PlayerToResolve.HumanoidRootPart.Position
    local positionDifference = newPosition - currentPosition

    return positionDifference / 0.1
end


local ItemList = {
    GoldenDV2 = "GoldenDV2",
    DV2 = "DV2",
    AnarchyTomahawk = "AnarchyTomahawk",
    PlasmaNinjato = "PlasmaNinjato",

    FlareGun = "FlareGun",
    Lighter = "Lighter",

    FuelingStationKey = "FuelingStationKey",
    LighthouseKey = "LighthouseKey",
    VillageKey = "VillageKey",
    CraneKey = "CraneKey",
    FactoryGarageKey = "FactoryGarageKey",

    AA2 = "AA2",
    Rags = "Rags",
    AI2 = "AI2",
    Bandage = "Bandage",

    F1 = "F1",
    RGO = "RGO",
    RGD5 = "RGD5",
    M84 = "M84",

    ResKola = "ResKola",
    CatfrogSoda = "CatfrogSoda",
    BloxyCola = "BloxyCola",
    Beans = "Beans",
    MaxEnergy = "MaxEnergy"
}
local WeaponList = {
    Mosin = "Mosin",
    SVD = "SVD",

    AsVal = "AsVal",
    AKMN = "AKMN",
    M4 = "M4",
    AKM = "AKM",

    PPSH41 = "PPSH41",
    MP5SD = "MP5SD",
    VZ61 = "VZ61",

    Makarov = "Makarov",
    TFZ0 = "TFZ0",
    MP443 = "MP443",
    TT33 = "TT33",

    IZh81 = "IZh81"
}

ServiceConnections.RenderSteppedConnection = rs.RenderStepped:Connect(function()
    if Running and Alive(plr) then
        updateTick = updateTick + 1

        if updateTick >= 2 then
            updateTick = 0

            --* Random Aimbot HitPart *--
            if library.flags["aimbotrandomhitpartEnabled"] then
                Environment.Settings.LockPart = tostring(dwHitBoxParts[math.random(1, #dwHitBoxParts)])
            end

            --* Resolver *--
            if library.flags["resolverEnabled"] then
                if Environment.Locked ~= nil then
                    local PlayerToResolve

                    if not Environment.Settings.AILocked then
                        PlayerToResolve = Environment.Locked.Character
                    end
                    PlayersEstimatedVelocity = calculateVelocity(PlayerToResolve)

                    if PlayerToResolve:FindFirstChild("Head") and PlayerToResolve:FindFirstChild("UpperTorso") then
                        if PlayerToResolve.Head.Position.Y < PlayerToResolve.UpperTorso.Position.Y then
                            Environment.Settings.LockPart = "HumanoidRootPart"
                        end
                    end
                end
            end

            --* Watermark *--
            local fps
            if game:GetService("Players")[tostring(plr.Name)]:FindFirstChild("PlayerGui") then
                if game:GetService("Players")[tostring(plr.Name)].PlayerGui:FindFirstChild("PerformanceMonitor2") then
                    if game:GetService("Players")[tostring(plr.Name)].PlayerGui.PerformanceMonitor2:FindFirstChild("TextLabel2") then
                        fps = tostring(game:GetService("Players")[tostring(plr.Name)].PlayerGui.PerformanceMonitor2.TextLabel2.Text)
                        fps = fps:gsub("Client FPS: ", "")
                        fps = tonumber(fps)
                        fps = math.floor(fps)
                    end
                end
            end

            local ping = tonumber(game:GetService("Stats"):FindFirstChild("PerformanceStats").Ping:GetValue())
            ping = math.floor(ping)
            watermark:Set("1NF1N17Y | " .. fps .. " fps | " .. ping .. "ms | " .. script_version_number .. " | Paid")

            --* Local Player Mods *--
            local humanoid = plr.Character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                if library.flags["bhopEnabled"] then
                    for _, connectTable in pairs({
                        getconnections(humanoid.StateChanged);
                        getconnections(humanoid:GetPropertyChangedSignal("JumpHeight"))
                    }) do
                        for _, event in pairs(connectTable) do
                            event:Disable()
                        end
                    end
                end

                if library.flags["walkspeedEnabledOld"] and WalkSpeedKeybindToggledOld then
                    for _, connectTable in pairs({
                        getconnections(humanoid.StateChanged);
                        getconnections(humanoid:GetPropertyChangedSignal("WalkSpeed"))
                    }) do
                        for _, event in pairs(connectTable) do
                            event:Disable()
                        end
                    end
                    humanoid.WalkSpeed = library.flags["walkspeedValueOld"]
                end

                if library.flags["jumppowerEnabled"] then
                    for _, connectTable in pairs({
                        getconnections(humanoid.StateChanged);
                        getconnections(humanoid:GetPropertyChangedSignal("JumpHeight"))
                    }) do
                        for _, event in pairs(connectTable) do
                            event:Disable()
                        end
                    end
                    plr.Character.Humanoid.JumpHeight = library.flags["jumppowerValue"]
                end

                if not library.flags["jumppowerEnabled"] and not library.flags["bhopEnabled"] then
                    for _, connectTable in pairs({
                        getconnections(humanoid.StateChanged);
                        getconnections(humanoid:GetPropertyChangedSignal("JumpHeight"))
                    }) do
                        for _, event in pairs(connectTable) do
                            event:Enable()
                        end
                    end
                end
            end

            if Environment.Settings.Enabled then
                GetClosestPlayer() -- Only have to call this function once since Environment.Locked holds the closest player

                --* FOV Circle *--
                if Environment.FOVSettings.Enabled then
                    Environment.FOVCircle.Radius = Environment.FOVSettings.Amount
                    Environment.FOVCircle.Thickness = Environment.FOVSettings.Thickness
                    Environment.FOVCircle.Filled = Environment.FOVSettings.Filled
                    Environment.FOVCircle.NumSides = Environment.FOVSettings.Sides
                    Environment.FOVCircle.Color = GetColor(Environment.FOVSettings.Color)
                    Environment.FOVCircle.Transparency = Environment.FOVSettings.Transparency
                    Environment.FOVCircle.Visible = Environment.FOVSettings.Visible
                    Environment.FOVCircle.Position = Vector2.new(uis:GetMouseLocation().X, uis:GetMouseLocation().Y)

                    Environment.FOVCircleOutline1.Radius = Environment.FOVSettings.Amount + Environment.FOVSettings.Thickness
                    Environment.FOVCircleOutline1.Thickness = Environment.FOVSettings.Thickness
                    Environment.FOVCircleOutline1.Filled = Environment.FOVSettings.Filled
                    Environment.FOVCircleOutline1.NumSides = Environment.FOVSettings.Sides
                    Environment.FOVCircleOutline1.Color = Color3.fromRGB(0, 0, 0)
                    Environment.FOVCircleOutline1.Transparency = Environment.FOVSettings.Transparency
                    Environment.FOVCircleOutline1.Visible = Environment.FOVSettings.Visible
                    Environment.FOVCircleOutline1.Position = Vector2.new(uis:GetMouseLocation().X, uis:GetMouseLocation().Y)

                    Environment.FOVCircleOutline2.Radius = Environment.FOVSettings.Amount - Environment.FOVSettings.Thickness
                    Environment.FOVCircleOutline2.Thickness = Environment.FOVSettings.Thickness
                    Environment.FOVCircleOutline2.Filled = Environment.FOVSettings.Filled
                    Environment.FOVCircleOutline2.NumSides = Environment.FOVSettings.Sides
                    Environment.FOVCircleOutline2.Color = Color3.fromRGB(0, 0, 0)
                    Environment.FOVCircleOutline2.Transparency = Environment.FOVSettings.Transparency
                    Environment.FOVCircleOutline2.Visible = Environment.FOVSettings.Visible
                    Environment.FOVCircleOutline2.Position = Vector2.new(uis:GetMouseLocation().X, uis:GetMouseLocation().Y)
                else
                    Environment.FOVCircle.Visible = false
                    Environment.FOVCircleOutline1.Visible = false
                    Environment.FOVCircleOutline2.Visible = false
                end

                --* Snaplines *--
                if Environment.Settings.SnapLines then
                    if Environment.Locked ~= nil then
                        local player = Environment.Locked
        
                        if not Environment.Settings.AILocked then
                            player = Environment.Locked.Character
                        end
        
                        local Vector, OnScreen = Camera:WorldToViewportPoint(player[Environment.Settings.LockPart].Position)
                        if OnScreen then
                            Environment.SnapLine.Visible = true
                            Environment.SnapLine.From = Vector2.new(uis:GetMouseLocation().X, uis:GetMouseLocation().Y)
                            Environment.SnapLine.To = Vector2.new(Vector.X, Vector.Y)
                            Environment.SnapLine.Color = GetColor(Environment.Settings.SnapLineColor)
                            Environment.SnapLine.Thickness = 1
                        else
                            Environment.SnapLine.Visible = false
                        end
                    else
                        Environment.SnapLine.Visible = false
                    end
                else
                    Environment.SnapLine.Visible = false
                end

                --* Normal Aimbot *--
                if not Environment.Settings.SilentAimEnabled and IsDown(Enum.UserInputType[Environment.Settings.TriggerKey]) then
                    if Environment.Locked ~= nil then
                        local Prediction = Vector3.new(0, 0, 0)
                        local player = Environment.Locked
        
                        if not Environment.Settings.AILocked then
                            player = Environment.Locked.Character
                        end

                        head  = player:FindFirstChild(Environment.Settings.LockPart).Position
                        Prediction = PredictionMath(player, head, Prediction)
        
                        
                        if Environment.Settings.Sensitivity > 0 then
                            Animation = tweenService:Create(Camera, TweenInfo.new(Environment.Settings.Sensitivity, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {CFrame = CFrame.new(Camera.CFrame.Position, player[Environment.Settings.LockPart].Position + Prediction)})
                            Animation:Play()
                        else
                            Camera.CFrame = CFrame.new(Camera.CFrame.Position, player[Environment.Settings.LockPart].Position + Prediction)
                        end
                        Environment.FOVCircle.Color = GetColor(Environment.FOVSettings.LockedColor)
                    end
                else
                    if Animation ~= nil then
                        Animation:Cancel()
                    end
                    Environment.FOVCircle.Color = GetColor(Environment.FOVSettings.Color)
                end
            else
                if Environment.FOVCircle.Visible == true then
                    Environment.FOVCircle.Visible = false
                    Environment.FOVCircle.Color = GetColor(Environment.FOVSettings.Color)
                end
                if Environment.FOVCircleOutline1.Visible == true then
                    Environment.FOVCircleOutline1.Visible = false
                end
                if Environment.FOVCircleOutline2.Visible == true then
                    Environment.FOVCircleOutline2.Visible = false
                end
                if Environment.SnapLine.Visible == true then
                    Environment.SnapLine.Visible = false
                end
                Environment.Locked = nil
                if Animation ~= nil then
                    Animation:Cancel()
                end
            end

            --* LocalPlayer Chams *--
            local dwViewModel = Camera:FindFirstChild("ViewModel")
            if library.flags["localchamsEnabled"] and dwViewModel ~= nil then
                for i,v in pairs(Camera.ViewModel:GetDescendants()) do
                    if v.ClassName == "MeshPart" then
                        if v.Parent.Name == "WastelandShirt" or v.Parent.Name == "GhillieTorso" or v.Parent.Name == "CivilianPants" or v.Parent.Name == "CamoShirt" or v.Parent.Name == "HandWraps" or v.Parent.Name == "CombatGloves" then
                            v.Transparency = 1
                        end
                    end
                    if v.ClassName == "MeshPart" then
                        if v.Name == "LeftHand" or v.Name == "LeftLowerArm" or v.Name == "LeftUpperArm" or v.Name == "RightHand" or v.Name == "RightLowerArm" or v.Name == "RightUpperArm" then
                            v.Material  = (library.flags["localplayerchamsMaterial"])
                            v.Color     = (library.flags["localplayerchamsColor"])

                            if tostring(library.flags["localplayerchamsMaterial"]) == "ForceField" then
                                v.TextureID = "rbxassetid://5101923607"
                            else
                                v.TextureID = ""
                            end
                        end
                    end
                end
                for i,v in pairs(Camera.ViewModel.Item:GetDescendants()) do
                    if v.ClassName == "Part" then
                        v.Material  = (library.flags["localgunchamsMaterial"])
                        v.Color     = (library.flags["localgunchamsColor"])
                    end
                    if v.ClassName == "MeshPart" then
                        v.Material  = (library.flags["localgunchamsMaterial"])
                        v.Color     = (library.flags["localgunchamsColor"])

                        if tostring(library.flags["localgunchamsMaterial"]) == "ForceField" then
                            v.TextureID = "rbxassetid://5101923607"
                        else
                            v.TextureID = ""
                        end
                    end
                    if v:FindFirstChild("SurfaceAppearance") then
                        v.SurfaceAppearance:Destroy()
                    end
                end
            end

        elseif updateTick == 1 then

            --* Bullet Replay *--
            -- if BulletReplayEnabled then
            --     for i = 1, library.flags["bulletreplayAmount"] do
            --         BulletReplay.CreateBullet(unpack(BulletReplayArgs))
            --     end
            --     BulletReplayEnabled = false
            -- end

            --* No Water Blur *--
            if library.flags["nowaterblurEnabled"] then
                waterBlur.Enabled = false
            end

            --* Get Muzzle Velocity *--
            if Environment.Settings.Prediction and Environment.Settings.Enabled then
                if repStorage.Players[tostring(plr.Name)].Status.GameplayVariables.EquippedTool.Value ~= nil then
                    local AbleToPass = false
                    for i,v in pairs(WeaponList) do
                        if tostring(v) == tostring(repStorage.Players[tostring(plr.Name)].Status.GameplayVariables.EquippedTool.Value) then
                            AbleToPass = true
                            break
                        end
                    end

                    if AbleToPass then
                        if game.Workspace[tostring(plr.Name)]:FindFirstChild("IZh81") or game.Workspace[tostring(plr.Name)]:FindFirstChild("Mosin") then
                            local Magazine = repStorage.Players[tostring(game.Players.LocalPlayer)].Inventory[tostring(repStorage.Players[tostring(plr.Name)].Status.GameplayVariables.EquippedTool.Value)].ItemProperties:FindFirstChildOfClass("StringValue")
                            if Magazine ~= nil then
                                Magazine = Magazine.ItemProperties.LoadedAmmo:FindFirstChildOfClass("Folder")
                                if Magazine ~= nil then
                                    Magazine = Magazine:GetAttribute("AmmoType")
                                    if Magazine ~= nil then
                                        MuzzleVelocityValue = repStorage.AmmoTypes[tostring(Magazine)]:GetAttribute("MuzzleVelocity")
                                    end
                                end
                            end
                        else
                            local Magazine = repStorage.Players[tostring(game.Players.LocalPlayer)].Inventory[tostring(repStorage.Players[tostring(plr.Name)].Status.GameplayVariables.EquippedTool.Value)].Attachments.Magazine:FindFirstChildOfClass("StringValue")
                            if Magazine ~= nil then
                                Magazine = Magazine.ItemProperties.LoadedAmmo:FindFirstChildOfClass("Folder")
                                if Magazine ~= nil then
                                    Magazine = Magazine:GetAttribute("AmmoType")
                                    if Magazine ~= nil then
                                        MuzzleVelocityValue = repStorage.AmmoTypes[tostring(Magazine)]:GetAttribute("MuzzleVelocity")
                                    end
                                end
                            end
                        end
                    end
                end
            end

            --* Custom Hit Sounds *--
            if library.flags["hitsoundsEnabled"] then
                if Hit_Found then
                    local Hit = Hit_Target
                    if Hit.Name:lower():find("head") then
                        headSound:Play()
                    else
                        bodySound:Play()
                    end
                    Hit_Found = false
                end

                if PlayerKilled then
                    killSound:Play()
                    PlayerKilled = false
                end
            end

            --* Monument ESP *--
            if library.flags["espobjectsEnabled"] then
                if library.flags["espobjectsmonumentsEnabled"] then
                    for _, Place in pairs(Monuments) do
                        local Vector, OnScreen = Camera:WorldToViewportPoint(Place.Vector)
                        local Distance = (Camera.CFrame.p - Place.Vector).Magnitude
                        Distance = Framework:Distance_Type_Change(Distance_Type_, Distance)
                        Place.Text.Text = tostring(Place.Name) .. " (" .. tostring(Distance) .. "m)"
                        Place.Text.Color = library.flags["espobjectsmonumentsColor"]

                        if OnScreen and Distance < library.flags["espobjectMaxDistance"] then
                            Place.Text.Visible = true
                            Place.Text.Position = Vector2.new(Vector.X, Vector.Y)
                        else
                            Place.Text.Visible = false
                        end
                    end
                else
                    for _, Place in pairs(Monuments) do
                        Place.Text.Visible = false
                    end
                end
            else
                for _, Place in pairs(Monuments) do
                    Place.Text.Visible = false
                end
            end

            --* Fake Lag *--
            if library.flags["fakelagEnabled"] and FakeLagEnabled then
                Tick = Tick + 1
                local Character = plr.Character
                if Character then
                    local Head, HumanoidRootPart, Humanoid = Character:FindFirstChild("Head"), Character:FindFirstChild("HumanoidRootPart"), Character:FindFirstChild("Humanoid")
                    if Head and HumanoidRootPart and Humanoid and Humanoid.Health > 0 then
                        if Tick >= library.flags["fakelagLimit"] then
                            Tick = 0
                            NetworkClient:SetOutgoingKBPSLimit(math.huge)
                            if library.flags["visualizefakelagEnabled"] and FakeLagEnabled then
                                VisualizeLagFolder:ClearAllChildren()
                                Character.Archivable = true
                                local Clone = Character:Clone()
                                Character.Archivable = false
                                for _, Child in pairs(Clone:GetDescendants()) do
                                    if Child:IsA("SurfaceAppearance") or Child:IsA("Humanoid") or Child:IsA("BillboardGui") or Child:IsA("Decal") or Child.Name == "HumanoidRootPart" then
                                        Child:Destroy()
                                        continue
                                    end
                                    if Child:IsA("BasePart") then
                                        Child.CanCollide = false
                                        Child.Anchored = true
                                        Child.Material = Enum.Material.ForceField
                                        Child.Color = library.flags["visualizefakelagColor"] 
                                        Child.Size = Child.Size + Vector3.new(0.025, 0.025, 0.025)
                                    end
                                end
                                Clone.Parent = VisualizeLagFolder
                            else
                                VisualizeLagFolder:ClearAllChildren()
                            end
                        else
                            NetworkClient:SetOutgoingKBPSLimit(1)
                        end
                    end
                end
            else
                if VisualizeLagFolder ~= nil then
                    VisualizeLagFolder:ClearAllChildren()
                end
            end

            for i,v in pairs(esp.players) do
                if esp.HasCharacter(i) and esp.enabled then
                    local hum = i.Character.Humanoid
                    local hrp = i.Character.HumanoidRootPart
                    local head = i.Character.Head

                    local Vector, onScreen = Camera:WorldToViewportPoint(i.Character.HumanoidRootPart.Position)

                    local Size = (Camera:WorldToViewportPoint(hrp.Position - Vector3.new(0, 3, 0)).Y - Camera:WorldToViewportPoint(hrp.Position + Vector3.new(0, 2.6, 0)).Y) / 2
                    local BoxSize = Vector2.new(math.floor(Size * 1.5), math.floor(Size * 1.9))
                    local BoxPos = Vector2.new(math.floor(Vector.X - Size * 1.5 / 2), math.floor(Vector.Y - Size * 1.6 / 2))

                    local BottomOffset = BoxSize.Y + BoxPos.Y + 1
                    local DistanceFromPlayer = (plr.Character.HumanoidRootPart.Position - hrp.Position).Magnitude
                    DistanceFromPlayer = Framework:Distance_Type_Change(Distance_Type_, DistanceFromPlayer)
                    local PlayerYPos = math.floor(hrp.Position.Y)

                    if esp.enabled and esp.settings.offscreenarrows.enabled and not onScreen and PlayerYPos ~= -362 then
                        if DistanceFromPlayer < library.flags["espMaxDistance"] then
                            v.offscreenarrows.Arrows.Visible = true

                            local Position     = Camera.CFrame:PointToObjectSpace(hrp.Position)
                            local Angle         = math.atan2(Position.Z, Position.X)
                            local Direction     = Vector2.new(math.cos(Angle), math.sin(Angle))
                            local Pos           = (Direction * library.flags["espoffscreenarrowsRadius"]) + Camera.ViewportSize / 2

                            v.offscreenarrows.Arrows.PointA = Pos
                            v.offscreenarrows.Arrows.PointB = Pos - rotateVector2(Direction, math.rad(30)) * 15
                            v.offscreenarrows.Arrows.PointC = Pos - rotateVector2(Direction, -math.rad(30)) * 15

                            local middle = (v.offscreenarrows.Arrows.PointA + v.offscreenarrows.Arrows.PointB + v.offscreenarrows.Arrows.PointC) / 3

                            -- Health Bar
                            v.offscreenarrows.HealthBar.From = Vector2.new(middle.X - 20, middle.Y + 20)
                            v.offscreenarrows.HealthBar.To = Vector2.new(v.offscreenarrows.HealthBar.From.X, v.offscreenarrows.HealthBar.From.Y - (hum.Health / hum.MaxHealth) * 25)
                            v.offscreenarrows.HealthBar.Color = Color3.fromRGB(255 - 255 / (hum["MaxHealth"] / hum["Health"]), 255 / (hum["MaxHealth"] / hum["Health"]), 0)

                            v.offscreenarrows.HealthBarOutline.From = Vector2.new(v.offscreenarrows.HealthBar.From.X, middle.Y + 20)
                            v.offscreenarrows.HealthBarOutline.To = Vector2.new(v.offscreenarrows.HealthBar.From.X, (v.offscreenarrows.HealthBar.From.Y - 1 * 25) -1)

                            -- Name
                            v.offscreenarrows.TextName.Position = Vector2.new(middle.X, middle.Y - 25)
                            v.offscreenarrows.TextName.Text = i.Name
                            v.offscreenarrows.TextName.Color = Color3.fromRGB(255, 255, 255)

                            -- Distance
                            v.offscreenarrows.TextDistance.Position = Vector2.new(middle.X, middle.Y + 20)
                            v.offscreenarrows.TextDistance.Text = DistanceFromPlayer .. "m"
                            v.offscreenarrows.TextDistance.Color = Color3.fromRGB(255, 255, 255)


                            v.offscreenarrows.TextDistance.Visible  = library.flags["espoffscreenarrowsInfoEnabled"]
                            v.offscreenarrows.TextName.Visible      = library.flags["espoffscreenarrowsInfoEnabled"]
                            v.offscreenarrows.HealthBar.Visible     = library.flags["espoffscreenarrowsInfoEnabled"]
                            v.offscreenarrows.HealthBarOutline.Visible = library.flags["espoffscreenarrowsInfoEnabled"]

                            local ray = Ray.new(Camera.CFrame.Position, (hrp.Position - Camera.CFrame.Position).Unit * library.flags["espMaxDistance"])
                            local part, position = workspace:FindPartOnRayWithIgnoreList(ray, {plr.Character, Camera})
                            if part and part.Parent and part.Parent:FindFirstChild("Humanoid") then
                                v.offscreenarrows.Arrows.Color = Color3.fromRGB(0, 255, 0) -- Visible
                            else
                                v.offscreenarrows.Arrows.Color = Color3.fromRGB(255, 0, 0) -- Not Visible
                            end
                            
                        else
                            v.offscreenarrows.HealthBar.Visible = false
                            v.offscreenarrows.HealthBarOutline.Visible = false

                            v.offscreenarrows.Arrows.Visible = false
                            v.offscreenarrows.TextName.Visible = false
                            v.offscreenarrows.TextDistance.Visible = false
                        end
                    else
                        v.offscreenarrows.HealthBar.Visible = false
                        v.offscreenarrows.HealthBarOutline.Visible = false
                        v.offscreenarrows.Arrows.Visible = false
                        v.offscreenarrows.TextName.Visible = false
                        v.offscreenarrows.TextDistance.Visible = false
                    end

                    if onScreen and esp.enabled and DistanceFromPlayer < library.flags["espMaxDistance"] and PlayerYPos ~= -362 then
                        if esp.settings.name.enabled then
                            v.name.Position = Vector2.new(BoxSize.X / 2 + BoxPos.X, BoxPos.Y - 16)
                            v.name.Outline = esp.settings.name.outline

                            if plr:GetFriendStatus(i) == Enum.FriendStatus.Friend and library.flags["friendcheckEnabled"] then 
                                v.name.Color = library.flags["friendcheckColor"]
                            elseif Environment.Settings.HighlightTarget == i and library.flags["highlighttargetEnabled"] then
                                v.name.Color = library.flags["highlighttargetColor"]
                            else
                                v.name.Color = library.flags["espnameColor"]
                            end

                            v.name.Font = esp.font
                            v.name.Size = esp.fontsize

                            if esp.settings.name.displaynames then
                                v.name.Text = tostring(i.DisplayName)
                            else
                                v.name.Text = tostring(i.Name)
                            end

                            v.name.Visible = true
                        else
                            v.name.Visible = false
                        end

                        if esp.settings.distance.enabled then
                            v.distance.Position = Vector2.new(BoxSize.X / 2 + BoxPos.X, BoxPos.Y + BoxSize.Y + 1)
                            v.distance.Outline = esp.settings.distance.outline
                            v.distance.Text = "[" .. tostring(DistanceFromPlayer) .. "m]"
                            
                            if plr:GetFriendStatus(i) == Enum.FriendStatus.Friend and library.flags["friendcheckEnabled"] then 
                                v.distance.Color = library.flags["friendcheckColor"]
                            elseif Environment.Settings.HighlightTarget == i and library.flags["highlighttargetEnabled"] then
                                v.distance.Color = library.flags["highlighttargetColor"]
                            else
                                v.distance.Color = library.flags["espdistanceColor"]
                            end


                            BottomOffset = BottomOffset + 15

                            v.distance.Font = esp.font
                            v.distance.Size = esp.fontsize

                            v.distance.Visible = true
                        else
                            v.distance.Visible = false
                        end

                        if esp.settings.tool.enabled then
                            v.tool.Position = Vector2.new((BoxPos.X + BoxSize.X + 20), (BoxPos.Y + BoxSize.Y - 1 * BoxSize.Y) -1)
                            v.tool.Outline = esp.settings.tool.outline

                            if ReplicatedPlayers:FindFirstChild(i.Name) then
                                local Tool = ReplicatedPlayers[i.Name].Status.GameplayVariables.EquippedTool
                                local toolObject = Tool.Value
                                local FoundTool = toolObject ~= nil and toolObject.Name or "None"
                                v.tool.Text = tostring(FoundTool)
                                
                                if plr:GetFriendStatus(i) == Enum.FriendStatus.Friend and library.flags["friendcheckEnabled"] then 
                                    v.tool.Color = library.flags["friendcheckColor"]
                                elseif Environment.Settings.HighlightTarget == i and library.flags["highlighttargetEnabled"] then
                                    v.tool.Color = library.flags["highlighttargetColor"]
                                else
                                    v.tool.Color = library.flags["esptoolColor"]
                                end

                                v.tool.Font = esp.font
                                v.tool.Size = esp.fontsize

                                v.tool.Visible = true
                            end
                        else
                            v.tool.Visible = false
                        end

                        if esp.settings.box.enabled then
                            BoxSize = BoxSize + Vector2.new(4, 4)
                            BoxPos = BoxPos - Vector2.new(2, 2)
                            v.boxOutline.Size = BoxSize
                            v.boxOutline.Position = BoxPos
                            v.boxOutline.Visible = esp.settings.box.outline
                            v.boxOutline.Filled = false
                            v.boxOutline.Color = library.flags["espboxoutlineColor"]
                            v.boxOutline.Thickness = 2

                            v.box.Size = BoxSize
                            v.box.Position = BoxPos

                            if plr:GetFriendStatus(i) == Enum.FriendStatus.Friend and library.flags["friendcheckEnabled"] then 
                                v.box.Color = library.flags["friendcheckColor"]
                            elseif Environment.Settings.HighlightTarget == i and library.flags["highlighttargetEnabled"] then
                                v.box.Color = library.flags["highlighttargetColor"]
                            else
                                v.box.Color = library.flags["espboxColor"]
                            end

                            v.box.Filled = false
                            v.box.Visible = true
                        else
                            v.boxOutline.Visible = false
                            v.box.Visible = false
                        end

                        if esp.settings.healthbar.enabled then
                            v.healthBar.From = Vector2.new((BoxPos.X - 5), BoxPos.Y + BoxSize.Y)
                            v.healthBar.To = Vector2.new(v.healthBar.From.X, v.healthBar.From.Y - (hum.Health / hum.MaxHealth) * BoxSize.Y)
                            v.healthBar.Color = Color3.fromRGB(255 - 255 / (hum["MaxHealth"] / hum["Health"]), 255 / (hum["MaxHealth"] / hum["Health"]), 0)
                            v.healthBar.Visible = true

                            v.healthBarOutline.From = Vector2.new(v.healthBar.From.X, BoxPos.Y + BoxSize.Y + 1)
                            v.healthBarOutline.To = Vector2.new(v.healthBar.From.X, (v.healthBar.From.Y - 1 * BoxSize.Y) -1)
                            v.healthBarOutline.Visible = esp.settings.healthbar.outline
                        else
                            v.healthBarOutline.Visible = false
                            v.healthBar.Visible = false
                        end

                        if esp.settings.healthtext.enabled then
                            v.healthText.Text = tostring(math.floor((hum.Health / hum.MaxHealth) * 100 + 0.5))
                            v.healthText.Position = Vector2.new((BoxPos.X - 20), (BoxPos.Y + BoxSize.Y - 1 * BoxSize.Y) -1)

                            if plr:GetFriendStatus(i) == Enum.FriendStatus.Friend and library.flags["friendcheckEnabled"] then 
                                v.healthText.Color = library.flags["friendcheckColor"] 

                            elseif Environment.Settings.HighlightTarget == i and library.flags["highlighttargetEnabled"] then
                                v.healthText.Color = library.flags["highlighttargetColor"]
                            else 
                                v.healthText.Color = library.flags["esphealthtextColor"]
                            end

                            v.healthText.Outline = esp.settings.healthtext.outline

                            v.healthText.Font = esp.font
                            v.healthText.Size = esp.fontsize

                            v.healthText.Visible = true
                        else
                            v.healthText.Visible = false
                        end

                        if esp.settings.viewangle.enabled then
                            local fromHead = Camera:worldToViewportPoint(head.CFrame.p)
                            local toPoint = Camera:worldToViewportPoint((head.CFrame + (head.CFrame.lookVector * 10)).p)
                            
                            v.viewAngle.From = Vector2.new(fromHead.X, fromHead.Y)
                            v.viewAngle.To = Vector2.new(toPoint.X, toPoint.Y)

                            if plr:GetFriendStatus(i) == Enum.FriendStatus.Friend and library.flags["friendcheckEnabled"] then 
                                v.viewAngle.Color = library.flags["friendcheckColor"] 
                            elseif Environment.Settings.HighlightTarget == i and library.flags["highlighttargetEnabled"] then
                                v.viewAngle.Color = library.flags["highlighttargetColor"]
                            else
                                v.viewAngle.Color = library.flags["espviewangleColor"]
                            end

                            v.viewAngle.Visible = true
                        else
                            v.viewAngle.Visible = false
                        end

                        if esp.settings.skeleton.enabled then
                            local Head = i.Character.Head
                            local LeftHand = i.Character.LeftHand
                            local RightHand = i.Character.RightHand
                            local LeftLowerArm = i.Character.LeftLowerArm
                            local RightLowerArm = i.Character.RightLowerArm
                            local LeftUpperArm = i.Character.LeftUpperArm
                            local RightUpperArm = i.Character.RightUpperArm
                            local LeftFoot = i.Character.LeftFoot
                            local LeftLowerLeg = i.Character.LeftLowerLeg
                            local UpperTorso = i.Character.UpperTorso
                            local LeftUpperLeg = i.Character.LeftUpperLeg
                            local RightFoot = i.Character.RightFoot
                            local RightLowerLeg = i.Character.RightLowerLeg
                            local LowerTorso = i.Character.LowerTorso
                            local RightUpperLeg = i.Character.RightUpperLeg

                            local HeadPos = Camera:WorldToViewportPoint(Head.Position)
                            local LeftHandPos = Camera:WorldToViewportPoint(LeftHand.Position)
                            local RightHandPos = Camera:WorldToViewportPoint(RightHand.Position)
                            local LeftLowerArmPos = Camera:WorldToViewportPoint(LeftLowerArm.Position)
                            local RightLowerArmPos = Camera:WorldToViewportPoint(RightLowerArm.Position)
                            local LeftUpperArmPos = Camera:WorldToViewportPoint(LeftUpperArm.Position)
                            local RightUpperArmPos = Camera:WorldToViewportPoint(RightUpperArm.Position)
                            local LeftFootPos = Camera:WorldToViewportPoint(LeftFoot.Position)
                            local LeftLowerLegPos = Camera:WorldToViewportPoint(LeftLowerLeg.Position)
                            local UpperTorsoPos = Camera:WorldToViewportPoint(UpperTorso.Position)
                            local LeftUpperLegPos = Camera:WorldToViewportPoint(LeftUpperLeg.Position)
                            local RightFootPos = Camera:WorldToViewportPoint(RightFoot.Position)
                            local RightLowerLegPos = Camera:WorldToViewportPoint(RightLowerLeg.Position)
                            local LowerTorsoPos = Camera:WorldToViewportPoint(LowerTorso.Position)
                            local RightUpperLegPos = Camera:WorldToViewportPoint(RightUpperLeg.Position)

                            local function CheckFriend()
                                if Environment.Settings.HighlightTarget == i and library.flags["highlighttargetEnabled"] then
                                    return library.flags["highlighttargetColor"]
                                end
                                if plr:GetFriendStatus(i) == Enum.FriendStatus.Friend and library.flags["friendcheckEnabled"] then 
                                    return library.flags["friendcheckColor"] 
                                end
                                if not library.flags["rainbowskeletonEnabled"] then
                                    return esp.settings.skeleton.color 
                                end
                                if not esp.rainbowmode then 
                                    return esp.settings.skeleton.color 
                                end

                                return esp.rainbowcolor
                            end

                            if HeadPos and UpperTorsoPos then
                                v.skeleton.Head.From = Vector2.new(HeadPos.X, HeadPos.Y)
                                v.skeleton.Head.To = Vector2.new(UpperTorsoPos.X, UpperTorsoPos.Y)
                                v.skeleton.Head.Color = CheckFriend()
                                v.skeleton.Head.Visible = true

                                v.skeleton.LeftHand.From = Vector2.new(LeftHandPos.X, LeftHandPos.Y)
                                v.skeleton.LeftHand.To = Vector2.new(LeftLowerArmPos.X, LeftLowerArmPos.Y)
                                v.skeleton.LeftHand.Color = CheckFriend()
                                v.skeleton.LeftHand.Visible = true

                                v.skeleton.RightHand.From = Vector2.new(RightHandPos.X, RightHandPos.Y)
                                v.skeleton.RightHand.To = Vector2.new(RightLowerArmPos.X, RightLowerArmPos.Y)
                                v.skeleton.RightHand.Color = CheckFriend()
                                v.skeleton.RightHand.Visible = true

                                v.skeleton.LeftLowerArm.From = Vector2.new(LeftLowerArmPos.X, LeftLowerArmPos.Y)
                                v.skeleton.LeftLowerArm.To = Vector2.new(LeftUpperArmPos.X, LeftUpperArmPos.Y)
                                v.skeleton.LeftLowerArm.Color = CheckFriend()
                                v.skeleton.LeftLowerArm.Visible = true

                                v.skeleton.RightLowerArm.From = Vector2.new(RightLowerArmPos.X, RightLowerArmPos.Y)
                                v.skeleton.RightLowerArm.To = Vector2.new(RightUpperArmPos.X, RightUpperArmPos.Y)
                                v.skeleton.RightLowerArm.Color = CheckFriend()
                                v.skeleton.RightLowerArm.Visible = true

                                v.skeleton.LeftUpperArm.From = Vector2.new(LeftUpperArmPos.X, LeftUpperArmPos.Y)
                                v.skeleton.LeftUpperArm.To = Vector2.new(UpperTorsoPos.X, UpperTorsoPos.Y)
                                v.skeleton.LeftUpperArm.Color = CheckFriend()
                                v.skeleton.LeftUpperArm.Visible = true

                                v.skeleton.RightUpperArm.From = Vector2.new(RightUpperArmPos.X, RightUpperArmPos.Y)
                                v.skeleton.RightUpperArm.To = Vector2.new(UpperTorsoPos.X, UpperTorsoPos.Y)
                                v.skeleton.RightUpperArm.Color = CheckFriend()
                                v.skeleton.RightUpperArm.Visible = true

                                v.skeleton.LeftFoot.From = Vector2.new(LeftFootPos.X, LeftFootPos.Y)
                                v.skeleton.LeftFoot.To = Vector2.new(LeftLowerLegPos.X, LeftLowerLegPos.Y)
                                v.skeleton.LeftFoot.Color = CheckFriend()
                                v.skeleton.LeftFoot.Visible = true

                                v.skeleton.LeftLowerLeg.From = Vector2.new(LeftLowerLegPos.X, LeftLowerLegPos.Y)
                                v.skeleton.LeftLowerLeg.To = Vector2.new(LeftUpperLegPos.X, LeftUpperLegPos.Y)
                                v.skeleton.LeftLowerLeg.Color = CheckFriend()
                                v.skeleton.LeftLowerLeg.Visible = true

                                v.skeleton.UpperTorso.From = Vector2.new(UpperTorsoPos.X, UpperTorsoPos.Y)
                                v.skeleton.UpperTorso.To = Vector2.new(LowerTorsoPos.X, LowerTorsoPos.Y)
                                v.skeleton.UpperTorso.Color = CheckFriend()
                                v.skeleton.UpperTorso.Visible = true

                                v.skeleton.LeftUpperLeg.From = Vector2.new(LeftUpperLegPos.X, LeftUpperLegPos.Y)
                                v.skeleton.LeftUpperLeg.To = Vector2.new(LowerTorsoPos.X, LowerTorsoPos.Y)
                                v.skeleton.LeftUpperLeg.Color = CheckFriend()
                                v.skeleton.LeftUpperLeg.Visible = true

                                v.skeleton.RightFoot.From = Vector2.new(RightFootPos.X, RightFootPos.Y)
                                v.skeleton.RightFoot.To = Vector2.new(RightLowerLegPos.X, RightLowerLegPos.Y)
                                v.skeleton.RightFoot.Color = CheckFriend()
                                v.skeleton.RightFoot.Visible = true

                                v.skeleton.RightLowerLeg.From = Vector2.new(RightLowerLegPos.X, RightLowerLegPos.Y)
                                v.skeleton.RightLowerLeg.To = Vector2.new(RightUpperLegPos.X, RightUpperLegPos.Y)
                                v.skeleton.RightLowerLeg.Color = CheckFriend()
                                v.skeleton.RightLowerLeg.Visible = true

                                v.skeleton.LowerTorso.From = Vector2.new(LowerTorsoPos.X, LowerTorsoPos.Y)
                                v.skeleton.LowerTorso.To = Vector2.new(RightUpperLegPos.X, RightUpperLegPos.Y)
                                v.skeleton.LowerTorso.Color = CheckFriend()
                                v.skeleton.LowerTorso.Visible = true

                                v.skeleton.RightUpperLeg.From = Vector2.new(RightUpperLegPos.X, RightUpperLegPos.Y)
                                v.skeleton.RightUpperLeg.To = Vector2.new(LowerTorsoPos.X, LowerTorsoPos.Y)
                                v.skeleton.RightUpperLeg.Color = CheckFriend()
                                v.skeleton.RightUpperLeg.Visible = true
                            end
                        else
                            v.skeleton.Head.Visible = false
                            v.skeleton.LeftHand.Visible = false
                            v.skeleton.RightHand.Visible = false
                            v.skeleton.LeftLowerArm.Visible = false
                            v.skeleton.RightLowerArm.Visible = false
                            v.skeleton.LeftUpperArm.Visible = false
                            v.skeleton.RightUpperArm.Visible = false
                            v.skeleton.LeftFoot.Visible = false
                            v.skeleton.LeftLowerLeg.Visible = false
                            v.skeleton.UpperTorso.Visible = false
                            v.skeleton.LeftUpperLeg.Visible = false
                            v.skeleton.RightFoot.Visible = false
                            v.skeleton.RightLowerLeg.Visible = false
                            v.skeleton.LowerTorso.Visible = false
                            v.skeleton.RightUpperLeg.Visible = false
                        end

                        if esp.settings.tracers.enabled then
                            local HRPPos = Camera:WorldToViewportPoint(hrp.CFrame.p)

                            if library.flags["tracerFromLocation"] == "Bottom" then
                                v.tracers.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y)
                            elseif library.flags["tracerFromLocation"] == "Middle" then
                                v.tracers.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
                            end
                            v.tracers.To = Vector2.new(HRPPos.X, HRPPos.Y)
                            
                            if plr:GetFriendStatus(i) == Enum.FriendStatus.Friend and library.flags["friendcheckEnabled"] then 
                                v.tracers.Color = library.flags["friendcheckColor"]
                            elseif Environment.Settings.HighlightTarget == i and library.flags["highlighttargetEnabled"] then
                                v.tracers.Color = library.flags["highlighttargetColor"]
                            else
                                v.tracers.Color = library.flags["esptracersColor"]
                            end

                            v.tracers.Visible = true
                        else
                            v.tracers.Visible = false
                        end

                        if esp.settings.chams.enabled then
                            if not i.Character:FindFirstChild("Highlight") then
                                v.chams = Instance.new("Highlight") 
                            end

                            v.chams.FillTransparency  = 0

                            if IsPartVisible(i.Character.HumanoidRootPart, i.Character) then
                                v.chams.FillColor  = library.flags["chamsvisibleColor"]
                            else
                                v.chams.FillColor  = library.flags["chamsnotvisibleColor"]
                            end

                            if esp.settings.chamsOutline.enabled then
                                v.chams.OutlineTransparency = 0
                                v.chams.OutlineColor = esp.settings.chamsOutline.color
                            else
                                v.chams.OutlineTransparency = 1
                            end
                            pcall(function()
                                v.chams.Parent = i.Character
                            end)
                        else
                            v.chams.FillTransparency = 1
                            v.chams.OutlineTransparency = 1
                        end
                    else
                        -- Disable ESP if player is off screen or out of Max render distance
                        v.name.Visible = false
                        v.boxOutline.Visible = false
                        v.box.Visible = false
                        v.tool.Visible = false
                        v.healthBarOutline.Visible = false
                        v.healthBar.Visible = false
                        v.healthText.Visible = false
                        v.distance.Visible = false
                        v.viewAngle.Visible = false
                        v.tracers.Visible = false

                        v.chams.FillTransparency = 1
                        v.chams.OutlineTransparency = 1

                        v.skeleton.Head.Visible = false
                        v.skeleton.LeftHand.Visible = false
                        v.skeleton.RightHand.Visible = false
                        v.skeleton.LeftLowerArm.Visible = false
                        v.skeleton.RightLowerArm.Visible = false
                        v.skeleton.LeftUpperArm.Visible = false
                        v.skeleton.RightUpperArm.Visible = false
                        v.skeleton.LeftFoot.Visible = false
                        v.skeleton.LeftLowerLeg.Visible = false
                        v.skeleton.UpperTorso.Visible = false
                        v.skeleton.LeftUpperLeg.Visible = false
                        v.skeleton.RightFoot.Visible = false
                        v.skeleton.RightLowerLeg.Visible = false
                        v.skeleton.LowerTorso.Visible = false
                        v.skeleton.RightUpperLeg.Visible = false
                    end
                else
                    -- Disable ESP if player has no character
                    v.name.Visible = false
                    v.boxOutline.Visible = false
                    v.box.Visible = false
                    v.tool.Visible = false
                    v.healthBarOutline.Visible = false
                    v.healthBar.Visible = false
                    v.healthText.Visible = false
                    v.distance.Visible = false  
                    v.viewAngle.Visible = false
                    v.tracers.Visible = false

                    v.chams.FillTransparency = 1
                    v.chams.OutlineTransparency = 1

                    v.offscreenarrows.HealthBar.Visible = false
                    v.offscreenarrows.HealthBarOutline.Visible = false
                    v.offscreenarrows.Arrows.Visible = false
                    v.offscreenarrows.TextName.Visible = false
                    v.offscreenarrows.TextDistance.Visible = false
                    
                    v.skeleton.Head.Visible = false
                    v.skeleton.LeftHand.Visible = false
                    v.skeleton.RightHand.Visible = false
                    v.skeleton.LeftLowerArm.Visible = false
                    v.skeleton.RightLowerArm.Visible = false
                    v.skeleton.LeftUpperArm.Visible = false
                    v.skeleton.RightUpperArm.Visible = false
                    v.skeleton.LeftFoot.Visible = false
                    v.skeleton.LeftLowerLeg.Visible = false
                    v.skeleton.UpperTorso.Visible = false
                    v.skeleton.LeftUpperLeg.Visible = false
                    v.skeleton.RightFoot.Visible = false
                    v.skeleton.RightLowerLeg.Visible = false
                    v.skeleton.LowerTorso.Visible = false
                    v.skeleton.RightUpperLeg.Visible = false
                end
            end
        end
    end
end)

---------------------------------
    --* CONFIGS TAB *--
---------------------------------
local configs = main:Tab("Configuration")


keybind_viewer = configs:Section{Name = "Keybind Viewer", Side = "Left"}
KeybindviewerToggle = keybind_viewer:Toggle{
    Name = "Show Keybind Viewer",
    Flag = "showkeybindsEnabled",
    Default = true,
    Callback = function(bool)
        KeybindUI.Toggle(bool)
    end
}

item_scanner = configs:Section{Name = "Item Scanner", Side = "Left"}
ItemScannerText = Drawing.new("Text")
ItemScannerShowPos = item_scanner:Toggle{
    Name = "Enabled",
    Flag = "itemscannerEnabled",
    Callback = function(bool)
        if not bool then
            ItemScannerText.Visible = false
        end
    end
}
ItemScannerShowPos:ColorPicker{
    Default = Color3.fromRGB(255, 255, 255),
    Flag = "itemscannerposcolor",
    Callback = function(color)
        ItemScannerText.Color = color
    end
}
ItemScannerShowPos:Slider{
    Text = "Duration: [value]s",
    Default = 5,
    Min = 0,
    Max = 120,
    Float = 1,
    Flag = "itemscannerposDuration"
}
item_scanner:Dropdown{
    Name = "Item To Scan For",
    Default = "FlareGun",
    Content = ItemScannerTable,
    Flag = "itemscanner_item"
}
item_scanner:Button{
    Name = "Scan For Item",
    Callback = function()
        if library.flags["itemscannerEnabled"] then
            local FoundSomething = false

            for _, v in pairs(ws:GetDescendants()) do
                if tostring(v.Name) == tostring(library.flags["itemscanner_item"]) then
                    local MeshPart = nil

                    for _, v2 in pairs(v:GetDescendants()) do
                        if v2:IsA("MeshPart") or v2:IsA("Part") then
                            MeshPart = v2
                            break
                        end
                    end

                    if MeshPart ~= nil then
                        FoundSomething = true
                        local PlayerPos = MeshPart.Position

                        local Distance = (PlayerPos - plr.Character.HumanoidRootPart.Position).Magnitude
                        Distance = Framework:Distance_Type_Change(Distance_Type_, Distance)
                        Library:SendNotification(("Found " .. tostring(library.flags["itemscanner_item"]) .. " (" .. Distance .. "m)"), 5, Color3.fromRGB(255, 255, 255))
                        local Vector, OnScreen = Camera:WorldToViewportPoint(PlayerPos)

                        ItemScannerText.Text = tostring(library.flags["itemscanner_item"]) .. " (" .. tostring(Distance) .. "m)"
                        ItemScannerText.Size = 20
                        ItemScannerText.Outline = true
                        ItemScannerText.Color = library.flags["itemscannerposcolor"]
                        ItemScannerText.Position = Vector2.new(Vector.X, Vector.Y)
                        ItemScannerText.Visible = true

                        local StartTime = tick()
                        
                        while math.floor(tick() - StartTime) < tonumber(library.flags["itemscannerposDuration"]) do
                            local PlayerPos = MeshPart.Position
                            local Distance = (PlayerPos - plr.Character.HumanoidRootPart.Position).Magnitude
                            Distance = Framework:Distance_Type_Change(Distance_Type_, Distance)
                            local Vector, OnScreen = Camera:WorldToViewportPoint(PlayerPos)
                            ItemScannerText.Text = tostring(library.flags["itemscanner_item"]) .. " (" .. tostring(Distance) .. "m)"
                            ItemScannerText.Position = Vector2.new(Vector.X, Vector.Y)
                            ItemScannerText.Visible = OnScreen

                            if not library.flags["itemscannerEnabled"] then
                                ItemScannerText.Visible = false
                                return
                            end

                            task.wait()
                        end
                        ItemScannerText.Visible = false
                        return
                    end
                end
            end
            if FoundSomething == false then
                for i,v in next, repStorage.Players:GetChildren() do
                    if v.Name ~= plr.Name then
                        for a,x in next, v:GetDescendants() do
                            if x:IsA('StringValue') then
                                if x.Parent.Name == 'Inventory' or x.Parent.Name == 'Equipment' then
                                    if tostring(x.Name) == tostring(library.flags["itemscanner_item"]) then
                                        local PlayerName = v.Name
                                        if game.Players[PlayerName].Character:FindFirstChild("HumanoidRootPart") then
                                            FoundSomething = true
                                            local PlayerPos = game.Players[PlayerName].Character.HumanoidRootPart.Position

                                            local Distance = (PlayerPos - plr.Character.HumanoidRootPart.Position).Magnitude
                                            Distance = Framework:Distance_Type_Change(Distance_Type_, Distance)
                                            Library:SendNotification(("Found " .. tostring(library.flags["itemscanner_item"]) .. " on " .. PlayerName .. " (" .. Distance .. "m)"), 5, Color3.fromRGB(255, 255, 255))
                                            local Vector, OnScreen = Camera:WorldToViewportPoint(PlayerPos)

                                            ItemScannerText.Text = tostring(library.flags["itemscanner_item"]) .. " (" .. tostring(Distance) .. "m)"
                                            ItemScannerText.Size = 20
                                            ItemScannerText.Outline = true
                                            ItemScannerText.Color = library.flags["itemscannerposcolor"]
                                            ItemScannerText.Position = Vector2.new(Vector.X, Vector.Y)
                                            ItemScannerText.Visible = true

                                            local StartTime = tick()

                                            while math.floor(tick() - StartTime) < tonumber(library.flags["itemscannerposDuration"]) do
                                                local PlayerPos = game.Players[PlayerName].Character.HumanoidRootPart.Position
                                                local Distance = (PlayerPos - plr.Character.HumanoidRootPart.Position).Magnitude
                                                Distance = Framework:Distance_Type_Change(Distance_Type_, Distance)
                                                local Vector, OnScreen = Camera:WorldToViewportPoint(PlayerPos)
                                                ItemScannerText.Text = tostring(library.flags["itemscanner_item"]) .. " (" .. tostring(Distance) .. "m)"
                                                ItemScannerText.Position = Vector2.new(Vector.X, Vector.Y)
                                                ItemScannerText.Visible = OnScreen

                                                if not library.flags["itemscannerEnabled"] then
                                                    ItemScannerText.Visible = false
                                                    return
                                                end

                                                task.wait()
                                            end
                                            ItemScannerText.Visible = false   

                                            return
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end

            if FoundSomething == false then
                Library:SendNotification(("Could not find " .. tostring(library.flags["itemscanner_item"])), 5, Color3.fromRGB(255, 255, 255))
            end
        else
            Library:SendNotification(("Item Scanner is not enabled!"), 5, Color3.fromRGB(255, 255, 255))
        end
    end
}

themepickers = {}
customtheme = configs:Section{Name = "Custom Themes", Side = "Right"}
themepickers["Accent"] = customtheme:ColorPicker{
    Name = "Accent",
    Default = library.theme["Accent"],
    Flag = "Accent",
    Callback = function(color)
        library:ChangeThemeOption("Accent", color)
    end
}
library:ConfigIgnore("Accent")
themepickers["Window Background"] = customtheme:ColorPicker{
    Name = "Window Background",
    Default = library.theme["Window Background"],
    Flag = "Window Background",
    Callback = function(color)
        library:ChangeThemeOption("Window Background", color)
        InventoryViewer.Border.Color = color
    end
}
library:ConfigIgnore("Window Background")
themepickers["Tab Background"] = customtheme:ColorPicker{
    Name = "Tab Background",
    Default = library.theme["Tab Background"],
    Flag = "Tab Background",
    Callback = function(color)
        library:ChangeThemeOption("Tab Background", color)
        InventoryViewer.Main.Color = color
    end
}
library:ConfigIgnore("Tab Background")
configsection = configs:Section{Name = "Configs", Side = "Right"}
configlist = configsection:Dropdown{
    Name = "",
    Content = library:GetConfigs(), -- GetConfigs(true) if you want universal configs
    Flag = "Config Dropdown"
}
library:ConfigIgnore("Config Dropdown")
loadconfig = configsection:Button{
    Name = "Load Config",
    Callback = function()
        library:LoadConfig(library.flags["Config Dropdown"])
        configlist:Refresh(library:GetConfigs())
    end
}
delconfig = configsection:Button{
    Name = "Delete Config",
    Callback = function()
        library:DeleteConfig(library.flags["Config Dropdown"])
        configlist:Refresh(library:GetConfigs())
    end
}
configbox = configsection:Box{
    Name = "Config Name",
    Placeholder = "Enter Config Name Here",
    Flag = "Config Name"
}
library:ConfigIgnore("Config Name")
save = configsection:Button{
    Name = "Save Config",
    Callback = function()
        library:SaveConfig(library.flags["Config Dropdown"] or library.flags["Config Name"])
        configlist:Refresh(library:GetConfigs())
    end
}

staffInServer, staffDatabase, cheatersInServer, cheaterDatabase, cheatersNames, AddedNames = {}, {}, {}, {}, {}, {}
PlrDetectorUI.Toggle(true)

PlayerDetector = configs:Section{Name = "Player Detector", Side = "Left"}
PlayerDetector:Slider{
    Name = "Alert Volume",
    Text = "[value]/10",
    Default = 5,
    Min = 0,
    Max = 10,
    Float = 1,
    Flag = "adminAlertVolume"
}

PlayerDetector:Separator("Add Cheaters")
PlayerDetector:Box{
    Name = "Cheater Name",
    Placeholder = "Enter Cheaters Name Here",
    Flag = "Cheater Name"
}
PlayerDetector:Button{
    Name = "Add Cheater",
    Callback = function()
        local CheaterFound = false

        for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
            if Player.Name:lower() == library.flags["Cheater Name"]:lower() or Player.DisplayName:lower() == library.flags["Cheater Name"]:lower() then
                success, response = pcall(function()
                    return game:HttpGetAsync("https://infinity-api.flashout24.repl.co/add/" .. Player.UserId)
                end)
                if success then
                    table.insert(cheatersInServer, Player.UserId)
                    table.insert(cheatersNames, Player.Name)
                    table.insert(cheaterDatabase, Player.UserId)
                    Library:SendNotification("Added " .. Player.Name .. " to the cheater list.")
                    CheaterFound = true
                    break
                end
            end
        end

        if not CheaterFound then
            Library:SendNotification("Failed to find " .. library.flags["Cheater Name"] .. " in the server.")
        end
    end
}

-- Anti_Predicition = function()
--     if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then 
--         local dwVelocity = plr.Character.HumanoidRootPart.Velocity

--         if library.flags["antiaimRandom"] then
--             plr.Character.HumanoidRootPart.Velocity = plr.Character.HumanoidRootPart.Velocity + Vector3.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100)) * (2^tonumber(library.flags["antiaimPower"]))
--         else
--             plr.Character.HumanoidRootPart.Velocity = plr.Character.HumanoidRootPart.Velocity + Vector3.new(library.flags["antiaimX"], library.flags["antiaimY"], library.flags["antiaimZ"]) * (2^tonumber(library.flags["antiaimPower"]))
--         end

--         rs.RenderStepped:Wait()
--         plr.Character.HumanoidRootPart.Velocity = dwVelocity
--     end
-- end

-- local JitterAngle__ = -0.75
-- local LeanAngle     = -1
-- local LeanTick      = 0

-- Anti_Aim = {
--     ["Yaw"] = function()
--         if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then 
--             if library.flags["blatantantiaimRandomYaw"] then
--                 plr.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.random(360), 0)
--             elseif tonumber(library.flags["blatantantiaimYaw"]) ~= 0 then
--                 plr.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(tonumber(library.flags["blatantantiaimYaw"])), 0)
--             end
--         end
--     end,
--     ["Pitch"] = function()
--         local args = {
--             [1] = 0,
--             [2] = 0
--         }

--         if library.flags["blatantantiaimRandomPitch"] then
--             JitterAngle__ = JitterAngle__ + 0.50
--             if JitterAngle__ > 0.75 then
--                 JitterAngle__ = -0.75
--             end
--             args[1] = JitterAngle__
--         elseif tonumber(library.flags["blatantantiaimPitch"]) ~= 0 then
--             args[1] = tonumber(library.flags["blatantantiaimPitch"])
--         end

--         repStorage.Remotes.CharacterTilt:FireServer(unpack(args))
--     end,
--     ["Roll"] = function()
--         local args = {
--             [1] = "Leaning",
--             [2] = 0
--         }
--         local Leans = {
--             [1] = -1,
--             [2] = 1
--         }

--         if library.flags["blatantantiaimRandomRoll"] then
--             LeanTick = LeanTick + 1

--             if LeanTick > library.flags["blatantantiaimRandomRollTick"] then
--                 LeanTick = 0
--                 LeanAngle = Leans[math.random(1, 2)]
--             end

--             args[2] = LeanAngle

--         elseif tonumber(library.flags["blatantantiaimRoll"]) ~= 0 then
--             args[2] = tonumber(library.flags["blatantantiaimRoll"])
--         end

--         repStorage.Remotes.MovementState:FireServer(unpack(args))
--     end
-- }

rs.Heartbeat:Connect(function()
    if Running and Alive(plr) then
        if library.flags["antipredictionEnabled"] and AntiPrediction_ then 
            Anti_Predicition(library.flags["antiaimX"], library.flags["antiaimY"], library.flags["antiaimZ"], library.flags["antiaimPower"], library.flags["antiaimRandom"])
        end 

        if library.flags["blatantantiaimEnabled"] then      
            Anti_Aim["Yaw"](library.flags["blatantantiaimYaw"], library.flags["blatantantiaimRandomYaw"])
            Anti_Aim["Pitch"](library.flags["blatantantiaimPitch"], library.flags["blatantantiaimRandomPitch"])
            Anti_Aim["Roll"](library.flags["blatantantiaimRoll"], library.flags["blatantantiaimRandomRoll"], library.flags["blatantantiaimRandomRollTick"])
        end
    end
end)

PlayerDetectorStats = configs:Section{Name = "", Side = "Right"}
PlayerDetectorLabel_Total_Staff = PlayerDetectorStats:Label("Staff In Server: " .. tostring(#staffInServer))
PlayerDetectorLabel_Total_Cheaters = PlayerDetectorStats:Label("Cheaters In Server:  " .. tostring(#cheatersInServer))

task.spawn(function()
    while wait(0.3) do
        if Running and Alive(plr) then
            PlayerDetectorLabel_Total_Staff:Set("Staff In Server: " .. tostring(#staffInServer))
            PlayerDetectorLabel_Total_Cheaters:Set("Cheaters In Server:  " .. tostring(#cheatersInServer))

            for _, Name in pairs(cheatersNames) do
                if not table.find(AddedNames, Name) then
                    PlrDetectorUI.AddPlayer(Name)
                    table.insert(AddedNames, Name)
                end
            end
        end
    end
end)

adminAlarm = Framework:Instance("Sound", {SoundId = "rbxassetid://176820116", Volume = library.flags["adminAlertVolume"], Parent = cgui})

autoloot = configs:Section{Name = "Auto Loot", Side = "Left"}
autoloot:Keybind{
    Name = "Shirts",
    Flag = "autolootShirts",
    Default = Enum.KeyCode.P,
    Blacklist = {Enum.UserInputType.MouseButton1, Enum.UserInputType.MouseButton2, Enum.UserInputType.MouseButton3},
    Callback = function(_, fromsetting)
        if not fromsetting and not Typing then
            for i = 1, AutoLootSettings.Shirt.Size do
                local args = {[1] = "Shirt" .. tostring(i)}
                repStorage.Remotes.QuickLoot:FireServer(unpack(args))
            end
        end
    end
}
autoloot:Keybind{
    Name = "Pants",
    Flag = "autolootPants",
    Default = Enum.KeyCode.P,
    Blacklist = {Enum.UserInputType.MouseButton1, Enum.UserInputType.MouseButton2, Enum.UserInputType.MouseButton3},
    Callback = function(_, fromsetting)
        if not fromsetting and not Typing then
            for i = 1, AutoLootSettings.Pants.Size do
                local args = {[1] = "Pants" .. tostring(i)}
                repStorage.Remotes.QuickLoot:FireServer(unpack(args))
            end
        end
    end
}
autoloot:Keybind{
    Name = "Chest Rig",
    Flag = "autolootChestRig",
    Default = Enum.KeyCode.P,
    Blacklist = {Enum.UserInputType.MouseButton1, Enum.UserInputType.MouseButton2, Enum.UserInputType.MouseButton3},
    Callback = function(_, fromsetting)
        if not fromsetting and not Typing then
            for i = 1, AutoLootSettings.Chestrig.Size do
                local args = {[1] = "Chestrig" .. tostring(i)}
                repStorage.Remotes.QuickLoot:FireServer(unpack(args))
            end
        end
    end
}
autoloot:Keybind{
    Name = "Backpack",
    Flag = "autolootBackpack",
    Default = Enum.KeyCode.P,
    Blacklist = {Enum.UserInputType.MouseButton1, Enum.UserInputType.MouseButton2, Enum.UserInputType.MouseButton3},
    Callback = function(_, fromsetting)
        if not fromsetting and not Typing then
            for i = 1, AutoLootSettings.Backpack.Size do
                local args = {[1] = "Backpack" .. tostring(i)}
                repStorage.Remotes.QuickLoot:FireServer(unpack(args))
            end
        end
    end
}
autoloot:Keybind{
    Name = "Container",
    Flag = "autolootContainer",
    Default = Enum.KeyCode.P,
    Blacklist = {Enum.UserInputType.MouseButton1, Enum.UserInputType.MouseButton2, Enum.UserInputType.MouseButton3},
    Callback = function(_, fromsetting)
        if not fromsetting and not Typing then
            for i = 1, AutoLootSettings.Container.Size do
                local args = {[1] = "Container" .. tostring(i)}
                repStorage.Remotes.QuickLoot:FireServer(unpack(args))
            end
        end
    end
}


themes = configs:Section{Name = "Settings", Side = "Right"}
themes:Button{
    Name = "Unhook",
    Callback  = function()
        for _, v in next, ServiceConnections do
            v:Disconnect()
        end

        Environment.Settings.Enabled = false
        Environment.FOVCircle:Remove()
        Environment.SnapLine:Remove()

        ESP.Objects_Enabled = false

        gethiddenproperty(Terrain, "Decoration", Old_Decoration)

        KeybindUI.Toggle(false)
        PlrDetectorUI.Toggle(false)

        for i,v in pairs(Old_Lighting) do
            lighting[i] = v
        end

        Running = false
        library:Unload()
    end
}
themes:Button{
    Name = "Rejoin Server",
    Callback  = function()
        local Rejoin = coroutine.create(function()
            local Success, ErrorMessage = pcall(function()
                game:GetService("TeleportService"):Teleport(game.PlaceId, plr)
            end)

            if ErrorMessage and not Success then
                warn(ErrorMessage)
            end
        end)

        coroutine.resume(Rejoin)
    end
}
themes:Button{
    Name = "Copy Game Invite Code",
    Callback = function()
        local ServerID = plr.PlayerGui.PerformanceMonitor2.TextLabel3.Text:split("|")
        local ServerID = ServerID[4]
        local ServerID = ServerID:sub(2)
        setclipboard("game:GetService('TeleportService'):TeleportToPlaceInstance(" .. game.PlaceId .. ", '" .. ServerID .. "')")
    end
}
themes:Keybind{
    Name = "UI Toggle",
    Flag = "UI Toggle",
    Default = Enum.KeyCode.RightShift,
    Blacklist = {Enum.UserInputType.MouseButton1, Enum.UserInputType.MouseButton2, Enum.UserInputType.MouseButton3},
    Callback = function(_, fromsetting)
        if not fromsetting and not Typing then
            library:Close()
        end
    end
}
themes:Dropdown{
    Name = "Distance Type",
    Default = "Studs",
    Content = {"Meters", "Studs"},
    Flag = "distanceType",
    Callback = function(option)
        ESP.Distance_Type   = tostring(option)
        Distance_Type_      = tostring(option)
    end
}

success, response = pcall(function()
    return game:HttpGetAsync("https://infinity-api.flashout24.repl.co/get/staffdatabase")
end)
if success then
    local dwstaffDatabase = hs:JSONDecode(response)
    for _, Data in pairs(dwstaffDatabase["ids"]) do
        table.insert(staffDatabase, tonumber(Data))
    end
    Library:SendNotification("Loaded the staff database.")
else
    Library:SendNotification("Failed to load staff database.")
end

function adminFinder_Check(Player, Joined)
    task.spawn(function()
        local ReplicatedPlayersPlayer = ReplicatedPlayers:WaitForChild(Player.Name)
        local Status = ReplicatedPlayersPlayer:WaitForChild("Status")
        local GameplayVariables = Status:WaitForChild("GameplayVariables")
        local GodMode = GameplayVariables:GetAttribute("GodMode")
        local Reason, inStaffDatabase = "", table.find(staffDatabase, Player.UserId)
        local UACRole, VikingRole = "", ""
        pcall(function()
            UACRole = Player:GetRoleInGroup(13810797)
        end)
        pcall(function()
            VikingRole = Player:GetRoleInGroup(3765739)
        end)
        if Reason == "" and inStaffDatabase then
            Reason = "Database"
        end
        if Reason == "" and GodMode == true then
            Reason = "GodMode"
        end
        if Reason == "" and UACRole ~= "Guest" then
            Reason = UACRole == "Member" and "Staff" or UACRole
        end
        if Reason == "" and not table.find({"Guest", "Member", "Elite Member", "Early Access", "Prime", "OG"}, VikingRole) then
            Reason = VikingRole
        end
        if Reason ~= "" then
            if not table.find(staffInServer, Player.UserId) then
                table.insert(staffInServer, Player.UserId)
            end
            if Joined then
                success, response = pcall(function()
                    return game:HttpGetAsync("https://infinity-api.flashout24.repl.co/add/staff/" .. Player.UserId)
                end)
                Library:SendNotification(("Staff joined your server. | Name: %s, Reason: %s"):format(Player.Name, Reason))
            else
                success, response = pcall(function()
                    return game:HttpGetAsync("https://infinity-api.flashout24.repl.co/add/staff/" .. Player.UserId)
                end)
                Library:SendNotification(("Staff was found in your server. | Name: %s, Reason: %s"):format(Player.Name, Reason))
            end
            adminAlarm:Play()
        end
    end)
end

success, response = pcall(function()
    return game:HttpGetAsync("https://infinity-api.flashout24.repl.co/get/cheaterdatabase")
end)
if success then
    dwcheaterDatabase = hs:JSONDecode(response)
    for _, Data in pairs(dwcheaterDatabase["ids"]) do
        table.insert(cheaterDatabase, tonumber(Data))
    end
    Library:SendNotification("Loaded the cheater database.")
else
    Library:SendNotification("Failed to load cheater database.")
end

function cheaterFinder_Check(Player, Joined)
    task.spawn(function()
        local Reason = ""

        local function Alert_Of_Cheaters(Player, Reason)
            if not table.find(cheatersInServer, Player.UserId) then
                table.insert(cheatersInServer, Player.UserId)
            end
            if not table.find(cheatersNames, Player.Name) then
                table.insert(cheatersNames, Player.Name)
            end
            if Joined then
                Library:SendNotification(("Cheater joined your server. | Name: %s, Reason: %s"):format(Player.Name, Reason))
            else
                Library:SendNotification(("Cheater was found in your server. | Name: %s, Reason: %s"):format(Player.Name, Reason))
            end
        end

        if table.find(cheatersInServer, Player.UserId) then
            Reason = "Server"
            if Joined then
                Library:SendNotification(("Cheater joined your server. | Name: %s"):format(Player.Name))
            else
                Library:SendNotification(("Cheater was found in your server. | Name: %s"):format(Player.Name))
            end

        elseif table.find(cheaterDatabase, Player.UserId) then
            Reason = "Database"
            Alert_Of_Cheaters(Player, Reason)
        end

        pcall(function()
            if Player.Character.Humanoid.WalkSpeed > 20 and Reason == "" then
                Reason = "WalkSpeed"
                Alert_Of_Cheaters(Player, Reason)
            end
            if Player.Character.Humanoid.HipHeight > 2 and Reason == "" then
                Reason = "HipHeight"
                Alert_Of_Cheaters(Player, Reason)
            end
            if Player.Character.Humanoid.JumpHeight > 2 and Reason == "" then
                Reason = "JumpHeight"
                Alert_Of_Cheaters(Player, Reason)
            end
            if Player.Character.Humanoid.JumpPower > 50 and Reason == "" then
                Reason = "JumpPower"
                Alert_Of_Cheaters(Player, Reason)
            end
            if Player.Character.Humanoid.Health > 100 and Reason == "" then
                Reason = "HealthModifier"
                Alert_Of_Cheaters(Player, Reason)
            end
            if Player.Character.Humanoid.MaxHealth > 100 and Reason == "" then
                Reason = "MaxHealthModifier"
                Alert_Of_Cheaters(Player, Reason)
            end
            if Player.Character.Humanoid.MaxHealth > 100 and Reason == "" then
                Reason = "MaxHealthModifier"
                Alert_Of_Cheaters(Player, Reason)
            end
            if Player.Character.Humanoid.AutoRotate == false and Reason == "" then
                Reason = "AntiAim"
                Alert_Of_Cheaters(Player, Reason)
            end
            if Player.Character.Humanoid.PlatformStand == true and Reason == "" then
                Reason = "Fly"
                Alert_Of_Cheaters(Player, Reason)
            end
            if math.floor(Player.Character.HumanoidRootPart.Velocity.X) > 45 and Reason == "" then
                Reason = "Speed"
                Alert_Of_Cheaters(Player, Reason)
            end
            if math.floor(Player.Character.HumanoidRootPart.Velocity.Z) > 45 and Reason == "" then
                Reason = "Speed"
                Alert_Of_Cheaters(Player, Reason)
            end
        end)
    end)
end

ServiceConnections.ESPPlayerAddedConnection = plrs.PlayerAdded:Connect(function(Player)
    if Running then
        esp.NewPlayer(Player)

        if Player ~= plr then 
            adminFinder_Check(Player, true)
            cheaterFinder_Check(Player, true)
            task.spawn(function()
                local ReplicatedPlayersPlayer = ReplicatedPlayers:WaitForChild(Player.Name)
                local Status = ReplicatedPlayersPlayer:WaitForChild("Status")
                local GameplayVariables = Status:WaitForChild("GameplayVariables")
                local c; c = GameplayVariables.AttributeChanged:Connect(function(Attribute)
                    if Attribute:lower() == 'godmode' then
                        if not table.find(staffInServer, Player.UserId) then
                            table.insert(staffInServer, Player.UserId)
                        end
                        success, response = pcall(function()
                            return game:HttpGetAsync("https://infinity-api.flashout24.repl.co/add/staff/" .. Player.UserId)
                        end)
                        Library:SendNotification(("Staff was found in your server. | Name: %s, Reason: %s"):format(Player.Name, Attribute))
                        adminAlarm:Play()
                        if not table.find(staffDatabase, Player.UserId) then
                            table.insert(staffDatabase, Player.UserId)
                        end
                        c:Disconnect();
                    end
                end)
            end)
        end
    end
end)

plrs.PlayerRemoving:Connect(function(Player)
    if Running then
        if Player == plr then return end
        inDb = table.find(staffInServer, Player.UserId)
        inDb2 = table.find(cheatersInServer, Player.UserId)
        if inDb then
            table.remove(staffInServer, inDb)
            Library:SendNotification(("Staff has left your server. | Name: %s"):format(Player.Name))
        end
        if inDb2 then
            table.remove(cheatersInServer, inDb2)
            Library:SendNotification(("Cheater has left your server. | Name: %s"):format(Player.Name))
        end
        inDb3 = table.find(AddedNames, Player.Name)  
        if inDb3 then
            AddedNames = {}
            table.remove(cheatersNames, inDb3)

            PlrDetectorUI.RemovePlayer(Player.Name)
        end
    end
end)

for _, Player in pairs(plrs:GetPlayers()) do
    if Running then
        if Player ~= plr then
            esp.NewPlayer(Player)

            adminFinder_Check(Player, false)
            cheaterFinder_Check(Player, false)
            task.spawn(function()
                ReplicatedPlayersPlayer = ReplicatedPlayers:WaitForChild(Player.Name)
                Status = ReplicatedPlayersPlayer:WaitForChild("Status")
                GameplayVariables = Status:WaitForChild("GameplayVariables")
                c = GameplayVariables.AttributeChanged:Connect(function(Attribute)
                    if Attribute:lower() == 'godmode' then
                        table.insert(staffInServer, Player.UserId)
                        success, response = pcall(function()
                            return game:HttpGetAsync("https://infinity-api.flashout24.repl.co/add/staff/" .. Player.UserId)
                        end)
                        Library:SendNotification(("Staff was found in your server. | Name: %s, Reason: %s"):format(Player.Name, Attribute))
                        adminAlarm:Play()
                        if not table.find(staffDatabase, Player.UserId) then
                            table.insert(staffDatabase, Player.UserId)
                        end
                        c:Disconnect();
                    end
                end)
            end)
            if Player.Character then
                task.spawn(function()
                    ReplicatedPlayersPlayer = ReplicatedPlayers:WaitForChild(Player.Name)
                    Status = ReplicatedPlayersPlayer:WaitForChild("Status")
                    GameplayVariables = Status:WaitForChild("GameplayVariables")
                    GodMode = GameplayVariables:GetAttribute("GodMode")
                    if GodMode == true then
                        if not table.find(staffInServer, Player.UserId) then
                            table.insert(staffInServer, Player.UserId)
                        end
                        success, response = pcall(function()
                            return game:HttpGetAsync("https://infinity-api.flashout24.repl.co/add/staff/" .. Player.UserId)
                        end)
                        Library:SendNotification(("Staff was found in your server. | Name: %s, Reason: %s"):format(Player.Name, "GodMode"))
                        adminAlarm:Play()
                        if not table.find(staffDatabase, Player.UserId) then
                            table.insert(staffDatabase, Player.UserId)
                        end
                    end
                end)
            end
        end
    end
end

success, response = pcall(function()
    return game:HttpGetAsync("https://infinity-api.flashout24.repl.co/add/" .. plr.UserId)
end)
