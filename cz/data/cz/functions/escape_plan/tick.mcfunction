execute as @a unless score @s cz_escape_plan_state matches -2147483648..2147483647 run scoreboard players set @s cz_escape_plan_state 0

execute as @a[scores={cz_escape_plan_state=..0,cz_escape_plan_player_health=..18},nbt={SelectedItem: {id: "minecraft:iron_pickaxe", tag: {display: {Name: '{"text":"The Escape Plan"}'}}}}] run function cz:escape_plan/activate_stage1
execute as @a[scores={cz_escape_plan_state=1,cz_escape_plan_player_health=..10},nbt={SelectedItem: {id: "minecraft:iron_pickaxe", tag: {display: {Name: '{"text":"The Escape Plan"}'}}}}] run function cz:escape_plan/activate_stage2
execute as @a[scores={cz_escape_plan_state=2,cz_escape_plan_player_health=..2},nbt={SelectedItem: {id: "minecraft:iron_pickaxe", tag: {display: {Name: '{"text":"The Escape Plan"}'}}}}] run function cz:escape_plan/activate_stage3

execute as @a[scores={cz_escape_plan_state=1..},nbt=!{SelectedItem: {id: "minecraft:iron_pickaxe", tag: {display: {Name: '{"text":"The Escape Plan"}'}}}}] run function cz:escape_plan/deactivate
