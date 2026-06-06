local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 350, 0, 200)
Frame.Position = UDim2.new(0.5, -175, 0.5, -100)
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.BorderSizePixel = 0
Frame.Parent = ScreenGui

-- Title
local Title = Instance.new("TextLabel")
Title.Text = "Roblox Server Message GUI"
Title.Size = UDim2.new(1, 0, 0, 30)
Title.BackgroundTransparency = 1
Title.Font = Enum.Font.GothamBold
Title.TextSize = 16
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Parent = Frame

-- Message label
local MessageLabel = Instance.new("TextLabel")
MessageLabel.Text = "Message:"
MessageLabel.Size = UDim2.new(0, 80, 0, 20)
MessageLabel.Position = UDim2.new(0, 10, 0, 50)
MessageLabel.BackgroundTransparency = 1
MessageLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
MessageLabel.Parent = Frame

-- Message input
local MessageInput = Instance.new("TextBox")
MessageInput.Size = UDim2.new(0, 250, 0, 25)
MessageInput.Position = UDim2.new(0, 90, 0, 50)
MessageInput.Text = "Hello world"
MessageInput.Parent = Frame

-- Button
local SendButton = Instance.new("TextButton")
SendButton.Size = UDim2.new(0, 120, 0, 30)
SendButton.Position = UDim2.new(0.5, -60, 0, 130)
SendButton.Text = "Send"
SendButton.Parent = Frame

SendButton.MouseButton1Click:Connect(function()
    print("Message:", MessageInput.Text)
end)
