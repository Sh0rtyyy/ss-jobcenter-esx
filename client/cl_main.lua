ESX = exports["es_extended"]:getSharedObject()

CreateThread(function()
    TriggerEvent('ss-jobcenter:client:setup')
end)

RegisterNetEvent('ss-jobcenter:client:setup')
AddEventHandler('ss-jobcenter:client:setup', function()

    for k, v in pairs(Config.Locations) do

        local blip = AddBlipForCoord(v.coords)
        SetBlipSprite(blip, v.blip.sprite)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, v.blip.scale)
        SetBlipColour(blip, v.blip.color)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(v.blip.label)
        EndTextCommandSetBlipName(blip)

        RequestModel(v.model)
        while not HasModelLoaded(v.model) do
            Wait(1000)
        end

        local ped = CreatePed(0, v.model, v.coords.x, v.coords.y, v.coords.z-1, v.coords.w, false, true)
        SetEntityHeading(ped, v.coords.w)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        exports.ox_target:addLocalEntity(ped,{
            name = 'menu',
            serverEvent = 'ss-jobcenter:server:openJobCenter',
            icon = 'fa-solid fa-suitcase',
            label = 'Open job center'
        })
    end
end)

RegisterNetEvent('ss-jobcenter:client:openJobCenter', function(config)
    SendNUIMessage({
        type = 'open',
        config = config,
    })
    SetNuiFocus(true, true)
end)

RegisterNUICallback('startJob', function(data, cb)
    TriggerServerEvent('ss-jobcenter:server:startJob', data.rank)
    SetNuiFocus(false, false)
    cb('ok')
end)

RegisterNUICallback('close', function(data, cb)
    SetNuiFocus(false, false)
    cb('ok')
end)
