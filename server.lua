ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent("blahkhan_911:process")
AddEventHandler("blahkhan_911:process", function(Player, mess, loc)
  for _, playerId in ipairs(GetPlayers()) do
    local p = ESX.GetPlayerFromId(playerId)
    if p.job.name == 'police' or p.job.name == 'ambulance' then
      TriggerClientEvent('blahkhan_911:show_mess', playerId, mess, loc)
    end
  end
end)
