local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/mrbirdz/LeakingSkids/main/alteryohub/uilibrary.lua")()
local win = Flux:Window("Alteryo", "Scripts", Color3.fromRGB(186, 85, 211), Enum.KeyCode.LeftAlt)

--|| Options ||--
local WallHackOn = false
local EspOn = true
local TreeRemOn = false
local WallClips = false
local WindowNoClipOn = false
local UpClip = false
local LeavesRemover = false
local AimbotTrue = false
local HeadExtends = false


local gmt = getrawmetatable(game)
setreadonly(gmt, false)
local oldindex = gmt.__index

--|| locales ||--
local Players = game:GetService("Players");
local LocalPlayer = Players.LocalPlayer;
local Mouse = LocalPlayer:GetMouse();

local Cameras = game:GetService("Workspace").Camera;
local CurrentCamera = game:GetService("Workspace").CurrentCamera
local worldToViewportPoint = CurrentCamera.worldToViewportPoint

local HeadOff = Vector3.new(0, 0.5, 0)
local LegOff = Vector3.new(0,3,0)

--|| Globals ||--
local _Character = getrenv()._G.Character;


--|| Settings ||--
getgenv().Esp = {
    EspColors = Color3.new(255,255,255),
    NitrateColor = Color3.new(255,255,255),
    NameColor = Color3.new(255,255,255),
    TeamColor = Color3.new(255,255,255),
    TeamNameColor = Color3.new(255,255,255),
    EspDistance = 300,
}
local EspList = {
    
}

getgenv()._Aimbot = {
    Enabled = false,
    AimSmooth = 1,
    X_Offset = 0,
    Y_Offset = 0
}

getgenv().ASSettings = {
    AimType = "To Cursor",
    AimDis = 300,
    AimSleepers = false,
    VisibleCheck = false
}

getgenv().SpiderS = {
    UpDistance = 0.1
}


local HedsOn = Instance.new("Part")
HedsOn.Name = "HedsOn"
HedsOn.Anchored = false
HedsOn.CanCollide = false
HedsOn.Transparency = 1
HedsOn.Size = Vector3.new(4, 7, 3)
HedsOn.Parent = game.ReplicatedStorage

local fovcircle = Drawing.new("Circle")
fovcircle.Visible = true
fovcircle.Radius = 120
fovcircle.Color = Color3.fromRGB(255,255,255)
fovcircle.Thickness = 1
fovcircle.Filled = false
fovcircle.Transparency = 1

fovcircle.Position = Vector2.new(CurrentCamera.ViewportSize.X / 2, CurrentCamera.ViewportSize.Y / 2)


function getClosestPlayerToPlayer()
    local closestPlayer = nil;
    local shortestDistance = ASSettings["AimDis"];
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") and v:FindFirstChild("Humanoid") and v.Name then
			if v.Humanoid.Health ~= 0 and v.PrimaryPart ~= nil and v:FindFirstChild("Head") then
				local pos = Cameras.WorldToViewportPoint(Cameras, v.PrimaryPart.Position)
				local magnitude = (_Character.character.Middle.Position - v.PrimaryPart.Position).magnitude
				local fovmagnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).magnitude
				
				if magnitude < shortestDistance then
				    if fovmagnitude < 120 then
				        closestPlayer = v
					    shortestDistance = magnitude
				    end
				end
			end
		end
	end

	return closestPlayer
end
local Rage = win:Tab("Rage", "http://www.roblox.com/asset/?id=6023426915")
Rage:Bind("WallClip", Enum.KeyCode.O,function()
	if WallClips == false then
	    WallClips = true
		game:GetService("Workspace").Ignore.LocalCharacter.Middle.Anchored = true
        for i = 1,13 do task.wait(.1)
            game:GetService("Workspace").Ignore.LocalCharacter.Middle.Orientation = Vector3.new(0, game:GetService("Workspace").Ignore.FPSArms.HumanoidRootPart.Orientation.Y, game:GetService("Workspace").Ignore.FPSArms.HumanoidRootPart.Orientation.Z)
            game.Workspace.Ignore.LocalCharacter.Middle.CFrame = game.Workspace.Ignore.LocalCharacter.Middle.CFrame * CFrame.new(0, 0, -0.1)
        end
	else
		WallClips = false
		game:GetService("Workspace").Ignore.LocalCharacter.Middle.Anchored = false
	end
end)
Rage:Bind("WindowNoclip", Enum.KeyCode.L,function()
	if WindowNoclip == false then
	    WindowNoClipOn = true
		game:GetService("Workspace").Ignore.LocalCharacter.Middle.Anchored = true
        for i = 1,13 do task.wait(.1)
            game:GetService("Workspace").Ignore.LocalCharacter.Middle.Orientation = Vector3.new(0, game:GetService("Workspace").Ignore.FPSArms.HumanoidRootPart.Orientation.Y, game:GetService("Workspace").Ignore.FPSArms.HumanoidRootPart.Orientation.Z)
            game.Workspace.Ignore.LocalCharacter.Middle.CFrame = game.Workspace.Ignore.LocalCharacter.Middle.CFrame * CFrame.new(0, 0, -0.2)
        end
	else
		WindowNoclip = false
		game:GetService("Workspace").Ignore.LocalCharacter.Middle.Anchored = false
	end
end)
Rage:Bind("Up", Enum.KeyCode.P,function()
	game:GetService("Workspace").Ignore.LocalCharacter.Middle.Anchored = true
    game.Workspace.Ignore.LocalCharacter.Middle.CFrame = game.Workspace.Ignore.LocalCharacter.Middle.CFrame * CFrame.new(0, SpiderS["UpDistance"], 0)
end)
Rage:Slider("Up ditance (1 = 0.1)", "Up distance selector.", 1, 1000, 100,function(t)
    SpiderS["UpDistance"] = t/10
end)
Rage:Button("Big Head","Big Head.",function()
    if HeadExtends == false then
	    HeadExtends = true
	    while HeadExtends == true  do
		    for v, i in pairs(game:GetService("Workspace"):GetChildren()) do
			    if i:FindFirstChild("Humanoid") then
				    if i:FindFirstChild("HumanoidRootPart") then
					    if not i:FindFirstChild("HedsOn") then
						    if i ~= game.Players.LocalPlayer.Character then
						        local BigHeadsPart = Instance.new("Part")
                                BigHeadsPart.Name = "Head"
                                BigHeadsPart.Anchored = false
                                BigHeadsPart.CanCollide = false
                                BigHeadsPart.Transparency = 0.8
                                BigHeadsPart.Size = Vector3.new(4, 7, 3)
						        
							    local HeadsParts = BigHeadsPart:Clone()
							    HeadsParts.Parent = i
							    HeadsParts.Orientation = i.HumanoidRootPart.Orientation
											
							    local HedsOn = HedsOn:Clone()
							    HedsOn.Parent = i
											
							    local Headswelding = Instance.new("Weld")
							    Headswelding.Parent = HeadsParts
							    Headswelding.Part0 = i.HumanoidRootPart
							    Headswelding.Part1 = HeadsParts
							    
							    HeadsParts.Position = Vector3.new(i.HumanoidRootPart.Position.X,i.HumanoidRootPart.Position.Y - 0.4, i.HumanoidRootPart.Position.Z)
						    end
					    end 
				    end
			    end
		    end
		    wait(3)
	    end
	else
		HeadExtends = false
		for v, i in pairs(game:GetService("Workspace"):GetChildren()) do
			if i:FindFirstChild("Humanoid") then
				if i:FindFirstChild("HumanoidRootPart") then
					if i:FindFirstChild("HedsOn") then
						i.HedsOn:Remove()
						for x,a in pairs(i:GetChildren()) do
							if a.Name == "Head" then
								if not a:FindFirstChild("Nametag") and not a:FindFirstChild("Face") then
								    a:Remove()
								end
							end
						end
					end 
				end
			end
		end
	end
end)

local AimBots = win:Tab("AimBot", "http://www.roblox.com/asset/?id=6023426915")
AimBots:Bind("AimBot", Enum.KeyCode.Y,function()
    local Target;
	if AimbotTrue == false then
	   AimbotTrue = true
		while AimbotTrue == true do
			Target = getClosestPlayerToPlayer();
			if Target then
				local Head = Target:FindFirstChild("Head");
				if Head then
					local pos, _ = Cameras:WorldToScreenPoint(Head.Position)
					mousemoverel((pos.X - (Mouse.X))/_Aimbot["AimSmooth"], (pos.Y - (Mouse.Y))/_Aimbot["AimSmooth"])
				end
			end
			wait(0.01)
		end
	else
		AimbotTrue = false
	end
end)

AimBots:Slider("Aim ditance", "Aim distance selector.", 0, 1200, 300,function(t)
    ASSettings["AimDis"] = t
end)

AimBots:Slider("Fov radius", "Fov radius selector.", 0, 240, 120,function(t)
    fovcircle.Radius = t
end)

AimBots:Slider("Aim smothnes (10 = 1)", "Aim smothnes selector.", 1, 100, 1,function(t)
    _Aimbot["AimSmooth"] = t/10
end)


local visuals = win:Tab("Visual", "http://www.roblox.com/asset/?id=6023426915")
visuals:Label("Graphics")
visuals:Line()
visuals:Button("Leavs Remover","Leaves remove.",function()
    if LeavesRemover == false then
        LeavesRemover = true
        while LeavesRemover == true do
            for v, i in pairs(game:GetService("Workspace"):GetChildren()) do
                if i:FindFirstChild("Part") then
                    if i:FindFirstChild("top") then
                        i.top:Remove()
                    else
                        for x,b in pairs(i:GetChildren()) do
                            if b.ClassName == "MeshPart" and b.MeshId == "rbxassetid://743205322" then
                                print("Remove")
                                b:Remove()
                            end
                        end
                    end
                end
            end
        wait(5)
        end
    else
        LeavesRemover = false
    end
end)
visuals:Bind("X-Ray", Enum.KeyCode.T, function()
    if WallHackOn == false then
	    WallHackOn = true
		for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
			if v:FindFirstChild("Hitbox") then
				v.Hitbox.Transparency = 0.7
			end
		end
	else
		WallHackOn = false
		for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
			if v:FindFirstChild("Hitbox") then
				v.Hitbox.Transparency = 0
			end
		end
	end
end)
visuals:Line()
visuals:Label("Esp")
visuals:Line()
visuals:Button("Esp", "Eanble/Disable Esp", function()
    while wait(1) do
    for i, a in ipairs(workspace:GetChildren()) do
        if a:FindFirstChild("Humanoid") then
            if not a:FindFirstChild("Esp") then
                if a ~= game:GetService("Workspace").Ignore.FPSArms then
                    local b = Instance.new("Highlight",a)
                    b.Adornee = a
                    b.Name = "Esp"
                end
            end
        end
    end
end


function espteam(espname,espcolor,namecolor,i,types)
    print(espname)
	local Box = Drawing.new("Square")
	Box.Visible = false
	Box.Thickness = 1
	Box.Transparency = 1
	Box.Filled = false

	local Name = Drawing.new("Text")
	Name.Center = true
	Name.Transparency = 1
	Name.Visible = false
	
	local RootPart = i.HumanoidRootPart
	local Head = i.Head
	
	espset(espname,espcolor,namecolor,i,Box,Name,RootPart,Head,types)
	
	
end
function espset(espname,espcolor,namecolor,i,Box,Name,RootPart,Head,types)
	
	
    game:GetService("RunService").RenderStepped:Connect(function()
        
        local RootParts = RootPart
        local corotune = false
        local removeds = false
        
        if RootPart ~= nil then
            local Vector, onScreen = CurrentCamera:worldToViewportPoint(RootParts.Position)
    		local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootParts.Position)
    		local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
    		local LegPosition = worldToViewportPoint(CurrentCamera, RootParts.Position - LegOff)
    			
    		local magnitude = (_Character.character.Middle.Position - RootParts.Position).magnitude
    		    if onScreen then
        		    if magnitude < Esp["EspDistance"] and EspOn == true then
        				if i:FindFirstChild("Humanoid") then
        				    Box.Size = Vector2.new(2000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                			Box.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)
                			Box.Visible = true
                			if types == "Team" then
                			    Box.Color = Esp["TeamColor"]
                			else
                			    Box.Color = Esp["EspColors"]
                			end
        				end
            			if i:FindFirstChild("Head") then
            				Name.Size = 25
            				Name.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y)
            				Name.Text = espname
            				Name.Visible = true
            				if types == "Team" then
                			    Name.Color = Esp["TeamNameColor"]
                			else
                			    Name.Color = Esp["NameColor"]
                			end
            			else
            			    if Box ~= nil then
            			        EspList[espname] = nil
                			    Box:Remove()
                			    Name:Remove()
                			    Box = nil
            			    end
            			end
            		else
            		    if Box ~= nil then
                        	Box.Visible = false
                    	    Name.Visible = false
            		   end
            		end
            	else
            	    if Box ~= nil then
                	    Box.Visible = false
                	    Name.Visible = false
            	    end
        		end
    		end
	    end)
    end
end)
coroutine.wrap(espset)()

game:GetService("Players").PlayerAdded:Connect(function(player)
	if EspList[player.Name] then
	    EspList[player.Name] = nil
    end
end)

visuals:Slider("Esp ditance", "Esp ditance selector.", 0, 1200, 300,function(t)
    Esp["EspDistance"] = t
end)
visuals:Colorpicker("ESP Color", Color3.fromRGB(255,1,1), function(t)
    Esp["EspColors"] = t
end)
visuals:Colorpicker("Name ESP Color", Color3.fromRGB(255,1,1), function(t)
    Esp["NameColor"] = t
end)
visuals:Colorpicker("Team ESP Color", Color3.fromRGB(255,1,1), function(t)
    Esp["TeamColor"] = t
end)
visuals:Colorpicker("TeamName ESP Color", Color3.fromRGB(255,1,1), function(t)
    Esp["TeamNameColor"] = t
end)
local tab = win:Tab("Player", "http://www.roblox.com/asset/?id=6023426915")

tab:Label("Player Settings")
tab:Line()
tab:Slider("Player Fov", "Fov selector.", 0, 120, 80,function(t)
    gmt.__index = newcclosure(function(self,b)
		if b == "FieldOfView" then
			return t
		end
		return oldindex(self,b)
	end)
end)

local credits = win:Tab("Credits", "http://www.roblox.com/asset/?id=6022668888")
