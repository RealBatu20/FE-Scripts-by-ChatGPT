-- Define the local player
local LocalPlayer = game:GetService("Players").LocalPlayer
local Character = LocalPlayer.Character
local Humanoid = Character:FindFirstChildOfClass("Humanoid")

-- Function to remove scaling
local function removeScaling()
    for _, part in ipairs(Character:GetDescendants()) do
        if part:IsA("BasePart") then
            if part.Name == "Handle" or part.Name == "Head" then
                if Character.Head:FindFirstChild("OriginalSize") then
                    Character.Head.OriginalSize:Destroy()
                end
            else
                for _, attachment in ipairs(part:GetDescendants()) do
                    if attachment:IsA("Attachment") and attachment:FindFirstChild("OriginalPosition") then
                        attachment.OriginalPosition:Destroy()
                    end
                end
                if part:FindFirstChild("OriginalSize") then
                    part.OriginalSize:Destroy()
                end
                if v:FindFirstChild("AvatarPartScaleType") then
                    v:FindFirstChild("AvatarPartScaleType"):Destroy()
                end
            end
        end
    end
end

-- Function to remove specific scaling
local function removeSpecificScaling(property)
    if Humanoid:FindFirstChild(property) then
        Humanoid[property]:Destroy()
    end
end

-- Function to adjust body proportions and scales
local function adjustScales()
    -- Remove existing scaling
    removeScaling()
    wait(0.5)
    
    -- Remove specific scaling properties
    removeSpecificScaling("BodyProportionScale")
    removeSpecificScaling("BodyHeightScale")
    removeSpecificScaling("BodyWidthScale")
    removeSpecificScaling("BodyDepthScale")
    removeSpecificScaling("HeadScale")
    wait(1)

    -- Set desired scaling values
    Humanoid.BodyProportionScale = Vector3.new(1.05, 1.05, 1.05) -- Adjust as needed
    Humanoid.BodyHeightScale = 1.1 -- Adjust as needed
    Humanoid.BodyWidthScale = 1.1 -- Adjust as needed
    Humanoid.BodyDepthScale = 1.1 -- Adjust as needed
    Humanoid.HeadScale = 1.1 -- Adjust as needed
end

-- Adjust body proportions and scales
adjustScales()
