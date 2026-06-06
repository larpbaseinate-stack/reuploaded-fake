local player = game:GetService("Players").LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = playerGui

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 350, 0, 200)
Frame.Position = UDim2.new(0.5, -175, 0.5, -100)
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.BorderSizePixel = 0
Frame.Parent = ScreenGui

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 30)
Title.BackgroundTransparency = 1
Title.Text = "UI Test"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Parent = Frame

local Box = Instance.new("TextBox")
Box.Size = UDim2.new(0, 300, 0, 30)
Box.Position = UDim2.new(0, 25, 0, 60)
Box.Text = "Type here"
Box.Parent = Frame
