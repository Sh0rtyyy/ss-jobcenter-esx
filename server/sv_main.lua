local webhook = "https://discord.com/api/webhooks/1022085112923430962/1vtvvyE8_WQFcaR2bvYayk7B2fH526yGbGNB3zTb-BjG83swD02-rHlUiCxVatEFy_Uo"

RegisterNetEvent('ss-jobcenter:server:openJobCenter', function()
    local src = source
    TriggerClientEvent('ss-jobcenter:client:openJobCenter', src, Config)
end)

RegisterNetEvent('ss-jobcenter:server:startJob', function(job)
    local src = source
    local Player = ESX.GetPlayerFromId(src)

    local jobExists = false
    for k, v in pairs(Config.Jobs) do
        if v.rank == job then
            jobExists = true
        end
    end

    for k,v in pairs(Config.Locations) do
        if #(GetEntityCoords(GetPlayerPed(src)) - vector3(v.coords.x, v.coords.y, v.coords.z)) < 10.0 then
            if jobExists then
                if ESX.DoesJobExist(job, 0) then 
                    Player.setJob(job, 0)
                    lib.notify(src, {
                        title = 'Job center',
                        description = 'You have been hired as a '..job..'!',
                        type = 'success'
                    })
                    DiscordLog(webhook, GetPlayerName(src), GetPlayerName(src) .. ' [ ' .. src .. ' ] - ' .. " had set job as " .. job)
                else
                    KickCheater(src, ' is cheating. Or you have wrong config !')
                end
            else
                KickCheater(src, ' is cheating. Or you have wrong config !')
            end
        else
            KickCheater(src, ' is cheating. Opening from diffrent coords !!!')
        end
    end
end)

function KickCheater(src, message)
	print("Player ".. src .. message)
end

function DiscordLog(webhook,name,message,color)
    local embeds = {
        {
            ["title"] = name,
            ["description"] = message,
            ["type"] = "rich",
            ["color"] = 56108,
            ["footer"] = {
                ["text"] = "JOB CENTER " .. os.date('%H:%M - %d. %m. %Y', os.time()),
            },
        }
    }

    PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({ username = name, embeds = embeds }), { ['Content-Type'] = 'application/json' })
end