-- Get the Players service
local Players = game:GetService("Players")

-- Function to create ESP for players
local function createESP(player)
    -- Create a BillboardGui for the player
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Name = "ESP"
    billboardGui.Adornee = player.Character:FindFirstChild("HumanoidRootPart")
    billboardGui.Size = UDim2.new(0, 100, 0, 40)
    billboardGui.StudsOffset = Vector3.new(0, 3, 0) -- Offset to position the ESP above the player
    billboardGui.AlwaysOnTop = true
    billboardGui.Enabled = true
    billboardGui.Parent = game.CoreGui

    -- Create a TextLabel to display player's name
    local nameLabel = Instance.new("TextLabel")
    nameLabel.Size = UDim2.new(1, 0, 0.5, 0)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Text = player.Name
    nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    nameLabel.Font = Enum.Font.SourceSansSemibold
    nameLabel.TextScaled = true
    nameLabel.Parent = billboardGui

    -- Create a TextLabel to display player's health
    local healthLabel = Instance.new("TextLabel")
    healthLabel.Size = UDim2.new(1, 0, 0.5, 0)
    healthLabel.Position = UDim2.new(0, 0, 0.5, 0)
    healthLabel.BackgroundTransparency = 1
    healthLabel.Text = "Health: " .. tostring(player.Character.Humanoid.Health)
    healthLabel.TextColor3 = Color3.fromRGB(255, 0, 0) -- Red color for health
    healthLabel.Font = Enum.Font.SourceSansSemibold
    healthLabel.TextScaled = true
    healthLabel.Parent = billboardGui

    -- Update health label text when player's health changes
    player.Character.Humanoid.HealthChanged:Connect(function(newHealth)
        healthLabel.Text = "Health: " .. tostring(newHealth)
    end)
end

-- Function to remove ESP for players
local function removeESP(player)
    -- Find and remove the player's ESP
    local gui = game.CoreGui:FindFirstChild(player.Name)
    if gui then
        gui:Destroy()
    end
end

-- Function to create ESP for all players
local function createAllESP()
    for _, player in ipairs(Players:GetPlayers()) do
        -- Check if the player is not the local player
        if player ~= Players.LocalPlayer then
            createESP(player)
        end
    end
end

-- Function to remove ESP for all players
local function removeAllESP()
    for _, player in ipairs(Players:GetPlayers()) do
        -- Check if the player is not the local player
        if player ~= Players.LocalPlayer then
            removeESP(player)
        end
    end
end

-- Create ESP for all existing players when the script is executed
createAllESP()

-- Connect functions to player added and player removing events to update ESP
Players.PlayerAdded:Connect(createESP)
Players.PlayerRemoving:Connect(removeESP)
