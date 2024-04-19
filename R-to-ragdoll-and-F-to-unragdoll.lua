-- Roblox Ragdoll Character Script with Keybinds (Clientside)
-- This script allows the player to toggle their character's ragdoll state using the R key to ragdoll and the F key to unragdoll.
-- It also includes ragdoll animations for a smoother transition.

local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")

-- Function to ragdoll the character
local function ragdoll()
    if Humanoid:GetState() ~= Enum.HumanoidStateType.Ragdoll then
        Humanoid:Move(Vector3.new(0, -1000, 0)) -- Ragdoll by moving character to a far location
    end
end

-- Function to unragdoll the character
local function unragdoll()
    if Humanoid:GetState() == Enum.HumanoidStateType.Ragdoll then
        Humanoid:Move(Vector3.new(0, 0, 0)) -- Unragdoll by moving character
        Humanoid.Sit = false -- Reset sit state
    end
end

-- Function to handle keyboard input
local function onKeyPressed(input)
    if input.KeyCode == Enum.KeyCode.R then
        ragdoll()
    elseif input.KeyCode == Enum.KeyCode.F then
        unragdoll()
    end
end

-- Connect the keyboard input function to the input service
UserInputService.InputBegan:Connect(onKeyPressed)

-- Ragdoll animations (Optional)
local function playRagdollAnimations()
    local AnimationTracks = Humanoid:GetPlayingAnimationTracks()
    for _, track in ipairs(AnimationTracks) do
        if track.Name == "ToolNoneAnim" then -- Replace "ToolNoneAnim" with the animation name if different
            track:Stop() -- Stop playing default animations
        end
    end
end

Humanoid.StateChanged:Connect(function(oldState, newState)
    if newState == Enum.HumanoidStateType.Ragdoll then
        playRagdollAnimations()
    end
end)
