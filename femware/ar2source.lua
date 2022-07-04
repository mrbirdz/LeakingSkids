local S, E = pcall(function()

    if _G.Fanya then
       return
    end
    
    _G.Fanya = "omg"
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = "FemWare"; Text = "Executing..."; Icon = "rbxassetid://9327507243"; Duration = 10 })

    repeat wait(0.5) until game:IsLoaded() and game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid")

    for _, Connection in pairs(getconnections(game:GetService("ScriptContext").Error)) do
        Connection:Disable()
    end
    
    for _, Connection in pairs(getconnections(game:GetService("LogService").MessageOut)) do
        Connection:Disable()
    end

    --Settings--
game:GetService("Players").PlayerAdded:Connect(function(_ARG_0_)
  _ARG_0_.CharacterAdded:Connect(_UPVALUE0_)
  if not _ARG_0_ then
    coroutine.wrap(_UPVALUE0_)(_ARG_0_.Character)
  end
end)
for _FORV_27_, _FORV_28_ in pairs(game:GetService("Players"):GetPlayers()) do
  if _FORV_28_ ~= game:GetService("Players").LocalPlayer then
    (function(_ARG_0_)
      _ARG_0_.CharacterAdded:Connect(_UPVALUE0_)
      if not _ARG_0_ then
        coroutine.wrap(_UPVALUE0_)(_ARG_0_.Character)
      end
    end)(_FORV_28_)
  end
end
game:GetService("Players").PlayerRemoving:Connect(function(_ARG_0_)
  if _UPVALUE0_[_ARG_0_] then
    _UPVALUE0_[_ARG_0_]:Destroy()
    _UPVALUE0_[_ARG_0_] = nil
  end
end)
game:GetService("RunService").Heartbeat:Connect(function()
  _UPVALUE0_ = game:GetService("Workspace").CurrentCamera
  if game or game then
  end
  for _FORV_3_, _FORV_4_ in ipairs(_UPVALUE1_.Objects) do
    if _FORV_4_.Update and ipairs(_UPVALUE1_.Objects) then
      game:GetService("Players").LocalPlayer:Kick(pcall(_FORV_4_.Update, _FORV_4_))
    end
  end
end)
if nil then
  game:GetService("Players").LocalPlayer:Kick(pcall(function()
    game:GetService("Workspace").Map.Shared.Randoms.ChildAdded:Connect(function(_ARG_0_)
      if _UPVALUE0_.Heli == true and string.find(_ARG_0_.Name, "Seahawk") then
        _UPVALUE1_:SetCore("SendNotification", {
          Title = "Heli Crashed!",
          Text = _ARG_0_.Name .. " has summoned.",
          Icon = "rbxassetid://9327507243",
          Duration = 60
        })
        wait(5)
        if not _ARG_0_ then
          coroutine.wrap(_UPVALUE2_)(_ARG_0_)
        end
      end
    end)
  end))
end
game:GetService("UserInputService").InputBegan:Connect(function(_ARG_0_)
  if not _ARG_0_ and _ARG_0_.KeyCode == _UPVALUE0_.AimlockToggleKey then
    if not _UPVALUE0_.On then
      pcall(function()
        if _UPVALUE0_() ~= nil then
          _UPVALUE1_ = _UPVALUE0_()
          _UPVALUE2_.On = true
          _UPVALUE3_("FemWare", "Target: " .. tostring(_UPVALUE1_), "", 3)
        end
      end)
    else
      _UPVALUE0_.On = false
      _UPVALUE2_ = nil
      _UPVALUE3_("FemWare", "Disabled.", "", 0.5)
    end
  end
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt", game:GetService("Players"):GetPlayers()))():Window("FemWare | Apocalyse Rising 2"):Server("FemWare", "rbxassetid://9327507243"):Channel("Aimbot"):Toggle("Toggle Aimbot", {
  Enabled = false,
  HitPart = "Head",
  PredictionVelocity = 30,
  TeamCheck = false,
  AimRadius = 50,
  AimlockToggleKey = Enum.KeyCode.E,
  On = false,
  Height = 0.6,
  Random = false,
  Hits = {
    "Head",
    "UpperTorso",
    "LowerTorso",
    "LeftFoot",
    "LeftLowerLeg",
    "LeftUpperLeg",
    "RightFoot",
    "RightLowerLeg",
    "RightUpperLeg",
    "LeftHand",
    "LeftLowerArm",
    "LeftLowerArm",
    "RightHand",
    "RightLowerArm",
    "RightLowerArm",
    "RightUpperArm",
    "RootPart",
    "Unknown"
  }
}.Enabled, function(_ARG_0_)
  _UPVALUE0_.Enabled = _ARG_0_
  if _ARG_0_ == true then
    _UPVALUE1_ = game:GetService("RunService").RenderStepped:Connect(function()
      pcall(function()
        if not nil and _UPVALUE0_.On and _UPVALUE1_ and _UPVALUE1_.Character and _UPVALUE1_.Character:FindFirstChild(_UPVALUE0_.HitPart) then
          if _UPVALUE0_.PredictionVelocity == 100 then
            game:GetService("Workspace").CurrentCamera.CFrame = CFrame.new(game:GetService("Workspace").CurrentCamera.CFrame.p, 3 + 4)
          elseif CFrame.new(game:GetService("Workspace").CurrentCamera.CFrame.p, 3 + 4) then
            game:GetService("Workspace").CurrentCamera.CFrame = CFrame.new(game:GetService("Workspace").CurrentCamera.CFrame.p, 3 + 4)
          elseif not _UPVALUE2_ then
            _UPVALUE3_ = _UPVALUE0_.Hits[math.random(1, #_UPVALUE0_.Hits)]
            if _UPVALUE1_.Character:FindFirstChild(_UPVALUE3_) then
              _UPVALUE2_ = true
              wait(0.5)
              _UPVALUE2_ = false
            end
          else
            game:GetService("Workspace").CurrentCamera.CFrame = CFrame.new(game:GetService("Workspace").CurrentCamera.CFrame.p, 3 + 4)
          end
        end
      end)
    end)
  elseif game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
      if not nil and _UPVALUE0_.On and _UPVALUE1_ and _UPVALUE1_.Character and _UPVALUE1_.Character:FindFirstChild(_UPVALUE0_.HitPart) then
        if _UPVALUE0_.PredictionVelocity == 100 then
          game:GetService("Workspace").CurrentCamera.CFrame = CFrame.new(game:GetService("Workspace").CurrentCamera.CFrame.p, 3 + 4)
        elseif CFrame.new(game:GetService("Workspace").CurrentCamera.CFrame.p, 3 + 4) then
          game:GetService("Workspace").CurrentCamera.CFrame = CFrame.new(game:GetService("Workspace").CurrentCamera.CFrame.p, 3 + 4)
        elseif not _UPVALUE2_ then
          _UPVALUE3_ = _UPVALUE0_.Hits[math.random(1, #_UPVALUE0_.Hits)]
          if _UPVALUE1_.Character:FindFirstChild(_UPVALUE3_) then
            _UPVALUE2_ = true
            wait(0.5)
            _UPVALUE2_ = false
          end
        else
          game:GetService("Workspace").CurrentCamera.CFrame = CFrame.new(game:GetService("Workspace").CurrentCamera.CFrame.p, 3 + 4)
        end
      end
    end)
  end) and not _ARG_0_ then
    _UPVALUE1_:Disconnect()
    _UPVALUE1_ = nil
  end
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt", game:GetService("Players"):GetPlayers()))():Window("FemWare | Apocalyse Rising 2"):Server("FemWare", "rbxassetid://9327507243"):Channel("Aimbot"):Slider("Prediction", 1, 100, {
  Enabled = false,
  HitPart = "Head",
  PredictionVelocity = 30,
  TeamCheck = false,
  AimRadius = 50,
  AimlockToggleKey = Enum.KeyCode.E,
  On = false,
  Height = 0.6,
  Random = false,
  Hits = {
    "Head",
    "UpperTorso",
    "LowerTorso",
    "LeftFoot",
    "LeftLowerLeg",
    "LeftUpperLeg",
    "RightFoot",
    "RightLowerLeg",
    "RightUpperLeg",
    "LeftHand",
    "LeftLowerArm",
    "LeftLowerArm",
    "RightHand",
    "RightLowerArm",
    "RightLowerArm",
    "RightUpperArm",
    "RootPart",
    "Unknown"
  }
}.PredictionVelocity, function(_ARG_0_)
  _UPVALUE0_.PredictionVelocity = _ARG_0_
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt", game:GetService("Players"):GetPlayers()))():Window("FemWare | Apocalyse Rising 2"):Server("FemWare", "rbxassetid://9327507243"):Channel("Aimbot"):Toggle("Randomize", {
  Enabled = false,
  HitPart = "Head",
  PredictionVelocity = 30,
  TeamCheck = false,
  AimRadius = 50,
  AimlockToggleKey = Enum.KeyCode.E,
  On = false,
  Height = 0.6,
  Random = false,
  Hits = {
    "Head",
    "UpperTorso",
    "LowerTorso",
    "LeftFoot",
    "LeftLowerLeg",
    "LeftUpperLeg",
    "RightFoot",
    "RightLowerLeg",
    "RightUpperLeg",
    "LeftHand",
    "LeftLowerArm",
    "LeftLowerArm",
    "RightHand",
    "RightLowerArm",
    "RightLowerArm",
    "RightUpperArm",
    "RootPart",
    "Unknown"
  }
}.Random, function(_ARG_0_)
  _UPVALUE0_.Random = _ARG_0_
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt", game:GetService("Players"):GetPlayers()))():Window("FemWare | Apocalyse Rising 2"):Server("FemWare", "rbxassetid://9327507243"):Channel("Aimbot"):Slider("Height", -20, 20, {
  Enabled = false,
  HitPart = "Head",
  PredictionVelocity = 30,
  TeamCheck = false,
  AimRadius = 50,
  AimlockToggleKey = Enum.KeyCode.E,
  On = false,
  Height = 0.6,
  Random = false,
  Hits = {
    "Head",
    "UpperTorso",
    "LowerTorso",
    "LeftFoot",
    "LeftLowerLeg",
    "LeftUpperLeg",
    "RightFoot",
    "RightLowerLeg",
    "RightUpperLeg",
    "LeftHand",
    "LeftLowerArm",
    "LeftLowerArm",
    "RightHand",
    "RightLowerArm",
    "RightLowerArm",
    "RightUpperArm",
    "RootPart",
    "Unknown"
  }
}.Height, function(_ARG_0_)
  _UPVALUE0_.Height = _ARG_0_ / 10
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt", game:GetService("Players"):GetPlayers()))():Window("FemWare | Apocalyse Rising 2"):Server("FemWare", "rbxassetid://9327507243"):Channel("Aimbot"):Dropdown("Toggle Key", {
  "X",
  "C",
  "F",
  "E",
  "G",
  "Q",
  "LeftControl"
}, function(_ARG_0_)
  if _ARG_0_ == "X" then
    _UPVALUE0_.AimlockToggleKey = Enum.KeyCode.X
  elseif _ARG_0_ == "C" then
    _UPVALUE0_.AimlockToggleKey = Enum.KeyCode.C
  elseif _ARG_0_ == "F" then
    _UPVALUE0_.AimlockToggleKey = Enum.KeyCode.F
  elseif _ARG_0_ == "E" then
    _UPVALUE0_.AimlockToggleKey = Enum.KeyCode.E
  elseif _ARG_0_ == "G" then
    _UPVALUE0_.AimlockToggleKey = Enum.KeyCode.G
  elseif _ARG_0_ == "Q" then
    _UPVALUE0_.AimlockToggleKey = Enum.KeyCode.Q
  elseif _ARG_0_ == "LeftControl" then
    _UPVALUE0_.AimlockToggleKey = Enum.KeyCode.LeftControl
  end
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt", game:GetService("Players"):GetPlayers()))():Window("FemWare | Apocalyse Rising 2"):Server("FemWare", "rbxassetid://9327507243"):Channel("Aimbot"):Dropdown("Aim Part", {
  "Head",
  "HumanoidRootPart",
  "UpperTorso",
  "LowerTorso",
  "RightUpperLeg",
  "LeftUpperLeg"
}, function(_ARG_0_)
  if _ARG_0_ == "Head" then
    _UPVALUE0_.HitPart = "Head"
  elseif _ARG_0_ == "HumanoidRootPart" then
    _UPVALUE0_.HitPart = "HumanoidRootPart"
  elseif _ARG_0_ == "UpperTorso" then
    _UPVALUE0_.HitPart = "UpperTorso"
  elseif _ARG_0_ == "LowerTorso" then
    _UPVALUE0_.HitPart = "LowerTorso"
  elseif _ARG_0_ == "RightUpperLeg" then
    _UPVALUE0_.HitPart = "RightUpperLeg"
  elseif _ARG_0_ == "LeftUpperLeg" then
    _UPVALUE0_.HitPart = "LeftUpperLeg"
  end
end)
game:GetService("Players").PlayerAdded:Connect(function(_ARG_0_)
  _UPVALUE0_(_ARG_0_)
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt", game:GetService("Players"):GetPlayers()))():Window("FemWare | Apocalyse Rising 2"):Server("FemWare", "rbxassetid://9327507243"):Channel("Local"):Toggle("Staff Detecter", true, function(_ARG_0_)
  if _ARG_0_ == true then
    for _FORV_4_, _FORV_5_ in pairs(game:GetService("Players"):GetPlayers()) do
      _UPVALUE0_(_FORV_5_)
    end
  end
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt", game:GetService("Players"):GetPlayers()))():Window("FemWare | Apocalyse Rising 2"):Server("FemWare", "rbxassetid://9327507243"):Channel("Local"):Toggle("Ambient", false, function(_ARG_0_)
  if not nil then
    _UPVALUE0_ = game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
      if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) then
        game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
      end
    end)
  elseif not _ARG_0_ and not _ARG_0_ then
    _UPVALUE0_:Disconnect()
    _UPVALUE0_ = nil
  end
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt", game:GetService("Players"):GetPlayers()))():Window("FemWare | Apocalyse Rising 2"):Server("FemWare", "rbxassetid://9327507243"):Channel("Local"):Toggle("ClockTime", false, function(_ARG_0_)
  if not nil then
    _UPVALUE0_ = game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
      if game:GetService("Lighting").ClockTime ~= _UPVALUE0_ then
        game:GetService("Lighting").ClockTime = _UPVALUE0_
      end
    end)
  elseif not _ARG_0_ and _UPVALUE0_ then
    _UPVALUE0_:Disconnect()
    _UPVALUE0_ = nil
  end
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt", game:GetService("Players"):GetPlayers()))():Window("FemWare | Apocalyse Rising 2"):Server("FemWare", "rbxassetid://9327507243"):Channel("Local"):Slider("ClockTime", 0, 24, 12, function(_ARG_0_)
  _UPVALUE0_ = _ARG_0_
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt", game:GetService("Players"):GetPlayers()))():Window("FemWare | Apocalyse Rising 2"):Server("FemWare", "rbxassetid://9327507243"):Channel("Player ESP"):Toggle("Enable ESP", {
  Enabled = false,
  Boxes = false,
  BoxShift = CFrame.new(0, -1.5, 0),
  LoxShift = CFrame.new(0, -7, 0),
  BoxSize = Vector3.new(4, 6, 0),
  Color = Color3.fromRGB(255, 255, 255),
  Distance = 0,
  FaceCamera = false,
  Names = false,
  TeamColor = true,
  Thickness = 1,
  AttachShift = 1,
  TeamMates = true,
  Players = true,
  Highlights = false,
  Tools = false,
  Heli = false,
  HighlightType = Enum.HighlightDepthMode.Occluded,
  Objects = setmetatable({}, {__mode = "kv"}),
  Overrides = {},
  GetTeam = function(_ARG_0_, _ARG_1_)
    if _ARG_0_.Overrides.GetTeam then
      return _ARG_0_.Overrides.GetTeam(_ARG_1_)
    end
    return _ARG_1_ and _ARG_1_.Team
  end,
  IsTeamMate = function(_ARG_0_, _ARG_1_)
    if _ARG_0_.Overrides.IsTeamMate then
      return _ARG_0_.Overrides.IsTeamMate(_ARG_1_)
    end
    return _ARG_0_:GetTeam(_ARG_1_) == _ARG_0_:GetTeam(_UPVALUE0_)
  end,
  GetColor = function(_ARG_0_, _ARG_1_)
    if not _ARG_1_ then
      return _ARG_0_.Overrides.GetColor(_ARG_1_)
    end
    return not _ARG_0_:GetPlrFromChar(_ARG_1_).Team or _ARG_1_ or _ARG_1_ or _ARG_0_.Color
  end,
  GetPlrFromChar = function(_ARG_0_, _ARG_1_)
    if not _ARG_1_ then
      return _ARG_0_.Overrides.GetPlrFromChar(_ARG_1_)
    end
    return _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_)
  end,
  Toggle = function(_ARG_0_, _ARG_1_)
    _ARG_0_.Enabled = _ARG_1_
    if not _ARG_1_ then
      for _FORV_5_, _FORV_6_ in pairs(_ARG_0_.Objects) do
        if _FORV_6_.Type == "Box" then
          if not _ARG_1_ then
            _FORV_6_:Destroy()
          else
            for _FORV_10_, _FORV_11_ in pairs(_FORV_6_.Components) do
              _FORV_11_.Visible = false
            end
          end
        end
      end
    end
  end,
  GetBox = function(_ARG_0_, _ARG_1_)
    return _ARG_0_.Objects[_ARG_1_]
  end,
  AddObjectListener = function(_ARG_0_, _ARG_1_, _ARG_2_)
    if not _ARG_1_ then
      _ARG_1_.DescendantAdded:Connect(function(_ARG_0_)
        if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
          if _UPVALUE0_.OnAdded then
            coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
              PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
              Color = _UPVALUE0_.Color,
              ColorDynamic = _UPVALUE0_.ColorDynamic,
              Name = _UPVALUE0_.CustomName,
              IsEnabled = _UPVALUE0_.IsEnabled,
              RenderInNil = _UPVALUE0_.RenderInNil
            })))
          end
        end
      end)
      for _FORV_7_, _FORV_8_ in pairs(_ARG_1_:GetDescendants()) do
        coroutine.wrap(function(_ARG_0_)
          if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
            if _UPVALUE0_.OnAdded then
              coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
                PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
                Color = _UPVALUE0_.Color,
                ColorDynamic = _UPVALUE0_.ColorDynamic,
                Name = _UPVALUE0_.CustomName,
                IsEnabled = _UPVALUE0_.IsEnabled,
                RenderInNil = _UPVALUE0_.RenderInNil
              })))
            end
          end
        end)(_FORV_8_)
      end
    else
      _ARG_1_.ChildAdded:Connect(function(_ARG_0_)
        if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
          if _UPVALUE0_.OnAdded then
            coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
              PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
              Color = _UPVALUE0_.Color,
              ColorDynamic = _UPVALUE0_.ColorDynamic,
              Name = _UPVALUE0_.CustomName,
              IsEnabled = _UPVALUE0_.IsEnabled,
              RenderInNil = _UPVALUE0_.RenderInNil
            })))
          end
        end
      end)
      for _FORV_7_, _FORV_8_ in pairs(_ARG_1_:GetChildren()) do
        coroutine.wrap(function(_ARG_0_)
          if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
            if _UPVALUE0_.OnAdded then
              coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
                PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
                Color = _UPVALUE0_.Color,
                ColorDynamic = _UPVALUE0_.ColorDynamic,
                Name = _UPVALUE0_.CustomName,
                IsEnabled = _UPVALUE0_.IsEnabled,
                RenderInNil = _UPVALUE0_.RenderInNil
              })))
            end
          end
        end)(_FORV_8_)
      end
    end
  end,
  Add = function(_ARG_0_, _ARG_1_, _ARG_2_)
    if _ARG_1_ and not _ARG_2_.RenderInNil then
      return
    end
    if _ARG_1_ then
    end
    if _ARG_1_ then
    end
    if _ARG_1_ then
    end
    if _ARG_0_:GetBox(_ARG_1_) then
      _ARG_0_:GetBox(_ARG_1_):Destroy()
    end
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Quad = _UPVALUE2_("Quad", {
      Thickness = _ARG_0_.Thickness,
      Color = color,
      Transparency = 1,
      Filled = false,
      Visible = _ARG_0_.Enabled and _ARG_0_.Boxes
    })
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Name = _UPVALUE2_("Text", {
      Text = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Name,
      Color = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Color,
      Center = true,
      Outline = true,
      Size = 16,
      Visible = _ARG_0_.Enabled and _ARG_0_.Names
    })
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Distance = _UPVALUE2_("Text", {
      Color = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Color,
      Center = true,
      Outline = true,
      Size = 16,
      Visible = _ARG_0_.Enabled and _ARG_0_.Distance
    })
    if not _ARG_1_ then
    end
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Tool = _UPVALUE2_("Text", {
      Color = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Color,
      Center = true,
      Outline = true,
      Size = 16,
      Visible = _ARG_0_.Tools
    })
    _ARG_0_.Objects[_ARG_1_] = setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_)
    _ARG_1_.AncestryChanged:Connect(function(_ARG_0_, _ARG_1_)
      if _ARG_1_ == nil and _UPVALUE0_.AutoRemove ~= false then
        _UPVALUE1_:Destroy()
      end
    end)
    _ARG_1_:GetPropertyChangedSignal("Parent"):Connect(function()
      if _UPVALUE0_.Parent == nil and _UPVALUE1_.AutoRemove ~= false then
        _UPVALUE2_:Destroy()
      end
    end)
    if not _ARG_1_ then
      _ARG_1_:FindFirstChildOfClass("Humanoid").Died:Connect(function()
        if _UPVALUE0_.AutoRemove ~= false then
          _UPVALUE1_:Destroy()
        end
      end)
    end
    return (setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_))
  end
}.Enabled, function(_ARG_0_)
  _UPVALUE0_:Toggle(_ARG_0_)
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt", game:GetService("Players"):GetPlayers()))():Window("FemWare | Apocalyse Rising 2"):Server("FemWare", "rbxassetid://9327507243"):Channel("Player ESP"):Toggle("Boxes", {
  Enabled = false,
  Boxes = false,
  BoxShift = CFrame.new(0, -1.5, 0),
  LoxShift = CFrame.new(0, -7, 0),
  BoxSize = Vector3.new(4, 6, 0),
  Color = Color3.fromRGB(255, 255, 255),
  Distance = 0,
  FaceCamera = false,
  Names = false,
  TeamColor = true,
  Thickness = 1,
  AttachShift = 1,
  TeamMates = true,
  Players = true,
  Highlights = false,
  Tools = false,
  Heli = false,
  HighlightType = Enum.HighlightDepthMode.Occluded,
  Objects = setmetatable({}, {__mode = "kv"}),
  Overrides = {},
  GetTeam = function(_ARG_0_, _ARG_1_)
    if _ARG_0_.Overrides.GetTeam then
      return _ARG_0_.Overrides.GetTeam(_ARG_1_)
    end
    return _ARG_1_ and _ARG_1_.Team
  end,
  IsTeamMate = function(_ARG_0_, _ARG_1_)
    if _ARG_0_.Overrides.IsTeamMate then
      return _ARG_0_.Overrides.IsTeamMate(_ARG_1_)
    end
    return _ARG_0_:GetTeam(_ARG_1_) == _ARG_0_:GetTeam(_UPVALUE0_)
  end,
  GetColor = function(_ARG_0_, _ARG_1_)
    if not _ARG_1_ then
      return _ARG_0_.Overrides.GetColor(_ARG_1_)
    end
    return not _ARG_0_:GetPlrFromChar(_ARG_1_).Team or _ARG_1_ or _ARG_1_ or _ARG_0_.Color
  end,
  GetPlrFromChar = function(_ARG_0_, _ARG_1_)
    if not _ARG_1_ then
      return _ARG_0_.Overrides.GetPlrFromChar(_ARG_1_)
    end
    return _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_)
  end,
  Toggle = function(_ARG_0_, _ARG_1_)
    _ARG_0_.Enabled = _ARG_1_
    if not _ARG_1_ then
      for _FORV_5_, _FORV_6_ in pairs(_ARG_0_.Objects) do
        if _FORV_6_.Type == "Box" then
          if not _ARG_1_ then
            _FORV_6_:Destroy()
          else
            for _FORV_10_, _FORV_11_ in pairs(_FORV_6_.Components) do
              _FORV_11_.Visible = false
            end
          end
        end
      end
    end
  end,
  GetBox = function(_ARG_0_, _ARG_1_)
    return _ARG_0_.Objects[_ARG_1_]
  end,
  AddObjectListener = function(_ARG_0_, _ARG_1_, _ARG_2_)
    if not _ARG_1_ then
      _ARG_1_.DescendantAdded:Connect(function(_ARG_0_)
        if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
          if _UPVALUE0_.OnAdded then
            coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
              PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
              Color = _UPVALUE0_.Color,
              ColorDynamic = _UPVALUE0_.ColorDynamic,
              Name = _UPVALUE0_.CustomName,
              IsEnabled = _UPVALUE0_.IsEnabled,
              RenderInNil = _UPVALUE0_.RenderInNil
            })))
          end
        end
      end)
      for _FORV_7_, _FORV_8_ in pairs(_ARG_1_:GetDescendants()) do
        coroutine.wrap(function(_ARG_0_)
          if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
            if _UPVALUE0_.OnAdded then
              coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
                PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
                Color = _UPVALUE0_.Color,
                ColorDynamic = _UPVALUE0_.ColorDynamic,
                Name = _UPVALUE0_.CustomName,
                IsEnabled = _UPVALUE0_.IsEnabled,
                RenderInNil = _UPVALUE0_.RenderInNil
              })))
            end
          end
        end)(_FORV_8_)
      end
    else
      _ARG_1_.ChildAdded:Connect(function(_ARG_0_)
        if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
          if _UPVALUE0_.OnAdded then
            coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
              PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
              Color = _UPVALUE0_.Color,
              ColorDynamic = _UPVALUE0_.ColorDynamic,
              Name = _UPVALUE0_.CustomName,
              IsEnabled = _UPVALUE0_.IsEnabled,
              RenderInNil = _UPVALUE0_.RenderInNil
            })))
          end
        end
      end)
      for _FORV_7_, _FORV_8_ in pairs(_ARG_1_:GetChildren()) do
        coroutine.wrap(function(_ARG_0_)
          if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
            if _UPVALUE0_.OnAdded then
              coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
                PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
                Color = _UPVALUE0_.Color,
                ColorDynamic = _UPVALUE0_.ColorDynamic,
                Name = _UPVALUE0_.CustomName,
                IsEnabled = _UPVALUE0_.IsEnabled,
                RenderInNil = _UPVALUE0_.RenderInNil
              })))
            end
          end
        end)(_FORV_8_)
      end
    end
  end,
  Add = function(_ARG_0_, _ARG_1_, _ARG_2_)
    if _ARG_1_ and not _ARG_2_.RenderInNil then
      return
    end
    if _ARG_1_ then
    end
    if _ARG_1_ then
    end
    if _ARG_1_ then
    end
    if _ARG_0_:GetBox(_ARG_1_) then
      _ARG_0_:GetBox(_ARG_1_):Destroy()
    end
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Quad = _UPVALUE2_("Quad", {
      Thickness = _ARG_0_.Thickness,
      Color = color,
      Transparency = 1,
      Filled = false,
      Visible = _ARG_0_.Enabled and _ARG_0_.Boxes
    })
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Name = _UPVALUE2_("Text", {
      Text = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Name,
      Color = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Color,
      Center = true,
      Outline = true,
      Size = 16,
      Visible = _ARG_0_.Enabled and _ARG_0_.Names
    })
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Distance = _UPVALUE2_("Text", {
      Color = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Color,
      Center = true,
      Outline = true,
      Size = 16,
      Visible = _ARG_0_.Enabled and _ARG_0_.Distance
    })
    if not _ARG_1_ then
    end
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Tool = _UPVALUE2_("Text", {
      Color = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Color,
      Center = true,
      Outline = true,
      Size = 16,
      Visible = _ARG_0_.Tools
    })
    _ARG_0_.Objects[_ARG_1_] = setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_)
    _ARG_1_.AncestryChanged:Connect(function(_ARG_0_, _ARG_1_)
      if _ARG_1_ == nil and _UPVALUE0_.AutoRemove ~= false then
        _UPVALUE1_:Destroy()
      end
    end)
    _ARG_1_:GetPropertyChangedSignal("Parent"):Connect(function()
      if _UPVALUE0_.Parent == nil and _UPVALUE1_.AutoRemove ~= false then
        _UPVALUE2_:Destroy()
      end
    end)
    if not _ARG_1_ then
      _ARG_1_:FindFirstChildOfClass("Humanoid").Died:Connect(function()
        if _UPVALUE0_.AutoRemove ~= false then
          _UPVALUE1_:Destroy()
        end
      end)
    end
    return (setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_))
  end
}.Boxes, function(_ARG_0_)
  _UPVALUE0_.Boxes = _ARG_0_
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt", game:GetService("Players"):GetPlayers()))():Window("FemWare | Apocalyse Rising 2"):Server("FemWare", "rbxassetid://9327507243"):Channel("Player ESP"):Toggle("FaceCamera", {
  Enabled = false,
  Boxes = false,
  BoxShift = CFrame.new(0, -1.5, 0),
  LoxShift = CFrame.new(0, -7, 0),
  BoxSize = Vector3.new(4, 6, 0),
  Color = Color3.fromRGB(255, 255, 255),
  Distance = 0,
  FaceCamera = false,
  Names = false,
  TeamColor = true,
  Thickness = 1,
  AttachShift = 1,
  TeamMates = true,
  Players = true,
  Highlights = false,
  Tools = false,
  Heli = false,
  HighlightType = Enum.HighlightDepthMode.Occluded,
  Objects = setmetatable({}, {__mode = "kv"}),
  Overrides = {},
  GetTeam = function(_ARG_0_, _ARG_1_)
    if _ARG_0_.Overrides.GetTeam then
      return _ARG_0_.Overrides.GetTeam(_ARG_1_)
    end
    return _ARG_1_ and _ARG_1_.Team
  end,
  IsTeamMate = function(_ARG_0_, _ARG_1_)
    if _ARG_0_.Overrides.IsTeamMate then
      return _ARG_0_.Overrides.IsTeamMate(_ARG_1_)
    end
    return _ARG_0_:GetTeam(_ARG_1_) == _ARG_0_:GetTeam(_UPVALUE0_)
  end,
  GetColor = function(_ARG_0_, _ARG_1_)
    if not _ARG_1_ then
      return _ARG_0_.Overrides.GetColor(_ARG_1_)
    end
    return not _ARG_0_:GetPlrFromChar(_ARG_1_).Team or _ARG_1_ or _ARG_1_ or _ARG_0_.Color
  end,
  GetPlrFromChar = function(_ARG_0_, _ARG_1_)
    if not _ARG_1_ then
      return _ARG_0_.Overrides.GetPlrFromChar(_ARG_1_)
    end
    return _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_)
  end,
  Toggle = function(_ARG_0_, _ARG_1_)
    _ARG_0_.Enabled = _ARG_1_
    if not _ARG_1_ then
      for _FORV_5_, _FORV_6_ in pairs(_ARG_0_.Objects) do
        if _FORV_6_.Type == "Box" then
          if not _ARG_1_ then
            _FORV_6_:Destroy()
          else
            for _FORV_10_, _FORV_11_ in pairs(_FORV_6_.Components) do
              _FORV_11_.Visible = false
            end
          end
        end
      end
    end
  end,
  GetBox = function(_ARG_0_, _ARG_1_)
    return _ARG_0_.Objects[_ARG_1_]
  end,
  AddObjectListener = function(_ARG_0_, _ARG_1_, _ARG_2_)
    if not _ARG_1_ then
      _ARG_1_.DescendantAdded:Connect(function(_ARG_0_)
        if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
          if _UPVALUE0_.OnAdded then
            coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
              PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
              Color = _UPVALUE0_.Color,
              ColorDynamic = _UPVALUE0_.ColorDynamic,
              Name = _UPVALUE0_.CustomName,
              IsEnabled = _UPVALUE0_.IsEnabled,
              RenderInNil = _UPVALUE0_.RenderInNil
            })))
          end
        end
      end)
      for _FORV_7_, _FORV_8_ in pairs(_ARG_1_:GetDescendants()) do
        coroutine.wrap(function(_ARG_0_)
          if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
            if _UPVALUE0_.OnAdded then
              coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
                PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
                Color = _UPVALUE0_.Color,
                ColorDynamic = _UPVALUE0_.ColorDynamic,
                Name = _UPVALUE0_.CustomName,
                IsEnabled = _UPVALUE0_.IsEnabled,
                RenderInNil = _UPVALUE0_.RenderInNil
              })))
            end
          end
        end)(_FORV_8_)
      end
    else
      _ARG_1_.ChildAdded:Connect(function(_ARG_0_)
        if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
          if _UPVALUE0_.OnAdded then
            coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
              PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
              Color = _UPVALUE0_.Color,
              ColorDynamic = _UPVALUE0_.ColorDynamic,
              Name = _UPVALUE0_.CustomName,
              IsEnabled = _UPVALUE0_.IsEnabled,
              RenderInNil = _UPVALUE0_.RenderInNil
            })))
          end
        end
      end)
      for _FORV_7_, _FORV_8_ in pairs(_ARG_1_:GetChildren()) do
        coroutine.wrap(function(_ARG_0_)
          if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
            if _UPVALUE0_.OnAdded then
              coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
                PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
                Color = _UPVALUE0_.Color,
                ColorDynamic = _UPVALUE0_.ColorDynamic,
                Name = _UPVALUE0_.CustomName,
                IsEnabled = _UPVALUE0_.IsEnabled,
                RenderInNil = _UPVALUE0_.RenderInNil
              })))
            end
          end
        end)(_FORV_8_)
      end
    end
  end,
  Add = function(_ARG_0_, _ARG_1_, _ARG_2_)
    if _ARG_1_ and not _ARG_2_.RenderInNil then
      return
    end
    if _ARG_1_ then
    end
    if _ARG_1_ then
    end
    if _ARG_1_ then
    end
    if _ARG_0_:GetBox(_ARG_1_) then
      _ARG_0_:GetBox(_ARG_1_):Destroy()
    end
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Quad = _UPVALUE2_("Quad", {
      Thickness = _ARG_0_.Thickness,
      Color = color,
      Transparency = 1,
      Filled = false,
      Visible = _ARG_0_.Enabled and _ARG_0_.Boxes
    })
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Name = _UPVALUE2_("Text", {
      Text = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Name,
      Color = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Color,
      Center = true,
      Outline = true,
      Size = 16,
      Visible = _ARG_0_.Enabled and _ARG_0_.Names
    })
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Distance = _UPVALUE2_("Text", {
      Color = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Color,
      Center = true,
      Outline = true,
      Size = 16,
      Visible = _ARG_0_.Enabled and _ARG_0_.Distance
    })
    if not _ARG_1_ then
    end
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Tool = _UPVALUE2_("Text", {
      Color = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Color,
      Center = true,
      Outline = true,
      Size = 16,
      Visible = _ARG_0_.Tools
    })
    _ARG_0_.Objects[_ARG_1_] = setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_)
    _ARG_1_.AncestryChanged:Connect(function(_ARG_0_, _ARG_1_)
      if _ARG_1_ == nil and _UPVALUE0_.AutoRemove ~= false then
        _UPVALUE1_:Destroy()
      end
    end)
    _ARG_1_:GetPropertyChangedSignal("Parent"):Connect(function()
      if _UPVALUE0_.Parent == nil and _UPVALUE1_.AutoRemove ~= false then
        _UPVALUE2_:Destroy()
      end
    end)
    if not _ARG_1_ then
      _ARG_1_:FindFirstChildOfClass("Humanoid").Died:Connect(function()
        if _UPVALUE0_.AutoRemove ~= false then
          _UPVALUE1_:Destroy()
        end
      end)
    end
    return (setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_))
  end
}.FaceCamera, function(_ARG_0_)
  _UPVALUE0_.FaceCamera = _ARG_0_
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt", game:GetService("Players"):GetPlayers()))():Window("FemWare | Apocalyse Rising 2"):Server("FemWare", "rbxassetid://9327507243"):Channel("Player ESP"):Toggle("Names", {
  Enabled = false,
  Boxes = false,
  BoxShift = CFrame.new(0, -1.5, 0),
  LoxShift = CFrame.new(0, -7, 0),
  BoxSize = Vector3.new(4, 6, 0),
  Color = Color3.fromRGB(255, 255, 255),
  Distance = 0,
  FaceCamera = false,
  Names = false,
  TeamColor = true,
  Thickness = 1,
  AttachShift = 1,
  TeamMates = true,
  Players = true,
  Highlights = false,
  Tools = false,
  Heli = false,
  HighlightType = Enum.HighlightDepthMode.Occluded,
  Objects = setmetatable({}, {__mode = "kv"}),
  Overrides = {},
  GetTeam = function(_ARG_0_, _ARG_1_)
    if _ARG_0_.Overrides.GetTeam then
      return _ARG_0_.Overrides.GetTeam(_ARG_1_)
    end
    return _ARG_1_ and _ARG_1_.Team
  end,
  IsTeamMate = function(_ARG_0_, _ARG_1_)
    if _ARG_0_.Overrides.IsTeamMate then
      return _ARG_0_.Overrides.IsTeamMate(_ARG_1_)
    end
    return _ARG_0_:GetTeam(_ARG_1_) == _ARG_0_:GetTeam(_UPVALUE0_)
  end,
  GetColor = function(_ARG_0_, _ARG_1_)
    if not _ARG_1_ then
      return _ARG_0_.Overrides.GetColor(_ARG_1_)
    end
    return not _ARG_0_:GetPlrFromChar(_ARG_1_).Team or _ARG_1_ or _ARG_1_ or _ARG_0_.Color
  end,
  GetPlrFromChar = function(_ARG_0_, _ARG_1_)
    if not _ARG_1_ then
      return _ARG_0_.Overrides.GetPlrFromChar(_ARG_1_)
    end
    return _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_)
  end,
  Toggle = function(_ARG_0_, _ARG_1_)
    _ARG_0_.Enabled = _ARG_1_
    if not _ARG_1_ then
      for _FORV_5_, _FORV_6_ in pairs(_ARG_0_.Objects) do
        if _FORV_6_.Type == "Box" then
          if not _ARG_1_ then
            _FORV_6_:Destroy()
          else
            for _FORV_10_, _FORV_11_ in pairs(_FORV_6_.Components) do
              _FORV_11_.Visible = false
            end
          end
        end
      end
    end
  end,
  GetBox = function(_ARG_0_, _ARG_1_)
    return _ARG_0_.Objects[_ARG_1_]
  end,
  AddObjectListener = function(_ARG_0_, _ARG_1_, _ARG_2_)
    if not _ARG_1_ then
      _ARG_1_.DescendantAdded:Connect(function(_ARG_0_)
        if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
          if _UPVALUE0_.OnAdded then
            coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
              PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
              Color = _UPVALUE0_.Color,
              ColorDynamic = _UPVALUE0_.ColorDynamic,
              Name = _UPVALUE0_.CustomName,
              IsEnabled = _UPVALUE0_.IsEnabled,
              RenderInNil = _UPVALUE0_.RenderInNil
            })))
          end
        end
      end)
      for _FORV_7_, _FORV_8_ in pairs(_ARG_1_:GetDescendants()) do
        coroutine.wrap(function(_ARG_0_)
          if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
            if _UPVALUE0_.OnAdded then
              coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
                PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
                Color = _UPVALUE0_.Color,
                ColorDynamic = _UPVALUE0_.ColorDynamic,
                Name = _UPVALUE0_.CustomName,
                IsEnabled = _UPVALUE0_.IsEnabled,
                RenderInNil = _UPVALUE0_.RenderInNil
              })))
            end
          end
        end)(_FORV_8_)
      end
    else
      _ARG_1_.ChildAdded:Connect(function(_ARG_0_)
        if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
          if _UPVALUE0_.OnAdded then
            coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
              PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
              Color = _UPVALUE0_.Color,
              ColorDynamic = _UPVALUE0_.ColorDynamic,
              Name = _UPVALUE0_.CustomName,
              IsEnabled = _UPVALUE0_.IsEnabled,
              RenderInNil = _UPVALUE0_.RenderInNil
            })))
          end
        end
      end)
      for _FORV_7_, _FORV_8_ in pairs(_ARG_1_:GetChildren()) do
        coroutine.wrap(function(_ARG_0_)
          if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
            if _UPVALUE0_.OnAdded then
              coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
                PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
                Color = _UPVALUE0_.Color,
                ColorDynamic = _UPVALUE0_.ColorDynamic,
                Name = _UPVALUE0_.CustomName,
                IsEnabled = _UPVALUE0_.IsEnabled,
                RenderInNil = _UPVALUE0_.RenderInNil
              })))
            end
          end
        end)(_FORV_8_)
      end
    end
  end,
  Add = function(_ARG_0_, _ARG_1_, _ARG_2_)
    if _ARG_1_ and not _ARG_2_.RenderInNil then
      return
    end
    if _ARG_1_ then
    end
    if _ARG_1_ then
    end
    if _ARG_1_ then
    end
    if _ARG_0_:GetBox(_ARG_1_) then
      _ARG_0_:GetBox(_ARG_1_):Destroy()
    end
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Quad = _UPVALUE2_("Quad", {
      Thickness = _ARG_0_.Thickness,
      Color = color,
      Transparency = 1,
      Filled = false,
      Visible = _ARG_0_.Enabled and _ARG_0_.Boxes
    })
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Name = _UPVALUE2_("Text", {
      Text = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Name,
      Color = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Color,
      Center = true,
      Outline = true,
      Size = 16,
      Visible = _ARG_0_.Enabled and _ARG_0_.Names
    })
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Distance = _UPVALUE2_("Text", {
      Color = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Color,
      Center = true,
      Outline = true,
      Size = 16,
      Visible = _ARG_0_.Enabled and _ARG_0_.Distance
    })
    if not _ARG_1_ then
    end
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Tool = _UPVALUE2_("Text", {
      Color = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Color,
      Center = true,
      Outline = true,
      Size = 16,
      Visible = _ARG_0_.Tools
    })
    _ARG_0_.Objects[_ARG_1_] = setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_)
    _ARG_1_.AncestryChanged:Connect(function(_ARG_0_, _ARG_1_)
      if _ARG_1_ == nil and _UPVALUE0_.AutoRemove ~= false then
        _UPVALUE1_:Destroy()
      end
    end)
    _ARG_1_:GetPropertyChangedSignal("Parent"):Connect(function()
      if _UPVALUE0_.Parent == nil and _UPVALUE1_.AutoRemove ~= false then
        _UPVALUE2_:Destroy()
      end
    end)
    if not _ARG_1_ then
      _ARG_1_:FindFirstChildOfClass("Humanoid").Died:Connect(function()
        if _UPVALUE0_.AutoRemove ~= false then
          _UPVALUE1_:Destroy()
        end
      end)
    end
    return (setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_))
  end
}.Names, function(_ARG_0_)
  _UPVALUE0_.Names = _ARG_0_
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt", game:GetService("Players"):GetPlayers()))():Window("FemWare | Apocalyse Rising 2"):Server("FemWare", "rbxassetid://9327507243"):Channel("Player ESP"):Toggle("Highlights", {
  Enabled = false,
  Boxes = false,
  BoxShift = CFrame.new(0, -1.5, 0),
  LoxShift = CFrame.new(0, -7, 0),
  BoxSize = Vector3.new(4, 6, 0),
  Color = Color3.fromRGB(255, 255, 255),
  Distance = 0,
  FaceCamera = false,
  Names = false,
  TeamColor = true,
  Thickness = 1,
  AttachShift = 1,
  TeamMates = true,
  Players = true,
  Highlights = false,
  Tools = false,
  Heli = false,
  HighlightType = Enum.HighlightDepthMode.Occluded,
  Objects = setmetatable({}, {__mode = "kv"}),
  Overrides = {},
  GetTeam = function(_ARG_0_, _ARG_1_)
    if _ARG_0_.Overrides.GetTeam then
      return _ARG_0_.Overrides.GetTeam(_ARG_1_)
    end
    return _ARG_1_ and _ARG_1_.Team
  end,
  IsTeamMate = function(_ARG_0_, _ARG_1_)
    if _ARG_0_.Overrides.IsTeamMate then
      return _ARG_0_.Overrides.IsTeamMate(_ARG_1_)
    end
    return _ARG_0_:GetTeam(_ARG_1_) == _ARG_0_:GetTeam(_UPVALUE0_)
  end,
  GetColor = function(_ARG_0_, _ARG_1_)
    if not _ARG_1_ then
      return _ARG_0_.Overrides.GetColor(_ARG_1_)
    end
    return not _ARG_0_:GetPlrFromChar(_ARG_1_).Team or _ARG_1_ or _ARG_1_ or _ARG_0_.Color
  end,
  GetPlrFromChar = function(_ARG_0_, _ARG_1_)
    if not _ARG_1_ then
      return _ARG_0_.Overrides.GetPlrFromChar(_ARG_1_)
    end
    return _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_)
  end,
  Toggle = function(_ARG_0_, _ARG_1_)
    _ARG_0_.Enabled = _ARG_1_
    if not _ARG_1_ then
      for _FORV_5_, _FORV_6_ in pairs(_ARG_0_.Objects) do
        if _FORV_6_.Type == "Box" then
          if not _ARG_1_ then
            _FORV_6_:Destroy()
          else
            for _FORV_10_, _FORV_11_ in pairs(_FORV_6_.Components) do
              _FORV_11_.Visible = false
            end
          end
        end
      end
    end
  end,
  GetBox = function(_ARG_0_, _ARG_1_)
    return _ARG_0_.Objects[_ARG_1_]
  end,
  AddObjectListener = function(_ARG_0_, _ARG_1_, _ARG_2_)
    if not _ARG_1_ then
      _ARG_1_.DescendantAdded:Connect(function(_ARG_0_)
        if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
          if _UPVALUE0_.OnAdded then
            coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
              PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
              Color = _UPVALUE0_.Color,
              ColorDynamic = _UPVALUE0_.ColorDynamic,
              Name = _UPVALUE0_.CustomName,
              IsEnabled = _UPVALUE0_.IsEnabled,
              RenderInNil = _UPVALUE0_.RenderInNil
            })))
          end
        end
      end)
      for _FORV_7_, _FORV_8_ in pairs(_ARG_1_:GetDescendants()) do
        coroutine.wrap(function(_ARG_0_)
          if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
            if _UPVALUE0_.OnAdded then
              coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
                PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
                Color = _UPVALUE0_.Color,
                ColorDynamic = _UPVALUE0_.ColorDynamic,
                Name = _UPVALUE0_.CustomName,
                IsEnabled = _UPVALUE0_.IsEnabled,
                RenderInNil = _UPVALUE0_.RenderInNil
              })))
            end
          end
        end)(_FORV_8_)
      end
    else
      _ARG_1_.ChildAdded:Connect(function(_ARG_0_)
        if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
          if _UPVALUE0_.OnAdded then
            coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
              PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
              Color = _UPVALUE0_.Color,
              ColorDynamic = _UPVALUE0_.ColorDynamic,
              Name = _UPVALUE0_.CustomName,
              IsEnabled = _UPVALUE0_.IsEnabled,
              RenderInNil = _UPVALUE0_.RenderInNil
            })))
          end
        end
      end)
      for _FORV_7_, _FORV_8_ in pairs(_ARG_1_:GetChildren()) do
        coroutine.wrap(function(_ARG_0_)
          if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
            if _UPVALUE0_.OnAdded then
              coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
                PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
                Color = _UPVALUE0_.Color,
                ColorDynamic = _UPVALUE0_.ColorDynamic,
                Name = _UPVALUE0_.CustomName,
                IsEnabled = _UPVALUE0_.IsEnabled,
                RenderInNil = _UPVALUE0_.RenderInNil
              })))
            end
          end
        end)(_FORV_8_)
      end
    end
  end,
  Add = function(_ARG_0_, _ARG_1_, _ARG_2_)
    if _ARG_1_ and not _ARG_2_.RenderInNil then
      return
    end
    if _ARG_1_ then
    end
    if _ARG_1_ then
    end
    if _ARG_1_ then
    end
    if _ARG_0_:GetBox(_ARG_1_) then
      _ARG_0_:GetBox(_ARG_1_):Destroy()
    end
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Quad = _UPVALUE2_("Quad", {
      Thickness = _ARG_0_.Thickness,
      Color = color,
      Transparency = 1,
      Filled = false,
      Visible = _ARG_0_.Enabled and _ARG_0_.Boxes
    })
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Name = _UPVALUE2_("Text", {
      Text = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Name,
      Color = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Color,
      Center = true,
      Outline = true,
      Size = 16,
      Visible = _ARG_0_.Enabled and _ARG_0_.Names
    })
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Distance = _UPVALUE2_("Text", {
      Color = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Color,
      Center = true,
      Outline = true,
      Size = 16,
      Visible = _ARG_0_.Enabled and _ARG_0_.Distance
    })
    if not _ARG_1_ then
    end
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Tool = _UPVALUE2_("Text", {
      Color = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Color,
      Center = true,
      Outline = true,
      Size = 16,
      Visible = _ARG_0_.Tools
    })
    _ARG_0_.Objects[_ARG_1_] = setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_)
    _ARG_1_.AncestryChanged:Connect(function(_ARG_0_, _ARG_1_)
      if _ARG_1_ == nil and _UPVALUE0_.AutoRemove ~= false then
        _UPVALUE1_:Destroy()
      end
    end)
    _ARG_1_:GetPropertyChangedSignal("Parent"):Connect(function()
      if _UPVALUE0_.Parent == nil and _UPVALUE1_.AutoRemove ~= false then
        _UPVALUE2_:Destroy()
      end
    end)
    if not _ARG_1_ then
      _ARG_1_:FindFirstChildOfClass("Humanoid").Died:Connect(function()
        if _UPVALUE0_.AutoRemove ~= false then
          _UPVALUE1_:Destroy()
        end
      end)
    end
    return (setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_))
  end
}.Highlights, function(_ARG_0_)
  _UPVALUE0_.Highlights = _ARG_0_
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt", game:GetService("Players"):GetPlayers()))():Window("FemWare | Apocalyse Rising 2"):Server("FemWare", "rbxassetid://9327507243"):Channel("Player ESP"):Toggle("Tools", {
  Enabled = false,
  Boxes = false,
  BoxShift = CFrame.new(0, -1.5, 0),
  LoxShift = CFrame.new(0, -7, 0),
  BoxSize = Vector3.new(4, 6, 0),
  Color = Color3.fromRGB(255, 255, 255),
  Distance = 0,
  FaceCamera = false,
  Names = false,
  TeamColor = true,
  Thickness = 1,
  AttachShift = 1,
  TeamMates = true,
  Players = true,
  Highlights = false,
  Tools = false,
  Heli = false,
  HighlightType = Enum.HighlightDepthMode.Occluded,
  Objects = setmetatable({}, {__mode = "kv"}),
  Overrides = {},
  GetTeam = function(_ARG_0_, _ARG_1_)
    if _ARG_0_.Overrides.GetTeam then
      return _ARG_0_.Overrides.GetTeam(_ARG_1_)
    end
    return _ARG_1_ and _ARG_1_.Team
  end,
  IsTeamMate = function(_ARG_0_, _ARG_1_)
    if _ARG_0_.Overrides.IsTeamMate then
      return _ARG_0_.Overrides.IsTeamMate(_ARG_1_)
    end
    return _ARG_0_:GetTeam(_ARG_1_) == _ARG_0_:GetTeam(_UPVALUE0_)
  end,
  GetColor = function(_ARG_0_, _ARG_1_)
    if not _ARG_1_ then
      return _ARG_0_.Overrides.GetColor(_ARG_1_)
    end
    return not _ARG_0_:GetPlrFromChar(_ARG_1_).Team or _ARG_1_ or _ARG_1_ or _ARG_0_.Color
  end,
  GetPlrFromChar = function(_ARG_0_, _ARG_1_)
    if not _ARG_1_ then
      return _ARG_0_.Overrides.GetPlrFromChar(_ARG_1_)
    end
    return _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_)
  end,
  Toggle = function(_ARG_0_, _ARG_1_)
    _ARG_0_.Enabled = _ARG_1_
    if not _ARG_1_ then
      for _FORV_5_, _FORV_6_ in pairs(_ARG_0_.Objects) do
        if _FORV_6_.Type == "Box" then
          if not _ARG_1_ then
            _FORV_6_:Destroy()
          else
            for _FORV_10_, _FORV_11_ in pairs(_FORV_6_.Components) do
              _FORV_11_.Visible = false
            end
          end
        end
      end
    end
  end,
  GetBox = function(_ARG_0_, _ARG_1_)
    return _ARG_0_.Objects[_ARG_1_]
  end,
  AddObjectListener = function(_ARG_0_, _ARG_1_, _ARG_2_)
    if not _ARG_1_ then
      _ARG_1_.DescendantAdded:Connect(function(_ARG_0_)
        if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
          if _UPVALUE0_.OnAdded then
            coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
              PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
              Color = _UPVALUE0_.Color,
              ColorDynamic = _UPVALUE0_.ColorDynamic,
              Name = _UPVALUE0_.CustomName,
              IsEnabled = _UPVALUE0_.IsEnabled,
              RenderInNil = _UPVALUE0_.RenderInNil
            })))
          end
        end
      end)
      for _FORV_7_, _FORV_8_ in pairs(_ARG_1_:GetDescendants()) do
        coroutine.wrap(function(_ARG_0_)
          if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
            if _UPVALUE0_.OnAdded then
              coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
                PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
                Color = _UPVALUE0_.Color,
                ColorDynamic = _UPVALUE0_.ColorDynamic,
                Name = _UPVALUE0_.CustomName,
                IsEnabled = _UPVALUE0_.IsEnabled,
                RenderInNil = _UPVALUE0_.RenderInNil
              })))
            end
          end
        end)(_FORV_8_)
      end
    else
      _ARG_1_.ChildAdded:Connect(function(_ARG_0_)
        if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
          if _UPVALUE0_.OnAdded then
            coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
              PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
              Color = _UPVALUE0_.Color,
              ColorDynamic = _UPVALUE0_.ColorDynamic,
              Name = _UPVALUE0_.CustomName,
              IsEnabled = _UPVALUE0_.IsEnabled,
              RenderInNil = _UPVALUE0_.RenderInNil
            })))
          end
        end
      end)
      for _FORV_7_, _FORV_8_ in pairs(_ARG_1_:GetChildren()) do
        coroutine.wrap(function(_ARG_0_)
          if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
            if _UPVALUE0_.OnAdded then
              coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
                PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
                Color = _UPVALUE0_.Color,
                ColorDynamic = _UPVALUE0_.ColorDynamic,
                Name = _UPVALUE0_.CustomName,
                IsEnabled = _UPVALUE0_.IsEnabled,
                RenderInNil = _UPVALUE0_.RenderInNil
              })))
            end
          end
        end)(_FORV_8_)
      end
    end
  end,
  Add = function(_ARG_0_, _ARG_1_, _ARG_2_)
    if _ARG_1_ and not _ARG_2_.RenderInNil then
      return
    end
    if _ARG_1_ then
    end
    if _ARG_1_ then
    end
    if _ARG_1_ then
    end
    if _ARG_0_:GetBox(_ARG_1_) then
      _ARG_0_:GetBox(_ARG_1_):Destroy()
    end
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Quad = _UPVALUE2_("Quad", {
      Thickness = _ARG_0_.Thickness,
      Color = color,
      Transparency = 1,
      Filled = false,
      Visible = _ARG_0_.Enabled and _ARG_0_.Boxes
    })
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Name = _UPVALUE2_("Text", {
      Text = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Name,
      Color = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Color,
      Center = true,
      Outline = true,
      Size = 16,
      Visible = _ARG_0_.Enabled and _ARG_0_.Names
    })
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Distance = _UPVALUE2_("Text", {
      Color = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Color,
      Center = true,
      Outline = true,
      Size = 16,
      Visible = _ARG_0_.Enabled and _ARG_0_.Distance
    })
    if not _ARG_1_ then
    end
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Tool = _UPVALUE2_("Text", {
      Color = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Color,
      Center = true,
      Outline = true,
      Size = 16,
      Visible = _ARG_0_.Tools
    })
    _ARG_0_.Objects[_ARG_1_] = setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_)
    _ARG_1_.AncestryChanged:Connect(function(_ARG_0_, _ARG_1_)
      if _ARG_1_ == nil and _UPVALUE0_.AutoRemove ~= false then
        _UPVALUE1_:Destroy()
      end
    end)
    _ARG_1_:GetPropertyChangedSignal("Parent"):Connect(function()
      if _UPVALUE0_.Parent == nil and _UPVALUE1_.AutoRemove ~= false then
        _UPVALUE2_:Destroy()
      end
    end)
    if not _ARG_1_ then
      _ARG_1_:FindFirstChildOfClass("Humanoid").Died:Connect(function()
        if _UPVALUE0_.AutoRemove ~= false then
          _UPVALUE1_:Destroy()
        end
      end)
    end
    return (setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_))
  end
}.Tools, function(_ARG_0_)
  _UPVALUE0_.Tools = _ARG_0_
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt", game:GetService("Players"):GetPlayers()))():Window("FemWare | Apocalyse Rising 2"):Server("FemWare", "rbxassetid://9327507243"):Channel("Player ESP"):Slider("Distance", 0, 5000, {
  Enabled = false,
  Boxes = false,
  BoxShift = CFrame.new(0, -1.5, 0),
  LoxShift = CFrame.new(0, -7, 0),
  BoxSize = Vector3.new(4, 6, 0),
  Color = Color3.fromRGB(255, 255, 255),
  Distance = 0,
  FaceCamera = false,
  Names = false,
  TeamColor = true,
  Thickness = 1,
  AttachShift = 1,
  TeamMates = true,
  Players = true,
  Highlights = false,
  Tools = false,
  Heli = false,
  HighlightType = Enum.HighlightDepthMode.Occluded,
  Objects = setmetatable({}, {__mode = "kv"}),
  Overrides = {},
  GetTeam = function(_ARG_0_, _ARG_1_)
    if _ARG_0_.Overrides.GetTeam then
      return _ARG_0_.Overrides.GetTeam(_ARG_1_)
    end
    return _ARG_1_ and _ARG_1_.Team
  end,
  IsTeamMate = function(_ARG_0_, _ARG_1_)
    if _ARG_0_.Overrides.IsTeamMate then
      return _ARG_0_.Overrides.IsTeamMate(_ARG_1_)
    end
    return _ARG_0_:GetTeam(_ARG_1_) == _ARG_0_:GetTeam(_UPVALUE0_)
  end,
  GetColor = function(_ARG_0_, _ARG_1_)
    if not _ARG_1_ then
      return _ARG_0_.Overrides.GetColor(_ARG_1_)
    end
    return not _ARG_0_:GetPlrFromChar(_ARG_1_).Team or _ARG_1_ or _ARG_1_ or _ARG_0_.Color
  end,
  GetPlrFromChar = function(_ARG_0_, _ARG_1_)
    if not _ARG_1_ then
      return _ARG_0_.Overrides.GetPlrFromChar(_ARG_1_)
    end
    return _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_)
  end,
  Toggle = function(_ARG_0_, _ARG_1_)
    _ARG_0_.Enabled = _ARG_1_
    if not _ARG_1_ then
      for _FORV_5_, _FORV_6_ in pairs(_ARG_0_.Objects) do
        if _FORV_6_.Type == "Box" then
          if not _ARG_1_ then
            _FORV_6_:Destroy()
          else
            for _FORV_10_, _FORV_11_ in pairs(_FORV_6_.Components) do
              _FORV_11_.Visible = false
            end
          end
        end
      end
    end
  end,
  GetBox = function(_ARG_0_, _ARG_1_)
    return _ARG_0_.Objects[_ARG_1_]
  end,
  AddObjectListener = function(_ARG_0_, _ARG_1_, _ARG_2_)
    if not _ARG_1_ then
      _ARG_1_.DescendantAdded:Connect(function(_ARG_0_)
        if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
          if _UPVALUE0_.OnAdded then
            coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
              PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
              Color = _UPVALUE0_.Color,
              ColorDynamic = _UPVALUE0_.ColorDynamic,
              Name = _UPVALUE0_.CustomName,
              IsEnabled = _UPVALUE0_.IsEnabled,
              RenderInNil = _UPVALUE0_.RenderInNil
            })))
          end
        end
      end)
      for _FORV_7_, _FORV_8_ in pairs(_ARG_1_:GetDescendants()) do
        coroutine.wrap(function(_ARG_0_)
          if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
            if _UPVALUE0_.OnAdded then
              coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
                PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
                Color = _UPVALUE0_.Color,
                ColorDynamic = _UPVALUE0_.ColorDynamic,
                Name = _UPVALUE0_.CustomName,
                IsEnabled = _UPVALUE0_.IsEnabled,
                RenderInNil = _UPVALUE0_.RenderInNil
              })))
            end
          end
        end)(_FORV_8_)
      end
    else
      _ARG_1_.ChildAdded:Connect(function(_ARG_0_)
        if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
          if _UPVALUE0_.OnAdded then
            coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
              PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
              Color = _UPVALUE0_.Color,
              ColorDynamic = _UPVALUE0_.ColorDynamic,
              Name = _UPVALUE0_.CustomName,
              IsEnabled = _UPVALUE0_.IsEnabled,
              RenderInNil = _UPVALUE0_.RenderInNil
            })))
          end
        end
      end)
      for _FORV_7_, _FORV_8_ in pairs(_ARG_1_:GetChildren()) do
        coroutine.wrap(function(_ARG_0_)
          if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
            if _UPVALUE0_.OnAdded then
              coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
                PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
                Color = _UPVALUE0_.Color,
                ColorDynamic = _UPVALUE0_.ColorDynamic,
                Name = _UPVALUE0_.CustomName,
                IsEnabled = _UPVALUE0_.IsEnabled,
                RenderInNil = _UPVALUE0_.RenderInNil
              })))
            end
          end
        end)(_FORV_8_)
      end
    end
  end,
  Add = function(_ARG_0_, _ARG_1_, _ARG_2_)
    if _ARG_1_ and not _ARG_2_.RenderInNil then
      return
    end
    if _ARG_1_ then
    end
    if _ARG_1_ then
    end
    if _ARG_1_ then
    end
    if _ARG_0_:GetBox(_ARG_1_) then
      _ARG_0_:GetBox(_ARG_1_):Destroy()
    end
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Quad = _UPVALUE2_("Quad", {
      Thickness = _ARG_0_.Thickness,
      Color = color,
      Transparency = 1,
      Filled = false,
      Visible = _ARG_0_.Enabled and _ARG_0_.Boxes
    })
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Name = _UPVALUE2_("Text", {
      Text = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Name,
      Color = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Color,
      Center = true,
      Outline = true,
      Size = 16,
      Visible = _ARG_0_.Enabled and _ARG_0_.Names
    })
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Distance = _UPVALUE2_("Text", {
      Color = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Color,
      Center = true,
      Outline = true,
      Size = 16,
      Visible = _ARG_0_.Enabled and _ARG_0_.Distance
    })
    if not _ARG_1_ then
    end
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Tool = _UPVALUE2_("Text", {
      Color = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Color,
      Center = true,
      Outline = true,
      Size = 16,
      Visible = _ARG_0_.Tools
    })
    _ARG_0_.Objects[_ARG_1_] = setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_)
    _ARG_1_.AncestryChanged:Connect(function(_ARG_0_, _ARG_1_)
      if _ARG_1_ == nil and _UPVALUE0_.AutoRemove ~= false then
        _UPVALUE1_:Destroy()
      end
    end)
    _ARG_1_:GetPropertyChangedSignal("Parent"):Connect(function()
      if _UPVALUE0_.Parent == nil and _UPVALUE1_.AutoRemove ~= false then
        _UPVALUE2_:Destroy()
      end
    end)
    if not _ARG_1_ then
      _ARG_1_:FindFirstChildOfClass("Humanoid").Died:Connect(function()
        if _UPVALUE0_.AutoRemove ~= false then
          _UPVALUE1_:Destroy()
        end
      end)
    end
    return (setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_))
  end
}.Distance, function(_ARG_0_)
  _UPVALUE0_.Distance = _ARG_0_
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt", game:GetService("Players"):GetPlayers()))():Window("FemWare | Apocalyse Rising 2"):Server("FemWare", "rbxassetid://9327507243"):Channel("Player ESP"):Dropdown("Highlight Type", {
  "Occluded",
  "AlwaysOnTop"
}, function(_ARG_0_)
  if _ARG_0_ == "Occluded" then
    _UPVALUE0_.HighlightType = Enum.HighlightDepthMode.Occluded
  elseif _ARG_0_ == "AlwaysOnTop" then
    _UPVALUE0_.HighlightType = Enum.HighlightDepthMode.AlwaysOnTop
  end
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt", game:GetService("Players"):GetPlayers()))():Window("FemWare | Apocalyse Rising 2"):Server("FemWare", "rbxassetid://9327507243"):Channel("Player ESP"):Button("Clear Highlights", function()
  for _FORV_3_, _FORV_4_ in pairs(game:GetService("CoreGui"):GetChildren()) do
    if _FORV_4_:IsA("Highlight") then
      _FORV_4_:Destroy()
    end
  end
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt", game:GetService("Players"):GetPlayers()))():Window("FemWare | Apocalyse Rising 2"):Server("FemWare", "rbxassetid://9327507243"):Channel("Player ESP"):Toggle("ESP Rainbow", false, function(_ARG_0_)
  if _ARG_0_ then
    _UPVALUE0_ = game:GetService("RunService").Heartbeat:Connect(function()
      _UPVALUE0_.Color = Color3.fromHSV(tick() % 15 / 15, 1, 1)
    end)
  elseif not _ARG_0_ and _UPVALUE0_ then
    _UPVALUE0_:Disconnect()
    _UPVALUE0_ = nil
  end
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt", game:GetService("Players"):GetPlayers()))():Window("FemWare | Apocalyse Rising 2"):Server("FemWare", "rbxassetid://9327507243"):Channel("Player ESP"):Colorpicker("ESP Color", {
  Enabled = false,
  Boxes = false,
  BoxShift = CFrame.new(0, -1.5, 0),
  LoxShift = CFrame.new(0, -7, 0),
  BoxSize = Vector3.new(4, 6, 0),
  Color = Color3.fromRGB(255, 255, 255),
  Distance = 0,
  FaceCamera = false,
  Names = false,
  TeamColor = true,
  Thickness = 1,
  AttachShift = 1,
  TeamMates = true,
  Players = true,
  Highlights = false,
  Tools = false,
  Heli = false,
  HighlightType = Enum.HighlightDepthMode.Occluded,
  Objects = setmetatable({}, {__mode = "kv"}),
  Overrides = {},
  GetTeam = function(_ARG_0_, _ARG_1_)
    if _ARG_0_.Overrides.GetTeam then
      return _ARG_0_.Overrides.GetTeam(_ARG_1_)
    end
    return _ARG_1_ and _ARG_1_.Team
  end,
  IsTeamMate = function(_ARG_0_, _ARG_1_)
    if _ARG_0_.Overrides.IsTeamMate then
      return _ARG_0_.Overrides.IsTeamMate(_ARG_1_)
    end
    return _ARG_0_:GetTeam(_ARG_1_) == _ARG_0_:GetTeam(_UPVALUE0_)
  end,
  GetColor = function(_ARG_0_, _ARG_1_)
    if not _ARG_1_ then
      return _ARG_0_.Overrides.GetColor(_ARG_1_)
    end
    return not _ARG_0_:GetPlrFromChar(_ARG_1_).Team or _ARG_1_ or _ARG_1_ or _ARG_0_.Color
  end,
  GetPlrFromChar = function(_ARG_0_, _ARG_1_)
    if not _ARG_1_ then
      return _ARG_0_.Overrides.GetPlrFromChar(_ARG_1_)
    end
    return _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_)
  end,
  Toggle = function(_ARG_0_, _ARG_1_)
    _ARG_0_.Enabled = _ARG_1_
    if not _ARG_1_ then
      for _FORV_5_, _FORV_6_ in pairs(_ARG_0_.Objects) do
        if _FORV_6_.Type == "Box" then
          if not _ARG_1_ then
            _FORV_6_:Destroy()
          else
            for _FORV_10_, _FORV_11_ in pairs(_FORV_6_.Components) do
              _FORV_11_.Visible = false
            end
          end
        end
      end
    end
  end,
  GetBox = function(_ARG_0_, _ARG_1_)
    return _ARG_0_.Objects[_ARG_1_]
  end,
  AddObjectListener = function(_ARG_0_, _ARG_1_, _ARG_2_)
    if not _ARG_1_ then
      _ARG_1_.DescendantAdded:Connect(function(_ARG_0_)
        if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
          if _UPVALUE0_.OnAdded then
            coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
              PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
              Color = _UPVALUE0_.Color,
              ColorDynamic = _UPVALUE0_.ColorDynamic,
              Name = _UPVALUE0_.CustomName,
              IsEnabled = _UPVALUE0_.IsEnabled,
              RenderInNil = _UPVALUE0_.RenderInNil
            })))
          end
        end
      end)
      for _FORV_7_, _FORV_8_ in pairs(_ARG_1_:GetDescendants()) do
        coroutine.wrap(function(_ARG_0_)
          if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
            if _UPVALUE0_.OnAdded then
              coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
                PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
                Color = _UPVALUE0_.Color,
                ColorDynamic = _UPVALUE0_.ColorDynamic,
                Name = _UPVALUE0_.CustomName,
                IsEnabled = _UPVALUE0_.IsEnabled,
                RenderInNil = _UPVALUE0_.RenderInNil
              })))
            end
          end
        end)(_FORV_8_)
      end
    else
      _ARG_1_.ChildAdded:Connect(function(_ARG_0_)
        if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
          if _UPVALUE0_.OnAdded then
            coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
              PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
              Color = _UPVALUE0_.Color,
              ColorDynamic = _UPVALUE0_.ColorDynamic,
              Name = _UPVALUE0_.CustomName,
              IsEnabled = _UPVALUE0_.IsEnabled,
              RenderInNil = _UPVALUE0_.RenderInNil
            })))
          end
        end
      end)
      for _FORV_7_, _FORV_8_ in pairs(_ARG_1_:GetChildren()) do
        coroutine.wrap(function(_ARG_0_)
          if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
            if _UPVALUE0_.OnAdded then
              coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
                PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
                Color = _UPVALUE0_.Color,
                ColorDynamic = _UPVALUE0_.ColorDynamic,
                Name = _UPVALUE0_.CustomName,
                IsEnabled = _UPVALUE0_.IsEnabled,
                RenderInNil = _UPVALUE0_.RenderInNil
              })))
            end
          end
        end)(_FORV_8_)
      end
    end
  end,
  Add = function(_ARG_0_, _ARG_1_, _ARG_2_)
    if _ARG_1_ and not _ARG_2_.RenderInNil then
      return
    end
    if _ARG_1_ then
    end
    if _ARG_1_ then
    end
    if _ARG_1_ then
    end
    if _ARG_0_:GetBox(_ARG_1_) then
      _ARG_0_:GetBox(_ARG_1_):Destroy()
    end
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Quad = _UPVALUE2_("Quad", {
      Thickness = _ARG_0_.Thickness,
      Color = color,
      Transparency = 1,
      Filled = false,
      Visible = _ARG_0_.Enabled and _ARG_0_.Boxes
    })
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Name = _UPVALUE2_("Text", {
      Text = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Name,
      Color = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Color,
      Center = true,
      Outline = true,
      Size = 16,
      Visible = _ARG_0_.Enabled and _ARG_0_.Names
    })
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Distance = _UPVALUE2_("Text", {
      Color = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Color,
      Center = true,
      Outline = true,
      Size = 16,
      Visible = _ARG_0_.Enabled and _ARG_0_.Distance
    })
    if not _ARG_1_ then
    end
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Tool = _UPVALUE2_("Text", {
      Color = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Color,
      Center = true,
      Outline = true,
      Size = 16,
      Visible = _ARG_0_.Tools
    })
    _ARG_0_.Objects[_ARG_1_] = setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_)
    _ARG_1_.AncestryChanged:Connect(function(_ARG_0_, _ARG_1_)
      if _ARG_1_ == nil and _UPVALUE0_.AutoRemove ~= false then
        _UPVALUE1_:Destroy()
      end
    end)
    _ARG_1_:GetPropertyChangedSignal("Parent"):Connect(function()
      if _UPVALUE0_.Parent == nil and _UPVALUE1_.AutoRemove ~= false then
        _UPVALUE2_:Destroy()
      end
    end)
    if not _ARG_1_ then
      _ARG_1_:FindFirstChildOfClass("Humanoid").Died:Connect(function()
        if _UPVALUE0_.AutoRemove ~= false then
          _UPVALUE1_:Destroy()
        end
      end)
    end
    return (setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_))
  end
}.Color, function(_ARG_0_)
  _UPVALUE0_.Color = _ARG_0_
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt", game:GetService("Players"):GetPlayers()))():Window("FemWare | Apocalyse Rising 2"):Server("FemWare", "rbxassetid://9327507243"):Channel("ESP"):Toggle("Toggle Helis", {
  Enabled = false,
  Boxes = false,
  BoxShift = CFrame.new(0, -1.5, 0),
  LoxShift = CFrame.new(0, -7, 0),
  BoxSize = Vector3.new(4, 6, 0),
  Color = Color3.fromRGB(255, 255, 255),
  Distance = 0,
  FaceCamera = false,
  Names = false,
  TeamColor = true,
  Thickness = 1,
  AttachShift = 1,
  TeamMates = true,
  Players = true,
  Highlights = false,
  Tools = false,
  Heli = false,
  HighlightType = Enum.HighlightDepthMode.Occluded,
  Objects = setmetatable({}, {__mode = "kv"}),
  Overrides = {},
  GetTeam = function(_ARG_0_, _ARG_1_)
    if _ARG_0_.Overrides.GetTeam then
      return _ARG_0_.Overrides.GetTeam(_ARG_1_)
    end
    return _ARG_1_ and _ARG_1_.Team
  end,
  IsTeamMate = function(_ARG_0_, _ARG_1_)
    if _ARG_0_.Overrides.IsTeamMate then
      return _ARG_0_.Overrides.IsTeamMate(_ARG_1_)
    end
    return _ARG_0_:GetTeam(_ARG_1_) == _ARG_0_:GetTeam(_UPVALUE0_)
  end,
  GetColor = function(_ARG_0_, _ARG_1_)
    if not _ARG_1_ then
      return _ARG_0_.Overrides.GetColor(_ARG_1_)
    end
    return not _ARG_0_:GetPlrFromChar(_ARG_1_).Team or _ARG_1_ or _ARG_1_ or _ARG_0_.Color
  end,
  GetPlrFromChar = function(_ARG_0_, _ARG_1_)
    if not _ARG_1_ then
      return _ARG_0_.Overrides.GetPlrFromChar(_ARG_1_)
    end
    return _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_)
  end,
  Toggle = function(_ARG_0_, _ARG_1_)
    _ARG_0_.Enabled = _ARG_1_
    if not _ARG_1_ then
      for _FORV_5_, _FORV_6_ in pairs(_ARG_0_.Objects) do
        if _FORV_6_.Type == "Box" then
          if not _ARG_1_ then
            _FORV_6_:Destroy()
          else
            for _FORV_10_, _FORV_11_ in pairs(_FORV_6_.Components) do
              _FORV_11_.Visible = false
            end
          end
        end
      end
    end
  end,
  GetBox = function(_ARG_0_, _ARG_1_)
    return _ARG_0_.Objects[_ARG_1_]
  end,
  AddObjectListener = function(_ARG_0_, _ARG_1_, _ARG_2_)
    if not _ARG_1_ then
      _ARG_1_.DescendantAdded:Connect(function(_ARG_0_)
        if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
          if _UPVALUE0_.OnAdded then
            coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
              PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
              Color = _UPVALUE0_.Color,
              ColorDynamic = _UPVALUE0_.ColorDynamic,
              Name = _UPVALUE0_.CustomName,
              IsEnabled = _UPVALUE0_.IsEnabled,
              RenderInNil = _UPVALUE0_.RenderInNil
            })))
          end
        end
      end)
      for _FORV_7_, _FORV_8_ in pairs(_ARG_1_:GetDescendants()) do
        coroutine.wrap(function(_ARG_0_)
          if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
            if _UPVALUE0_.OnAdded then
              coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
                PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
                Color = _UPVALUE0_.Color,
                ColorDynamic = _UPVALUE0_.ColorDynamic,
                Name = _UPVALUE0_.CustomName,
                IsEnabled = _UPVALUE0_.IsEnabled,
                RenderInNil = _UPVALUE0_.RenderInNil
              })))
            end
          end
        end)(_FORV_8_)
      end
    else
      _ARG_1_.ChildAdded:Connect(function(_ARG_0_)
        if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
          if _UPVALUE0_.OnAdded then
            coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
              PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
              Color = _UPVALUE0_.Color,
              ColorDynamic = _UPVALUE0_.ColorDynamic,
              Name = _UPVALUE0_.CustomName,
              IsEnabled = _UPVALUE0_.IsEnabled,
              RenderInNil = _UPVALUE0_.RenderInNil
            })))
          end
        end
      end)
      for _FORV_7_, _FORV_8_ in pairs(_ARG_1_:GetChildren()) do
        coroutine.wrap(function(_ARG_0_)
          if (type(_UPVALUE0_.Type) == "string" and not _ARG_0_ or _UPVALUE0_.Type == nil) and (type(_UPVALUE0_.Name) == "string" and _ARG_0_.Name == _UPVALUE0_.Name or _UPVALUE0_.Name == nil) and (not _UPVALUE0_.Validator or _UPVALUE0_.Validator(_ARG_0_)) then
            if _UPVALUE0_.OnAdded then
              coroutine.wrap(_UPVALUE0_.OnAdded)((_UPVALUE1_:Add(_ARG_0_, {
                PrimaryPart = (type(_UPVALUE0_.PrimaryPart) ~= "string" or _UPVALUE1_.Add) and type(_UPVALUE0_.PrimaryPart) == "function" and _UPVALUE0_.PrimaryPart(_ARG_0_),
                Color = _UPVALUE0_.Color,
                ColorDynamic = _UPVALUE0_.ColorDynamic,
                Name = _UPVALUE0_.CustomName,
                IsEnabled = _UPVALUE0_.IsEnabled,
                RenderInNil = _UPVALUE0_.RenderInNil
              })))
            end
          end
        end)(_FORV_8_)
      end
    end
  end,
  Add = function(_ARG_0_, _ARG_1_, _ARG_2_)
    if _ARG_1_ and not _ARG_2_.RenderInNil then
      return
    end
    if _ARG_1_ then
    end
    if _ARG_1_ then
    end
    if _ARG_1_ then
    end
    if _ARG_0_:GetBox(_ARG_1_) then
      _ARG_0_:GetBox(_ARG_1_):Destroy()
    end
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Quad = _UPVALUE2_("Quad", {
      Thickness = _ARG_0_.Thickness,
      Color = color,
      Transparency = 1,
      Filled = false,
      Visible = _ARG_0_.Enabled and _ARG_0_.Boxes
    })
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Name = _UPVALUE2_("Text", {
      Text = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Name,
      Color = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Color,
      Center = true,
      Outline = true,
      Size = 16,
      Visible = _ARG_0_.Enabled and _ARG_0_.Names
    })
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Distance = _UPVALUE2_("Text", {
      Color = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Color,
      Center = true,
      Outline = true,
      Size = 16,
      Visible = _ARG_0_.Enabled and _ARG_0_.Distance
    })
    if not _ARG_1_ then
    end
    setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_).Components.Tool = _UPVALUE2_("Text", {
      Color = setmetatable({
        Name = _ARG_1_.Name,
        Type = "Box",
        Color = _ARG_2_.Color,
        Size = _ARG_0_.BoxSize,
        Object = _ARG_1_,
        Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
        PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
        Components = {},
        IsEnabled = _ARG_2_.IsEnabled,
        Temporary = _ARG_2_.Temporary,
        ColorDynamic = _ARG_2_.ColorDynamic,
        RenderInNil = _ARG_2_.RenderInNil
      }, _UPVALUE1_).Color,
      Center = true,
      Outline = true,
      Size = 16,
      Visible = _ARG_0_.Tools
    })
    _ARG_0_.Objects[_ARG_1_] = setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_)
    _ARG_1_.AncestryChanged:Connect(function(_ARG_0_, _ARG_1_)
      if _ARG_1_ == nil and _UPVALUE0_.AutoRemove ~= false then
        _UPVALUE1_:Destroy()
      end
    end)
    _ARG_1_:GetPropertyChangedSignal("Parent"):Connect(function()
      if _UPVALUE0_.Parent == nil and _UPVALUE1_.AutoRemove ~= false then
        _UPVALUE2_:Destroy()
      end
    end)
    if not _ARG_1_ then
      _ARG_1_:FindFirstChildOfClass("Humanoid").Died:Connect(function()
        if _UPVALUE0_.AutoRemove ~= false then
          _UPVALUE1_:Destroy()
        end
      end)
    end
    return (setmetatable({
      Name = _ARG_1_.Name,
      Type = "Box",
      Color = _ARG_2_.Color,
      Size = _ARG_0_.BoxSize,
      Object = _ARG_1_,
      Player = _UPVALUE0_:GetPlayerFromCharacter(_ARG_1_),
      PrimaryPart = _ARG_2_.PrimaryPart or _ARG_1_,
      Components = {},
      IsEnabled = _ARG_2_.IsEnabled,
      Temporary = _ARG_2_.Temporary,
      ColorDynamic = _ARG_2_.ColorDynamic,
      RenderInNil = _ARG_2_.RenderInNil
    }, _UPVALUE1_))
  end
}.Heli, function(_ARG_0_)
  if _ARG_0_ == true then
    if not pcall(function()
      _UPVALUE0_.Heli = true
      for _FORV_3_, _FORV_4_ in pairs(game:GetService("Workspace").Map.Shared.Randoms:GetChildren()) do
        if string.find(_FORV_4_.Name, "Seahawk") and not pairs(game:GetService("Workspace").Map.Shared.Randoms:GetChildren()) then
          coroutine.wrap(_UPVALUE1_)(_FORV_4_)
        end
      end
    end) then
      game:GetService("Players").LocalPlayer:Kick(pcall(function()
        _UPVALUE0_.Heli = true
        for _FORV_3_, _FORV_4_ in pairs(game:GetService("Workspace").Map.Shared.Randoms:GetChildren()) do
          if string.find(_FORV_4_.Name, "Seahawk") and not pairs(game:GetService("Workspace").Map.Shared.Randoms:GetChildren()) then
            coroutine.wrap(_UPVALUE1_)(_FORV_4_)
          end
        end
      end))
    end
  else
    _UPVALUE0_.Heli = false
  end
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt", game:GetService("Players"):GetPlayers()))():Window("FemWare | Apocalyse Rising 2"):Server("FemWare", "rbxassetid://9327507243"):Channel("ESP"):Toggle("Toggle Vehicles", false, function(_ARG_0_)
  if nil then
  end
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt", game:GetService("Players"):GetPlayers()))():Window("FemWare | Apocalyse Rising 2"):Server("FemWare", "rbxassetid://9327507243"):Channel("Binds"):Bind("Open/Close GUI", Enum.KeyCode.LeftAlt, function()
  if pcall(function()
    if game then
      game:GetService("CoreGui").Discord.Enabled = true
    else
      game:GetService("CoreGui").Discord.Enabled = false
    end
  end) then
    game:GetService("Players").LocalPlayer:Kick(pcall(function()
      if game then
        game:GetService("CoreGui").Discord.Enabled = true
      else
        game:GetService("CoreGui").Discord.Enabled = false
      end
    end))
  end
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt", game:GetService("Players"):GetPlayers()))():Window("FemWare | Apocalyse Rising 2"):Server("FemWare", "rbxassetid://9327507243"):Channel("Binds"):Bind("ESP Bind", Enum.KeyCode.B, function()
  _UPVALUE0_:Toggle(false)
end)



end)

if not S then
    game:GetService("Players").LocalPlayer:Kick(E)
end
