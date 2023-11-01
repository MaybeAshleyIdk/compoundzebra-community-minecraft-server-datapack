execute as @a unless score @s cz_equalizer_state matches -2147483648..2147483647 run scoreboard players set @s cz_equalizer_state 0

execute as @a[scores={cz_equalizer_state=..0,cz_equalizer_player_health=..16},nbt={SelectedItem: {id: "minecraft:iron_pickaxe", tag: {display: {Name: '{"text":"The Equalizer"}'}}}}] run function cz:equalizer/activate_stage1
execute as @a[scores={cz_equalizer_state=1,cz_equalizer_player_health=..8},nbt={SelectedItem: {id: "minecraft:iron_pickaxe", tag: {display: {Name: '{"text":"The Equalizer"}'}}}}] run function cz:equalizer/activate_stage2
execute as @a[scores={cz_equalizer_state=2,cz_equalizer_player_health=..2},nbt={SelectedItem: {id: "minecraft:iron_pickaxe", tag: {display: {Name: '{"text":"The Equalizer"}'}}}}] run function cz:equalizer/activate_stage3

execute as @a[scores={cz_equalizer_state=3},nbt={SelectedItem: {id: "minecraft:iron_pickaxe", tag: {display: {Name: '{"text":"The Equalizer"}'}}}}] unless score @s cz_equalizer_player_health matches ..2 run function cz:equalizer/activate_stage2
execute as @a[scores={cz_equalizer_state=2},nbt={SelectedItem: {id: "minecraft:iron_pickaxe", tag: {display: {Name: '{"text":"The Equalizer"}'}}}}] unless score @s cz_equalizer_player_health matches ..8 run function cz:equalizer/activate_stage1
execute as @a[scores={cz_equalizer_state=1},nbt={SelectedItem: {id: "minecraft:iron_pickaxe", tag: {display: {Name: '{"text":"The Equalizer"}'}}}}] unless score @s cz_equalizer_player_health matches ..16 run function cz:equalizer/deactivate

execute as @a[scores={cz_equalizer_state=1..},nbt=!{SelectedItem: {id: "minecraft:iron_pickaxe", tag: {display: {Name: '{"text":"The Equalizer"}'}}}}] run function cz:equalizer/deactivate
