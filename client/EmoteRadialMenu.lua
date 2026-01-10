-- not working

RegisterCommand("emotemenu", function()

    local uiFlowblock = UiflowblockRequest(-374324888)
    
    local temp = 0
    while not UiflowblockIsLoaded(uiFlowblock) do 
        temp = temp + 1
        if temp > 10000 then 
            print('Failed To Load Flowblock')
            return 
        end
        Citizen.Wait(1) 
    end
    

    while not UiflowblockIsLoaded(uiFlowblock) do
        Wait(200)
    end

    print(uiFlowblock)
    
    local container =  DatabindingAddDataContainerFromPath("", "gesturewheel")

    DatabindingAddDataBool(container, "canFavorite", true)
    DatabindingAddDataString(container, "selectBehaviorFavorite_Text", GetHashKey("IB_EMOTE_FAVOR"))
    DatabindingAddDataBool(container, "selectBehaviorFavorite_Visible", true)
    DatabindingAddDataBool(container, "canOpenManageEmotes", true)
    DatabindingAddDataString(container, "bottom_info_text", GetHashKey("QUICK_INFO_NO_EMOTES_IN_ANY"))


    for i = 0, 10 do
        local id = "slot_"..i
        local slot = DatabindingAddDataContainer(container, id)
        DatabindingAddDataString(slot, "main_dictionary", GetHashKey("hud_textures"))
        DatabindingAddDataString(slot, "main_image", GetHashKey("_PLACEHOLDER"))
        DatabindingAddDataBool(slot, "favoredIcon_Visible", true)
        DatabindingAddDataBool(slot, "slotCyclerVisible", false)
        DatabindingAddDataBool(slot, "sampleButtonVisible", true)

    end

    AddTextEntry("focusedSlotName_OVERRIDE", "test")
    AddTextEntry("focusedEntryCount_OVERRIDE", "test2")

    local container2 = DatabindingAddDataContainer(container, "center_display_slot")

    DatabindingAddDataString(container2, "main_dictionary", "hud_textures")
    DatabindingAddDataString(container2, "main_dictionary", GetHashKey("_PLACEHOLDER"))
    DatabindingAddDataHash(container2, "focusedPrimaryItemName", -1970317535)  -- GXTEntry: "Empty" 
    DatabindingAddDataBool(container2, "focusedPrimaryItemVisible", true)
    DatabindingAddDataHash(container2, "focusedDescription", 335057113)  -- GXTEntry: "Unavailable" 
    DatabindingAddDataString(container2, "focusedSlotName", "focusedSlotName_OVERRIDE")
    DatabindingAddDataString(container2, "focusedEntryCount", "focusedEntryCount_OVERRIDE")
    DatabindingAddDataBool(container2, "focusedEntryCountVisible", true)





    UiflowblockEnter(uiFlowblock, 0)

    if UiStateMachineExists(255164800) == 0 then
        stateMachine = UiStateMachineCreate(255164800, uiFlowblock)
    end

    Wait(5000)

    UiStateMachineDestroy(255164800) 
end, false)
