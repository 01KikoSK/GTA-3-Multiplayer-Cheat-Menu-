-- GTA 3 Cheat Menu

-- Create a menu
menu = createMenu("GTA 3 Cheats")

-- Add cheats to the menu
menu:addCheckbox("Infinite Health", function()
    -- Write 0xFF to the health address
    writeBytes(0x00467890, {0xFF})
end)

menu:addCheckbox("Infinite Ammo", function()
    -- Write 0xFFFF to the ammo address
    writeBytes(0x004ABCDEF, {0xFF, 0xFF})
end)

menu:addSlider("Wanted Level", 0, 5, function(value)
    -- Write the wanted level to the wanted level address
    writeBytes(0x004XYZ123, {value})
end)

menu:addButton("Freeze Mission Timer", function()
    -- Write 0x00000000 to the mission timer address
    writeBytes(0x004PQRSTU, {0x00, 0x00, 0x00, 0x00})
end)

menu:addButton("Spawn Jetpack", function()
    -- Write 0x01010101 to the jetpack address
    writeBytes(0x004MNOPQR, {0x01, 0x01, 0x01, 0x01})
end)

menu:addButton("Spawn Tank", function()
    -- Write 0x02020202 to the tank address
    writeBytes(0x004STUVWX, {0x02, 0x02, 0x02, 0x02})
end)

-- Show the menu
menu:show()