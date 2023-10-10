fx_version 'cerulean'
game 'gta5'

author 'NK_NETWORK'
description 'Best Burgershot job scripts for QBCore'
version = '0.0.3'

client_scripts {
    'client/*.lua',
}

server_scripts {
    'server/server.lua'
}

dependencies {
    'qb-target',
    'qb-menu',
    'jim-payments'
}

shared_scripts {
    'shared/config.lua'
}

lua54 'yes'
