tellraw @a[tag=vt_status_request,limit=1] [{"text":"--- Nearest tribute barrel ---","color":"gold"}]
tellraw @a[tag=vt_status_request,limit=1] [{"text":"Position: "},{"nbt":"Pos","entity":"@s","color":"yellow"}]
tellraw @a[tag=vt_status_request,limit=1] [{"text":"Assigned eligible taxpayers: "},{"score":{"name":"@s","objective":"vt_count"},"color":"green"}]
tellraw @a[tag=vt_status_request,limit=1] [{"text":"Pending emerald balance: "},{"score":{"name":"@s","objective":"vt_balance"},"color":"yellow"}]
tellraw @a[tag=vt_status_request,limit=1] [{"text":"District radius: "},{"score":{"name":"#tax_radius","objective":"vt_config"}},{"text":" blocks; rate: "},{"score":{"name":"#emeralds_per_villager","objective":"vt_config"}},{"text":" emerald(s) per taxpayer"}]

function vt:status/overlap_dispatch
