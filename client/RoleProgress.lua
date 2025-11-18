local AllRoles = {
    [1] = {
        label = "BOUNTY_HUNTER",
        description = "ROLE_DESC_BOUNTY_HUNTER",
        textureTxd = "pausemenu_textures",
        textureName = "role_card_bounty_hunter",
        level = 15,
        levelName = "Veteran",
        levelXPText = "1,250 / 2,000 XP",
        levelXPValue = 1250,
        levelXPMax = 2000,
        levelTextureTxd = "toasts_mp_generic",
        levelTextureName = "mp_roles_bounty_hunter",
        new = true,
        locked = false,
        toolTipText = "View Bounty Hunter progression.",

        details = {
            roleName = "BOUNTY_HUNTER",
            largeTextureTxd = "pausemenu_textures_mp", 
            largeTextureName = "role_bounty_hunter",
            rank_reward_list = {
                { xp = 100.0, textureTxd = "inventory_items", textureName = "provision_signet_ring", label = "Reinforced Lasso", description = "A sturdier lasso that is harder for targets to break from." },
                { xp = 100.0, textureTxd = "inventory_items", textureName = "provision_rs_abalone_shell_fragment", label = "Focus", description = "Targets glow red in Eagle Eye." },
                { xp = 100.0, textureTxd = "inventory_items", textureName = "provision_trinket_futuristic", label = "Bolas", description = "A thrown weapon perfect for tangling the legs of fleeing targets." },
                { xp = 30.0, textureTxd = "inventory_items", textureName = "provision_talisman_bear_claw", label = "The Garwood Hat", description = "A rugged hat for a rugged professional." },
                { xp = 0.0, textureTxd = "inventory_items", textureName = "provision_th_antique_brass_compass", label = "The Garwood Hat", description = "A rugged hat for a rugged professional." },

            },
            rank_kit_list = {
                { unlocked = true, owned = true, token = 2, tokenAlpha = false, tokebVisible = false, textureTxd = "inventory_items", textureName = "consumable_potent_predator_bait", label = "Gun Spinning", description = "Learn to perform a gun spinning trick." },
                { unlocked = true, owned = false, token = 1, tokenAlpha = true, tokebVisible = true, textureTxd = "inventory_items", textureName = "consumable_predator_bait", label = "Bounty Wagon", description = "A secure wagon for transporting multiple bounty targets." },
                { unlocked = false, owned = false, token = 2, tokenAlpha = false, tokebVisible = true, textureTxd = "inventory_items", textureName = "consumable_potent_predator_bait", label = "Gun Spinning", description = "Learn to perform a gun spinning trick." },
                { unlocked = false, owned = false, token = 3, tokenAlpha = false, tokebVisible = true, textureTxd = "inventory_items", textureName = "consumable_predator_bait", label = "Bounty Wagon", description = "A secure wagon for transporting multiple bounty targets." },
                { unlocked = false, owned = false, token = 3, tokenAlpha = false, tokebVisible = true, textureTxd = "inventory_items", textureName = "consumable_potent_predator_bait", label = "Gun Spinning", description = "Learn to perform a gun spinning trick." },
                { unlocked = false, owned = false, token = 2, tokenAlpha = false, tokebVisible = true, textureTxd = "inventory_items", textureName = "consumable_predator_bait", label = "Bounty Wagon", description = "A secure wagon for transporting multiple bounty targets." },
                { unlocked = false, owned = false, token = 1, tokenAlpha = false, tokebVisible = true, textureTxd = "inventory_items", textureName = "consumable_potent_predator_bait", label = "Gun Spinning", description = "Learn to perform a gun spinning trick." },
                { unlocked = false, owned = false, token = 2, tokenAlpha = false, tokebVisible = true, textureTxd = "inventory_items", textureName = "consumable_predator_bait", label = "Bounty Wagon", description = "A secure wagon for transporting multiple bounty targets." },
            }
        }
    },
    [2] = {
        label = "TRADER",
        description = "ROLE_DESC_TRADER",
        textureTxd = "pausemenu_textures",
        textureName = "role_card_trader",
        level = 20,
        levelName = "Distinguished",
        levelXPText = "MAX RANK",
        levelXPValue = 2000,
        levelXPMax = 2000,
        levelTextureTxd = "toasts_mp_generic",
        levelTextureName = "mp_roles_trader",
        new = false,
        locked = false,
        toolTipText = "View Trader progression.",
        details = {
            roleName = "TRADER",
            largeTextureTxd = "pausemenu_textures_mp",
            largeTextureName = "role_trader",
            rank_reward_list = {
                { xp = 100.0, textureTxd = "inventory_items", textureName = "provision_signet_ring", label = "Reinforced Lasso", description = "A sturdier lasso that is harder for targets to break from." },
                { xp = 100.0, textureTxd = "inventory_items", textureName = "provision_rs_abalone_shell_fragment", label = "Focus", description = "Targets glow red in Eagle Eye." },
                { xp = 100.0, textureTxd = "inventory_items", textureName = "provision_trinket_futuristic", label = "Bolas", description = "A thrown weapon perfect for tangling the legs of fleeing targets." },
                { xp = 30.0, textureTxd = "inventory_items", textureName = "provision_talisman_bear_claw", label = "The Garwood Hat", description = "A rugged hat for a rugged professional." },
                { xp = 0.0, textureTxd = "inventory_items", textureName = "provision_th_antique_brass_compass", label = "The Garwood Hat", description = "A rugged hat for a rugged professional." },
            },
            rank_kit_list = {
                { unlocked = true, owned = true, token = 2, tokenAlpha = false, tokebVisible = false, textureTxd = "inventory_items", textureName = "consumable_potent_predator_bait", label = "Gun Spinning", description = "Learn to perform a gun spinning trick." },
                { unlocked = true, owned = false, token = 1, tokenAlpha = true, tokebVisible = true, textureTxd = "inventory_items", textureName = "consumable_predator_bait", label = "Bounty Wagon", description = "A secure wagon for transporting multiple bounty targets." },
                { unlocked = false, owned = false, token = 2, tokenAlpha = false, tokebVisible = true, textureTxd = "inventory_items", textureName = "consumable_potent_predator_bait", label = "Gun Spinning", description = "Learn to perform a gun spinning trick." },
                { unlocked = false, owned = false, token = 3, tokenAlpha = false, tokebVisible = true, textureTxd = "inventory_items", textureName = "consumable_predator_bait", label = "Bounty Wagon", description = "A secure wagon for transporting multiple bounty targets." },
                { unlocked = false, owned = false, token = 3, tokenAlpha = false, tokebVisible = true, textureTxd = "inventory_items", textureName = "consumable_potent_predator_bait", label = "Gun Spinning", description = "Learn to perform a gun spinning trick." },
                { unlocked = false, owned = false, token = 2, tokenAlpha = false, tokebVisible = true, textureTxd = "inventory_items", textureName = "consumable_predator_bait", label = "Bounty Wagon", description = "A secure wagon for transporting multiple bounty targets." },
                { unlocked = false, owned = false, token = 1, tokenAlpha = false, tokebVisible = true, textureTxd = "inventory_items", textureName = "consumable_potent_predator_bait", label = "Gun Spinning", description = "Learn to perform a gun spinning trick." },
                { unlocked = false, owned = false, token = 2, tokenAlpha = false, tokebVisible = true, textureTxd = "inventory_items", textureName = "consumable_predator_bait", label = "Bounty Wagon", description = "A secure wagon for transporting multiple bounty targets." },

            }
        }
    },
    [3] = {
        label = "COLLECTOR",
        description = "ROLE_DESC_COLLECTOR",
        textureTxd = "pausemenu_textures",
        textureName = "role_card_collector",
        level = 5,
        levelName = "Novice",
        levelXPText = "500 / 1,000 XP",
        levelXPValue = 500,
        levelXPMax = 1000,
        levelTextureTxd = "toasts_mp_generic",
        levelTextureName = "mp_roles_collector",
        new = false,
        locked = true,
        toolTipText = "You must first purchase the Collector's Bag to begin this role.",
        details = {
            roleName = "COLLECTOR",
            largeTextureTxd = "pausemenu_textures_mp",
            largeTextureName = "role_collector",
            rank_reward_list = {
                { xp = 100.0, textureTxd = "inventory_items", textureName = "provision_signet_ring", label = "Reinforced Lasso", description = "A sturdier lasso that is harder for targets to break from." },
                { xp = 100.0, textureTxd = "inventory_items", textureName = "provision_rs_abalone_shell_fragment", label = "Focus", description = "Targets glow red in Eagle Eye." },
                { xp = 100.0, textureTxd = "inventory_items", textureName = "provision_trinket_futuristic", label = "Bolas", description = "A thrown weapon perfect for tangling the legs of fleeing targets." },
                { xp = 30.0, textureTxd = "inventory_items", textureName = "provision_talisman_bear_claw", label = "The Garwood Hat", description = "A rugged hat for a rugged professional." },
                { xp = 0.0, textureTxd = "inventory_items", textureName = "provision_th_antique_brass_compass", label = "The Garwood Hat", description = "A rugged hat for a rugged professional." },
            },
            rank_kit_list = {
                { unlocked = true, owned = true, token = 2, tokenAlpha = false, tokebVisible = false, textureTxd = "inventory_items", textureName = "consumable_potent_predator_bait", label = "Gun Spinning", description = "Learn to perform a gun spinning trick." },
                { unlocked = true, owned = false, token = 1, tokenAlpha = true, tokebVisible = true, textureTxd = "inventory_items", textureName = "consumable_predator_bait", label = "Bounty Wagon", description = "A secure wagon for transporting multiple bounty targets." },
                { unlocked = false, owned = false, token = 2, tokenAlpha = false, tokebVisible = true, textureTxd = "inventory_items", textureName = "consumable_potent_predator_bait", label = "Gun Spinning", description = "Learn to perform a gun spinning trick." },
                { unlocked = false, owned = false, token = 3, tokenAlpha = false, tokebVisible = true, textureTxd = "inventory_items", textureName = "consumable_predator_bait", label = "Bounty Wagon", description = "A secure wagon for transporting multiple bounty targets." },
                { unlocked = false, owned = false, token = 3, tokenAlpha = false, tokebVisible = true, textureTxd = "inventory_items", textureName = "consumable_potent_predator_bait", label = "Gun Spinning", description = "Learn to perform a gun spinning trick." },
                { unlocked = false, owned = false, token = 2, tokenAlpha = false, tokebVisible = true, textureTxd = "inventory_items", textureName = "consumable_predator_bait", label = "Bounty Wagon", description = "A secure wagon for transporting multiple bounty targets." },
                { unlocked = false, owned = false, token = 1, tokenAlpha = false, tokebVisible = true, textureTxd = "inventory_items", textureName = "consumable_potent_predator_bait", label = "Gun Spinning", description = "Learn to perform a gun spinning trick." },
                { unlocked = false, owned = false, token = 2, tokenAlpha = false, tokebVisible = true, textureTxd = "inventory_items", textureName = "consumable_predator_bait", label = "Bounty Wagon", description = "A secure wagon for transporting multiple bounty targets." },
            }
        }
    }
}

local textEntries = {
    ["BOUNTY_HUNTER"] = "Bounty Hunter",
    ["ROLE_DESC_BOUNTY_HUNTER"] = "Hunt down wanted criminals and bring them to justice, dead or alive.",
    ["TRADER"] = "Trader",
    ["ROLE_DESC_TRADER"] = "Establish a thriving business from your camp by hunting and selling goods.",
    ["COLLECTOR"] = "Collector",
    ["ROLE_DESC_COLLECTOR"] = "Search the world for valuable treasures and rarities to sell.",
}
for key, value in pairs(textEntries) do
    AddTextEntry(key, value)
end


local mainRoot = nil 

function PopulateRoleDetails(roleData)
    if not mainRoot or not DatabindingIsEntryValid(mainRoot) then
        print("Error: Main root for databinding is not valid.")
        return
    end

    local currentRolePage = DatabindingAddDataContainer(mainRoot, "currentRolePage")

    DatabindingAddDataHash(currentRolePage, "roleName", GetHashKey(roleData.details.roleName))
    DatabindingAddDataString(currentRolePage, "largeTextureTxd", roleData.details.largeTextureTxd)
    DatabindingAddDataString(currentRolePage, "largeTextureName", roleData.details.largeTextureName)
    DatabindingAddDataBool(currentRolePage, "largeTextureAlpha", true)
    DatabindingAddDataString(currentRolePage, "rank_total_xp_text", "TOTAL XP: " .. roleData.levelXPValue)
    DatabindingAddDataBool(currentRolePage, "rank_total_xp_visible", true)
    tabIndexHandle = DatabindingAddDataInt(currentRolePage, "tabIndex", 0)
    DatabindingAddDataInt(currentRolePage, "tabCount", 2)
    DatabindingAddDataString(currentRolePage, "tabName", "Page 1")

    DatabindingAddDataString(currentRolePage, "roleGoogleName", "TRADER")
    DatabindingAddDataString(currentRolePage, "description", "ROLE_DESC_BOUNTY_HUNTER")
    DatabindingAddDataString(currentRolePage, "label", "TRADER")

    local rankRewardList = DatabindingAddUiItemList(currentRolePage, "rank_reward_list")
    local rankKitList = DatabindingAddUiItemList(currentRolePage, "rank_kit_list")

    if roleData.details.rank_reward_list then
        for i, reward in ipairs(roleData.details.rank_reward_list) do
            local rewardContainer = DatabindingAddDataContainer(currentRolePage, "reward_" .. i)
            
            DatabindingAddDataString(rewardContainer, "textureTxd", reward.textureTxd)
            DatabindingAddDataString(rewardContainer, "textureName", reward.textureName)
            DatabindingAddDataBool(rewardContainer, "unlocked", (reward.xp or 0) >= 100)
            DatabindingAddDataBool(rewardContainer, "owned", (reward.xp or 0) >= 100)
            DatabindingAddDataFloat(rewardContainer, "xpMax", 100.0)
            DatabindingAddDataFloat(rewardContainer, "xpValue", reward.xp or 10.0)

            local labelKey = "REWARD_LABEL_" .. roleData.label .. "_" .. i
            local descKey = "REWARD_DESC_" .. roleData.label .. "_" .. i
            AddTextEntry(labelKey, reward.label)
            AddTextEntry(descKey, reward.description)
            DatabindingAddDataHash(rewardContainer, "label", GetHashKey(labelKey))
            DatabindingAddDataHash(rewardContainer, "description", GetHashKey(descKey))
            
            DatabindingAddDataBool(rewardContainer, "dynamic_list_item_enabled", true)
            DatabindingInsertUiItemToListFromContextStringAlias(rankRewardList, -1, "rank_reward_entry", rewardContainer)
        end
    end

    if roleData.details.rank_kit_list then
        for i, kitItem in ipairs(roleData.details.rank_kit_list) do
            local kitContainer = DatabindingAddDataContainer(currentRolePage, "kit_item_" .. i)

            DatabindingAddDataString(kitContainer, "textureTxd", kitItem.textureTxd)
            DatabindingAddDataString(kitContainer, "textureName", kitItem.textureName)
            DatabindingAddDataBool(kitContainer, "unlocked", kitItem.unlocked)
            DatabindingAddDataBool(kitContainer, "owned", kitItem.owned)

            local labelKey = "KIT_LABEL_" .. roleData.label .. "_" .. i
            local descKey = "KIT_DESC_" .. roleData.label .. "_" .. i
            AddTextEntry(labelKey, kitItem.label)
            AddTextEntry(descKey, kitItem.description)
            DatabindingAddDataHash(kitContainer, "label", GetHashKey(labelKey))
            DatabindingAddDataHash(kitContainer, "description", GetHashKey(descKey))
            
            DatabindingAddDataString(kitContainer, "item_token_count", tostring(kitItem.token))
            DatabindingAddDataBool(kitContainer, "item_token_enabled", kitItem.tokenAlpha)
            DatabindingAddDataBool(kitContainer, "item_token_visible", kitItem.tokebVisible)
            DatabindingAddDataBool(kitContainer, "dynamic_list_item_enabled", true)
            DatabindingAddDataBool(kitContainer, "dynamic_list_item_prompt_enabled", true)
            DatabindingAddDataHash(kitContainer, "dynamic_list_item_prompt_text", GetHashKey("IB_SELECT"))
            
            DatabindingInsertUiItemToListFromContextStringAlias(rankKitList, -1, "rank_kit_entry", kitContainer)
        end
    end
end


RegisterCommand("rolesui", function()
    if IsUiappActiveByHash(GetHashKey("role_progression")) then
        CloseAppByHash(GetHashKey("role_progression"))
        Wait(500)
    end
    if mainRoot and DatabindingIsEntryValid(mainRoot) then
        DatabindingRemoveDataEntry(mainRoot)
        mainRoot = nil
    end

    mainRoot = DatabindingAddDataContainerFromPath("", "role_progression_data")
    local roleSelectPage = DatabindingAddDataContainer(mainRoot, "roleSelectPage")
    local roleCardList = DatabindingAddUiItemList(roleSelectPage, "RoleCardList")

    for i, roleData in ipairs(AllRoles) do
        local roleContainer = DatabindingAddDataContainer(roleSelectPage, "role_" .. i)
        
        DatabindingAddDataHash(roleContainer, "label", GetHashKey(roleData.label))
        DatabindingAddDataHash(roleContainer, "description", GetHashKey(roleData.description))
        DatabindingAddDataString(roleContainer, "textureTxd", roleData.textureTxd)
        DatabindingAddDataString(roleContainer, "textureName", roleData.textureName)
        
        DatabindingAddDataString(roleContainer, "level", roleData.level)
        
        DatabindingAddDataString(roleContainer, "levelName", roleData.levelName)
        DatabindingAddDataString(roleContainer, "levelXPText", roleData.levelXPText)
        DatabindingAddDataFloat(roleContainer, "levelXPValue", roleData.levelXPValue)
        DatabindingAddDataFloat(roleContainer, "levelXPMax", roleData.levelXPMax)
        DatabindingAddDataString(roleContainer, "levelTextureTxd", roleData.levelTextureTxd)
        DatabindingAddDataString(roleContainer, "levelTextureName", roleData.levelTextureName)
        DatabindingAddDataBool(roleContainer, "new", roleData.new)
        DatabindingAddDataBool(roleContainer, "locked", roleData.locked)
        DatabindingAddDataString(roleContainer, "toolTipText", roleData.toolTipText)
        
        DatabindingAddDataInt(roleContainer, "role_index", i)
        
        DatabindingAddDataBool(roleContainer, "dynamic_list_item_enabled", not roleData.locked)
        
        DatabindingInsertUiItemToListFromContextStringAlias(roleCardList, -1, "role_card_entry", roleContainer)
    end

    
    PopulateRoleDetails(AllRoles[1])


    
    LaunchAppByHash(GetHashKey("role_progression"))
end, false)

RegisterCommand("removeroleall", function()
    if IsUiappActiveByHash(GetHashKey("role_progression")) then
        CloseAppByHash(GetHashKey("role_progression"))
        Wait(250)
    end

    if mainRoot and DatabindingIsEntryValid(mainRoot) then
        DatabindingRemoveDataEntry(mainRoot)
        print("Role UI data has been removed.")
    else
        print("Role UI data was not found or was already removed.")
    end
    
    mainRoot = nil
end, false)