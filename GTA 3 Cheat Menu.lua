-- GTA 3 Cheat Menu

-- Create a menu
menu = createMenu("GTA 3 Cheats")

-- Add cheats to the menu
menu:addCheckbox("Infinite Health", 0x00412345, 1) -- Replace with the actual memory address
menu:addCheckbox("Infinite Ammo", 0x00467890, 1) -- Replace with the actual memory address
menu:addSlider("Wanted Level", 0x004ABCDEF, 0, 5) -- Replace with the actual memory address
menu:addButton("Freeze Mission Timer", function() -- Replace with the actual memory address
    writeBytes(0x004XYZ123, {0x00, 0x00, 0x00, 0x00})
end)

-- Show the menu
menu:show()