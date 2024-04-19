-- Script to enable the "/reset" or "/r" command to reset character and stay at the last position after reset

-- Function to reset character and stay at the last position after reset
local function resetCharacter()
    -- Get the LocalPlayer
    local player = game.Players.LocalPlayer

    -- Check if the LocalPlayer exists
    if player then
        -- Save the player's current position
        local currentPosition = player.Character and player.Character.PrimaryPart and player.Character.PrimaryPart.Position

        -- Reset the character
        player.Character:Destroy()
        player.CharacterAdded:Wait()

        -- Teleport the player to the saved position
        if currentPosition then
            player.Character:SetPrimaryPartCFrame(CFrame.new(currentPosition))
        end
    end
end

-- Function to listen for the "/reset" or "/r" command
local function listenForResetCommand(message)
    -- Check if the message is "/reset" or "/r"
    if message:lower() == "/reset" or message:lower() == "/r" then
        -- Reset the character
        resetCharacter()
    end
end

-- Listen for chat messages
game.Players.LocalPlayer.Chatted:Connect(listenForResetCommand)
