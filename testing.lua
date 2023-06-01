local ScreenGui = Instance.new('ScreenGui')
local Frame = Instance.new('Frame')
local UICorner = Instance.new('UICorner')
local TopBar = Instance.new('Frame')
local UICorner_2 = Instance.new('UICorner')
local TextLabel = Instance.new('TextLabel')
local CloseButton = Instance.new('TextButton')
local UICorner_3 = Instance.new('UICorner')
local Minimize = Instance.new('TextButton')
local UICorner_4 = Instance.new('UICorner')
local TextBox = Instance.new('TextBox')
local UICorner_5 = Instance.new('UICorner')
local LocalScript = Instance.new('LocalScript')
local TextButton = Instance.new('TextButton')
local UICorner_6 = Instance.new('UICorner')

ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game:GetService('CoreGui')

Frame.Size = UDim2.new(0, 592, 0, 236)
Frame.Position = UDim2.new(0.2711397111415863, 0, 0.16732282936573029, 0)
Frame.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Frame.Parent = ScreenGui

UICorner.Parent = Frame

TopBar.Name = 'TopBar'
TopBar.Size = UDim2.new(0, 591, 0, 44)
TopBar.BorderColor3 = Color3.fromRGB(5, 7, 9)
TopBar.Position = UDim2.new(0, 0, 0.0042372881434857845, 0)
TopBar.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
TopBar.Parent = Frame

UICorner_2.Parent = TopBar

TextLabel.TextWrapped = true
TextLabel.TextScaled = true
TextLabel.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
TextLabel.Size = UDim2.new(0.3163636326789856, 0, 0.9545454382896423, 0)
TextLabel.TextSize = 37
TextLabel.BorderColor3 = Color3.fromRGB(13, 13, 13)
TextLabel.Text = 'Nick\'s Mini Script Executor'
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Font = Enum.Font.Jura
TextLabel.Parent = TopBar

CloseButton.Name = 'CloseButton'
CloseButton.TextWrapped = true
CloseButton.TextScaled = true
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseButton.TextStrokeColor3 = Color3.fromRGB(25, 25, 25)
CloseButton.Size = UDim2.new(0, 58, 0, 47)
CloseButton.TextSize = 14
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Text = 'X'
CloseButton.Font = Enum.Font.Unknown
CloseButton.Position = UDim2.new(0.903553307056427, 0, -0.022727273404598236, 0)
CloseButton.Parent = TopBar
CloseButton.MouseButton1Click:Connect(function()
	Frame:Destroy()
end)

UICorner_3.Parent = CloseButton

Minimize.Name = 'Minimize'
Minimize.TextWrapped = true
Minimize.TextScaled = true
Minimize.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
Minimize.TextStrokeColor3 = Color3.fromRGB(25, 25, 25)
Minimize.Size = UDim2.new(0, 58, 0, 47)
Minimize.TextSize = 14
Minimize.TextColor3 = Color3.fromRGB(255, 255, 255)
Minimize.BorderColor3 = Color3.fromRGB(255, 255, 255)
Minimize.Text = '-'
Minimize.Font = Enum.Font.Unknown
Minimize.Position = UDim2.new(0.807106614112854, 0, -0.022727273404598236, 0)
Minimize.Parent = TopBar
Minimize.MouseButton1Click:Connect(function()
	Frame.Visible = false
end)

local execution = {
	Script = "nil"
}

UICorner_4.Parent = Minimize

TextBox.CursorPosition = -1
TextBox.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TextBox.TextWrapped = true
TextBox.TextSize = 42
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Size = UDim2.new(0.8429053425788879, 0, 0.45338985323905945, 0)
TextBox.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Text = 'Enter Script Here'
TextBox.Font = Enum.Font.Highway
TextBox.Position = UDim2.new(0.018581081181764603, 0, 0.24152542650699615, 0)
TextBox.Parent = Frame
TextBox.MouseEnter:Connect(function(Val)
	execution.Script = Val
end)

UICorner_5.Parent = TextBox

LocalScript.Parent = Frame

TextButton.CursorPosition = -1
TextButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TextButton.TextWrapped = true
TextButton.TextSize = 35
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Text = 'Execute'
TextButton.Font = Enum.Font.Unknown
TextButton.Position = UDim2.new(0.025337837636470795, 0, 0.7288135886192322, 0)
TextButton.Parent = Frame
TextButton.MouseButton1Click:Connect(function()
	loadstring(execution.Script)
end)

UICorner_6.Parent = TextButton

