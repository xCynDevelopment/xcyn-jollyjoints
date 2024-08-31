Dependancies

qb-target
qb-inventory (I use tgiann-inventory but it uses the same HasItem Function) see config
jim-payments



Add to qb-core/shared/items.lua

 ---Jolly
 
jollygreen = { name = 'jollygreen', label = 'Jolly Green', weight = 500, type = 'item', image = 'jollygreen.webp', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Very dank indeed' },

jollygreenextract = { name = 'jollygreenextract', label = 'Jolly Green Extract', weight = 500, type = 'item', image = 'jollygreenextract.webp', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Very dank extract indeed' },

rubbergloves = { name = 'rubbergloves', label = 'Rubber Gloves', weight = 500, type = 'item', image = 'rubbergloves.webp', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Very rubber' },

pressingpaper = { name = 'pressingpaper', label = 'Pressing Paper', weight = 500, type = 'item', image = 'pressingpapaer.webp', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Very paper' },

dankflavor = { name = 'dankflavor', label = 'Dank Flavor', weight = 500, type = 'item', image = 'dankflavor.webp', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Very Flavor of Dank' },

emptycan = { name = 'emptycan', label = 'Empty Can', weight = 500, type = 'item', image = 'emptycan.webp', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Very Dank Empty Can' },

emptycanlarge = { name = 'emptycanlarge', label = 'Tall Empty Can', weight = 500, type = 'item', image = 'emptycanlarge.webp', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Very Dank Empty Can' },

jollyenergy = { name = 'jollyenergy', label = 'Jolly Energy', weight = 500, type = 'item', image = 'jollyenergy.webp', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Very Dank Energy Drink that gets you HIGH' },

jollyenergysf = { name = 'jollyenergysf', label = 'Sugar Free Jolly Energy', weight = 500, type = 'item', image = 'sfjollyenergy.webp', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Very Dank Energy Drink that gets you HIGH, But not Diabetes' },

jollyenergycbd = { name = 'jollyenergycbd', label = 'Jolly Energy CBD', weight = 500, type = 'item', image = 'jollyenergycbd.webp', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Very Dank Energy Drink that gets you HIGH, But not Diabetes' },

jollygreencbdextract = { name = 'jollygreencbdextract', label = 'Jolly Green CBD Extract', weight = 500, type = 'item', image = 'jollygreenextract.webp', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Very Dank CBD Extract' },
jollyjuice = { name = 'jollyjuice', label = 'Jolly Pop THC', weight = 500, type = 'item', image = 'jollyjuice.webp', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Very Dank THC Pop' },


Add to qb-core/shared/jobs.lua 


jolly = {
        label = 'Jolly Joints',
	defaultDuty = false,
	offDutyPay = false,
	grades = {
		['0'] = { name = 'Trainee', payment = 50 },
		['1'] = { name = 'Busser', payment = 75 },
		['2'] = { name = 'Shift Leader', payment = 100 },
		['3'] = { name = 'Manager', isboss = true, payment = 600 },
		['4'] = { name = 'Manager', isboss = true, payment = 150 },
	},
},
