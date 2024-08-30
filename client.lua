local QBCore = exports['qb-core']:GetCoreObject()
local lib = 0


local function workmenu()
    lib.registerContext({
        id = 'workmenu',
        title = 'Jolly Joints Employee',
        options = {
            {
                title = 'Make Large Drink',
                description = ('**Speed:** %s %s'):format(autoPilotSpeed, speedType),
                icon = 'fas fa-car',
                onSelect = function()
                    changeSpeedInput()
                end
            },
            {
                title = 'Make Small Drink',
                description = (''),
                icon = 'fas fa-car',
                onSelect = function()
                    changeDriveStyleInput()
                end
            },
            {
                title = 'Make Gummies',
                icon = 'fas fa-ban',
                onSelect = function()
                    disableAutoPilot()
                end
            }
        }
    })
    lib.showContext('workmenu')
end

RegisterNetEvent('xcyn:largemenu', function()
    workmenu()
end)



RegisterNetEvent('xcyn:jolly:harvest')
AddEventHandler('xcyn:jolly:harvest', function()
    local PlayerData = QBCore.Functions.GetPlayerData()
    if PlayerData.job.name == "jolly" then
        QBCore.Functions.Progressbar("eat_something", ("Picking Dank Ass Weed"), 2000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "missmechanic", 
            anim = "work2_base", 
            flags = 3,
        }, {}, {}, function() -- Done
            StopAnimTask(Ped, "missmechanic", "work2_base", 1.0)
            ClearPedTasks(Ped)
            TriggerServerEvent("xcyn:harvestloot")
        end)
    else
        QBCore.Functions.Notify("You dont work here", "error")
    end
end)


RegisterNetEvent('xcyn:jolly:condition')
AddEventHandler('xcyn:jolly:condition', function()
    local PlayerData = QBCore.Functions.GetPlayerData()
    if PlayerData.job.name == "jolly" then
        local hasbud = exports["tgiann-inventory"]:HasItem("jollygreen", 3)
        local haspaper = exports["tgiann-inventory"]:HasItem("pressingpaper", 1)
        local hasgloves = exports["tgiann-inventory"]:HasItem("rubbergloves", 1)
        if hasbud and haspaper and hasgloves then
            QBCore.Functions.Progressbar("eat_something", ("Weighing and Pressing Nugs into extract"), 2000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "missmechanic", 
                anim = "work2_base", 
                flags = 3,
            }, {}, {}, function() -- Done
                StopAnimTask(Ped, "missmechanic", "work2_base", 1.0)
                ClearPedTasks(Ped)
                TriggerServerEvent("xcyn:giveextract")
            end)
        else
            QBCore.Functions.Notify("You dont have what you need bro", "error")
        end
    else
        QBCore.Functions.Notify("You dont work here", "error")
    end
end)


RegisterNetEvent('xcyn:jolly:cooler')
AddEventHandler('xcyn:jolly:cooler', function()
    local PlayerData = QBCore.Functions.GetPlayerData()
    if PlayerData.job.name == "jolly" then
        QBCore.Functions.Progressbar("eat_something", ("Logging into Marketplace"), 1000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "anim@amb@board_room@stenographer@computer@", 
            anim = "glance_board_03_right_amy_skater_01", 
            flags = 3,
        }, {}, {}, function() -- Done
            StopAnimTask(Ped, "anim@amb@board_room@stenographer@computer@", "glance_board_03_right_amy_skater_01", 1.0)
            ClearPedTasks(Ped)
            TriggerServerEvent("inventory:server:OpenInventory", "shop", "jolly", "jolly")
        end)
    else
        QBCore.Functions.Notify("You dont work here", "error")
    end
end)




------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
--------------------------------------TARGET STUFF----------------------------------------------
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
exports['qb-target']:AddBoxZone("harvest1", vector3(-21.59, -1046.98, 27.95), 1, 1, {
 	name = "harvest1",
	heading = 306.96,
	debugPoly = false,
	minZ = 26,
	maxZ = 29,
}, {
	options = {
		{
            type = "client",
            event = "xcyn:jolly:harvest",
			icon = "",
			label = "Pick Dank Buds Bro",
		},
	},
	distance = 2.5
})
exports['qb-target']:AddBoxZone("harvest2", vector3(-22.01, -1044.84, 27.89), 1, 1, {
    name = "harvest2",
   heading = 306.96,
   debugPoly = false,
   minZ = 26,
   maxZ = 29,
}, {
   options = {
       {
           type = "client",
           event = "xcyn:jolly:harvest",
           icon = "",
           label = "Pick Dank Buds Bro",
       },
   },
   distance = 2.5
})
exports['qb-target']:AddBoxZone("harvest3", vector3(-23.73, -1046.21, 28.13), 1, 1, {
    name = "harvest3",
   heading = 306.96,
   debugPoly = false,
   minZ = 26,
   maxZ = 29,
}, {
   options = {
       {
           type = "client",
           event = "xcyn:jolly:harvest",
           icon = "",
           label = "Pick Dank Buds Bro",
       },
   },
   distance = 2.5
})
exports['qb-target']:AddBoxZone("harvest4", vector3(-23.55, -1044.31, 28.02), 1, 1, {
    name = "harvest4",
   heading = 306.96,
   debugPoly = false,
   minZ = 26,
   maxZ = 29,
}, {
   options = {
       {
           type = "client",
           event = "xcyn:jolly:harvest",
           icon = "",
           label = "Pick Dank Buds Bro",
       },
   },
   distance = 2.5
})
exports['qb-target']:AddBoxZone("condition", vector3(-16.68, -1039.89, 28.43), 1, 1, {
    name = "condition",
   heading = 306.96,
   debugPoly = false,
   minZ = 26,
   maxZ = 29,
}, {
   options = {
       {
           type = "client",
           event = "xcyn:jolly:condition",
           icon = "",
           label = "Press Dank Buds Bro",
       },
   },
   distance = 2.5
})
exports['qb-target']:AddBoxZone("buyingred", vector3(-24.44, -1040.5, 28.26), 1, 1, {
   name = "buyingred",
   heading = 306.96,
   debugPoly = false,
   minZ = 27.8,
   maxZ = 29,
}, {
   options = {
       {
           type = "client",
           event = "xcyn:jolly:cooler",
           icon = "",
           label = "Buy Supplies",
       },
   },
   distance = 2.5
})
exports['qb-target']:AddBoxZone("makestuff", vector3(-17.52, -1042.67, 28.13), 1, 1, {
    name = "makestuff",
    heading = 306.96,
    debugPoly = false,
    minZ = 27.8,
    maxZ = 29,
 }, {
    options = {
        {
            type = "client",
            event = "xcyn:largemenu",
            icon = "",
            label = "Make Dank Stuff",
        },
    },
    distance = 2.5
 })