# villager taxes : chlorby edition (˶˃ ᵕ ˂˶)
datapack for minecraft java edition 26.1.2

credits go to Auopoex [for making the original datapack](https://www.curseforge.com/minecraft/data-packs/villager-taxes). this simply my take on it and is updated for 26.1.2.
## what this datapack does

this datapack lets villages collect emerald tribute through specially designated barrels. each eligible villager contributes to the nearest tribute barrel within the configured tax radius. villagers are only assigned to one barrel, so overlapping villages will not produce duplicate taxes

by default:

* tribute is collected at dawn
* each adult, employed, non-nitwit villager contributes 1 emerald
* villagers are assigned to the nearest tribute barrel within 64 blocks
* messages are shown to players within 64 blocks
* each barrel can generate up to 128 new emeralds per collection
* overflow is saved as a pending balance instead of being lost

## installation

1. back up your world (Please)
2. open the world’s `datapacks` folder
3. remove any older versions of village tribute
4. place the new zip file into the `datapacks` folder
5. reopen the world or run:

```mcfunction
/reload
```

you should see a message confirming that the datapack loaded!

## creating a tribute barrel

1. place a barrel
2. place a bell directly on top of it
3. press `q` to drop an emerald onto the barrel

one emerald will be consumed and the barrel will become a local tribute barrel. putting an emerald inside the barrel does not activate it btw

you can also create multiple tribute barrels!

## how local tax districts work

each eligible villager is assigned to the nearest tribute barrel within the configured tax radius

the default radius is 64 blocks

even if multiple tribute districts overlap, a villager will only contribute to one barrel. basically whichever one is closest

by default, taxpayers must be:

* adults
* have a profession
* not nitwits

only loaded villagers and loaded tribute barrels are processed

## collection timing

tribute is collected at dawn by default

sleeping through the night should still trigger collection when the world clock passes dawn

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

## checking a tribute barrel

stand near a tribute barrel and run:

```mcfunction
/function vt:status
```

this shows:

* the nearest tribute barrel
* its coordinates
* its assigned taxpayer population
* its pending emerald balance
* the current tax radius and rate
* the approximate time until the next collection
* whether its district overlaps another barrel

to reiterate, overlapping is not (or Shouldn't Be) a problem. taxpayers are still assigned only to the nearest barrel

## manually collecting tribute

to immediately run a collection for every loaded tribute district:

```mcfunction
/function vt:admin/collect_now
```

## removing a tribute barrel

stand within 8 blocks of the tribute barrel and run:

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

this determines how close a player must be to receive tribute messages, sounds, and effects.

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

## maximum tribute per collection

```mcfunction
/function vt:config/max_tax/64
/function vt:config/max_tax/128
/function vt:config/max_tax/256
/function vt:config/max_tax/unlimited
```

this limits the amount of new tribute one barrel can generate during a single collection. pending overflow from earlier collections is stored separately

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

## missing tribute barrel warnings

players can receive a warning when they appear to be inside a settlement without a nearby tribute barrel

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

this controls how frequently a player can receive the missing-barrel warning. the default is 10 minutes, so the chat should not get spammed

```mcfunction
/function vt:config/warning_cooldown/1m
/function vt:config/warning_cooldown/5m
/function vt:config/warning_cooldown/10m
/function vt:config/warning_cooldown/30m
```

## broken-barrel cleanup

the datapack regularly checks whether a tribute barrel still exists

```mcfunction
/function vt:config/cleanup/1s
/function vt:config/cleanup/5s
/function vt:config/cleanup/10s
```

the default is every 1 second

## overflow behavior

if a tribute barrel is full, undelivered emeralds are not deleted

instead, they are stored as a pending balance attached to that tribute barrel and retried during future collections

use this command to check the pending balance:

```mcfunction
/function vt:status
```

no tribute should just disappear because someone forgot to empty the barrel

## important notes

* only loaded villagers and loaded tribute barrels are processed
* tax and settlement radii are spherical
* every villager is assigned to the nearest eligible tribute barrel
* one villager cannot pay multiple barrels
* tribute barrels work in the overworld, nether, and end. you Can infact send your villagers to hell and they'd still have to pay taxes.
* configuration settings are saved with the world
* settings remain active after using `/reload`
