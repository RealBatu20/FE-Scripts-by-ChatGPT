-- Disable FE
game:GetService("ReplicatedFirst").RequestStream:FireServer("nomods")

-- Function to enable jumping
local function enableJump()
    -- Check if the Humanoid exists
    local character = game.Players.LocalPlayer.Character
    if character and character:FindFirstChildOfClass("Humanoid") then
        -- Enable jumping
        character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
    end
end

-- Call the function to enable jumping
enableJump()
