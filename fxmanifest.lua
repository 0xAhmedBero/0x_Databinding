fx_version "adamant"
games {"rdr3"}

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

name '0xRedCore'
author 'AhmedBero'
description 'A Population script for RedCore'
version '1.0.0'

client_scripts {
    'client/BattlePass.lua',
    'client/RoleProgress.lua',
    'client/BottomRightStack.lua',
    'client/FistingMeter.lua',
    'client/Scores.lua',
    'client/ScoresAndFistingMeter.lua',
    'client/CircleMeter.lua',
    'client/Crafting.lua',
    'client/AbilityCards.lua',
    'client/Satchel.lua',
    'client/MissionMenu.lua',
    'client/LegendaryBounty.lua',
    'client/Test.lua',


    -- dynamic_list_item
    'client/dynamic_list_item/LegendaryBounty_dynamic_text_item.lua',
    'client/dynamic_list_item/LegendaryBounty_dynamic_player_entry_and_text.lua',
    'client/dynamic_list_item/LegendaryBounty_dynamic_dual_text_item_non_selectable.lua',
    'client/dynamic_list_item/LegendaryBounty_dynamic_main_image_and_text_and_end_image_and_text.lua',

}
