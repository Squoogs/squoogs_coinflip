local heads = false

local tails = false

CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/flipcoin', 'Flip a coin!')
end)

function coinToss()
    local randomNum = math.random(1, 100)
    if randomNum < 50 then
        TriggerEvent('chat:addMessage', {
            color = { 255, 0, 0},
            multiline = true,
            args = {"Coin Flip", "It's heads!"}
        })
    elseif randomNum > 50 then
        TriggerEvent('chat:addMessage', {
            color = { 255, 0, 0},
            multiline = true,
            args = {"Coin Flip", "It's tails!"}
        })
    elseif randomNum == 50 then
        TriggerEvent('chat:addMessage', {
            color = { 255, 0, 0},
            multiline = true,
            args = {"Coin Flip", "The coin landed standing up!"}
        })
    end
end

-- RegisterNetEvent('squoogs_misc:coinToss')
-- AddEventHandler('squoogs_misc:coinToss', function()
--     coinToss()
-- end)

RegisterCommand('flipcoin', function()
   coinToss()
end)
