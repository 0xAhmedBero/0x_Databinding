--   <Item key="BAYOU_NWA">MAP_CAMP_LOCATION_BAYOU_NWA</Item>
--   <Item key="BIG_VALLEY">MAP_CAMP_LOCATION_BIG_VALLEY</Item>
--   <Item key="CHOLLA_SPRINGS">MAP_CAMP_LOCATION_CHOLLA_SPRINGS</Item>
--   <Item key="CUMBERLAND_FOREST">MAP_CAMP_LOCATION_CUMBERLAND_FOREST</Item>
--   <Item key="GAPTOOTH_RIDGE">MAP_CAMP_LOCATION_GAPTOOTH_RIDGE</Item>
--   <Item key="GREAT_PLAINS">MAP_CAMP_LOCATION_GREAT_PLAINS</Item>
--   <Item key="GRIZZLIES">MAP_CAMP_LOCATION_GRIZZLIES</Item>
--   <Item key="HENNIGANS_STEAD">MAP_CAMP_LOCATION_HANNIGANS_STEAD</Item>
--   <Item key="HEARTLANDS">MAP_CAMP_LOCATION_HEARTLANDS</Item>
--   <Item key="RIO_BRAVO">MAP_CAMP_LOCATION_RIO_BRAVO</Item>
--   <Item key="ROANOKE_RIDGE">MAP_CAMP_LOCATION_ROANOKE_RIDGE</Item>
--   <Item key="SCARLETT_MEADOWS">MAP_CAMP_LOCATION_SCARLETT_MEADOWS</Item>
--   <Item key="TALL_TREES">MAP_CAMP_LOCATION_TALL_TREES</Item>


local containerData = nil
local containerData2 = nil
local menuList = nil
function OpenMissionMenu()

    -- LaunchAppByHash(GetHashKey("player_menu"))
    LaunchUiappByHashWithEntry(GetHashKey("player_menu"), GetHashKey("mp_animal_sighting_missions"))

    containerData = DatabindingAddDataContainerFromPath("", "AnimalSightingMissions")

    DatabindingAddDataBool(containerData, "hideoutMissionPromptEnabled", true)

    --   <Item key="BAYOU_NWA">MAP_CAMP_LOCATION_BAYOU_NWA</Item>
    --   <Item key="BIG_VALLEY">MAP_CAMP_LOCATION_BIG_VALLEY</Item>
    --   <Item key="CHOLLA_SPRINGS">MAP_CAMP_LOCATION_CHOLLA_SPRINGS</Item>
    --   <Item key="CUMBERLAND_FOREST">MAP_CAMP_LOCATION_CUMBERLAND_FOREST</Item>
    --   <Item key="GAPTOOTH_RIDGE">MAP_CAMP_LOCATION_GAPTOOTH_RIDGE</Item>
    --   <Item key="GREAT_PLAINS">MAP_CAMP_LOCATION_GREAT_PLAINS</Item>
    --   <Item key="GRIZZLIES">MAP_CAMP_LOCATION_GRIZZLIES</Item>
    --   <Item key="HENNIGANS_STEAD">MAP_CAMP_LOCATION_HANNIGANS_STEAD</Item>
    --   <Item key="HEARTLANDS">MAP_CAMP_LOCATION_HEARTLANDS</Item>
    --   <Item key="RIO_BRAVO">MAP_CAMP_LOCATION_RIO_BRAVO</Item>
    --   <Item key="ROANOKE_RIDGE">MAP_CAMP_LOCATION_ROANOKE_RIDGE</Item>
    --   <Item key="SCARLETT_MEADOWS">MAP_CAMP_LOCATION_SCARLETT_MEADOWS</Item>
    --   <Item key="TALL_TREES">MAP_CAMP_LOCATION_TALL_TREES</Item>
    DatabindingAddDataString(containerData, "locationTexture", "TALL_TREES")

    
    containerData2 = DatabindingAddDataContainerFromPath("", "player_menu_data")

    AddTextEntry('AnimalSightingMissions_header_text_OVERRIDE', 'Menu')
    DatabindingAddDataString(containerData2, "header_text", "Header")
    DatabindingAddDataString(containerData2, "footer_tooltip_text", "tip")
    DatabindingAddDataString(containerData2, "footer_tooltip_color", "COLOR_GREEN")

    menuList = DatabindingAddUiItemList(containerData, "listItems")

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



RegisterCommand("missionmenu", function ()
    OpenMissionMenu()
end, false)


RegisterCommand("removemissionmenu", function(source, args)
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


