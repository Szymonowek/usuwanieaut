

RegisterNetEvent("ezz:delallveh")
AddEventHandler("ezz:delallveh", function ()
	TriggerEvent("chatMessage", Config.Nazwaserwera, {255, 248, 0}, Config.Wiadomosc30)
	Wait(20000)
	TriggerEvent("chatMessage", Config.Nazwaserwera, {255, 248, 0}, Config.Wiadomosc10)
	Wait(5000)
	TriggerEvent("chatMessage", Config.Nazwaserwera, {255, 248, 0}, Config.Wiadomosc5)
	Wait(5000)
    for vehicle in EnumerateVehicles() do
        if (not IsPedAPlayer(GetPedInVehicleSeat(vehicle, -1))) then 
            SetVehicleHasBeenOwnedByPlayer(vehicle, false) 
            SetEntityAsMissionEntity(vehicle, false, false) 
            DeleteVehicle(vehicle)
            if (DoesEntityExist(vehicle)) then 
                DeleteVehicle(vehicle) 
            end
        end
    end
end)

