-- Old Tall Script

--[[
local LocalPlayer = game:GetService("Players").LocalPlayer
local Character = LocalPlayer.Character
local Humanoid = Character:FindFirstChildOfClass("Humanoid")
 
function rm()
	for i,v in pairs(Character:GetDescendants()) do
		if v:IsA("BasePart") then
			if v.Name == "Handle" or v.Name == "Head" then
				if Character.Head:FindFirstChild("OriginalSize") then
					Character.Head.OriginalSize:Destroy()
				end
			else
				for i,cav in pairs(v:GetDescendants()) do
					if cav:IsA("Attachment") then
						if cav:FindFirstChild("OriginalPosition") then
							cav.OriginalPosition:Destroy()  
						end
					end
				end
				v:FindFirstChild("OriginalSize"):Destroy()
				if v:FindFirstChild("AvatarPartScaleType") then
					v:FindFirstChild("AvatarPartScaleType"):Destroy()
				end
			end
		end
	end
end
 
rm()
wait(0.5)
Humanoid:FindFirstChild("BodyProportionScale"):Destroy()
wait(1)
 
rm()
wait(0.5)
Humanoid:FindFirstChild("BodyHeightScale"):Destroy()
wait(1)
 
rm()
wait(0.5)
Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
wait(1)
 
rm()
wait(0.5)
Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
wait(1)
 
rm()
wait(0.5)
Humanoid:FindFirstChild("HeadScale"):Destroy()
wait(1)
--]]

-- Update Tall Script

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
                if part:FindFirstChild("AvatarPartScaleType") then
                    part.AvatarPartScaleType:Destroy()
                end
            end
        end
    end
end

-- Function to remove specific scaling
local function removeSpecificScaling(property)
    removeScaling()
    wait(0.5)
    if Humanoid:FindFirstChild(property) then
        Humanoid[property]:Destroy()
    end
    wait(1)
end

-- Remove different types of scaling
removeSpecificScaling("BodyProportionScale")
removeSpecificScaling("BodyHeightScale")
removeSpecificScaling("BodyWidthScale")
removeSpecificScaling("BodyDepthScale")
removeSpecificScaling("HeadScale")
