function Notification(text, duration)
    local NotificationMenu  = Instance.new("ScreenGui")
    local NotificationFrame = Instance.new("Frame")
    local NotificationText = Instance.new("TextLabel")
    local UICorner = Instance.new("UICorner")

    NotificationMenu.Parent = game.CoreGui

    NotificationFrame.Name = "NotificationFrame"
    NotificationFrame.Parent = NotificationMenu

    NotificationText.Name = "NotificationText"
    NotificationText.Parent = NotificationFrame
    NotificationText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NotificationText.BackgroundTransparency = 1.000
    NotificationText.Position = UDim2.new(0.5, -100, 0.5, -25)
    NotificationText.Size = UDim2.new(0, 200, 0, 50)
    NotificationText.Font = Enum.Font.SourceSans
    NotificationText.Text = text
    NotificationText.TextColor3 = Color3.fromRGB(255, 255, 255)
    NotificationText.TextSize = 14.000
    NotificationText.TextTransparency = 0

    UICorner.CornerRadius = UDim.new(0, 5)
    UICorner.Parent = NotificationFrame

    NotificationFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    NotificationFrame.BackgroundTransparency = 0
    -- place in bottom right
    NotificationFrame.Position = UDim2.new(0, game.Workspace.CurrentCamera.ViewportSize.X, 1, -75)
    NotificationFrame.Size = UDim2.new(0, 200, 0, 50)

    -- slide in the notification from the bottom right corner and fade it in
    for i = 0, 1, 0.05 do
        wait()
        NotificationFrame.Position = NotificationFrame.Position + UDim2.new(0, -12, 0, 0)
    end

    wait(duration)

    for i = 0, 1, 0.1 do
        wait()
        NotificationFrame.BackgroundTransparency = NotificationFrame.BackgroundTransparency + 0.1
        NotificationText.TextTransparency = NotificationText.TextTransparency + 0.1
    end

    NotificationMenu:Destroy()
end

return Notification
