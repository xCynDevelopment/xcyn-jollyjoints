# Setup Instructions

## Dependencies

- `qb-target`
-  I use `tgiann-inventory` but it uses the same `HasItem`, `AddItem` and `RemoveItem` functions as `QBCore` Just configure the exports/add/remove/has item to whatever inventory you use
- `jim-payments`

## Add to `qb-core/shared/items.lua`

```lua
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
abgummy = { name = 'abgummy', label = 'Apple Berry Gummy', weight = 500, type = 'item', image = 'abgummy.webp', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Very Dank Gummy' },
bbgummy = { name = 'bbgummy', label = 'Berry Blast Gummy', weight = 500, type = 'item', image = 'bbgummy.webp', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Very Dank Gummy' },
rdgummy = { name = 'rdgummy', label = 'Raspberry Dream Gummy', weight = 500, type = 'item', image = 'rdgummy.webp', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Very Dank Gummy' },
skgummy = { name = 'skgummy', label = 'Spiked Kiwi Gummy', weight = 500, type = 'item', image = 'skgummy.webp', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Very Dank Gummy' },
tsgummy = { name = 'tsgummy', label = 'Tropical Storm Gummy', weight = 500, type = 'item', image = 'tsgummy.webp', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Very Dank Gummy' },

```
## Add to `qb-core/shared/jobs.lua`
```lua
jolly = {
    label = 'Jolly Joints',
    defaultDuty = false,
    offDutyPay = false,
    grades = {
        ['0'] = { name = 'Trainee', payment = 50 },
        ['1'] = { name = 'Bud Tender', payment = 75 },
        ['2'] = { name = 'Cashier', payment = 100 },
        ['4'] = { name = 'Manager', isboss = true, payment = 150 },
    },
},
```
