



-- it's not completed!!!




-- local InventoryConfig = {
--     InventoryName = "Satchel",
--     category = {
--          "satchel_nav_all",
--          "satchel_nav_provisions",
--          "satchel_nav_remedies",
--          "satchel_nav_loot",
--     },
-- }

-- local playerSatchelItems = {
--     ["ammo_arrow"] = {
--         name = "ammo_arrow",
--         description = "ammo_arrow",
--         itemIcon = "ammo_arrow",
--         itemIconD = "INVENTORY_ITEMS",
--         color = "COLOR_WHITE",
--         count = 822,
--         maxItem = 10000,
--         legendery = false,
--         focusable = true,
--         quality = 0,
--     },

    
--     ["consumable_apple"] = {
--         name = "consumable_apple",
--         description = "consumable_apple",
--         itemIcon = "consumable_apple",
--         itemIconD = "INVENTORY_ITEMS",
--         color = "COLOR_WHITE",
--         count = 4,
--         maxItem = 10,
--         legendery = false,
--         focusable = true,
--         quality = 0,
--     },

   
    
--     ["consumable_brandy"] = {
--         name = "consumable_brandy",
--         description = "consumable_brandy",
--         itemIcon = "consumable_brandy",
--         itemIconD = "INVENTORY_ITEMS",
--         color = "COLOR_WHITE",
--         count = 3,
--         maxItem = 10,
--         legendery = false,
--         focusable = true,
--         quality = 0,
--     },

    
--     ["consumable_carrot"] = {
--         name = "consumable_carrot",
--         description = "consumable_carrot",
--         itemIcon = "consumable_carrot",
--         itemIconD = "INVENTORY_ITEMS",
--         color = "COLOR_WHITE",
--         count = 7,
--         maxItem = 10,
--         legendery = false,
--         focusable = true,
--         quality = 0,
--     },

    
--     ["consumable_cigarette_box_cheap"] = {
--         name = "consumable_cigarette_box_cheap",
--         description = "consumable_cigarette_box_cheap",
--         itemIcon = "consumable_cigarette_box_cheap",
--         itemIconD = "INVENTORY_ITEMS",
--         color = "COLOR_WHITE",
--         count = 5,
--         maxItem = 10,
--         legendery = false,
--         focusable = true,
--         quality = 0,
--     },

    
--     ["consumable_herb_black_berry"] = {
--         name = "consumable_herb_black_berry",
--         description = "consumable_herb_black_berry",
--         itemIcon = "consumable_herb_black_berry",
--         itemIconD = "INVENTORY_ITEMS",
--         color = "COLOR_WHITE",
--         count = 10,
--         maxItem = 10,
--         legendery = false,
--         focusable = true,
--         quality = 3,
--     },
-- }



-- local satchelData = nil
-- local satchelMenuItemsData = nil
-- local menuList = nil
-- function OpenSatchel()
--     --TASK::TASK_PLAY_ANIM(Global_34, func_3189(bParam0->f_61), func_3190(bParam0->f_61), 8f, -8f, -1, 67108880, 0f, false, 4096, false, "Satchel_Only_filter", false);


--     LaunchUiappByHashWithEntry(`satchel`, `INGAME`)
--     --LaunchUiappByHash(`satchel`)

--     -- Get or create the data container for the ui app, in this case, Satchel

    
--     if satchelData == 0 or satchelData == nil then
--         print("creating satchel")
--         satchelData = DatabindingAddDataContainerFromPath("", "Satchel")
        
--         DatabindingAddDataBool(satchelData, "FolderEmpty", false)

        

--         local selectedData = DatabindingAddDataContainer(satchelData, "Selected")

--         -- AddTextEntry('SATCHEL_SELECT_LEBEL_OVERRIDE', 'SELECT')
--         DatabindingAddDataHash(selectedData, "Name", "ammo_arrow")
--         DatabindingAddDataHash(selectedData, "Description", "ammo_arrow")
--         DatabindingAddDataString(selectedData, "Price", "2000$")
--         AddTextEntry('SATCHEL_Price_Label_OVERRIDE', 'Money')
--         DatabindingAddDataString(selectedData, "PriceLabel", "SATCHEL_Price_Label_OVERRIDE")
--         DatabindingAddDataString(selectedData, "Value", "test")
--         DatabindingAddDataHash(selectedData, "Category", 0)
--         DatabindingAddDataInt(selectedData, "DefaultCategoryIndex", 0)
--         DatabindingAddDataInt(selectedData, "CategoryIndex", 0)
--         DatabindingAddDataInt(selectedData, "CategoryCount", 2) -- enables category switch if > 1
--         DatabindingAddDataString(selectedData, "IndexDescription", "[1 of 16")
--         DatabindingAddDataString(selectedData, "Tip", "[tip]")
--         DatabindingAddDataHash(selectedData, "Folder", 0)


        
--         -- local satchelMenuItemsData = DatabindingGetDataContainerFromPath("satchel_category_items")


--         -- menuList = DatabindingAddUiItemList(satchelMenuItemsData, "List")

--         -- local itemCounter = 0
--         -- for k, value in pairs(playerSatchelItems) do
--         --     local satchelItem = DatabindingAddDataContainer(satchelData, "satchel_item" .. "_".. itemCounter)


--         --     print(value.itemIconD)
--         --     DatabindingAddDataString(satchelItem, "ItemTXD", "")
--         --     DatabindingAddDataString(satchelItem, "ItemTexture", "")
--         --     DatabindingInsertUiItemToListFromContextStringAlias(menuList, -1, "list_item", satchelItem)
--         --     itemCounter = itemCounter + 1
--         -- end


--         -- local SelectedItemsData = DatabindingAddDataContainer(satchelData, "SelectedItems")
--         -- DatabindingAddDataHash(SelectedItemsData, "Value", "ammo_arrow")
--         -- DatabindingAddDataString(SelectedItemsData, "label", "test2")
--         -- DatabindingAddDataString(SelectedItemsData, "label", "test2")
        
--         -- AddTextEntry('SATCHEL_SELECT_LEBEL_OVERRIDE', 'SELECT')
--         -- DatabindingAddDataString(satchelData, "PromptSelectLabel", "SATCHEL_SELECT_LEBEL_OVERRIDE")
--         -- DatabindingAddDataBool(satchelData, "PromptSelectEnabled", false)

        
--         -- AddTextEntry('SATCHEL_HOLD_SELECT_LEBEL_OVERRIDE', 'SELECT')
--         -- DatabindingAddDataString(satchelData, "PromptHoldSelectLabel", "SATCHEL_HOLD_SELECT_LEBEL_OVERRIDE")
--         -- DatabindingAddDataBool(satchelData, "PromptHoldSelectEnabled", false)

--         --     AddTextEntry('SATCHEL_HOLD_SELECT_LEBEL_OVERRIDE', 'SELECT')
--         -- DatabindingAddDataString(satchelData, "PromptHoldSelectLabel", "SATCHEL_HOLD_SELECT_LEBEL_OVERRIDE")
--         -- DatabindingAddDataBool(satchelData, "PromptHoldSelectEnabled", false)

--         --     AddTextEntry('SATCHEL_HOLD_SELECT_LEBEL_OVERRIDE', 'SELECT')
--         -- DatabindingAddDataString(satchelData, "PromptHoldSelectLabel", "SATCHEL_HOLD_SELECT_LEBEL_OVERRIDE")
--         -- DatabindingAddDataBool(satchelData, "PromptHoldSelectEnabled", false)

--         --     AddTextEntry('SATCHEL_HOLD_SELECT_LEBEL_OVERRIDE', 'SELECT')
--         -- DatabindingAddDataString(satchelData, "PromptHoldSelectLabel", "SATCHEL_HOLD_SELECT_LEBEL_OVERRIDE")
--         -- DatabindingAddDataBool(satchelData, "PromptHoldSelectEnabled", false)



--         satchelMenuItemsData = DatabindingGetDataContainerFromPath("satchel_menu_items")

--         -- DatabindingRemoveDataEntry(satchelMenuItemsData)

--         menuList = DatabindingAddUiItemList(satchelMenuItemsData, "List")

--         -- DatabindingRemoveDataEntry(menuList)

--         local itemCounter = 0
--         for k, value in pairs(playerSatchelItems) do
--             local satchelItem = DatabindingAddDataContainer(satchelData, "satchel_item" .. "_".. itemCounter)

--             DatabindingAddDataString(satchelItem, "ItemTXD", value.itemIconD)
--             DatabindingAddDataString(satchelItem, "ItemTexture", value.itemIcon)
--             DatabindingAddDataString(satchelItem, "color", value.color)
--             DatabindingAddDataInt(satchelItem, "count", value.count)
--             DatabindingAddDataBool(satchelItem, "maxCount", (value.count or 0) >= value.maxItem)
--             DatabindingAddDataBool(satchelItem, "focusable", value.focusable)
--             DatabindingAddDataBool(satchelItem, "overpowered", value.legendery)
--             DatabindingAddDataInt(satchelItem, "quality", value.quality)

--             DatabindingInsertUiItemToListFromContextStringAlias(menuList, -1, "inventory_item", satchelItem)
--             itemCounter = itemCounter + 1
--         end

--     end

    

--     print("open satchel")
-- end



-- RegisterCommand("opensatchel", function ()
--     OpenSatchel()
-- end, false)


-- RegisterCommand("removesatchel", function(source, args)
--     if satchelData and DatabindingIsEntryValid(satchelData) then
--         DatabindingRemoveDataEntry(satchelData)
--         DatabindingRemoveDataEntry(menuList)
--         DatabindingRemoveDataEntry(satchelMenuItemsData)
--         menuList = nil
--         satchelMenuItemsData = nil
--         satchelData = nil
--     end
--     CloseAppByHash(GetHashKey("satchel"))
-- end, false)


-- Citizen.CreateThread(function()
--     while true do   
--         Citizen.Wait(0)  

--         if IsControlJustPressed(0, "INPUT_OPEN_SATCHEL_MENU") then
--             local prompt = 0

--             -- Create prompt
--             if prompt == 0 then
--                 prompt = UiPromptRegisterBegin()
--                 UiPromptSetControlAction(prompt, GetHashKey("INPUT_OPEN_SATCHEL_MENU")) -- L key
--                 UiPromptSetText(prompt, CreateVarString(10, "LITERAL_STRING", "Satchel"))
--                 UiPromptSetHoldMode(prompt, 750)
--                 UiPromptSetAttribute(prompt, 2, true) 
--                 UiPromptSetAttribute(prompt, 4, true) 
--                 UiPromptSetAttribute(prompt, 9, true) 
--                 UiPromptSetAttribute(prompt, 10, true) -- kPromptAttrib_NoButtonReleaseCheck. Immediately becomes pressed
--                 UiPromptSetAttribute(prompt, 17, true) -- kPromptAttrib_NoGroupCheck. Allows to appear in any active group
--                 UiPromptRegisterEnd(prompt)

--                 Citizen.CreateThread(function()
--                     Citizen.Wait(100)

--                     while UiPromptGetProgress(prompt) ~= 0.0 and UiPromptGetProgress(prompt) ~= 1.0 do   
--                         Citizen.Wait(0)
--                     end

--                     if UiPromptGetProgress(prompt) == 1.0 then
--                         OpenSatchel()
--                     end

--                     UiPromptDelete(prompt)
--                     prompt = 0

--                     Citizen.Wait(1000)
--                 end)
--             end
--         end
--     end
-- end)

