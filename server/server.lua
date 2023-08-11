local QBCore = exports['qb-core']:GetCoreObject()

local mixerInUse = false -- DO NOT CHANGE THIS

-- Events
RegisterNetEvent('nk-burgershot:server:make_bs_dough', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local returnItem = data.returnItem
    if mixerInUse then
        QBCore.Functions.Notify(src, 'Mixer already in use', 'error', 3000)
    else
        mixerInUse = true 
        Player.Functions.RemoveItem('butter', 1)
        Player.Functions.RemoveItem('flour', 1)
        Player.Functions.RemoveItem('milk', 1)
        Player.Functions.RemoveItem('salt', 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['butter'], 'remove', 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['flour'], 'remove', 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['milk'], 'remove', 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['salt'], 'remove', 1)
        QBCore.Functions.Notify(src, 'Began mixing...', 'primary', 3000)
        Wait(Config.MixerWaitTime * 1000)
        QBCore.Functions.Notify(src, 'Mixer has finished', 'success', 3000)
        Player.Functions.AddItem('dough', 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[returnItem], 'add', 1)
        mixerInUse = false
    end
end)

RegisterNetEvent('nk-burgershot:server:addMetaData', function(amountHunger, amountThirst)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local currentHunger = Player.PlayerData.metadata['hunger']
    local currentThirst = Player.PlayerData.metadata['thirst']
    newHunger = currentHunger + amountHunger
    newThirst = currentThirst + amountThirst
    Player.Functions.SetMetaData('hunger', newHunger)
    Player.Functions.SetMetaData('thirst', newThirst)
    TriggerClientEvent('hud:client:UpdateNeeds', src, newHunger, newThirst)
end)

RegisterNetEvent('nk-burgershot:server:giveitem', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    for _, v in pairs(data.returnItems) do
        Player.Functions.AddItem(v, data.amount)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[v], 'add', data.amount)
    end
end)

RegisterNetEvent('nk-burgershot:server:removeitem', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    for _, v in pairs(data.removeItems) do
        Player.Functions.RemoveItem(v, data.amount)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[v], 'remove', data.amount)
    end
end)

RegisterNetEvent('nk-burgershot:server:removeeatitem', function(item, amount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(item, amount)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'remove', amount)
end)

-- Useable Items
--NK BURGERSHOT ------------------------------------------------------------------------------------
QBCore.Functions.CreateUseableItem('torpedo_parsel', function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('torpedo_parsel', 1)
    Player.Functions.AddItem('torpedo', 4)
    Player.Functions.AddItem('french_fries', 4)
    Player.Functions.AddItem('small_softdrink', 4)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['torpedo'], 'add', 4)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['french_fries'], 'add', 4)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['small_softdrink'], 'add', 4)
end)

QBCore.Functions.CreateUseableItem('bleeder_parsel', function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('bleeder_parsel', 1)
    Player.Functions.AddItem('bleeder', 4)
    Player.Functions.AddItem('french_fries', 4)
    Player.Functions.AddItem('small_softdrink', 4)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['bleeder'], 'add', 4)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['french_fries'], 'add', 4)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['small_softdrink'], 'add', 4)
end)

QBCore.Functions.CreateUseableItem('moneyshot_parsel', function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('moneyshot_parsel', 1)
    Player.Functions.AddItem('moneyshot', 4)
    Player.Functions.AddItem('french_fries', 4)
    Player.Functions.AddItem('big_softdrink', 4)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['moneyshot'], 'add', 4)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['french_fries'], 'add', 4)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['big_softdrink'], 'add', 4)
end)

QBCore.Functions.CreateUseableItem('heartstopper_parsel', function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('heartstopper_parsel', 1)
    Player.Functions.AddItem('heartstopper', 4)
    Player.Functions.AddItem('french_fries', 4)
    Player.Functions.AddItem('big_softdrink', 4)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['heartstopper'], 'add', 4)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['french_fries'], 'add', 4)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['big_softdrink'], 'add', 4)
end)

--NK BURGERSHOT Eating Animation
QBCore.Functions.CreateUseableItem('torpedo', function(source, item)
    TriggerClientEvent('nk-burgershot:client:eat', source, item.name, 'Eating Torpedo Burger!!...', math.random(5000, 10000), math.random(40, 60), 0, 'burger')
end)
QBCore.Functions.CreateUseableItem('bleeder', function(source, item)
    TriggerClientEvent('nk-burgershot:client:eat', source, item.name, 'Eating Bleeder Burger!!...', math.random(5000, 10000), math.random(40, 60), 0, 'burger')
end)
QBCore.Functions.CreateUseableItem('moneyshot', function(source, item)
    TriggerClientEvent('nk-burgershot:client:eat', source, item.name, 'Eating Moneyshot Burger!!...', math.random(5000, 10000), math.random(40, 60), 0, 'burger')
end)
QBCore.Functions.CreateUseableItem('heartstopper', function(source, item)
    TriggerClientEvent('nk-burgershot:client:eat', source, item.name, 'Eating Heartstopper Burger!!...', math.random(5000, 10000), math.random(40, 60), 0, 'burger')
end)
--add more food iteam 

--NK BURGERSHOT Drinking Animation
QBCore.Functions.CreateUseableItem('coffee', function(source, item)
    TriggerClientEvent('nk-burgershot:client:drink', source, item.name, 'Drinking Coffee!!...', math.random(5000, 10000), 0, math.random(40, 60), 'coffee')
end)
QBCore.Functions.CreateUseableItem('strawdaquiri', function(source, item)
    TriggerClientEvent('nk-burgershot:client:drink', source, item.name, 'Drinking Wine', math.random(5000, 10000), 0, math.random(40, 60), 'whiskey')
end)
--add more Drinking iteam
