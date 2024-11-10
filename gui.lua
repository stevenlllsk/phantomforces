local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.CoreGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 450, 0, 350)
frame.Position = UDim2.new(0.5, -225, 0.5, -175)
frame.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
frame.BorderSizePixel = 0
frame.Parent = screenGui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
title.Text = "Lags GUI"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextSize = 18
title.Font = Enum.Font.SourceSansBold
title.Parent = frame

local exitButton = Instance.new("TextButton")
exitButton.Size = UDim2.new(0, 30, 0, 30)
exitButton.Position = UDim2.new(1, -35, 0, 5)
exitButton.Text = "X"
exitButton.TextColor3 = Color3.new(1, 0, 0)
exitButton.BackgroundColor3 = Color3.new(0.5, 0, 0)
exitButton.Font = Enum.Font.SourceSansBold
exitButton.TextSize = 18
exitButton.Parent = frame

exitButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- Minimize Button
local minimizeButton = Instance.new("TextButton")
minimizeButton.Size = UDim2.new(0, 30, 0, 30)
minimizeButton.Position = UDim2.new(1, -70, 0, 5)
minimizeButton.Text = "-"
minimizeButton.TextColor3 = Color3.new(1, 1, 1)
minimizeButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
minimizeButton.Font = Enum.Font.SourceSansBold
minimizeButton.TextSize = 18
minimizeButton.Parent = frame

local isMinimized = false

minimizeButton.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized
    if isMinimized then
        frame.Size = UDim2.new(0, 450, 0, 40)  -- Minimized height
        frame.Position = UDim2.new(0.5, -225, 0.5, -175)  -- Keep in place
        title.Text = "Lags GUI (Minimized)"
        minimizeButton.Text = "+"
    else
        frame.Size = UDim2.new(0, 450, 0, 350)  -- Original size
        title.Text = "Lags GUI"
        minimizeButton.Text = "-"
    end
end)

-- Tab System
local mainTab = Instance.new("TextButton")
mainTab.Size = UDim2.new(0, 100, 0, 30)
mainTab.Position = UDim2.new(0, 10, 0, 45)
mainTab.Text = "Main"
mainTab.TextColor3 = Color3.new(1, 1, 1)
mainTab.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
mainTab.Font = Enum.Font.SourceSans
mainTab.TextSize = 16
mainTab.Parent = frame

local visualTab = Instance.new("TextButton")
visualTab.Size = UDim2.new(0, 100, 0, 30)
visualTab.Position = UDim2.new(0, 120, 0, 45)
visualTab.Text = "Visual"
visualTab.TextColor3 = Color3.new(1, 1, 1)
visualTab.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
visualTab.Font = Enum.Font.SourceSans
visualTab.TextSize = 16
visualTab.Parent = frame

local mainContent = Instance.new("Frame")
mainContent.Size = UDim2.new(1, -20, 1, -100)
mainContent.Position = UDim2.new(0, 10, 0, 85)
mainContent.BackgroundTransparency = 1
mainContent.Visible = true
mainContent.Parent = frame

local visualContent = Instance.new("Frame")
visualContent.Size = UDim2.new(1, -20, 1, -100)
visualContent.Position = UDim2.new(0, 10, 0, 85)
visualContent.BackgroundTransparency = 1
visualContent.Visible = false
visualContent.Parent = frame

mainTab.MouseButton1Click:Connect(function()
    mainContent.Visible = true
    visualContent.Visible = false
end)

visualTab.MouseButton1Click:Connect(function()
    mainContent.Visible = false
    visualContent.Visible = true
end)
