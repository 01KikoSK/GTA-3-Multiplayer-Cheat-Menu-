-- GTA 3 Multiplayer Cheat Menu

-- Create a menu
menu = createMenu("GTA 3 Multiplayer Cheats")

-- Add cheats to the menu
menu:addCheckbox("Godmode", function()
    -- Write 0xFF to the health address for all players
    for i = 0, 7 do
        writeBytes(0x00467890 + i * 0x100, {0xFF})
    end
end)

menu:addCheckbox("Infinite Ammo", function()
    -- Write 0xFFFF to the ammo address for all players
    for i = 0, 7 do
        writeBytes(0x004ABCDEF + i * 0x100, {0xFF, 0xFF})
    end
end)

menu:addSlider("Wanted Level", 0, 5, function(value)
    -- Write the wanted level to the wanted level address for all players
    for i = 0, 7 do
        writeBytes(0x004XYZ123 + i * 0x100, {value})
    end
end)

menu:addButton("Teleport to Player", function()
    -- Get the player ID from the user
    local playerID = input("Enter player ID (0-7): ")
    -- Teleport to the player's position
    local playerPos = readBytes(0x004PQRSTU + playerID * 0x100, 12)
    writeBytes(0x004PQRSTV, playerPos)
end)

menu:addButton("Kill Player", function()
    -- Get the player ID from the user
    local playerID = input("Enter player ID (0-7): ")
    -- Write 0x00 to the player's health address
    writeBytes(0x00467890 + playerID * 0x100, {0x00})
end)

menu:addButton("Give Player Jetpack", function()
    -- Get the player ID from the user
    local playerID = input("Enter player ID (0-7): ")
    -- Write 0x01010101 to the player's jetpack address
    writeBytes(0x004MNOPQR + playerID * 0x100, {0x01, 0x01, 0x01, 0x01})
end)

menu:addButton("Give Player Tank", function()
    -- Get the player ID from the user
    local playerID = input("Enter player ID (0-7): ")
    -- Write 0x02020202 to the player's tank address
    writeBytes(0x004STUVWX + playerID * 0x100, {0x02, 0x02, 0x02, 0x02})
end)

-- Show the menu
menu:show()