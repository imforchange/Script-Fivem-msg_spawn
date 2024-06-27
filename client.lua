-- PAS BESOIN DE TOUCHER ICI

local isOpen = false

RegisterCommand("toggleUI", function()
    isOpen = not isOpen
    SetNuiFocus(isOpen, isOpen)
    SendNUIMessage({
        type = "toggleUI",
        display = isOpen
    })
end)

AddEventHandler('playerSpawned', function()
    isOpen = true
    SetNuiFocus(isOpen, isOpen)
    SendNUIMessage({
        type = "toggleUI",
        display = isOpen
    })
end)

RegisterNUICallback('closeUI', function()
    isOpen = false
    SetNuiFocus(false, false)
    SendNUIMessage({
        type = "toggleUI",
        display = false
    })
end)
