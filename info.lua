local lPlayer = game.Players.LocalPlayer
local players = game.Players

task.wait(5)

local screenGui = Instance.new("ScreenGui", lPlayer.PlayerGui) screenGui.Name = "GetInfoGui"
	
	local Murder_Frame = Instance.new("Frame", screenGui) Murder_Frame.Name = "Murder_Frame" local corner = Instance.new("UICorner", Murder_Frame)
	Murder_Frame.Size = UDim2.new(0.153, 0,0.123, 0)
	Murder_Frame.Position = UDim2.new(0.245, 0,0, 0)
	Murder_Frame.BackgroundColor3 = Color3.new(0,0,0)

	local FrameForMurder = Instance.new("Frame", Murder_Frame) FrameForMurder.Name = "FrameForMurder" local corner = Instance.new("UICorner", FrameForMurder)
	FrameForMurder.Size = UDim2.new(0.922, 0,0.844, 0)
	FrameForMurder.Position = UDim2.new(0.041, 0,0.078, 0)
	FrameForMurder.BackgroundColor3 = Color3.new(0.254902, 0.25098, 0.294118)
	
	local PlayerName = Instance.new("TextLabel", Murder_Frame)	PlayerName.Name = "PlayerName" local corner = Instance.new("UICorner", PlayerName)
	PlayerName.Size = UDim2.new(0.82, 0,0.649, 0)
	PlayerName.Position = UDim2.new(0.09, 0,0.169, 0)
	PlayerName.Text = "Murder name"
	PlayerName.TextScaled = true
	PlayerName.BackgroundColor3 = Color3.new(0.564706, 0.0823529, 0.0823529)
	PlayerName.TextColor = BrickColor.new("Really black")

local imageMurder = Instance.new("ImageLabel" , Murder_Frame) imageMurder.Name = "ImageMurder"
imageMurder.Size = UDim2.new(0.307, 0,0.974, 0)
imageMurder.Position = UDim2.new(-0.348, 0,0, 0)

local Sheriff_Frame = Instance.new("Frame", screenGui) Sheriff_Frame.Name = "Sheriff_Frame" local corner = Instance.new("UICorner", Sheriff_Frame)
Sheriff_Frame.Size = UDim2.new(0.153, 0,0.123, 0)
Sheriff_Frame.Position = UDim2.new(0.546, 0,0, 0)
Sheriff_Frame.BackgroundColor3 = Color3.new(0,0,0)

local FrameForSheriff = Instance.new("Frame", Sheriff_Frame) FrameForSheriff.Name = "FrameForSheriff" local corner = Instance.new("UICorner", FrameForSheriff)
FrameForSheriff.Size = UDim2.new(0.922, 0,0.844, 0)
FrameForSheriff.Position = UDim2.new(0.037, 0,0.078, 0)
FrameForSheriff.BackgroundColor3 = Color3.new(0.254902, 0.25098, 0.294118)

local PlayerNameSheriff = Instance.new("TextLabel",Sheriff_Frame)	PlayerNameSheriff.Name = "PlayerNameSheriff" local corner = Instance.new("UICorner", PlayerNameSheriff)
PlayerNameSheriff.Size = UDim2.new(0.82, 0,0.649, 0)
PlayerNameSheriff.Position = UDim2.new(0.09, 0,0.169, 0)
PlayerNameSheriff.Text = "Sheriff Name"
PlayerNameSheriff.TextScaled = true
PlayerNameSheriff.TextColor = BrickColor.new("Really black")
PlayerNameSheriff.BackgroundColor3 = Color3.new(0.109804, 0.760784, 1)

local imageSheriff = Instance.new("ImageLabel" , Sheriff_Frame) imageSheriff.Name = "ImageSheriff"
imageSheriff.Size = UDim2.new(0.307, 0,0.974, 0)
imageSheriff.Position = UDim2.new(1.045, 0,0.013, 0)

local textButton = Instance.new("TextButton", screenGui) textButton.Name = "Get information" local uiCorner = Instance.new("UICorner", textButton)
textButton.Text = "GetInfo"
textButton.BackgroundColor = BrickColor.new("Black")
textButton.TextScaled = true
textButton.Size = UDim2.new(0.125, 0,0.08, 0)
textButton.Position = UDim2.new(0.414, 0,0.01, 0)
textButton.TextColor = BrickColor.new("White")

textButton.MouseButton1Click:Connect(function()
	
	for _, ALLplayers in pairs(game.Players:GetPlayers()) do
		local characters = ALLplayers.Character
		if not ALLplayers.Backpack:FindFirstChild("Knife") or not characters:FindFirstChild("Knife")
			and not ALLplayers.Backpack:FindFirstChild("Gun") or not characters:FindFirstChild("Gun") then
			local highlight = Instance.new("Highlight", characters)
			highlight.FillColor = Color3.new(0.0156863, 1, 0)
		end
	end
	
	for _, murdName in pairs(game:GetService("Players"):GetChildren()) do
		if murdName.Backpack:FindFirstChild("Knife") or murdName.Character:FindFirstChild("Knife") then
			local highLight = Instance.new("Highlight", murdName.Character)
			highLight.FillColor = Color3.new(1, 0, 0)
			
			PlayerName.Text = murdName.Name
			local icon = players:GetUserThumbnailAsync(murdName.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48)
			imageMurder.Image = icon
		end
		
	end
	
	for _, sherName in pairs(game:GetService("Players"):GetChildren()) do
		if sherName.Backpack:FindFirstChild("Gun") or sherName.Character:FindFirstChild("Gun") then
			local highLight = Instance.new("Highlight", sherName.Character)
			highLight.FillColor = Color3.new(0.294118, 0.729412, 1)
				
			PlayerNameSheriff.Text = sherName.Name
			local icon = players:GetUserThumbnailAsync(sherName.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48)
			imageSheriff.Image = icon
		end
	end
	
	for _, drop in pairs(workspace:GetChildren()) do
		if drop.Name == "GunDrop" then
			lPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = drop.CFrame
		end
	end
end)
