

local meters = { --if you enable showBlinkIcon and showAlternateIcons it will be weird try it and see
    [0] = {
        meterValue = 0.7,
        meterColor = "COLOR_YELLOW",

        showBlinkIcon = false,
        showPulse = true,

        txd = "overhead",
        txn = "overhead_ambient_hunter",
        imgColor = "COLOR_YELLOW",

        showAlternateIcons = false,
        secondaryTxd = "overhead",
        secondaryTxn = "overhead_generic_arrow",
        secondaryImgColor = "COLOR_RED",

        overlayVisible = false,
        overlayTxd = "overhead",
        overlayTxn = "overhead_generic_arrow",
        overlayColor = "COLOR_RED",
    },
    [1] = {
        meterValue = 0.1,
        meterColor = "COLOR_RED",

        showBlinkIcon = true,
        showPulse = false,

        txd = "overhead",
        txn = "overhead_ambient_hunter",
        imgColor = "COLOR_RED",

        showAlternateIcons = false,
        secondaryTxd = "overhead",
        secondaryTxn = "overhead_generic_arrow",
        secondaryImgColor = "COLOR_YELLOW",

        overlayVisible = false,
        overlayTxd = "overhead",
        overlayTxn = "overhead_generic_arrow",
        overlayColor = "COLOR_YELLOW",
    },
    [2] = {
        meterValue = 0.3,
        meterColor = "COLOR_GREEN",

        showBlinkIcon = false,
        showPulse = false,

        txd = "overhead",
        txn = "overhead_ambient_hunter",
        imgColor = "COLOR_GREEN",

        showAlternateIcons = true,
        secondaryTxd = "overhead",
        secondaryTxn = "overhead_generic_arrow",
        secondaryImgColor = "COLOR_YELLOW",

        overlayVisible = false,
        overlayTxd = "overhead",
        overlayTxn = "overhead_generic_arrow",
        overlayColor = "COLOR_YELLOW",
    },
}

local activeMeterNames = {
    ["meter0"] = false,
    ["meter1"] = false,
    ["meter2"] = false,

    ["meter3"] = false,
    ["meter4"] = false,
    ["meter5"] = false,

    ["meter6"] = false,
    ["meter7"] = false,
}

local createdMeter = {}

local function setMeterName(meterName, enabled)
    activeMeterNames[meterName] = enabled
end

local function isAllMeterNameF()
    for k, value in pairs(activeMeterNames) do
        if value == true then
            return false
        end
    end
    return true
end

local function CreateMeter()
    for k, value in pairs(meters) do

        local meterName = nil
        for key, value in pairs(activeMeterNames) do
            if value == false then
                meterName = key
            end
        end

        if meterName == nil then return end

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

        local container =  DatabindingAddDataContainerFromPath("", "centralInfoDatastore")
    

        DatabindingAddDataBool(container, "isVisible", false) 


        local containersecoundRoot = DatabindingAddDataContainer(container, meterName)

        DatabindingAddDataFloat(containersecoundRoot, "meterValue", value.meterValue) -- 0.0 to 1.0
        DatabindingAddDataString(containersecoundRoot, "meterColor", value.meterColor)

        local visibleUI = DatabindingAddDataBool(containersecoundRoot, "visible", true)
        local enabledUI = DatabindingAddDataBool(containersecoundRoot, "enabled", true)

        DatabindingAddDataBool(containersecoundRoot, "showBlinkIcon", value.showBlinkIcon) -- icon blinks
        DatabindingAddDataBool(containersecoundRoot, "showPulse", value.showPulse)

        DatabindingAddDataString(containersecoundRoot, "txd", value.txd)
        DatabindingAddDataString(containersecoundRoot, "txn", value.txn)
        DatabindingAddDataString(containersecoundRoot, "imgColor", value.imgColor)

        DatabindingAddDataBool(containersecoundRoot, "showAlternateIcons", value.showAlternateIcons) 
        if value.showAlternateIcons == true then
            DatabindingAddDataString(containersecoundRoot, "secondaryTxd", value.secondaryTxd)
            DatabindingAddDataString(containersecoundRoot, "secondaryTxn", value.secondaryTxn)
            DatabindingAddDataString(containersecoundRoot, "secondaryImgColor", value.secondaryImgColor)
        end

        DatabindingAddDataBool(containersecoundRoot, "overlayVisible", value.overlayVisible)
        if value.overlayVisible == true then
            DatabindingAddDataString(containersecoundRoot, "overlayTxd", value.overlayTxd)
            DatabindingAddDataString(containersecoundRoot, "overlayTxn", value.overlayTxn)
            DatabindingAddDataString(containersecoundRoot, "overlayColor", value.overlayColor)
        end





        UiflowblockEnter(uiFlowblock, `cTimer_and_eight_meters`)

        if UiStateMachineExists(152319653) == 0 then
            stateMachine = UiStateMachineCreate(152319653, uiFlowblock)
        end
        
        setMeterName(meterName, true)
        table.insert(createdMeter, {meterContainer = containersecoundRoot, meterName = meterName, mainroot = mainroot, visibleUI = visibleUI, enabledUI, enabledUI})

        print("Meter Has been created")
        print("Meter Name: ".. meterName)

    end
end

RegisterCommand("meters", function()
    CreateMeter()
end, false)


RegisterCommand("removemeters", function(source, args)
    local arg = args[1]


    for i, value in ipairs(createdMeter) do
        if tostring(value.meterName) == tostring(arg) then
            DatabindingWriteDataBool(value.visibleUI, false)
            DatabindingWriteDataBool(value.enabledUI, false)
            setMeterName(value.meterName, false)
            table.remove(createdMeter, i)
        end
    end
end, false)

RegisterCommand("removeallmeters", function()
    for i, value in ipairs(createdMeter) do
        UiStateMachineDestroy(152319653)
        DatabindingWriteDataBool(value.visibleUI, false)
        DatabindingWriteDataBool(value.enabledUI, false)
        setMeterName(value.meterName, false)
        createdMeter = {}
    end
end, false)





