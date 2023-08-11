# Nk-Burgershot
# Burgershot Job for QBCore
# Made By NK_NETWORKS Dev Team

Advanced Burgershot Job With Modern Mlo 

## Dependencies

- qb-core - https://github.com/qbcore-framework/qb-core (Latest)
- qb-target - https://github.com/BerkieBb/qb-target
- qb-menu - https://github.com/qbcore-framework/qb-menu.git

If you don't have the MLO, you can use this (https://www.gta5-mods.com/maps/gtaiv-burgershot-interior-sp-and-fivem) and change the vectors in the [clint.lua].


## Add this to your [qb-core/shared/jobs.lua]
```
    ["burgershot"] = {
		label = "Burgershot Employee",
		defaultDuty = true,
		grades = {
	    ['0'] = {
		name = "Trainee",
		payment = 50
	    },
			['1'] = {
		name = "Employee",
		payment = 75
	    },
			['2'] = {
		name = "Burger Flipper",
		payment = 100
	    },
			['3'] = {
		name = "Manager",
		payment = 125
	    },
			['4'] = {
		name = "CEO",
				isboss = true,
		payment = 150
	    },
	},
	},
```

## Add this to your [qb-core/shared/items.lua]
```
--NK BURGERSHOT Food
	["torpedo"] 				= {["name"] = "torpedo", 			 	["label"] = "Torpedo", 					["weight"] = 310, 		["type"] = "item", 		["image"] = "bs_torpedo.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
	["torpedo_parsel"] 			= {["name"] = "torpedo_parsel", 		["label"] = "Torpedo Parsel", 			["weight"] = 310, 		["type"] = "item", 		["image"] = "torpedo_parsel.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
	["bleeder"] 				= {["name"] = "bleeder", 			 	["label"] = "Bleeder", 					["weight"] = 250, 		["type"] = "item", 		["image"] = "bs_the-bleeder.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
	["bleeder_parsel"] 			= {["name"] = "bleeder_parsel", 	 	["label"] = "Bleeder Parsel", 			["weight"] = 250, 		["type"] = "item", 		["image"] = "bleeder_parsel.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
	["moneyshot"] 			 	= {["name"] = "moneyshot", 			 	["label"] = "Moneyshot", 				["weight"] = 300, 		["type"] = "item", 		["image"] = "bs_money-shot.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
	["moneyshot_parsel"] 	 	= {["name"] = "moneyshot_parsel", 		["label"] = "Moneyshot Parsel", 		["weight"] = 300, 		["type"] = "item", 		["image"] = "moneyshot_parsel.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
	["heartstopper"] 		 	= {["name"] = "heartstopper", 			["label"] = "Heartstopper", 			["weight"] = 2500, 		["type"] = "item", 		["image"] = "bs_the-heart-stopper.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
	["heartstopper_parsel"] 	= {["name"] = "heartstopper_parsel", 	["label"] = "Heartstopper Parsel", 		["weight"] = 2500, 		["type"] = "item", 		["image"] = "heartstopper_parsel.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
	["french_fries"] 			= {["name"] = "french_fries", 	     	["label"] = "French fries", 			["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_fries.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
	["donut1"] 					= {["name"] = "donut1", 				["label"] = "Donut", 					["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_donut1.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
	["donut2"] 					= {["name"] = "donut2", 				["label"] = "Strawberry Donut", 		["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_donut2.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
	["donut3"] 					= {["name"] = "donut3", 				["label"] = "Shocolate Donut", 		["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_donut3.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},

	-- Drinks NK BURGERSHOT
	["big_softdrink"] 			 = {["name"] = "big_softdrink", 	    ["label"] = "Big Softdrink", 	    	["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_softdrink.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Uma cola fresquinha"},
	["milkshake"] 			     = {["name"] = "milkshake", 	     	["label"] = "Milk Shake", 				["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_milkshake.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Hand-scooped for you!"},
	["small_softdrink"]      	 = {["name"] = "small_softdrink",  		["label"] = "Small Softdrink",      	["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_copopequeno_cola.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Uma cola fresquinha"},

	--Ingredients NK BURGERSHOT
	["salt"]                    = {["name"] = "salt",	            	["label"] = "Salt",                 	["weight"] = 1000, ["type"] = "item",  ["image"] = "salt.png",      ["unique"] = true,  ["useable"] = false, ["shouldClose"] = false, ["description"] = "Salt"},
	["flour"]                   = {["name"] = "flour",          		["label"] = "Flour",                	["weight"] = 1000, ["type"] = "item",  ["image"] = "flour.png",                             ["unique"] = true,      ["useable"] = false,    ["shouldClose"] = false,   ["description"] = "Flour A Ingredient"},
	["sugar"]                   = {["name"] = "sugar",          		["label"] = "Sugar",                	["weight"] = 1000, ["type"] = "item",  ["image"] = "sugar.png",                             ["unique"] = true,      ["useable"] = false,    ["shouldClose"] = false,   ["description"] = "Sugar A Ingredient "},
	["meat"] 					= {["name"] = "meat",  	     			["label"] = "Meat",	 					["weight"] = 200, 		["type"] = "item", 		["image"] = "meat.png", 	            	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A slab of Meat", },
	["tomatosauce"]             = {["name"] = "tomatosauce",	     	["label"] = "Tomato Sauce",	            ["weight"] = 1000,      ["type"] = "item",      ["image"] = "tomatosauce.png",              ["unique"] = true,      ["useable"] = false,    ["shouldClose"] = false,   ["description"] = "Tomato Sauce"},
	["gratedcheese"]            = {["name"] = "gratedcheese",	    	["label"] = "Grated Cheese",        	["weight"] = 1000,      ["type"] = "item",      ["image"] = "gratedcheese.png",             ["unique"] = true,      ["useable"] = false,    ["shouldClose"] = false,   ["description"] = "Grated Cheese"},
	["burgerbun"] 		    	= {["name"] = "burgerbun", 			    ["label"] = "Burger Bun",		    	["weight"] = 125, 		["type"] = "item",		["image"] = "bs_bun.png", 		    		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
	
	["bs_patty_bbq"] 			= {["name"] = "bs_patty_bbq", 			["label"] = "patty bbq", 	     	    ["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_patty_bbq.png", 	        ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
	["bs_patty"] 		     	= {["name"] = "bs_patty", 		    	["label"] = "patty", 		        	["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_patty.png", 		    	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
	["bs_lettuce"] 				= {["name"] = "bs_lettuce", 			["label"] = "Lettuce", 					["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_lettuce.png", 	    		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
	["tomate"] 				 	= {["name"] = "tomate", 			 	["label"] = "Tomate", 					["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_tomato.png", 	    		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
	["tomato_cut"] 		    	= {["name"] = "tomato_cut",     		["label"] = "Tomate Cut", 	    		["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_tomatecortado.png", 	    ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
	["dirty_potato"] 			= {["name"] = "dirty_potato", 			["label"] = "Dirty Potato", 			["weight"] = 1500, 		["type"] = "item", 		["image"] = "bs_batatasuja.png", 	    	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
	["raw_potato"] 		     	= {["name"] = "raw_potato", 			["label"] = "Raw Potato", 				["weight"] = 1500, 		["type"] = "item", 		["image"] = "bs_batatacrua.png", 	    	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
	["cut_potato"] 		    	= {["name"] = "cut_potato", 		    ["label"] = "Cut Potato", 		    	["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_batatacortada.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
	["milkshake_recipe"] 		= {["name"] = "milkshake_recipe", 		["label"] = "Milkshake Recipe", 		["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_ingredients_icecream.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
	["syrup"] 		 	 		= {["name"] = "syrup", 			     	["label"] = "Syrup", 					["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_ingredients_hfcs.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
	["big_cup"] 				= {["name"] = "big_cup", 		    	["label"] = "Big Cup", 			     	["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_softdrink_empty.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
	["small_cup"] 		    	= {["name"] = "small_cup", 		     	["label"] = "Small Cup", 		    	["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_copobebidavazio.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
	["donut1"] 					= {["name"] = "donut1", 				["label"] = "Donut", 					["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_donut1.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
	["donut2"] 					= {["name"] = "donut2", 				["label"] = "Donut de morango", 		["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_donut2.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
	["donut3"] 					= {["name"] = "donut3", 				["label"] = "Donut de chocolate", 		["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_donut3.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},

```

## Add the 2 .ogg files in [sounds] to [interact-sound/client/html/sounds]

## Don't forget to copy and paste the pictures in [images] to [qb-inventory/html/images] or to whatever inventory script you're using.
