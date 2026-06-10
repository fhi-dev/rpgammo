local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem('rpgammo', function(source, item)
    TriggerClientEvent('rpgammo:client:use', source)
end)

RegisterNetEvent('rpgammo:server:removeItem', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if not Player then
        return
    end

    local Item = Player.Functions.GetItemByName('rpgammo')

    if not Item then
        return
    end

    Player.Functions.RemoveItem('rpgammo', 1)

    TriggerClientEvent(
        'inventory:client:ItemBox',
        src,
        QBCore.Shared.Items['rpgammo'],
        'remove'
    )
end)