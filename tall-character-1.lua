-- Function to scale the player's humanoid height
local function scalePlayerHeight(player, scale)
    -- Get the character
    local character = player.Character
    if not character then return end

    -- Get the humanoid
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if not humanoid then return end

    -- Scale the humanoid's height
    humanoid:ScaleTo(Vector3.new(1, scale, 1))

    -- Set the body type to the maximum value
    humanoid:SetBodyType(Enum.BodyType.Symmetric)
end

-- Define the scale factor for the player's height
local scaleFactor = 5  -- Change this value to adjust the height scale

-- Scale the height of the local player when the script runs
scalePlayerHeight(game.Players.LocalPlayer, scaleFactor)
