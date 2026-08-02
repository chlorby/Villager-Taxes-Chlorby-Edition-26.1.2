
# villager taxes : chlorby edition (˶˃ ᵕ ˂˶)

datapack for minecraft java edition 26.1.2

credits go to Auopoex [for making the original datapack](https://www.curseforge.com/minecraft/data-packs/villager-taxes). this is simply my take on it, updated and expanded for 26.1.2

## what this datapack does

this datapack allows villages to collect emerald taxes through specially designated tax barrels

each eligible villager contributes to the nearest tax barrel within the configured tax radius. villagers are assigned to only one barrel, so overlapping villages should not produce duplicate taxes

by default:

* taxes are collected once per minecraft day at dawn
* each adult, employed, non-nitwit villager contributes 1 emerald
* villagers are assigned to the nearest tax barrel within 64 blocks
* messages are shown to players within 64 blocks
* each barrel can generate up to 128 new emeralds per collection
* overflow is saved as a pending balance instead of being lost
* duplicate invisible barrel markers are automatically removed

## installation

1. back up your world (Please)
2. open the world’s `datapacks` folder
3. remove any older versions of village tribute or villager taxes
4. place the new zip file into the `datapacks` folder
5. reopen the world or run:

```mcfunction
/reload
```

you should see this message confirming that the datapack loaded:

```text
[Villager Taxes] Villager Taxes loaded.
```

make sure only one version of the datapack is installed at a time. having multiple versions active can cause unexpected behavior

## creating a tax barrel

1. place a barrel
2. place a bell directly on top of it
3. press `q` to drop an emerald onto the barrel

one emerald will be consumed and the barrel will become a local tax barrel

putting an emerald inside the barrel does not activate it btw

you can also create multiple tax barrels!

## how local tax districts work

each eligible villager is assigned to the nearest tax barrel within the configured tax radius

the default radius is 64 blocks

even if multiple tax districts overlap, a villager will contribute to only one barrel.. basically whichever one is closest

by default, taxpayers must:

* be adults
* have a profession
* not be nitwits

only loaded villagers and loaded tax barrels are processed

## collection timing

taxes are collected at dawn by default

sleeping through the night should still trigger collection when the world clock passes dawn. automatic collection is also limited to once per minecraft day, preventing the same taxes from being deposited repeatedly during one morning

you can change the scheduled collection time with:

```mcfunction
/function vt:config/timing/dawn
/function vt:config/timing/noon
/function vt:config/timing/dusk
/function vt:config/timing/midnight
```

you can also switch to a repeating interval:

```mcfunction
/function vt:config/timing/interval_10m
/function vt:config/timing/interval_20m
/function vt:config/timing/interval_40m
/function vt:config/timing/interval_60m
```

## checking a tax barrel

stand near a tax barrel and run:

```mcfunction
/function vt:status
```

this shows:

* the nearest tax barrel
* its coordinates
* its assigned taxpayer population
* its pending emerald balance
* the current tax radius and rate
* the approximate time until the next collection
* whether its district overlaps another barrel

to reiterate, overlapping is not (Or Shouldn't Be) a problem. taxpayers are still assigned only to the nearest barrel

## manually collecting taxes

to immediately run a collection for every loaded tax district:

```mcfunction
/function vt:admin/collect_now
```

this is useful for testing without waiting until the next scheduled collection

## diagnosing problems

stand near the tax barrel and run:

```mcfunction
/function vt:admin/diagnose
```

this displays information such as:

* the current minecraft time and day
* the configured collection time
* whether a loaded tax-barrel marker exists
* how many tax-barrel markers are near you
* the nearest barrel’s taxpayer count
* the barrel’s pending emerald balance

there should normally be only one marker at a physical tax barrel

## repairing duplicate tax-barrel markers

older versions could accidentally create multiple invisible marker entities at the same barrel. this caused the same tax payment to be deposited more than once

the current version automatically repairs duplicate markers:

* when the datapack loads
* during regular barrel cleanup
* immediately before each tax collection

you can also repair them manually with:

```mcfunction
/function vt:admin/repair_markers
```

the command will tell you how many duplicate markers were removed

## removing a tax barrel

stand within 8 blocks of the tax barrel and run:

```mcfunction
/function vt:admin/remove_nearest
```

this cleanly removes the datapack marker without requiring you to break the barrel

breaking the barrel will also remove its marker automatically

## viewing or resetting configuration

view the current settings:

```mcfunction
/function vt:config/show
```

reset everything to its default values:

```mcfunction
/function vt:config/reset
```

## tax radius

the tax radius determines how far a barrel can search for eligible villagers

```mcfunction
/function vt:config/radius/32
/function vt:config/radius/48
/function vt:config/radius/64
/function vt:config/radius/96
/function vt:config/radius/128
```

## notification radius

this determines how close a player must be to receive tax messages, sounds, and effects

```mcfunction
/function vt:config/notification_radius/32
/function vt:config/notification_radius/48
/function vt:config/notification_radius/64
/function vt:config/notification_radius/96
/function vt:config/notification_radius/128
```

## emeralds per taxpayer

```mcfunction
/function vt:config/rate/1
/function vt:config/rate/2
/function vt:config/rate/3
/function vt:config/rate/5
```

for example, setting the rate to `2` means every eligible villager generates 2 emeralds per collection

## maximum taxes per collection

```mcfunction
/function vt:config/max_tax/64
/function vt:config/max_tax/128
/function vt:config/max_tax/256
/function vt:config/max_tax/unlimited
```

this limits the amount of new taxes one barrel can generate during a single collection

pending overflow from earlier collections is stored separately

## taxpayer settings

count or ignore unemployed villagers:

```mcfunction
/function vt:config/count_unemployed/on
/function vt:config/count_unemployed/off
```

count or ignore nitwits:

```mcfunction
/function vt:config/count_nitwits/on
/function vt:config/count_nitwits/off
```

count or ignore baby villagers:

```mcfunction
/function vt:config/count_babies/on
/function vt:config/count_babies/off
```

the default settings exclude all three

## missing tax barrel warnings

players can receive a warning when they appear to be inside a settlement without a nearby tax barrel

by default, a custom settlement is detected when at least 6 villagers are within 32 blocks of the player. naturally generated villages can also be detected!

### settlement detection radius

```mcfunction
/function vt:config/settlement_radius/16
/function vt:config/settlement_radius/24
/function vt:config/settlement_radius/32
/function vt:config/settlement_radius/48
/function vt:config/settlement_radius/64
```

### minimum settlement population

```mcfunction
/function vt:config/settlement_min/3
/function vt:config/settlement_min/6
/function vt:config/settlement_min/10
/function vt:config/settlement_min/15
```

### enable or disable warnings

```mcfunction
/function vt:config/missing_warnings/on
/function vt:config/missing_warnings/off
```

### generated village detection

```mcfunction
/function vt:config/generated_villages/on
/function vt:config/generated_villages/off
```

generated villages still need at least one nearby villager, so abandoned village structures should not constantly trigger warnings

## messages and effects

collection messages:

```mcfunction
/function vt:config/messages/on
/function vt:config/messages/off
```

sounds:

```mcfunction
/function vt:config/sounds/on
/function vt:config/sounds/off
```

particles:

```mcfunction
/function vt:config/particles/on
/function vt:config/particles/off
```

## warning cooldown

this controls how frequently a player can receive the missing-barrel warning. the default is 10 minutes, so chat should not get spammed

```mcfunction
/function vt:config/warning_cooldown/1m
/function vt:config/warning_cooldown/5m
/function vt:config/warning_cooldown/10m
/function vt:config/warning_cooldown/30m
```

## broken-barrel cleanup

the datapack regularly checks whether a designated tax barrel still exists

```mcfunction
/function vt:config/cleanup/1s
/function vt:config/cleanup/5s
/function vt:config/cleanup/10s
```

the default is every 1 second

if the barrel is broken or removed, its invisible datapack marker should also be removed automatically

## overflow behavior

if a tax barrel is full, undelivered emeralds are not deleted

instead, they are stored as a pending balance attached to that tax barrel and retried during future collections

use this command to check the pending balance:

```mcfunction
/function vt:status
```

no taxes should just disappear because someone forgot to empty the barrel

## important notes

* only loaded villagers and loaded tax barrels are processed
* tax and settlement radii are spherical
* every villager is assigned to the nearest eligible tax barrel
* one villager cannot pay multiple barrels
* duplicate markers at one physical barrel are automatically removed
* automatic taxes can be collected only once per minecraft day
* tax barrels work in the overworld, nether, and end
* yes, you can in fact send your villagers to hell and they would still have to pay taxes
* configuration settings are saved with the world
* settings remain active after using `/reload`
* always remove older versions before installing an update

<img src="LazyFuck.png" alt="bleh" width="300" height="249">