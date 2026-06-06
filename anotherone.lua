local player = game:GetService("Players").LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Parent = player:WaitForChild("PlayerGui")

-- Main frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 400, 0, 300)
frame.Position = UDim2.new(0.5, -200, 0.5, -150)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
frame.BorderSizePixel = 0
frame.Parent = gui

-- Title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 30)
title.BackgroundTransparency = 1
title.Text = "Fake System Chat"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 16
title.Parent = frame

-- Chat log (scrolling)
local chatLog = Instance.new("ScrollingFrame")
chatLog.Size = UDim2.new(1, -20, 0, 200)
chatLog.Position = UDim2.new(0, 10, 0, 40)
chatLog.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
chatLog.BorderSizePixel = 0
chatLog.CanvasSize = UDim2.new(0, 0, 0, 0)
chatLog.ScrollBarThickness = 5
chatLog.Parent = frame

local layout = Instance.new("UIListLayout")
layout.Parent = chatLog

-- Input box
local input = Instance.new("TextBox")
input.Size = UDim2.new(0.7, 0, 0, 30)
input.Position = UDim2.new(0, 10, 0, 250)
input.Text = "System message..."
input.Parent = frame

-- Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0.25, 0, 0, 30)
button.Position = UDim2.new(0.75, -10, 0, 250)
button.Text = "Send"
button.Parent = frame

-- Function to add fake message
local function addMessage(text)
    local msg = Instance.new("TextLabel")
    msg.Size = UDim2.new(1, -10, 0, 25)
    msg.BackgroundTransparency = 1
    msg.TextXAlignment = Enum.TextXAlignment.Left
    msg.Text = "[System]: " .. text
    msg.TextColor3 = Color3.fromRGB(255, 255, 255)
    msg.Font = Enum.Font.Gotham
    msg.TextSize = 14
    msg.Parent = chatLog

    task.wait()
    chatLog.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y)
    chatLog.CanvasPosition = Vector2.new(0, layout.AbsoluteContentSize.Y)
end

button.MouseButton1Click:Connect(function()
    addMessage(input.Text)
end)

-- test messages
addMessage("Server started successfully.")
addMessage("Welcome to the experience.")
