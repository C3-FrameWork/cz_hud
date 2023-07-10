-- client.lua

-- Function to update the HUD with new information
function updateHUD(money, bank, dirtMoney, jobGrade)
    SendNUIMessage({
        type = 'updateHUD',
        money = money,
        bank = bank,
        dirtMoney = dirtMoney,
        jobGrade = jobGrade
    })
end

-- Example usage: updating the HUD on player information change
Citizen.CreateThread(function()
    -- Initialize the NUI
    SendNUIMessage({
        type = 'initHUD'
    })

    while true do
        -- Example data retrieval from your game or application
        local money = 5000
        local bank = 10000
        local dirtMoney = 2500
        local jobGrade = 'Sergeant'

        -- Update the HUD with the new values
        updateHUD(money, bank, dirtMoney, jobGrade)

        -- Delay between updates (in milliseconds)
        Citizen.Wait(1000)
    end
end)
