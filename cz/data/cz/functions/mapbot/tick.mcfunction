scoreboard players enable @a mapbot_central
scoreboard players enable @a mapbot_north
scoreboard players enable @a mapbot_east
scoreboard players enable @a mapbot_south
scoreboard players enable @a mapbot_west
scoreboard players enable @a mapbot_all

execute as @a[scores={mapbot_central=1..}] run function cz:give_maps/central
execute as @a[scores={mapbot_north=1..}] run function cz:give_maps/north
execute as @a[scores={mapbot_east=1..}] run function cz:give_maps/east
execute as @a[scores={mapbot_south=1..}] run function cz:give_maps/south
execute as @a[scores={mapbot_west=1..}] run function cz:give_maps/west
execute as @a[scores={mapbot_all=1..}] run function cz:give_maps/all

scoreboard players set @a mapbot_central 0
scoreboard players set @a mapbot_north 0
scoreboard players set @a mapbot_east 0
scoreboard players set @a mapbot_south 0
scoreboard players set @a mapbot_west 0
scoreboard players set @a mapbot_all 0
