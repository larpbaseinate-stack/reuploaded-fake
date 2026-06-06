-- Main exploit script with advanced features
local ScreenGui = Instance.new("ScreenGUI")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 350, 0, 200)
Frame.Position = UDim2.new(0.5, -175, 0.9, -100)
Frame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Frame.BorderSizePixel = 0
Frame.Parent = ScreenGui

-- Title
local Title = Instance.new("TextLabel")
Title.Text = "Roblox Server Message Faker v2"
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Font = Enum.Font.GothamBold
Title.TextColor3 = Color3.new(1, 1, 1)
Title.Parent = Frame

-- Disguise selector
local DisguiseLabel = Instance.new("TextLabel")
DisguiseLabel.Text = "Sender:"
DisguiseLabel.Size = UDim2.new(0.2, 0, 0, 20)
DisguiseLabel.Position = UDim2.new(0.05, 0, 0.1, 0)
DisguiseLabel.Parent = Frame

local DisguiseComboBox = Instance.new("ComboBox")
DisguiseComboBox.Size = UDim2.new(0.3, 0, 0, 25)
DisguiseComboBox.Position = UDim2.new(0.35, 0, 0.1, 0)
DisguiseComboBox.PlaceholderText = "Select disguise"
DisguiseComboBox.AutoButtonColor = false
DisguiseComboBox.Parent = Frame

-- Message input
local MessageLabel = Instance.new("TextLabel")
MessageLabel.Text = "Message:"
MessageLabel.Size = UDim2.new(0.2, 0, 0, 20)
MessageLabel.Position = UDim2.new(0.05, 0, 0.3, 0)
MessageLabel.Parent = Frame

local MessageInput = Instance.new("TextBox")
MessageInput.Size = UDim2.new(0.8, 0, 0, 25)
MessageInput.Position = UDim2.new(0.05, 0, 0.35, 0)
MessageInput.Text = "yoo im gay"
MessageInput.Parent = Frame

-- Payload input
local PayloadLabel = Instance.new("TextLabel")
PayloadLabel.Text = "Payload:"
PayloadLabel.Size = UDim2.new(0.2, 0, 0, 20)
PayloadLabel.Position = UDim2.new(0.05, 0, 0.5, 0)
PayloadLabel.Parent = Frame

local PayloadInput = Instance.new("TextBox")
PayloadInput.Size = UDim2.new(0.8, 0, 0, 25)
Payload
