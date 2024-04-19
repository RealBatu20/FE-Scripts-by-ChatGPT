-- Function to change the head by ID
local function changeHeadById(character, headId)
    -- Check if the character and headId are valid
    if character and headId then
        -- Check if the character is R6
        if character:FindFirstChild("Head") then
            -- Change R6 head
            local headMesh = Instance.new("SpecialMesh")
            headMesh.MeshId = "http://www.roblox.com/asset/?id=" .. headId
            headMesh.Parent = character.Head
        else
            -- Change dynamic head
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid:ReplaceBodyPartR15(Enum.BodyPart.Head, headId)
            end
        end
    end
end

-- Get the player's character
local character = game.Players.LocalPlayer.Character

-- Replace the head with the specified ID
changeHeadById(character, "INSERT_HEAD_ID_HERE")
