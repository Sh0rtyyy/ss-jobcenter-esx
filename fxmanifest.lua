fx_version 'cerulean'
game 'gta5'
lua54 'yes'
description 'Simplified Studios Jobcenter'
version '1.2.0'

ui_page 'html/index.html'

shared_script {
    "config.lua",
    '@ox_lib/init.lua',
    '@es_extended/imports.lua'
}

client_scripts {
    'client/cl_main.lua',
}

server_scripts {
    'server/sv_main.lua',
}

files {
    'html/index.html',
    'html/style.css',
    'html/script.js',
}