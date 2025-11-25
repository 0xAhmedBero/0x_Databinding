


local containerData = nil
local containerData2 = nil
local containerData3 = nil
local menuList = nil
function OpenLegendaryBountyPlayerEntryMenu()

    -- LaunchAppByHash(GetHashKey("player_menu"))
    LaunchUiappByHashWithEntry(GetHashKey("player_menu"), GetHashKey("mp_legendary_bounty_replay_menu"))

    containerData = DatabindingAddDataContainerFromPath("", "BountyHunterReplayMenu")

    DatabindingAddDataInt(containerData, "setDifficulty", 1)

    DatabindingAddDataString(containerData2, "descriptionText", "descriptionText")


    containerData2 = DatabindingAddDataContainerFromPath("", "player_menu_data")

    DatabindingAddDataString(containerData2, "header_text", "Header")
    DatabindingAddDataString(containerData2, "footer_tooltip_text", "tip")
    DatabindingAddDataString(containerData2, "footer_tooltip_color", "COLOR_GREEN")


    containerData3 = DatabindingAddDataContainerFromPath("", "posse_general_data")

    AddTextEntry("subheader_raw_label_OVERRIDE", "Label")
    DatabindingAddDataString(containerData3, "subheader_raw_label", "subheader_raw_label_OVERRIDE")
    DatabindingAddDataBool(containerData3, "subheader_nav_visible", true)

    menuList = DatabindingAddUiItemList(containerData, "itemsList")

    local itemCounter = 1
    for i = 1, 12 do
        local Item = DatabindingAddDataContainer(containerData, "item" .. "_".. itemCounter)


        AddTextEntry("raw_text_OVERRIDE", "name")
        DatabindingAddDataString(Item, "dynamic_list_item_prompt_r3_raw_text", "raw_text_OVERRIDE")

        DatabindingAddDataBool(Item, "dynamic_list_item_main_img_visible", true)

        DatabindingAddDataString(Item, "dynamic_list_item_main_img_texture_dic", "overhead")
        DatabindingAddDataString(Item, "dynamic_list_item_main_img_texture", "overhead_vip")

        DatabindingAddDataString(Item, "dynamic_list_item_status_icon_texture_dic", "overhead")
        DatabindingAddDataString(Item, "dynamic_list_item_status_icon_texture", "overhead_revive")
        DatabindingAddDataString(Item, "dynamic_list_item_main_color", "COLOR_GREEN")
        DatabindingAddDataBool(Item, "dynamic_list_item_status_icon_visible", true)


        DatabindingAddDataString(Item, "dynamic_list_item_raw_text_entry", "test")
        DatabindingAddDataString(Item, "dynamic_list_item_main_color", "COLOR_RED")

        DatabindingAddDataString(Item, "dynamic_list_item_deco_texture_dic", "BLIPS_MP")
        DatabindingAddDataString(Item, "dynamic_list_item_deco__texture", "blip_adversary_small")
        DatabindingAddDataBool(Item, "dynamic_list_item_status_icon_visible", true)

        DatabindingAddDataString(Item, "dynamic_list_item_secondary_text_label_entry", "label entry")
        DatabindingAddDataString(Item, "dynamic_list_item_secondary_raw_text_entry", "text entry")
        DatabindingAddDataString(Item, "dynamic_list_item_secondary_color", "COLOR_YELLOW")
        DatabindingAddDataBool(Item, "dynamic_list_item_secondary_text_visible", true)
        DatabindingAddDataBool(Item, "dynamic_list_item_secondary_text_enabled", true)


        
        DatabindingAddDataBool(Item, "dynamic_list_item_enabled", true)
        DatabindingAddDataBool(Item, "dynamic_list_item_visible", true)

        DatabindingInsertUiItemToListFromContextStringAlias(menuList, -1, "pm_dynamic_player_entry_and_text", Item)
        itemCounter = itemCounter + 1
    end
end



RegisterCommand("legendarybountyplayerentrymenu", function ()
    OpenLegendaryBountyPlayerEntryMenu()
end, false)


RegisterCommand("removelegendarybountyplayerentrymenu", function(source, args)
    if containerData and DatabindingIsEntryValid(containerData) then
        DatabindingRemoveDataEntry(menuList)
        DatabindingRemoveDataEntry(containerData)
        DatabindingRemoveDataEntry(containerData2)
        DatabindingRemoveDataEntry(containerData3)
        menuList = nil
        containerData = nil
        containerData2 = nil
        containerData3 = nil
    end
    CloseAppByHash(GetHashKey("player_menu"))
end, false)



