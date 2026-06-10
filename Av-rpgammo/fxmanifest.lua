fx_version 'cerulean'
game 'gta5'

lua54 'yes'

author 'av'
description 'avtikarrpgammo'
version '1.0.0'

shared_scripts {
    '@qb-core/shared/locale.lua'
}

client_scripts {
    'client.lua'
}

server_scripts {
    'server.lua'
}

dependencies {
    'qb-core'
}