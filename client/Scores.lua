
RegisterCommand("ScoreMeter", function()
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

    containersecoundRoot = DatabindingAddDataContainer(container, "score")
    
    
    DatabindingAddDataBool(containersecoundRoot, "leftScoreVisible", true)
    DatabindingAddDataString(containersecoundRoot, "leftScore", "25") 
    DatabindingAddDataString(containersecoundRoot, "leftScoreTextColor", "COLOR_RED") 
    DatabindingAddDataString(containersecoundRoot, "leftScoreColor", "COLOR_YELLOW") 


    DatabindingAddDataBool(containersecoundRoot, "rightScoreVisible", true)
    DatabindingAddDataString(containersecoundRoot, "rightScore", "25") 
    DatabindingAddDataString(containersecoundRoot, "rightScoreTextColor", "COLOR_YELLOW") 
    DatabindingAddDataString(containersecoundRoot, "rightScoreColor", "COLOR_RED") 

    DatabindingAddDataBool(containersecoundRoot, "isVisible", true)

    DatabindingAddDataString(container, "timerMessageString", "Fight")
    DatabindingAddDataString(container, "timerString", "") 



    UiflowblockEnter(uiFlowblock, `cTimer_Scores_and_meters`)
    
    if UiStateMachineExists(1546991729) == 0 then
        stateMachine = UiStateMachineCreate(1546991729, uiFlowblock)
    end 

    Wait(5000)

    UiStateMachineDestroy(1546991729)
end, false)