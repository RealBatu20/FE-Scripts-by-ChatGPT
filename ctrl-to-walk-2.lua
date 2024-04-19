-- Function to play walking animation
local function playWalkingAnimation(character)
    -- Get the humanoid
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        -- Play the walking animation
        humanoid.WalkSpeed = 16 -- Adjust walk speed as needed
    end
end

-- Function to stop walking animation
local function stopWalkingAnimation(character)
    -- Get the humanoid
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        -- Stop the walking animation
        humanoid.WalkSpeed = 0
    end
end

-- Function to handle key press
local function onKeyPress(input)
    -- Check if the Ctrl key is pressed
    if input.KeyCode == Enum.KeyCode.LeftControl or input.KeyCode == Enum.KeyCode.RightControl then
        -- Get the local player
        local player = game:GetService("Players").LocalPlayer
        -- Check if the player has a character
        if player.Character then
            -- Check if the Ctrl key is being held down
            if input.UserInputType == Enum.UserInputType.Keyboard and input.UserInputState == Enum.UserInputState.Begin then
                playWalkingAnimation(player.Character)
            elseif input.UserInputType == Enum.UserInputType.Keyboard and input.UserInputState == Enum.UserInputState.End then
                stopWalkingAnimation(player.Character)
            end
        end
    end
end

-- Connect the key press event
game:GetService("UserInputService").InputBegan:Connect(onKeyPress)
game:GetService("UserInputService").InputEnded:Connect(onKeyPress)
