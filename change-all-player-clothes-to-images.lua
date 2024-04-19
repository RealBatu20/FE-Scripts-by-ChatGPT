-- Function to change all clothes to other images by asset ID
local function changeClothes(assetId)
    -- Get all players in the game
    local players = game:GetService("Players"):GetPlayers()

    -- Loop through each player
    for _, player in ipairs(players) do
        -- Check if the player has character
        if player.Character then
            -- Loop through each character part
            for _, part in ipairs(player.Character:GetDescendants()) do
                -- Check if the part is a clothing item
                if part:IsA("Clothing") then
                    -- Change the clothing asset ID
                    part.AssetID = assetId
                end
            end
        end
    end
end

-- Call the function with the desired asset ID
changeClothes("your_asset_id_here")
