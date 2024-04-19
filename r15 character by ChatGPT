-- Disable FE
game:GetService("ReplicatedFirst").RequestStream:FireServer("nomods") -- Disable FE for client

-- Function to create R15 character
local function createR15Character(player)
    -- Check if player already has an R15 character
    local character = player.Character
    if not character then
        character = Instance.new("Model")
        character.Name = player.Name
        character.Parent = workspace
    else
        character:ClearAllChildren() -- Clear existing character
    end
    
    -- Create R15 parts
    local humanoid = Instance.new("Humanoid")
    humanoid.Parent = character

    local head = Instance.new("Part")
    head.Name = "Head"
    head.Size = Vector3.new(2, 1, 1)
    head.Parent = character

    local torso = Instance.new("Part")
    torso.Name = "UpperTorso"
    torso.Size = Vector3.new(2, 2, 1)
    torso.Parent = character

    local lowerTorso = Instance.new("Part")
    lowerTorso.Name = "LowerTorso"
    lowerTorso.Size = Vector3.new(2, 2, 1)
    lowerTorso.Parent = character

    local leftArm = Instance.new("Part")
    leftArm.Name = "LeftArm"
    leftArm.Size = Vector3.new(1, 2, 1)
    leftArm.Parent = character

    local rightArm = Instance.new("Part")
    rightArm.Name = "RightArm"
    rightArm.Size = Vector3.new(1, 2, 1)
    rightArm.Parent = character

    local leftLeg = Instance.new("Part")
    leftLeg.Name = "LeftLeg"
    leftLeg.Size = Vector3.new(1, 2, 1)
    leftLeg.Parent = character

    local rightLeg = Instance.new("Part")
    rightLeg.Name = "RightLeg"
    rightLeg.Size = Vector3.new(1, 2, 1)
    rightLeg.Parent = character

    -- Position parts
    head.Position = Vector3.new(0, 1.5, 0)
    torso.Position = Vector3.new(0, 0.75, 0)
    lowerTorso.Position = Vector3.new(0, -0.25, 0)
    leftArm.Position = Vector3.new(-1.5, 0.75, 0)
    rightArm.Position = Vector3.new(1.5, 0.75, 0)
    leftLeg.Position = Vector3.new(-0.5, -1.25, 0)
    rightLeg.Position = Vector3.new(0.5, -1.25, 0)
end

-- Create R15 character for all existing players
for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
    createR15Character(player)
end

-- Create R15 character for new players
game:GetService("Players").PlayerAdded:Connect(function(player)
    createR15Character(player)
end)
