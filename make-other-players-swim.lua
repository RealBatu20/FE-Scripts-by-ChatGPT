-- Function to make other players swim in the air
local function makeOtherPlayersSwim()
    -- Get the Players service
    local Players = game:GetService("Players")

    -- Loop through each player
    for _, player in ipairs(Players:GetPlayers()) do
        -- Check if the player is not the local player
        if player ~= Players.LocalPlayer then
            -- Check if the player has a character
            if player.Character then
                -- Get the humanoid of the player's character
                local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    -- Play swimming animation
                    humanoid:LoadAnimation(script.Parent.SwimAnimation):Play()
                end
            end
        end
    end
end

-- Call the function to make other players swim
makeOtherPlayersSwim()
