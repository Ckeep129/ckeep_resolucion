        local QBCore = exports['qb-core']:GetCoreObject()
        local aspect_ratio = GetAspectRatio(0)
        local resolucion_x, _ = GetActiveScreenResolution()
        local resolucion_y = resolucion_x / aspect_ratio
    Citizen.CreateThread(function()   
        while true do     
            Citizen.Wait(1000)
            print("Resolucion: x " .. resolucion_x .. ", y " .. resolucion_y)
            if resolucion_x == 1920 then
                print('1920')
            elseif resolucion_x == 1680 then
                QBCore.Functions.Notify('Cambia tu resolucion para poder jugar en NeonRP', "primary")
                Citizen.Wait(10000)
                QBCore.Functions.Notify('Cambia tu resolucion a 1920x1080 para poder jugar en NeonRP', "primary")
            end
        end
end)