print('^200_phone by sum00er. https://discord.gg/pjuPHPrHnx')

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(2000)
        for k, v in pairs(Config.job) do
            exports.npwd:onMessage(v, function(ctx)
                local ped = GetPlayerPed(ctx.source)
                local coords = GetEntityCoords(ped)
                SendtoJobs(v, ctx.data.message, ctx.data.sourcePhoneNumber, coords, ctx.source)
            end)
        end
    end
end)

function SendtoJobs(job, msg, phone, coords, source)
    local xPlayers = ESX.GetExtendedPlayers('job', job)
    for _, xPlayer in pairs(xPlayers) do
        local playerData = exports.npwd:getPlayerData({ identifier = xPlayer.identifier })
        if Config.showId then
            msg = '['..phone..' (ID: '..source..')]: '..msg
        else
            msg = '['..phone..']: '..msg
        end
        exports.npwd:emitMessage({
            senderNumber = job,
            targetNumber = playerData.phoneNumber,
            message = msg,
            embed = {
                type = "location",
                coords = { coords.x, coords.y, coords.z },
                phoneNumber = phone
            }
        })
    end
end