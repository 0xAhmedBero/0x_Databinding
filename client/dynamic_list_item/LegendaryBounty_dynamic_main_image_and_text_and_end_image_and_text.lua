


local containerData = nil
local containerData2 = nil
local containerData3 = nil
local menuList = nil
function OpenLegendaryBountyImageTextImageTextMenu()

    -- LaunchAppByHash(GetHashKey("player_menu"))
    LaunchUiappByHashWithEntry(GetHashKey("player_menu"), GetHashKey("mp_legendary_bounty_replay_menu"))

    containerData = DatabindingAddDataContainerFromPath("", "BountyHunterReplayMenu")

    DatabindingAddDataInt(containerData, "setDifficulty", 1)

    DatabindingAddDataString(containerData2, "descriptionText", "TEST")



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



        DatabindingAddDataString(Item, "dynamic_list_item_main_img_texture_dic", "overhead")
        DatabindingAddDataString(Item, "dynamic_list_item_main_img_texture", "overhead_revive")
        DatabindingAddDataString(Item, "dynamic_list_item_tertiary_color", "COLOR_GREEN")
        DatabindingAddDataBool(Item, "dynamic_list_item_main_img_visible", true)


        
        DatabindingAddDataString(Item, "dynamic_list_item_text_label_entry", "label entry")
        DatabindingAddDataString(Item, "dynamic_list_item_raw_text_entry", "text entry")
        DatabindingAddDataString(Item, "dynamic_list_item_main_color", "COLOR_ORANGE")
        DatabindingAddDataBool(Item, "dynamic_list_item_enabled", true)



        DatabindingAddDataString(Item, "dynamic_list_item_end_img_texture_dic", "overhead")
        DatabindingAddDataString(Item, "dynamic_list_item_end_img_texture", "overhead_revive")
        DatabindingAddDataBool(Item, "dynamic_list_item_end_img_visible", true)


        DatabindingAddDataString(Item, "dynamic_list_item_secondary_text_label_entry", "label entry2")
        DatabindingAddDataString(Item, "dynamic_list_item_secondary_raw_text_entry", "text entry2")
        DatabindingAddDataString(Item, "dynamic_list_item_secondary_color", "COLOR_ORANGE")
        DatabindingAddDataBool(Item, "dynamic_list_item_secondary_text_visible", true)



        DatabindingAddDataBool(Item, "dynamic_list_item_enabled", true)
        DatabindingAddDataBool(Item, "dynamic_list_item_visible", true)

        DatabindingInsertUiItemToListFromContextStringAlias(menuList, -1, "pm_dynamic_main_image_and_text_and_end_image_and_text", Item)
        itemCounter = itemCounter + 1
    end
end



RegisterCommand("legendarybountyimagetextimagetextmenu", function ()
    OpenLegendaryBountyImageTextImageTextMenu()
end, false)


RegisterCommand("removelegendarybountyimagetextimagetextmenu", function(source, args)
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



