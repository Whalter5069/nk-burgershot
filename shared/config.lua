Config = {}

Config.Debug = false

Config.MixerWaitTime = 8 -- How long it takes till the mixer has finished mixing -- Time in seconds 
Config.OvenWaitTime = 12 -- How long it takes till the oven has finished cooking -- Time in seconds

Config.FridgeItems = {
    label = 'Ingredients Fridge',
    slots = 20,
    items = {
        [1] = {name = 'butter', price = 50, amount = 50, info = {}, type = 'item', slot = 1},
        [2] = {name = 'milk', price = 50, amount = 50, info = {}, type = 'item', slot = 2},
        [3] = {name = 'tomatosauce', price = 50, amount = 50, info = {}, type = 'item', slot = 3},
        [4] = {name = 'strawberry', price = 50, amount = 50, info = {}, type = 'item', slot = 4},
        [5] = {name = 'rum', price = 50, amount = 50, info = {}, type = 'item', slot = 5},
        [6] = {name = 'gratedcheese', price = 50, amount = 50, info = {}, type = 'item', slot = 6},
        [7] = {name = 'meat', price = 50, amount = 50, info = {}, type = 'item', slot = 7},
        [8] = {name = 'bs_lettuce', price = 50, amount = 50, info = {}, type = 'item', slot = 8}
        -- add more here
    }
}


Config.StaffFridgeItems = {
    label = 'Fridge',
    slots = 20,
    items = {
        [1] = {name = 'kurkakola', price = 0, amount = 50, info = {}, type = 'item', slot = 1},
        
        -- add more here
    }
}

Config.Cupboard_Items = {
    label = 'Cupboard',
    slots = 20,
    items = {
        [1] = {name = 'salt', price = 0, amount = 50, info = {}, type = 'item', slot = 1},
        [2] = {name = 'flour', price = 0, amount = 50, info = {}, type = 'item', slot = 2},
        [3] = {name = 'sugar', price = 0, amount = 50, info = {}, type = 'item', slot = 3},
        -- add more here
    }
}
