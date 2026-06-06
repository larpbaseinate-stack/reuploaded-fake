local player = game:GetService("Players").LocalPlayer
local UIS = game:GetService("UserInputService")

local gui = Instance.new("ScreenGui")
gui.Parent = player:WaitForChild("PlayerGui")

-- Main frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 320, 0, 220)
frame.Position = UDim2.new(0.05, 0, 0.5, -110)
frame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
frame.BorderSizePixel = 0
frame.Active = true
frame.Parent = gui

-- Top bar (for dragging)
local top = Instance.new("Frame")
top.Size = UDim2.new(1, 0, 0, 25)
top.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
top.BorderSizePixel = 0
top.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 1, 0)
title.BackgroundTransparency = 1
title.Text = "Chat Overlay"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 13
title.Parent = top

-- Chat log
local log = Instance.new("ScrollingFrame")
log.Size = UDim2.new(1, -10, 1, -70)
log.Position = UDim2.new(0, 5, 0, 30)
log.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
log.BorderSizePixel = 0
log.ScrollBarThickness = 4
log.CanvasSize = UDim2.new(0, 0, 0, 0)
log.Parent = frame

local layout = Instance.new("UIListLayout")
layout.Parent = log

-- Input
local input = Instance.new("TextBox")
input.Size = UDim2.new(0.65, 0, 0, 25)
input.Position = UDim2.new(0, 5, 1, -30)
input.Text = ""
input.PlaceholderText = "Message..."
input.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
input.TextColor3 = Color3.fromRGB(255, 255, 255)
input.Font = Enum.Font.Gotham
input.TextSize = 12
input.Parent = frame

-- Button
local send = Instance.new("TextButton")
send.Size = UDim2.new(0.3, -5, 0, 25)
send.Position = UDim2.new(0.7, 0, 1, -30)
send.Text = "Send"
send.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
send.TextColor3 = Color3.fromRGB(255, 255, 255)
send.Font = Enum.Font.GothamBold
send.TextSize = 12
send.Parent = frame

-- Add message function
local function addLine(text)
    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1, -5, 0, 20)
    label.BackgroundTransparency = 1
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.TextColor3 = Color3.fromRGB(230, 230, 230)
    label.Font = Enum.Font.Gotham
    label.TextSize = 13
    label.Text = text
    label.Parent = log

    task.wait()
    log.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y)
    log.CanvasPosition = Vector2.new(0, layout.AbsoluteContentSize.Y)
end

send.MouseButton1Click:Connect(function()
    if input.Text ~= "" then
        addLine("Player: " .. input.Text)
        task.wait(0.2)
        addLine("Server: received message")
        input.Text = ""
    end
end)

-- DRAG SYSTEM
local dragging = false
local dragStart, startPos

top.InputBegan:Connect(function(inputObj)
    if inputObj.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = inputObj.Position
        startPos = frame.Position
    end
end)

top.InputChanged:Connect(function(inputObj)
    if dragging and inputObj.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = inputObj.Position - dragStart
        frame.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)

UIS.InputEnded:Connect(function(inputObj)
    if inputObj.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)
