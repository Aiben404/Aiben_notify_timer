local minuteCounter = 0
local sentMessages = {}

CreateThread(function()
    Wait(3000)

    while true do
        Wait(60 * 1000)
        minuteCounter += 1

        local msg = Config.TimedMessages[minuteCounter]

        if msg and not sentMessages[minuteCounter] then
            sentMessages[minuteCounter] = true
            SendNUIMessage({
                action = "showNotification",
                message = msg
            })
        end
    end
end)


RegisterCommand("testmsg", function()
    SendNUIMessage({
        action = "showNotification",
        message = "📦 Test notification message"
    })
end)
