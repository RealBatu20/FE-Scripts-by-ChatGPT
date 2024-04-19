-- Function to anchor other players
local function anchorOtherPlayers()
    -- Get the Players service
    local Players = game:GetService("Players")

    -- Loop through each player
    for _, player in ipairs(Players:GetPlayers()) do
        -- Check if the player is not the local player
        if player ~= Players.LocalPlayer then
            -- Check if the player has a character
            if player.Character then
                -- Loop through each part of the player's character
                for _, part in ipairs(player.Character:GetDescendants()) do
                    -- Set Anchored property to true for each part
                    if part:IsA("BasePart") then
                        part.Anchored = true
                    end
                end
            end
        end
    end
end

-- Call the function to anchor other players
anchorOtherPlayers()
