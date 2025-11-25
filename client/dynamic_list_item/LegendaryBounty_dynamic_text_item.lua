


local containerData = nil
local containerData2 = nil
local menuList = nil
function OpenLegendaryBountyTextItemMenu()

    -- LaunchAppByHash(GetHashKey("player_menu"))
    LaunchUiappByHashWithEntry(GetHashKey("player_menu"), GetHashKey("mp_legendary_bounty_replay_menu"))

    containerData = DatabindingAddDataContainerFromPath("", "BountyHunterReplayMenu")

    DatabindingAddDataInt(containerData, "setDifficulty", 1)

    DatabindingAddDataString(containerData2, "descriptionText", "descriptionText")



    
    containerData2 = DatabindingAddDataContainerFromPath("", "player_menu_data")

    DatabindingAddDataString(containerData2, "header_text", "Header Name")
    DatabindingAddDataString(containerData2, "footer_tooltip_text", "tip")
    DatabindingAddDataString(containerData2, "footer_tooltip_color", "COLOR_GREEN")


    menuList = DatabindingAddUiItemList(containerData, "itemsList")

    local itemCounter = 1
    for i = 1, 12 do
        local Item = DatabindingAddDataContainer(containerData, "item" .. "_".. itemCounter)



        AddTextEntry("itemName_OVERRIDE", "name")
        DatabindingAddDataString(Item, "dynamic_list_item_prompt_text", "itemName_OVERRIDE")


        DatabindingAddDataBool(Item, "dynamic_list_item_background_visible", true)


        AddTextEntry("dynamic_list_item_text_label_entry_OVERRIDE", "name1")
        DatabindingAddDataString(Item, "dynamic_list_item_text_label_entry", "dynamic_list_item_text_label_entry_OVERRIDE")
        DatabindingAddDataString(Item, "dynamic_list_item_raw_text_entry", "test")
        DatabindingAddDataString(Item, "dynamic_list_item_main_color", "COLOR_RED")
        DatabindingAddDataBool(Item, "dynamic_list_item_enabled", true)



        DatabindingAddDataBool(Item, "dynamic_list_item_enabled", true)
        DatabindingAddDataBool(Item, "dynamic_list_item_visible", true)


        DatabindingInsertUiItemToListFromContextStringAlias(menuList, -1, "pm_dynamic_text_item", Item)
        itemCounter = itemCounter + 1
    end
end



RegisterCommand("legendarybountytextitemmenu", function ()
    OpenLegendaryBountyTextItemMenu()
end, false)


RegisterCommand("removelegendarybountytextitemmenu", function(source, args)
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

