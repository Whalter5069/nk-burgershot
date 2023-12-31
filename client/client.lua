local QBCore = exports['qb-core']:GetCoreObject()

local overInUse = false -- DO NOT CHANGE THIS

-- Functions
local function hasItems(items)
    for _, v in pairs(items) do
        if not QBCore.Functions.HasItem(v) then
            return true
        end
    end
    return false
end

local blip = AddBlipForCoord(-1191.85, -891.19)
SetBlipSprite(blip, 106)
SetBlipDisplay(blip, 6)
SetBlipScale(blip, 0.7)
SetBlipColour(blip, 1)
SetBlipAsShortRange(blip, true)
BeginTextCommandSetBlipName('STRING')
AddTextComponentString('Burgershot')
EndTextCommandSetBlipName(blip)

function QBCore.Functions.Progressbar(name, label, duration, useWhileDead, canCancel, disableControls, animation, prop, propTwo, onFinish, onCancel) --not sure what this is here for unless youre trying to create a global progressbar
    exports['progressbar']:Progress({
        name = label:lower(),
        duration = duration,
        label = label,
        useWhileDead = useWhileDead,
        canCancel = canCancel,
        controlDisables = disableControls,
        animation = animation,
        prop = prop,
        propTwo = propTwo,
    }, function(cancelled)
        if not cancelled then
            if onFinish then
                onFinish()
            end
        else
            if onCancel then
                onCancel()
            end
        end
    end)
end

-- Targets
-- Duty
exports['qb-target']:AddBoxZone('nk-burgershot:duty', vector3(-1185.17, -893.44, 13.89), 1.0, 0.4, {
    name = 'nk-burgershot:duty',
    heading = 300,
    debugPoly = Config.Debug,
    minZ=10.89,
  maxZ=14.89,
}, {
    options = {
        {
            num = 1,
            type = 'server',
            event = 'QBCore:ToggleDuty',
            icon = 'fas fa-laptop',
            label = 'Duty',
            job = 'burgershot',
            drawColor = {255, 255, 255, 255},
            successDrawColor = {30, 144, 255, 255},
        }
    },
    distance = 1.2,
})

-- Boss Menu
exports['qb-target']:AddBoxZone('nk-burgershot:bossmenu', vector3(-1198.15, -901.67, 13.89), 1.0, 0.4, {
    name = 'nk-burgershot:bossmenu',
    heading = 35,
    debugPoly = Config.Debug,
    minZ=11.09,
  maxZ=15.09,
}, {
    options = {
        {
            num = 1,
            type = 'client',
            event = 'qb-bossmenu:client:OpenMenu',
            icon = 'fas fa-computer',
            label = 'Management',
            job = {['burgershot'] = 4, 5},
            drawColor = {255, 255, 255, 255},
            successDrawColor = {30, 144, 255, 255},
        }
    },
    distance = 1,
})

-- Fridge
exports['qb-target']:AddBoxZone('nk-burgershot:openfridge', vector3(-1202.68, -897.66, 13.89), 1.4, 0.4, {
    name = 'nk-burgershot:openfridge',
    heading = 35,
    debugPoly = Config.Debug,
    minZ=10.89,
  maxZ=14.89,
}, {
    options = {
        {
            num = 1,
            type = 'client',
            event = 'nk-burgershot:client:OpenFridge',
            icon = 'fas fa-snowflake',
            label = 'Open Fridge',
            job = 'burgershot',
            drawColor = {255, 255, 255, 255},
            successDrawColor = {30, 144, 255, 255},
        }
    },
    distance = 1,
})

-- Staff Fridge
exports['qb-target']:AddBoxZone('nk-burgershot:staff_fridge', vector3(-1203.65, -896.17, 13.89), 1.4, 0.4, {
    name = 'nk-burgershot:staff_fridge',
    heading = 35,
    debugPoly = Config.Debug,
    minZ=10.89,
  maxZ=14.89,
}, {
    options = {
        {
            num = 1,
            type = 'client',
            event = 'nk-burgershot:client:OpenStaffFridge',
            icon = 'fas fa-snowflake',
            label = 'Open Fridge',
            job = 'burgershot',
            drawColor = {255, 255, 255, 255},
            successDrawColor = {30, 144, 255, 255},
        }
    },
    distance = 1,
})


-- Make Dough
exports['qb-target']:AddBoxZone('nk-burgershot:', vector3(-1199.73, -896.37, 13.89), 0.6, 0.4, {
    name = 'nk-burgershot:make_bs_dough',
    heading = 300,
    debugPoly = Config.Debug,
    minZ=10.89,
  maxZ=14.89,
}, {
    options = {
        {
            num = 1,
            type = 'client',
            event = 'nk-burgershot:client:make_bs_dough',
            icon = 'fas fa-power-off',
            label = 'Make Dough',
            job = 'burgershot',
            drawColor = {255, 255, 255, 255},
            successDrawColor = {30, 144, 255, 255},
        }
    },
    distance = 1,
})

--Make BS Bun
exports['qb-target']:AddBoxZone('nk-burgershot:make_bs_bun', vector3(-1193.95, -900.28, 13.89), 0.5, 1.5, {
    name = 'nk-burgershot:make_bs_bun',
    heading = 345,
    debugPoly = Config.Debug,
    minZ=10.89,
  maxZ=14.89,
}, {
    options = {
        {
            num = 1,
            type = 'client',
            event = 'nk-burgershot:client:makebunmenu',
            icon = 'fas fa-burger-slice',
            label = 'Make Burger Bun',
            job = 'burgershot',
            drawColor = {255, 255, 255, 255},
            successDrawColor = {30, 144, 255, 255},
        }
    },
    distance = 1,
})

-- Wash Hands 1
exports['qb-target']:AddBoxZone('nk-burgershot:washhands', vector3(-1201.14, -890.99, 13.89), 0.7, 0.4, {
    name = 'nk-burgershot:washhands',
    heading = 305,
    debugPoly = Config.Debug,
    minZ=10.69,
    maxZ=14.69,
}, {
    options = {
        {
            num = 1,
            type = 'client',
            event = 'nk-burgershot:client:washhands',
            icon = 'fas fa-hands-bubbles',
            label = 'Wash Hands',
            drawColor = {255, 255, 255, 255},
            successDrawColor = {30, 144, 255, 255},
        }
    },
    distance = 1,
})

-- Wash Hands 2
exports['qb-target']:AddBoxZone('nk-burgershot:washhandsstaff', vector3(-1204.96, -893.68, 13.89), 0.7, 0.4, {
    name = 'nk-burgershot:washhandsstaff',
    heading = 305,
    debugPoly = Config.Debug,
    minZ=10.69,
  maxZ=14.69,
}, {
    options = {
        {
            num = 1,
            type = 'client',
            event = 'nk-burgershot:client:washhands',
            icon = 'fas fa-hands-bubbles',
            label = 'Wash Hands',
            drawColor = {255, 255, 255, 255},
            successDrawColor = {30, 144, 255, 255},
        }
    },
    distance = 1,
})


--Cup Collecting
exports['qb-target']:AddBoxZone('nk-burgershot:cupcollecting', vector3(-1202.22, -894.46, 13.89), 0.7, 0.8, {
    name = 'nk-burgershot:cupcollecting',
    heading = 0,
    debugPoly = Config.Debug,
    minZ=10.89,
  maxZ=14.89,
}, {
    options = {
        {
            num = 1,
            type = 'client',
            event = 'nk-burgershot:client:cupcollectingmenu',
            icon = 'fas fa-hand-holding',
            label = 'Cup Collecting',
            job = 'burgershot',
            drawColor = {255, 255, 255, 255},
            successDrawColor = {30, 144, 255, 255},
        }
    },
    distance = 1,
})


-- Make Burger Drinks Menu
exports['qb-target']:AddBoxZone('nk-burgershot:bs_makedrinks', vector3(-1190.96, -898.76, 13.89), 1.3, 0.4, {
    name = 'nk-burgershot:bs_makedrinks',
    heading = 305,
    debugPoly = Config.Debug,
    minZ=10.89,
    maxZ=14.89,
}, {
    options = {
        {
            num = 1,
            type = 'client',
            event = 'nk-burgershot:client:bs_makedrinks',
            icon = 'fas fa-burger-slice',
            label = 'Make Drinks',
            job = 'burgershot',
            drawColor = {255, 255, 255, 255},
            successDrawColor = {30, 144, 255, 255},
        }
    },
    distance = 1,
})

-- Make Burger Choping Menu
exports['qb-target']:AddBoxZone('nk-burgershot:bs_makechop', vector3(-1195.41, -897.41, 13.89), 1.4, 0.4, {
    name = 'nk-burgershot:bs_makechop',
    heading = 75,
    debugPoly = Config.Debug,
    minZ=10.89,
  maxZ=14.89,
}, {
    options = {
        {
            num = 1,
            type = 'client',
            event = 'nk-burgershot:client:bs_makechop',
            icon = 'fas fa-burger-slice',
            label = 'Choping Menu',
            job = 'burgershot',
            drawColor = {255, 255, 255, 255},
            successDrawColor = {30, 144, 255, 255},
        }
    },
    distance = 1,
})

--Donut_crft Menu
exports['qb-target']:AddBoxZone('nk-burgershot:donut_crft', vector3(-1198.49, -899.01, 13.89), 0.4, 1.0, {
    name = 'nk-burgershot:donut_crft',
    heading = 350,
    debugPoly = Config.Debug,
    minZ=10.69,
    maxZ=14.69,
}, {
    options = {
        {
            num = 1,
            type = 'client',
            event = 'nk-burgershot:client:donut_crft',
            icon = 'fas fa-donut',
            label = 'Donut Menu',
            job = 'burgershot',
            drawColor = {255, 255, 255, 255},
            successDrawColor = {30, 144, 255, 255},
        }
    },
    distance = 1,
})

-- Make Burger Food
exports['qb-target']:AddBoxZone('nk-burgershot:make_burger', vector3(-1194.02, -898.11, 13.89), 0.4, 1.0, {
    name = 'nk-burgershot:make_burger',
    heading = 345,
    debugPoly = Config.Debug,
    minZ=10.69,
  maxZ=14.69,
}, {
    options = {
        {
            num = 1,
            type = 'client',
            event = 'nk-burgershot:client:make_burger',
            icon = 'fas fa-burger-slice',
            label = 'Make a Burger',
            job = 'burgershot',
            drawColor = {255, 255, 255, 255},
            successDrawColor = {30, 144, 255, 255},
        }
    },
    distance = 1,
})


-- Box Burger
exports['qb-target']:AddBoxZone('nk-burgershot:bs_box_burger', vector3(-1195.01, -896.05, 13.89), 0.4, 2.5, {
    name = 'nk-burgershot:bs_box_burger',
    heading = 345,
    debugPoly = Config.Debug,
    minZ=10.89,
    maxZ=14.89,
}, {
    options = {
        {
            num = 1,
            type = 'client',
            event = 'nk-burgershot:client:bs_box_burgermenu',
            icon = 'fas fa-box',
            label = 'Box Burger',
            job = 'burgershot',
            drawColor = {255, 255, 255, 255},
            successDrawColor = {30, 144, 255, 255},
        }
    },
    distance = 1,
})

-- Make Pour Coffee
exports['qb-target']:AddBoxZone('nk-burgershot:bs_make_pour_coffee', vector3(-1200.43, -896.66, 13.89), 0.4, 0.5, {
    name = 'nk-burgershot:bs_make_pour_coffee',
    heading = 35,
    debugPoly = Config.Debug,
    minZ=10.89,
  maxZ=14.89,
}, {
    options = {
        {
            num = 1,
            type = 'client',
            event = 'nk-burgershot:client:bs_make_pour_coffee',
            icon = 'fas fa-wine-glass',
            label = 'Pour Burgershot Special Coffee',
            job = 'burgershot',
            drawColor = {255, 255, 255, 255},
            successDrawColor = {30, 144, 255, 255},
        }
    },
    distance = 1.3,
})

-- Cupboard_Items
exports['qb-target']:AddBoxZone('nk-burgershot:cupboard', vector3(-1196.24, -901.06, 13.89), 1.5, 0.4, {
    name = 'nk-burgershot:cupboard',
    heading = 75,
    debugPoly = Config.Debug,
    minZ=10.89,
  maxZ=14.89,
}, {
    options = {
        {
            num = 1,
            type = 'client',
            event = 'nk-burgershot:client:OpenCupboard',
            icon = 'fas fa-door-open',
            label = 'Open Cupboard',
            job = 'burgershot',
            drawColor = {255, 255, 255, 255},
            successDrawColor = {30, 144, 255, 255},
        }
    },
    distance = 1,
})


-- Till 1
exports['qb-target']:AddBoxZone('nk-burgershot:till1', vector3(-1195.47, -893.15, 13.89), 0.4, 0.4, {
    name = 'nk-burgershot:till1',
    heading = 350,
    debugPoly = Config.Debug,
    minZ=10.69,
  maxZ=14.69,
}, {
    options = {
        {
            event = 'jim-payments:client:Charge',
            icon = 'fas fa-credit-card',
            label = 'Charge Customer',
            job = 'burgershot',
            img = nil,
            drawColor = {255, 255, 255, 255},
            successDrawColor = {30, 144, 255, 255},
        }
    },
    distance = 1.5,
})

-- Till 2
exports['qb-target']:AddBoxZone('nk-burgershot:till2', vector3(-1197.43, -892.64, 13.89), 0.4, 0.4, {
    name = 'nk-burgershot:till2',
    heading = 350,
    debugPoly = Config.Debug,
    minZ=10.69,
  maxZ=14.69
}, {
    options = {
        {
            event = 'jim-payments:client:Charge',
            icon = 'fas fa-credit-card',
            label = 'Charge Customer',
            job = 'burgershot',
            img = nil,
            drawColor = {255, 255, 255, 255},
            successDrawColor = {30, 144, 255, 255},
        }
    },
    distance = 1.5,
})

-- Till 3
exports['qb-target']:AddBoxZone('nk-burgershot:till3', vector3(-1193.41, -893.82, 13.89), 0.4, 0.4, {
    name = 'nk-burgershot:till3',
    heading = 345,
    debugPoly = Config.Debug,
    minZ=10.69,
  maxZ=14.69,
}, {
    options = {
        {
            event = 'jim-payments:client:Charge',
            icon = 'fas fa-credit-card',
            label = 'Charge Customer',
            job = 'burgershot',
            img = nil,
            drawColor = {255, 255, 255, 255},
            successDrawColor = {30, 144, 255, 255},
        }
    },
    distance = 1.5,
})

-- Till 4
exports['qb-target']:AddBoxZone('nk-burgershot:till4', vector3(-1191.51, -894.33, 13.89), 0.4, 0.4, {
    name = 'nk-burgershot:till4',
    heading = 345,
    debugPoly = Config.Debug,
    minZ=10.69,
  maxZ=14.69,
}, {
    options = {
        {
            event = 'jim-payments:client:Charge',
            icon = 'fas fa-credit-card',
            label = 'Charge Customer',
            job = 'burgershot',
            img = nil,
            drawColor = {255, 255, 255, 255},
            successDrawColor = {30, 144, 255, 255},
        }
    },
    distance = 1.5,
})

-- Tray 1
exports['qb-target']:AddBoxZone('nk-burgershot:tray1', vector3(-1196.85, -892.71, 13.89), 0.4, 0.5, {
    name = 'nk-burgershot:tray1',
    heading = 350,
    debugPoly = Config.Debug,
    minZ=10.69,
  maxZ=14.69,
}, {
    options = {
        {
            num = 1,
            icon = 'fas fa-hand-holding',
            label = 'tray1',
            action = function(entity) -- This is the action it has to perform, this REPLACES the event and this is OPTIONAL
                if IsPedAPlayer(entity) then return false end -- This will return false if the entity interacted with is a player and otherwise returns true
                TriggerEvent("inventory:client:SetCurrentStash", "Burgershot")
                TriggerServerEvent("inventory:server:OpenInventory", "stash", "Burgershot", {maxweight = 1000000, slots = 50})
              end,
              canInteract = function(entity, distance, data) -- This will check if you can interact with it, this won't show up if it returns false, this is OPTIONAL
                if IsPedAPlayer(entity) then return false end -- This will return false if the entity interacted with is a player and otherwise returns true
                return true
              end,
              drawColor = {255, 255, 255, 255}, 
              successDrawColor = {30, 144, 255, 255},
        }
    },
    distance = 1.3
})

-- Tray 2
exports['qb-target']:AddBoxZone('nk-burgershot:tray2', vector3(-1194.79, -893.3, 13.89), 0.4, 0.6, {
    name = 'nk-burgershot:tray2',
    heading = 350,
    debugPoly = Config.Debug,
    minZ=10.69,
  maxZ=14.69,
}, {
    options = {
        {
            num = 1,
            icon = 'fas fa-hand-holding',
            label = 'tray2',
            action = function(entity) -- This is the action it has to perform, this REPLACES the event and this is OPTIONAL
                if IsPedAPlayer(entity) then return false end -- This will return false if the entity interacted with is a player and otherwise returns true
                TriggerEvent("inventory:client:SetCurrentStash", "Burgershot")
                TriggerServerEvent("inventory:server:OpenInventory", "stash", "Burgershot", {maxweight = 1000000, slots = 50})
              end,
              canInteract = function(entity, distance, data) -- This will check if you can interact with it, this won't show up if it returns false, this is OPTIONAL
                if IsPedAPlayer(entity) then return false end -- This will return false if the entity interacted with is a player and otherwise returns true
                return true
              end,
              drawColor = {255, 255, 255, 255}, 
              successDrawColor = {30, 144, 255, 255},
        }
    },
    distance = 1.3
})

-- Tray 3
exports['qb-target']:AddBoxZone('nk-burgershot:tray3', vector3(-1192.8, -893.87, 13.89), 0.4, 0.6, {
    name = 'nk-burgershot:tray3',
    heading = 345,
    debugPoly = Config.Debug,
    minZ=10.69,
  maxZ=14.69,
}, {
    options = {
        {
            num = 1,
            icon = 'fas fa-hand-holding',
            label = 'tray3',
            action = function(entity) -- This is the action it has to perform, this REPLACES the event and this is OPTIONAL
                if IsPedAPlayer(entity) then return false end -- This will return false if the entity interacted with is a player and otherwise returns true
                TriggerEvent("inventory:client:SetCurrentStash", "Burgershot")
                TriggerServerEvent("inventory:server:OpenInventory", "stash", "Burgershot", {maxweight = 1000000, slots = 50})
              end,
              canInteract = function(entity, distance, data) -- This will check if you can interact with it, this won't show up if it returns false, this is OPTIONAL
                if IsPedAPlayer(entity) then return false end -- This will return false if the entity interacted with is a player and otherwise returns true
                return true
              end,
              drawColor = {255, 255, 255, 255}, 
              successDrawColor = {30, 144, 255, 255},
        }
    },
    distance = 1.3
})

-- Tray 4
exports['qb-target']:AddBoxZone('nk-burgershot:tray4',vector3(-1190.87, -894.37, 13.89), 0.4, 0.6, {
    name = 'nk-burgershot:tray4',
    heading = 350,
    debugPoly = Config.Debug,
    minZ=10.69,
  maxZ=14.69,
}, {
    options = {
        {
            num = 1,
            icon = 'fas fa-hand-holding',
            label = 'tray4',
            action = function(entity) -- This is the action it has to perform, this REPLACES the event and this is OPTIONAL
                if IsPedAPlayer(entity) then return false end -- This will return false if the entity interacted with is a player and otherwise returns true
                TriggerEvent("inventory:client:SetCurrentStash", "Burgershot")
                TriggerServerEvent("inventory:server:OpenInventory", "stash", "Burgershot", {maxweight = 1000000, slots = 50})
              end,
              canInteract = function(entity, distance, data) -- This will check if you can interact with it, this won't show up if it returns false, this is OPTIONAL
                if IsPedAPlayer(entity) then return false end -- This will return false if the entity interacted with is a player and otherwise returns true
                return true
              end,
              drawColor = {255, 255, 255, 255}, 
              successDrawColor = {30, 144, 255, 255},
        }
    },
    distance = 1.3
})



-- Storage
exports['qb-target']:AddBoxZone('nk-burgershot:storage', vector3(-1183.89, -892.21, 13.89), 1.0, 0.4, {
    name = 'nk-burgershot:storage',
    heading = 305,
    debugPoly = Config.Debug,
    minZ=10.69,
  maxZ=14.69,
}, {
    options = {
        {
            num = 1,
            icon = 'fas fa-box',
            label = 'Storage',
            action = function(entity) -- This is the action it has to perform, this REPLACES the event and this is OPTIONAL
                if IsPedAPlayer(entity) then return false end -- This will return false if the entity interacted with is a player and otherwise returns true
                TriggerEvent("inventory:client:SetCurrentStash", "BurgershotStorage")
                TriggerServerEvent("inventory:server:OpenInventory", "stash", "BurgershotStorage", {maxweight = 1000000, slots = 100})
              end,
              canInteract = function(entity, distance, data) -- This will check if you can interact with it, this won't show up if it returns false, this is OPTIONAL
                if IsPedAPlayer(entity) then return false end -- This will return false if the entity interacted with is a player and otherwise returns true
                return true
              end,
              job = 'burgershot',
              drawColor = {255, 255, 255, 255}, 
              successDrawColor = {30, 144, 255, 255},
        }
    },
    distance = 1.3
})

-- Outfits
exports['qb-target']:AddBoxZone('nk-burgershot:outfits', vector3(-1199.87, -903.17, 13.89), 0.4, 1.0, {
    name = 'nk-burgershot:outfits',
    heading = 300,
    debugPoly = Config.Debug,
    minZ=11.09,
    maxZ=15.09,
}, {
    options = {
        {
            type = 'client',
            event = 'qb-clothing:client:openOutfitMenu',
            icon = 'fas fa-shirt',
            label = 'Outfits',
            job = 'burgershot',
            drawColor = {255, 255, 255, 255},
            successDrawColor = {30, 144, 255, 255},
        }
    },
    distance = 2
})

-- Events
-- Make Dough
RegisterNetEvent('nk-burgershot:client:make_bs_dough', function()
    local Player = QBCore.Functions.GetPlayerData()
    local jobDuty = Player.job.onduty
    if not jobDuty then
        QBCore.Functions.Notify('You are not clocked in!', 'error', 3000)
    else
        exports['qb-menu']:openMenu({
            {
                header = 'Dough Mixer',
                icon = 'fas fa-cloud',
                isMenuHeader = true,
            },
            {
                header = 'Closemenu',
                icon = 'fas fa-circle-xmark',
                event = "qb-menu:client:closemenu",
            },
            
            {
                header = 'Make Dough',
                txt = 'Butter x 1, Flour x 1, Milk x 1',
                icon = 'fas fa-cloud',
                disabled = hasItems({'butter', 'flour', 'milk'}),
                params = {
                    isServer = true,
                    event = 'nk-burgershot:server:make_bs_dough',
                    args = {
                        returnItem = 'dough',
                    }
                }
            }
        })
    end
end)



RegisterNetEvent('nk-burgershot:client:bs_make_pour_coffee', function()
    local Player = QBCore.Functions.GetPlayerData()
    local jobDuty = Player.job.onduty
    if not jobDuty then
        QBCore.Functions.Notify('You are not clocked in!', 'error', 3000)
    else
        local args = {
            returnItems = {'coffee'}
        }
        QBCore.Functions.Progressbar('make_coffee', 'Pouring Coffee!!...', math.random(3000, 5000), false, true, {
            TriggerEvent('animations:client:EmoteCommandStart', {'handshake'}),
            disableMovement = true,
            disableMouse = false, 
            disableCombat = true
        }, {}, {}, {}, function()
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerServerEvent('nk-burgershot:server:giveitem', args)
        end, function ()
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end)
    end
end)
--
RegisterNetEvent('nk-burgershot:client:makebunmenu', function()
    local Player = QBCore.Functions.GetPlayerData()
    local jobDuty = Player.job.onduty
    if not jobDuty then
        QBCore.Functions.Notify('You are not clocked in!', 'error', 3000)
    else
        exports['qb-menu']:openMenu({
            {
                header = 'Make Burger Bun',
                icon = 'fas fa-burger-slice',
                isMenuHeader = true,
            },
            {
                header = 'Closemenu',
                icon = 'fas fa-circle-xmark',
                event = "qb-menu:client:closemenu",
            },
            {
                header = 'Burger Bun',
                txt = 'Dough x 1, Sugar x 1, Salt x 1',
                icon = 'fas fa-burger-slice',
                disabled = hasItems({'salt', 'sugar', 'dough'}),
                params = {
                    event = 'nk-burgershot:client:make_bs_bun',
                    args = {
                        returnItems = {'burgerbun'},
                        removeItems = {'salt', 'sugar', 'dough'},
                        amount = 1
                    }
                }
            }
        })
    end
end)

RegisterNetEvent('nk-burgershot:client:make_bs_bun', function(args)
    QBCore.Functions.Progressbar('make_base', 'Making Burger Bun', 6000, false, true, {
        TriggerEvent('animations:client:EmoteCommandStart', {'picklock'}),
        disableMovement = true,
        disableMouse = false, 
        disableCombat = true
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('nk-burgershot:server:removeitem', args)
        TriggerServerEvent('nk-burgershot:server:giveitem', args)
    end, function ()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('nk-burgershot:client:washhands', function()
    QBCore.Functions.Progressbar('wash_hands', 'Washing Hands', math.random(3000, 6000), false, true, {
        TriggerEvent('animations:client:EmoteCommandStart', {'cleanhands'}),
        disableMovement = true,
        disableMouse = false, 
        disableCombat = true
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end, function ()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('nk-burgershot:client:eat', function(item, label, duration, newHunger, newThirst, emote)
    QBCore.Functions.Progressbar(item, label, duration, false, true, {
        TriggerEvent('animations:client:EmoteCommandStart', {emote}),
        disableMovement = false,
        disableMouse = false, 
        disableCombat = false
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('nk-burgershot:server:removeeatitem', item, 1)
        TriggerServerEvent('nk-burgershot:server:addMetaData', newHunger, newThirst)
    end, function ()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('nk-burgershot:client:drink', function(item, label, duration, newHunger, newThirst, emote)
    QBCore.Functions.Progressbar(item, label, duration, false, true, {
        TriggerEvent('animations:client:EmoteCommandStart', {emote}),
        disableMovement = false,
        disableMouse = false, 
        disableCombat = false
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('nk-burgershot:server:removeeatitem', item, 1)
        TriggerServerEvent('nk-burgershot:server:addMetaData', newHunger, newThirst)
    end, function ()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('nk-burgershot:client:OpenFridge', function()
    local Player = QBCore.Functions.GetPlayerData()
    local jobDuty = Player.job.onduty
    if not jobDuty then
        QBCore.Functions.Notify('You are not clocked in!', 'error', 3000)
    else
        TriggerServerEvent("inventory:server:OpenInventory", "shop", "FridgeItems", Config.FridgeItems)
    end
end)

RegisterNetEvent('nk-burgershot:client:OpenCupboard', function()
    local Player = QBCore.Functions.GetPlayerData()
    local jobDuty = Player.job.onduty
    if not jobDuty then
        QBCore.Functions.Notify('You are not clocked in!', 'error', 3000)
    else
        TriggerServerEvent("inventory:server:OpenInventory", "shop", "CuboardItems", Config.Cupboard_Items)
    end
end)


RegisterNetEvent('nk-burgershot:client:OpenStaffFridge', function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "StaffFridgeItems", Config.StaffFridgeItems)
end)



--Cup Collecting
RegisterNetEvent('nk-burgershot:client:cupcollectingmenu', function()
    local Player = QBCore.Functions.GetPlayerData()
    local jobDuty = Player.job.onduty
    if not jobDuty then
        QBCore.Functions.Notify('You are not clocked in!', 'error', 3000)
    else
        exports['qb-menu']:openMenu({
            
            {
                header = 'Softdrink Empty',
                icon = 'fas fa-pizza-slice',
                isMenuHeader = true,
            },
            {
                header = 'Closemenu',
                icon = 'fas fa-circle-xmark',
                event = "qb-menu:client:closemenu",
            },
            {
                header = 'Small Cup',
                icon = 'fas fa-hand-holding',
                params = {
                    isServer = true,
                    event = 'nk-burgershot:server:giveitem',
                    args = {
                        returnItems = {'small_cup'},
                        amount = 1
                    }
                }
            },
            {
                header = 'Big Cup',
                icon = 'fas fa-hand-holding',
                params = {
                    isServer = true,
                    event = 'nk-burgershot:server:giveitem',
                    args = {
                        returnItems = {'big_cup'},
                        amount = 1
                    }
                }
            },
            {
                header = 'Milkshake Recipe',
                icon = 'fas fa-hand-holding',
                params = {
                    isServer = true,
                    event = 'nk-burgershot:server:giveitem',
                    args = {
                        returnItems = {'milkshake_recipe'},
                        amount = 1
                    }
                }
            }
        })
    end
end)



--Softdrink Menu
RegisterNetEvent('nk-burgershot:client:bs_makedrinks', function()
    local Player = QBCore.Functions.GetPlayerData()
    local jobDuty = Player.job.onduty
    if not jobDuty then
        QBCore.Functions.Notify('You are not clocked in!', 'error', 3000)
    else
        exports['qb-menu']:openMenu({
            
            {
                header = 'Softdrink Menu',
                isMenuHeader = true,
            },
            {
                header = 'Closemenu',
                icon = 'fas fa-circle-xmark',
                event = "qb-menu:client:closemenu",
            },
            {
                header = 'Small Softdrink',
                txt = 'Small Cup x 1',
                icon = 'fas fa-burger-slice',
                disabled = hasItems({ 'small_cup'}),
                params = {
                    event = 'nk-burgershot:client:givedrinks',
                    args = {
                        returnItems = {'small_softdrink'},
                        label = 'Strawberry Daquiri',
                        removeItems = {'small_cup'},
                        amount = 1
                    }
                }
            },
            {
                header = 'Big Softdrink',
                txt = 'Big Cup x 1',
                icon = 'fas fa-burger-slice',
                disabled = hasItems({ 'big_cup'}),
                params = {
                    event = 'nk-burgershot:client:givedrinks',
                    args = {
                        returnItems = {'big_softdrink'},
                        label = 'Big Softdrink',
                        removeItems = {'big_cup'},
                        amount = 1
                    }
                }
            },
            {
                header = 'Milk Shake',
                txt = 'Milkshake Recipe x 1',
                icon = 'fas fa-burger-slice',
                disabled = hasItems({ 'milkshake_recipe'}),
                params = {
                    event = 'nk-burgershot:client:givedrinks',
                    args = {
                        returnItems = {'milkshake'},
                        label = 'Milk Shake',
                        removeItems = {'milkshake_recipe'},
                        amount = 1
                    }
                }
            },
        })
    end
end)

--Choping Menu
RegisterNetEvent('nk-burgershot:client:bs_makechop', function()
    local Player = QBCore.Functions.GetPlayerData()
    local jobDuty = Player.job.onduty
    if not jobDuty then
        QBCore.Functions.Notify('You are not clocked in!', 'error', 3000)
    else
        exports['qb-menu']:openMenu({
            
            {
                header = 'Choping Menu!!..',
                isMenuHeader = true,
            },
            {
                header = 'Closemenu',
                icon = 'fas fa-circle-xmark',
                event = "qb-menu:client:closemenu",
            },
            {
                header = 'Patty',
                txt = 'Meat x 1',
                icon = 'fas fa-burger-slice',
                disabled = hasItems({ 'meat'}),
                params = {
                    event = 'nk-burgershot:client:givechop',
                    args = {
                        returnItems = {'bs_patty'},
                        label = 'Patty',
                        removeItems = {'meat'},
                        amount = 1
                    }
                }
            },
            {
                header = 'Patty BBQ',
                txt = 'Meat x 1',
                icon = 'fas fa-burger-slice',
                disabled = hasItems({ 'meat'}),
                params = {
                    event = 'nk-burgershot:client:givechop',
                    args = {
                        returnItems = {'bs_patty_bbq'},
                        label = 'Patty BBQ',
                        removeItems = {'meat'},
                        amount = 1
                    }
                }
            },
        })
    end
end)

--Donut_Crft Menu
RegisterNetEvent('nk-burgershot:client:donut_crft', function()
    local Player = QBCore.Functions.GetPlayerData()
    local jobDuty = Player.job.onduty
    if not jobDuty then
        QBCore.Functions.Notify('You are not clocked in!', 'error', 3000)
    else
        exports['qb-menu']:openMenu({
            
            {
                header = 'Choping Menu!!..',
                isMenuHeader = true,
            },
            {
                header = 'Closemenu',
                icon = 'fas fa-circle-xmark',
                event = "qb-menu:client:closemenu",
            },
            {
                header = 'Donut',
                icon = 'fas fa-burger-slice',
                params = {
                    event = 'nk-burgershot:client:givedonut',
                    args = {
                        returnItems = {'donut1'},
                        label = 'Donut',
                        amount = 1
                    }
                }
            },
            {
                header = 'Strawberry Donut',
                icon = 'fas fa-burger-slice',
                params = {
                    event = 'nk-burgershot:client:givedonut',
                    args = {
                        returnItems = {'donut2'},
                        label = 'Strawberry Donut',
                        amount = 1
                    }
                }
            },
            {
                header = 'Shocolate Donut',
                icon = 'fas fa-donut-slice',
                params = {
                    event = 'nk-burgershot:client:givedonut',
                    args = {
                        returnItems = {'donut3'},
                        label = 'Shocolate Donut',
                        amount = 1
                    }
                }
            },
        })
    end
end)


--Burgershot FOOD
RegisterNetEvent('nk-burgershot:client:make_burger', function()
    local Player = QBCore.Functions.GetPlayerData()
    local jobDuty = Player.job.onduty
    if not jobDuty then
        QBCore.Functions.Notify('You are not clocked in!', 'error', 3000)
    else
        exports['qb-menu']:openMenu({
            
            {
                header = 'Burger Menu',
                isMenuHeader = true,
            },
            {
                header = 'Closemenu',
                icon = 'fas fa-circle-xmark',
                event = "qb-menu:client:closemenu",
            },
            {
                header = 'Torpedo',
                txt = 'Patty x1, Bun x1',
                icon = 'fas fa-burger',
                disabled = hasItems({ 'bs_patty', 'burgerbun'}),
                params = {
                    event = 'nk-burgershot:client:giveburger',
                    args = {
                        returnItems = {'torpedo'},
                        label = 'Torpedo',
                        removeItems = {'bs_patty', 'burgerbun'},
                        amount = 1
                    }
                }
            },
            {
                header = 'Bleeder',
                txt = 'Patty x1, Lettuce x1, Bun x1, Tomatosauce x1',
                icon = 'fas fa-burger',
                disabled = hasItems({'tomatosauce', 'bs_lettuce', 'bs_patty', 'burgerbun'}),
                params = {
                    event = 'nk-burgershot:client:giveburger',
                    args = {
                        returnItems = {'bleeder'},
                        label = 'Bleeder',
                        removeItems = {'tomatosauce', 'bs_lettuce', 'bs_patty', 'burgerbun'},
                        amount = 1
                    }
                }
            },
            {
                header = 'Moneyshot',
                txt = 'Gratedcheese x1, Patty Raw x1, Lettuce x1, Bun x1, Tomatosauce x1',
                icon = 'fas fa-burger',
                disabled = hasItems({ 'gratedcheese', 'tomatosauce', 'bs_lettuce', 'bs_patty_bbq', 'burgerbun'}),
                params = {
                    event = 'nk-burgershot:client:giveburger',
                    args = {
                        returnItems = {'moneyshot'},
                        label = 'Moneyshot',
                        removeItems = {'gratedcheese', 'tomatosauce', 'bs_lettuce', 'bs_patty_bbq', 'burgerbun'},
                        amount = 1
                    }
                }
            },
            {
                header = 'Heartstopper',
                txt = 'Gratedcheese x1, PattyBBQ x1, Patty x1, Lettuce x1, Tomatosauce x1, Bun x1',
                icon = 'fas fa-burger',
                disabled = hasItems({ 'gratedcheese', 'tomatosauce', 'bs_lettuce', 'bs_patty_bbq', 'bs_patty', 'burgerbun'}),
                params = {
                    event = 'nk-burgershot:client:giveburger',
                    args = {
                        returnItems = {'heartstopper'},
                        label = 'Heartstopper',
                        removeItems = {'gratedcheese', 'tomatosauce', 'bs_lettuce', 'bs_patty_bbq', 'bs_patty', 'burgerbun'},
                        amount = 1
                    }
                }
            },
        })
    end
end)



--Burgershot FOOD
RegisterNetEvent('nk-burgershot:client:giveburger', function(args)
    QBCore.Functions.Progressbar('preparingburger', 'Preparing ' .. args.label, math.random(5000, 10000), false, true, {
        TriggerEvent('animations:client:EmoteCommandStart', {'picklock'}),
        disableMovement = true,
        disableMouse = false, 
        disableCombat = true
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('nk-burgershot:server:removeitem', args)
        TriggerServerEvent('nk-burgershot:server:giveitem', args)
    end, function ()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

--Make Drinks
RegisterNetEvent('nk-burgershot:client:givedrinks', function(args)
    TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "deepfry", 0.02)
    QBCore.Functions.Progressbar('preparingfood', 'Preparing ' .. args.label, math.random(5000, 10000), false, true, {
        TriggerEvent('animations:client:EmoteCommandStart', {'picklock'}),
        disableMovement = true,
        disableMouse = false, 
        disableCombat = true
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('nk-burgershot:server:removeitem', args)
        TriggerServerEvent('nk-burgershot:server:giveitem', args)
    end, function ()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

--Chop menu
RegisterNetEvent('nk-burgershot:client:givechop', function(args)
    TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
    QBCore.Functions.Progressbar('preparingchop', 'Preparing ' .. args.label, math.random(5000, 10000), false, true, {
        TriggerEvent('animations:client:EmoteCommandStart', {'bbqf'}),
        disableMovement = true,
        disableMouse = false, 
        disableCombat = true
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('nk-burgershot:server:removeitem', args)
        TriggerServerEvent('nk-burgershot:server:giveitem', args)
    end, function ()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

--Donut_crft Menu
RegisterNetEvent('nk-burgershot:client:givedonut', function(args)
    QBCore.Functions.Progressbar('preparingchop', 'Preparing ' .. args.label, math.random(5000, 10000), false, true, {
        TriggerEvent('animations:client:EmoteCommandStart', {'dispenser'}),
        disableMovement = true,
        disableMouse = false, 
        disableCombat = true
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('nk-burgershot:server:removeitem', args)
        TriggerServerEvent('nk-burgershot:server:giveitem', args)
    end, function ()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

--Burger Box Menu
RegisterNetEvent('nk-burgershot:client:bs_box_burgermenu', function(args)
    local Player = QBCore.Functions.GetPlayerData()
    local jobDuty = Player.job.onduty
    if not jobDuty then
        QBCore.Functions.Notify('You are not clocked in!', 'error', 3000)
    else
        exports['qb-menu']:openMenu({
            
            {
                header = 'Box Burger',
                icon = 'fas fa-box',
                isMenuHeader = true,
            },
            {
                header = 'Closemenu',
                icon = 'fas fa-circle-xmark',
                event = "qb-menu:client:closemenu",
            },
            {
                header = 'Torpedo Parsel',
                txt = 'Torpedo x 1, French Fries x1, Small Softdrink x1 ',
                icon = 'fas fa-burger',
                disabled = hasItems({ 'torpedo', 'french_fries', 'small_softdrink'}),
                params = {
                    event = 'nk-burgershot:client:bs_box_burger',
                    args = {
                        returnItems = {'torpedo_parsel'},
                        removeItems = {'torpedo', 'french_fries', 'small_softdrink'},
                        label = 'Torpedo Parsel',
                        amount = 1
                    }
                }
            },
            {
                header = 'Bleeder Parsel',
                txt = 'Bleeder x 1, French Fries x1, Small Softdrink x1 ',
                icon = 'fas fa-burger',
                disabled = hasItems({ 'torpedo', 'french_fries', 'small_softdrink'}),
                params = {
                    event = 'nk-burgershot:client:bs_box_burger',
                    args = {
                        removeItems = {'torpedo', 'french_fries', 'small_softdrink'},
                        returnItems = {'bleeder_parsel'},
                        label = 'Bleeder Parsel',
                        amount = 1
                    }
                }
            },
            
            {
                header = 'Moneyshot Parsel',
                txt = 'Moneyshot x 1, French Fries x1, Big Softdrink x1 ',
                icon = 'fas fa-burger',
                disabled = hasItems({ 'torpedo', 'french_fries', 'big_softdrink'}),
                params = {
                    event = 'nk-burgershot:client:bs_box_burger',
                    args = {
                        removeItems = {'torpedo', 'french_fries', 'big_softdrink'},
                        returnItems = {'moneyshot_parsel'},
                        label = 'Moneyshot Parsel',
                        amount = 1
                    }
                }
            },
            {
                header = 'Heartstopper Parsel',
                txt = 'Heartstopper x 1, French Fries x1, Milk Shake x1 ',
                icon = 'fas fa-burger',
                disabled = hasItems({ 'torpedo', 'french_fries', 'milkshake'}),
                params = {
                    event = 'nk-burgershot:client:bs_box_burger',
                    args = {
                        removeItems = {'torpedo', 'french_fries', 'milkshake'},
                        returnItems = {'heartstopper_parsel'},
                        label = 'Heartstopper Parsel',
                        amount = 1
                    }
                }
            }
        })
    end
end)

RegisterNetEvent('nk-burgershot:client:bs_box_burger', function(args)
    QBCore.Functions.Progressbar(args.returnItem, 'Collecting Burger Box ', 5000, false, true, {
        TriggerEvent('animations:client:EmoteCommandStart', {'inspect'}),
        disableMovement = true,
        disableMouse = false, 
        disableCombat = true
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {'carryfoodbag'})
        Wait(500)
        TriggerEvent('animations:client:EmoteCommandStart', {'c'})
        QBCore.Functions.Progressbar(args.returnItem, 'Boxing ' .. args.label, 4000, false, true, {
            TriggerEvent('animations:client:EmoteCommandStart', {'pull'}),
            disableMovement = true,
            disableMouse = false, 
            disableCombat = true
        }, {}, {}, {}, function()
            TriggerEvent('animations:client:EmoteCommandStart', {'carryfoodbag'})
            Wait(500)
            TriggerEvent('animations:client:EmoteCommandStart', {'c'})
            TriggerServerEvent('nk-burgershot:server:giveitem', args)
            TriggerServerEvent('nk-burgershot:server:removeitem', args)
        end, function ()
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end)
    end, function ()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)