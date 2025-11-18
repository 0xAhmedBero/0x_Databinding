RegisterCommand("fistingMeter", function()
    uiFlowblock = Citizen.InvokeNative(0xC0081B34E395CE48, -119209833) 
    
    local temp = 0
    while not UiflowblockIsLoaded(uiFlowblock) do 
        temp = temp + 1
        if temp > 10000 then 
            print('Failed To Load Flowblock')
            return 
        end
        Citizen.Wait(1) 
    end
    

    while not Citizen.InvokeNative(0x10A93C057B6BD944, uiFlowblock) do
        Wait(200)
    end
    
    container =  DatabindingAddDataContainerFromPath("", "centralInfoDatastore")

    containersecoundRoot = DatabindingAddDataContainer(container, "fistingMeter")
    
    
    DatabindingAddDataString(containersecoundRoot, "setLeftMeterColor", "COLOR_YELLOW") 
    DatabindingAddDataString(containersecoundRoot, "setRightMeterColor", "COLOR_RED") 
    DatabindingAddDataInt(containersecoundRoot, "setLeftMeter", 70)
    DatabindingAddDataInt(containersecoundRoot, "setRightMeter", 30)
    DatabindingAddDataBool(containersecoundRoot, "isVisible", true)

    DatabindingAddDataString(container, "timerMessageString", "Hello")
    DatabindingAddDataString(container, "timerString", "") 
    

    UiflowblockEnter(uiFlowblock, `cTimer_and_fistingMeter`)
    
    if UiStateMachineExists(1546991729) == 0 then
        stateMachine = UiStateMachineCreate(1546991729, uiFlowblock)
    end 

    Wait(3000)

    UiStateMachineDestroy(1546991729) 
end, false)



















