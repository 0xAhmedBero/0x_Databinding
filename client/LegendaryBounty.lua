


local containerData = nil
local containerData2 = nil
local menuList = nil
function OpenLegendaryBountyMenu()

    -- LaunchAppByHash(GetHashKey("player_menu"))
    LaunchUiappByHashWithEntry(GetHashKey("player_menu"), GetHashKey("mp_legendary_bounty_replay_menu"))

    containerData = DatabindingAddDataContainerFromPath("", "BountyHunterReplayMenu")

    DatabindingAddDataInt(containerData, "setDifficulty", 1)

    DatabindingAddDataString(containerData2, "descriptionText", "descriptionText")



    
    containerData2 = DatabindingAddDataContainerFromPath("", "player_menu_data")

    DatabindingAddDataString(containerData2, "header_text", "Header")
    DatabindingAddDataString(containerData2, "footer_tooltip_text", "tip")
    DatabindingAddDataString(containerData2, "footer_tooltip_color", "COLOR_GREEN")


    menuList = DatabindingAddUiItemList(containerData, "itemsList")

    local itemCounter = 1
    for i = 1, 4 do
        local Item = DatabindingAddDataContainer(containerData, "item" .. "_".. itemCounter)


        AddTextEntry("itemName_OVERRIDE", "name")
        DatabindingAddDataString(Item, "dynamic_list_item_prompt_text", "itemName_OVERRIDE")

        DatabindingAddDataString(Item, "dynamic_list_item_main_img_texture_dic", "satchel_textures")
        DatabindingAddDataString(Item, "dynamic_list_item_main_img_texture", "animal_bear")
        DatabindingAddDataString(Item, "dynamic_list_item_tertiary_color", "COLOR_YELLOW")

        
        AddTextEntry("dynamic_list_item_text_label_entry_OVERRIDE", "name1")
        DatabindingAddDataString(Item, "dynamic_list_item_text_label_entry", "dynamic_list_item_text_label_entry_OVERRIDE")
        DatabindingAddDataString(Item, "dynamic_list_item_raw_text_entry", "test")
        DatabindingAddDataString(Item, "dynamic_list_item_main_color", "COLOR_RED")

        
        AddTextEntry("dynamic_list_item_secondary_text_label_entry_OVERRIDE", "name2")
        DatabindingAddDataString(Item, "dynamic_list_item_secondary_text_label_entry", "dynamic_list_item_secondary_text_label_entry_OVERRIDE")
        DatabindingAddDataString(Item, "dynamic_list_item_secondary_raw_text_entry", "test2")
        DatabindingAddDataString(Item, "dynamic_list_item_secondary_color", "COLOR_GREEN")


        DatabindingAddDataBool(Item, "dynamic_list_item_enabled", true)
        DatabindingAddDataBool(Item, "dynamic_list_item_visible", true)



        DatabindingInsertUiItemToListFromContextStringAlias(menuList, -1, "pm_dynamic_large_image_and_stacked_text", Item)
        itemCounter = itemCounter + 1
    end
end



RegisterCommand("legendarybountymenu", function ()
    OpenLegendaryBountyMenu()
end, false)


RegisterCommand("removelegendarybountymenu", function(source, args)
    if containerData and DatabindingIsEntryValid(containerData) then
        DatabindingRemoveDataEntry(menuList)
        DatabindingRemoveDataEntry(containerData)
        DatabindingRemoveDataEntry(containerData2)
        menuList = nil
        containerData = nil
        containerData2 = nil
    end
    CloseAppByHash(GetHashKey("player_menu"))
end, false)


