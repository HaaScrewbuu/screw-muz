local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("screwmuztoplama")
AddEventHandler("screwmuztoplama", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)
    xPlayer.Functions.AddItem("muz", 1)
    TriggerClientEvent('QBCore:Notify', source, { type = 'success', text = 'Muzu Topladın!', length = 2500,})
end)

RegisterNetEvent("screwmuzisleme")
AddEventHandler("screwmuzisleme", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)
    if xPlayer.Functions.RemoveItem("muz", 5) then
        xPlayer.Functions.AddItem("muzislenmis", 1)
        TriggerClientEvent('QBCore:Notify', source, { type = 'success', text = 'Muzu İşledin!', length = 2500,})
    else
        TriggerClientEvent('QBCore:Notify', source, { type = 'error', text = 'Yeterince Muz Toplamamışsın!', length = 2500,})
    end
end)

RegisterNetEvent("screwmuzlupastasat")
AddEventHandler("screwmuzlupastasat", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)
    if  xPlayer.Functions.RemoveItem("muzislenmis", 1) then
        xPlayer.Functions.AddMoney( "cash", Config.MuzluPastaFiyat)
        TriggerClientEvent('QBCore:Notify', source, { type = 'success', text = 'Muzlu Pasta Sattın!', length = 2500,})
    else
        TriggerClientEvent('QBCore:Notify', source, source, { type = 'error', text = 'Yeterince Muzlu Pastan yok!', length = 2500,})
    end
end)