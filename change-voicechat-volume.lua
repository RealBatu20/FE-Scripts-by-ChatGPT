-- Script to change the voice chat volume from 0 to 10000

-- Function to change the voice chat volume
local function changeVolume(volume)
    -- Ensure volume is within valid range (0 - 10000)
    volume = math.clamp(volume, 0, 10000)

    -- Change the voice chat volume
    game:GetService("SoundService"):SetLocalPlayerVolume(volume / 10000)
end

-- Function to prompt the user for input and change the volume
local function promptAndChangeVolume()
    -- Prompt the user to input the desired volume
    local newVolume = tonumber(prompt("Enter the new volume (0 - 10000):"))

    -- Check if the input is valid
    if newVolume then
        -- Change the volume
        changeVolume(newVolume)
    else
        -- Notify the user of invalid input
        print("Invalid input. Please enter a number between 0 and 10000.")
    end
end

-- Call the function to prompt and change volume when the script runs
promptAndChangeVolume()
