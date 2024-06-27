-- PAS BESOIN DE TOUCHER ICI

local isOpen = false
local hasOpenedOnce = false

RegisterCommand("toggleUI", function()
    isOpen = not isOpen
    SetNuiFocus(isOpen, isOpen)
    SendNUIMessage({
        type = "toggleUI",
        display = isOpen
    })
end)

AddEventHandler('playerSpawned', function()
    if not hasOpenedOnce then
        isOpen = true
        hasOpenedOnce = true
        SetNuiFocus(isOpen, isOpen)
        SendNUIMessage({
            type = "toggleUI",
            display = isOpen
        })
    end
end)

RegisterNUICallback('closeUI', function()
    isOpen = false
    SetNuiFocus(false, false)
    SendNUIMessage({
        type = "toggleUI",
        display = false
    })
end)
