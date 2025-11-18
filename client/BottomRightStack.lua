-- Shows only one element I don't know why
RegisterCommand("itemWithTwoTextfields", function()
    local hud = DatabindingAddDataContainerFromPath("", "MpHudDataStore")
    local stack = DatabindingAddDataContainer(hud, "bottomRightStack")
    DatabindingAddDataBool(stack, "isVisible", true)
    
    local list = DatabindingAddUiItemList(stack, "itemCreationList")
    DatabindingClearBindingArray(list)


    local item = DatabindingAddDataContainer(list, "br_item_1")
    DatabindingAddDataString(item, "leftTextfield", "Hello") 
    DatabindingAddDataString(item, "rightTextfield", "Valentine")
    -- DatabindingAddDataString(item2, "backgroundColor", "COLOR_RED")

    DatabindingInsertUiItemToListFromContextStringAlias(list, -1, "item_two_textfields", item)

end, false)

RegisterCommand("itemWithTime", function()
    local hud = DatabindingAddDataContainerFromPath("", "MpHudDataStore")
    local stack = DatabindingAddDataContainer(hud, "bottomRightStack")
    DatabindingAddDataBool(stack, "isVisible", true)
    
    local list = DatabindingAddUiItemList(stack, "itemCreationList")
    DatabindingClearBindingArray(list)


    local item = DatabindingAddDataContainer(list, "br_item_2")
    DatabindingAddDataString(item, "text", "Time Remaining") 
    DatabindingAddDataInt(item, "time", 3000)
    -- DatabindingAddDataString(item2, "backgroundColor", "COLOR_RED")

    DatabindingInsertUiItemToListFromContextStringAlias(list, -1, "item_text_with_time", item)

end, false)

RegisterCommand("itemWithMeter", function()
    local hud = DatabindingAddDataContainerFromPath("", "MpHudDataStore")
    local stack = DatabindingAddDataContainer(hud, "bottomRightStack")
    DatabindingAddDataBool(stack, "isVisible", true)
    
    local list = DatabindingAddUiItemList(stack, "itemCreationList")
    DatabindingClearBindingArray(list)


    local item = DatabindingAddDataContainer(list, "br_item_3")
    DatabindingAddDataString(item, "text", "Valentine") 
    DatabindingAddDataFloat(item, "value", 0.5)
    -- DatabindingAddDataString(item2, "trackColor", "COLOR_WHITE")
    -- DatabindingAddDataString(item2, "fillColor", "COLOR_YELLOWSTRONG")
    -- DatabindingAddDataString(item2, "backgroundColor", "COLOR_RED")

    DatabindingInsertUiItemToListFromContextStringAlias(list, -1, "item_text_with_meter", item)

end, false)