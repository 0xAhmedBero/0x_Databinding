local AllRewards = {
    -- Page 1
    [1] = {
        title = "CLUB REWARDS",
        largeBgTxd = "ui_season_generic",
        largeBgTxn = "vip_pass_pop_up_welcome_bg",
        regular = {
            { txd = "inventory_items", txn = "consumable_potent_herbivore_bait", label = "Consumable Potent Herbivore Bait", desc = "A potent bait that can be used to lure out herbivores.", xp = 100 },
            { txd = "inventory_items", txn = "ammo_arrow_poison", label = "Poison Arrows", desc = "Arrows tipped with a potent toxin.", xp = 100 },
            { txd = "inventory_items", txn = "ammo_arrow_poison", label = "Outlaw Hat", desc = "A hat worn by the most notorious outlaws.", xp = 50 },
            { txd = "inventory_items", txn = "ammo_arrow_poison", label = "Frontier Boots", desc = "Sturdy boots for a life on the frontier.", xp = 0 },
            { txd = "inventory_items", txn = "ammo_arrow_poison", label = "Coin Flip Emote", desc = "Settle a dispute the old-fashioned way.", xp = 0 },
        },
        vip = {
            { txd = "inventory_items", txn = "ammo_arrow_poison", label = "Creature Mask", desc = "A fearsome mask for your loyal steed.", xp = 100 },
            { txd = "inventory_items", txn = "ammo_arrow_poison", label = "Patterned Poncho", desc = "Stay warm and stylish with this unique poncho.", xp = 100 },
            { txd = "inventory_items", txn = "ammo_arrow_poison", label = "Husky Camp Dog", desc = "A loyal and beautiful husky for your camp.", xp = 100 },
            { txd = "inventory_items", txn = "consumable_potent_herbivore_bait", label = "Seasoned Eyewear", desc = "Protect your eyes from the sun and dust.", xp = 75 },
            { txd = "inventory_items", txn = "consumable_potent_herbivore_bait", label = "Beach Photo Backdrop", desc = "Take stunning photos with a beach background.", xp = 0 },
            { txd = "inventory_items", txn = "consumable_potent_herbivore_bait", label = "Wild Dance Emote", desc = "Let loose with this energetic dance.", xp = 0 },
            { txd = "inventory_items", txn = "consumable_potent_herbivore_bait", label = "Bar Photo", desc = "A photo to commemorate your moonshining ventures.", xp = 0 },
            nil, -- Example of an empty VIP slot
            { txd = "inventory_items", txn = "clothing_item_m_gauntlets_001_tint_001", label = "Fine Gauntlets", desc = "Protect your hands with these fine leather gauntlets.", xp = 0 },
            nil, -- Example of an empty VIP slot
        }
    },
    -- Page 2
    [2] = {
        title = "SEASON PASS",
        largeBgTxd = "ui_season_generic",
        largeBgTxn = "vip_pass_pop_up_welcome_bg",
        regular = {
            { txd = "inventory_items", txn = "consumable_potent_herbivore_bait", label = "Rugged Coat", desc = "A rugged coat for the discerning outlaw.", xp = 100 },
            { txd = "inventory_items", txn = "consumable_potent_herbivore_bait", label = "Stylish Vest", desc = "A stylish vest to complete your look.", xp = 20 },
            nil, -- Example of an empty regular slot
            { txd = "inventory_items", txn = "consumable_potent_herbivore_bait", label = "Durable Pants", desc = "Durable pants for a life of adventure.", xp = 0 },
            nil, -- Example of an empty regular slot
        },
        vip = {
            { txd = "inventory_items", txn = "ammo_arrow_poison", label = "Golden Spirit Mask", desc = "An ornate and imposing mask for your horse.", xp = 100 },
            { txd = "inventory_items", txn = "ammo_arrow_poison", label = "The Woodward Outfit", desc = "A complete outfit for the seasoned adventurer.", xp = 100 },
            { txd = "inventory_items", txn = "clothing_oammo_arrow_poisontfit_item_f_season_s02_001", label = "The Houndslow Outfit", desc = "A complete outfit for the discerning frontierswoman.", xp = 80 },
            nil,
            nil,
            { txd = "inventory_items", txn = "ammo_arrow_poison", label = "Lucifer's Brand Flag", desc = "Fly your own flag at camp.", xp = 0 },
            { txd = "inventory_items", txn = "ammo_arrow_poison", label = "Moonshiner Backdrop", desc = "A backdrop for your moonshining-themed photos.", xp = 0 },
            { txd = "inventory_items", txn = "consumable_potent_herbivore_bait", label = "New Threads Emote", desc = "Show off your new outfit with this emote.", xp = 0 },
            { txd = "inventory_items", txn = "consumable_potent_herbivore_bait", label = "Ornate Buckle", desc = "A beautifully crafted belt buckle.", xp = 0 },
            { txd = "inventory_items", txn = "consumable_potent_herbivore_bait", label = "Celebration Photo", desc = "Capture the moment with a celebratory photo.", xp = 0 },
        }
    }
}

local function getEntryStatus(entry)
    if entry and DatabindingIsEntryValid(entry) then
        return "VALID (" .. tostring(entry) .. ")"
    else
        return "INVALID or NIL"
    end
end

function PopulateRewardsPage(pageNumber)
    if not rankListRoot or not vipListRoot or not progressPageRoot then return end
    
    print("Populating page: " .. pageNumber)

    DatabindingClearBindingArray(rankListRoot)
    DatabindingClearBindingArray(vipListRoot)
    rankItemsRoot = {}
    vipItemsRoot = {}

    local pageData = AllRewards[pageNumber]
    if not pageData then 
        print("No data for page " .. pageNumber)
        return 
    end

    DatabindingAddDataString(progressPageRoot, "largeTextureTxd", "halloween_pass_pop_up")
    DatabindingAddDataString(progressPageRoot, "largeTextureName", "halloween_pass_pop_up_header")
    DatabindingAddDataInt(progressPageRoot, "largeTextureAlpha", 1)

    AddTextEntry('reward_item_label_text', 'My Cool Item')
    AddTextEntry('reward_item_description_text', 'My Cool Item')
    DatabindingAddDataHash(progressPageRoot, "label", GetHashKey("reward_item_label_text"))
    DatabindingAddDataHash(progressPageRoot, "description", GetHashKey("reward_item_description_text"))
    for i = 1, 5 do
        local itemData = pageData.regular[i]
        local rankItem = DatabindingAddDataContainer(progressPageRoot, "rank_item_" .. i)
        
        if itemData then
            DatabindingAddDataFloat(rankItem, "xpMax", 100.0)
            DatabindingAddDataFloat(rankItem, "xpValue", itemData.xp or 10.0)
            DatabindingAddDataString(rankItem, "textureTxd", itemData.txd)
            DatabindingAddDataString(rankItem, "textureName", itemData.txn)
            DatabindingAddDataBool(rankItem, "locked", (itemData.xp or 0) < 100)
            DatabindingAddDataBool(rankItem, "owned", (itemData.xp or 0) >= 100)
            DatabindingAddDataHash(rankItem, "label", GetHashKey(itemData.label))
            DatabindingAddDataHash(rankItem, "description", GetHashKey(itemData.desc))
        else
            -- Data for an empty slot
            DatabindingAddDataFloat(rankItem, "xpMax", 100.0)
            DatabindingAddDataFloat(rankItem, "xpValue", 10.0)
            DatabindingAddDataString(rankItem, "textureTxd", "")
            DatabindingAddDataString(rankItem, "textureName", "")
            DatabindingAddDataBool(rankItem, "locked", true)
            DatabindingAddDataBool(rankItem, "owned", false)
            DatabindingAddDataHash(rankItem, "label", GetHashKey("..."))
            DatabindingAddDataHash(rankItem, "description", GetHashKey("..."))
        end
        DatabindingAddDataString(rankItem, "dynamic_list_item_raw_text_entry", "true")
        DatabindingAddDataBool(rankItem, "dynamic_list_item_enabled", true)
        DatabindingInsertUiItemToListFromContextStringAlias(rankListRoot, -1, "rank_entry", rankItem)
        table.insert(rankItemsRoot, rankItem)
    end
    
    local isVipPassOwned = DatabindingReadDataBool(mainroot, "season_vip_pass_owned")
    for i = 1, 10 do
        local itemData = pageData.vip[i]
        local vipItem = DatabindingAddDataContainer(progressPageRoot, "vip_item_" .. i)

        if itemData then
            DatabindingAddDataFloat(vipItem, "xpMax", 100.0)
            DatabindingAddDataFloat(vipItem, "xpValue", itemData.xp or 10.0)
            DatabindingAddDataString(vipItem, "textureTxd", itemData.txd)
            DatabindingAddDataString(vipItem, "textureName", itemData.txn)
            DatabindingAddDataBool(vipItem, "locked", not isVipPassOwned)
            DatabindingAddDataBool(vipItem, "owned", isVipPassOwned and (itemData.xp or 0) >= 100)
            DatabindingAddDataHash(vipItem, "label", GetHashKey(itemData.label))
            DatabindingAddDataHash(vipItem, "description", GetHashKey(itemData.desc))
        else
            DatabindingAddDataFloat(vipItem, "xpMax", 100.0)
            DatabindingAddDataFloat(vipItem, "xpValue", 10.0)
            DatabindingAddDataString(vipItem, "textureTxd", "")
            DatabindingAddDataString(vipItem, "textureName", "")
            DatabindingAddDataBool(vipItem, "locked", not isVipPassOwned)
            DatabindingAddDataBool(vipItem, "owned", false)
            DatabindingAddDataHash(vipItem, "label", GetHashKey("..."))
            DatabindingAddDataHash(vipItem, "description", GetHashKey("..."))
        end

        DatabindingAddDataBool(rankItem, "dynamic_list_item_enabled", true)
        DatabindingAddDataBool(rankItem, "dynamic_list_item_prompt_visible", true)
        DatabindingAddDataBool(rankItem, "dynamic_list_item_prompt_enabled", false)
        DatabindingInsertUiItemToListFromContextStringAlias(vipListRoot, -1, "vip_entry", vipItem)
        table.insert(vipItemsRoot, vipItem)
    end
end

RegisterCommand("rewardsui", function(source, args)
    if IsUiappActiveByHash(GetHashKey("rewards")) then
        CloseAppByHash(GetHashKey("rewards"))
        Wait(500)
    end
    if mainroot and DatabindingIsEntryValid(mainroot) then
        DatabindingRemoveDataEntry(progressPageRoot)
        DatabindingRemoveDataEntry(mainroot)
        mainroot = nil
        progressPageRoot = nil
    end


    mainroot = DatabindingAddDataContainerFromPath("", "season_rewards_data")
    progressPageRoot = DatabindingAddDataContainer(mainroot, "progressPage")
    
    DatabindingAddDataBool(mainroot, "season_vip_pass_owned", false)
    DatabindingAddDataString(mainroot, "tooltipRawText", "hello")





    local testRoot = DatabindingAddDataContainerFromPath("", "mpProgress")
    -- progressPageRoot = DatabindingAddDataContainer(mainroot, "progressPage")


    DatabindingAddDataBool(testRoot, "progressRewardsTilePromptEnabled", true)
    
    DatabindingAddDataString(testRoot, "progressRewardsRankText", "Rank 1")

    DatabindingAddDataString(testRoot, "progressRewardsRankTextColor", "COLOR_WHITE")

    DatabindingAddDataBool(testRoot, "progressRewardsTileHasVip", false)



    -- AddTextEntry("season_rewards_data_infoScreenPage", "Page")
    
    -- DatabindingAddDataString(mainroot, "infoScreenPage", "season_rewards_data_infoScreenPage")

    -- AddTextEntry("season_rewards_data_BuyText", "BUY")
    
    -- DatabindingAddDataBool(mainroot, "infoScreenBuyPromptEnabled", true)
    -- DatabindingAddDataString(mainroot, "infoScreenBuyPromptText", "season_rewards_data_BuyText")

    AddTextEntry("season_rewards_data_MoreInfoText", "More Info")
    DatabindingAddDataString(progressPageRoot, "pass_more_info_label", "season_rewards_data_MoreInfoText")


    
    -- DatabindingAddDataString(mainroot, "infoScreenBgTextureDict", "halloween_pass_pop_up")
    -- DatabindingAddDataString(mainroot, "infoScreenBgTexture", "halloween_pass_pop_up_header")
    
    -- DatabindingAddDataString(mainroot, "infoScreenBgGradientTextureDict", "halloween_pass_pop_up")
    -- DatabindingAddDataString(mainroot, "infoScreenBgGradientTexture", "halloween_pass_pop_up_header")

    -- DatabindingAddDataString(mainroot, "infoScreenLogoTextureDict", "halloween_pass_pop_up")
    -- DatabindingAddDataString(mainroot, "infoScreenLogoTexture", "halloween_pass_pop_up_header")

    -- AddTextEntry("season_rewards_data_infoScreenTitle", "Page")
    -- DatabindingAddDataString(mainroot, "infoScreenTitle", "season_rewards_data_infoScreenTitle")

    -- DatabindingAddDataString(mainroot, "infoScreenBody1", "season_rewards_data_infoScreenTitle")
    -- DatabindingAddDataString(mainroot, "infoScreenBody2", "test")


    DatabindingAddDataString(progressPageRoot, "titleName", "WHEELER")
    tabIndexHandle = DatabindingAddDataInt(progressPageRoot, "tabIndex", 0)
    DatabindingAddDataInt(progressPageRoot, "tabCount", #AllRewards)
    DatabindingAddDataString(progressPageRoot, "rank_xp_text", "0,250 / 1,000 XP")
    DatabindingAddDataBool(progressPageRoot, "rank_xp_visible", true)
    DatabindingAddDataBool(progressPageRoot, "rank_xp_enabled", true)
    DatabindingAddDataString(progressPageRoot, "rank_total_xp_text", "TOTAL XP: 123,456")
    DatabindingAddDataBool(progressPageRoot, "rank_total_xp_visible", true)
    DatabindingAddDataBool(progressPageRoot, "rank_total_xp_enabled", true)
    DatabindingAddDataBool(progressPageRoot, "retailPriceLockVisible", true)
    DatabindingAddDataString(progressPageRoot, "retailPriceColor", "COLOR_YELLOW")
    DatabindingAddDataString(progressPageRoot, "retailPrice", "TOTAL")
    DatabindingAddDataString(progressPageRoot, "retailPriceColor", "COLOR_ORANGE")


    for i = 0, 5 do
        if tostring(i) == tostring(0) then
            DatabindingAddDataString(progressPageRoot, "rank_slot_"..i, tostring(i))
            DatabindingAddDataBool(progressPageRoot, "rank_slot_"..i.."_enabled", true)
        else
            DatabindingAddDataString(progressPageRoot, "rank_slot_"..i, tostring(i).. "000")
            DatabindingAddDataBool(progressPageRoot, "rank_slot_"..i.."_enabled", true)
        end
    end
    
    rankListRoot = DatabindingAddUiItemList(progressPageRoot, "rank_list")
    vipListRoot = DatabindingAddUiItemList(progressPageRoot, "vip_list")

    PopulateRewardsPage(1)
    
    DatabindingAddDataString(progressPageRoot, "tabName", "Page " .. 1)
    
    -- LaunchAppByHash(GetHashKey("rewards"))

    CreateThread(function()
        local currentPage = 1
        while IsUiappActiveByHash(GetHashKey("rewards")) do
            Wait(100)
            
            local newPage = DatabindingReadDataInt(tabIndexHandle) + 1
            if newPage ~= currentPage then
                currentPage = newPage
                
                DatabindingAddDataString(progressPageRoot, "tabName", "Page " .. currentPage)
                PopulateRewardsPage(currentPage)
            end
        end
    end)
end, false)