local QBCore = exports['qb-core']:GetCoreObject()

local RPG_WEAPON = `WEAPON_RPG`
local AMMO_AMOUNT = 6

RegisterNetEvent('rpgammo:client:use', function()
    local ped = PlayerPedId()

    if GetSelectedPedWeapon(ped) ~= RPG_WEAPON then
        QBCore.Functions.Notify('لازم تمسك RPG أول', 'error', 5000)
        return
    end

    AddAmmoToPed(ped, RPG_WEAPON, AMMO_AMOUNT)

    TriggerServerEvent('rpgammo:server:removeItem')

    QBCore.Functions.Notify('تم إضافة 6 صواريخ RPG', 'success', 5000)
end)