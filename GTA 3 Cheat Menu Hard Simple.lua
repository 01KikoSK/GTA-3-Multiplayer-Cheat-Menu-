-- GTA 3 Cheat Menu

-- Create a menu
menu = createMenu("GTA 3 Cheats")

-- Add cheats to the menu
menu:addCheckbox("Infinite Health", function()
    -- Write 0xFF to the health address
    writeBytes(0x00467890, {0xFF})
    -- Also, write 0x00 to the armor address to prevent armor from decreasing
    writeBytes(0x00467900, {0x00})
end)

menu:addCheckbox("Infinite Ammo", function()
    -- Write 0xFFFF to the ammo address
    writeBytes(0x004ABCDEF, {0xFF, 0xFF})
    -- Also, write 0x00 to the ammo decrease address to prevent ammo from decreasing
    writeBytes(0x004ABCDE0, {0x00, 0x00})
end)

menu:addSlider("Wanted Level", 0, 5, function(value)
    -- Write the wanted level to the wanted level address
    writeBytes(0x004XYZ123, {value})
    -- Also, write 0x00 to the wanted level increase address to prevent wanted level from increasing
    writeBytes(0x004XYZ145, {0x00})
end)

menu:addButton("Freeze Mission Timer", function()
    -- Write 0x00000000 to the mission timer address
    writeBytes(0x004PQRSTU, {0x00, 0x00, 0x00, 0x00})
    -- Also, write 0x00 to the mission timer increase address to prevent mission timer from increasing
    writeBytes(0x004PQRSTV, {0x00, 0x00, 0x00, 0x00})
end)

menu:addButton("Spawn Jetpack", function()
    -- Write 0x01010101 to the jetpack address
    writeBytes(0x004MNOPQR, {0x01, 0x01, 0x01, 0x01})
    -- Also, write 0x01 to the jetpack equipped address to equip the jetpack
    writeBytes(0x004MNOPQS, {0x01})
end)

menu:addButton("Spawn Tank", function()
    -- Write 0x02020202 to the tank address
    writeBytes(0x004STUVWX, {0x02, 0x02, 0x02, 0x02})
    -- Also, write 0x01 to the tank equipped address to equip the tank
    writeBytes(0x004STUVWY, {0x01})
end)

menu:addButton("No Clip", function()
    -- Write 0x01 to the no clip address
    writeBytes(0x004ZYXWVU, {0x01})
end)

menu:addButton("Fast Run", function()
    -- Write 0x02 to the run speed address
    writeBytes(0x004QRSTUV, {0x02})
end)

menu:addButton("Fast Swim", function()
    -- Write 0x02 to the swim speed address
    writeBytes(0x004QRSTUV, {0x02})
end)

-- Show the menu
menu:show()