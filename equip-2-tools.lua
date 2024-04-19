-- Define the two tools you want to equip
local tool1Name = "ToolName1"  -- Replace "ToolName1" with the name of your first tool
local tool2Name = "ToolName2"  -- Replace "ToolName2" with the name of your second tool

-- Get the player and backpack
local player = game.Players.LocalPlayer
local backpack = player.Backpack

-- Function to equip the two tools
local function equipTools()
    -- Find the two tools in the backpack
    local tool1 = backpack:FindFirstChild(tool1Name)
    local tool2 = backpack:FindFirstChild(tool2Name)

    -- Equip the tools if they exist
    if tool1 and tool2 then
        tool1.Parent = player.Character
        tool2.Parent = player.Character
    else
        warn("Could not find both tools in backpack.")
    end
end

-- Equip the tools when the player joins the game
equipTools()
