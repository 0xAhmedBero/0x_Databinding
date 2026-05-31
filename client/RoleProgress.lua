local AllRoles = {
    ["BOUNTY_HUNTER"] = {
        name = "BOUNTY_HUNTER",
        label = "BOUNTY_HUNTER",
        description = "ROLE_DESC_BOUNTY_HUNTER",
        textureTxd = "pausemenu_textures",
        textureName = "role_card_bounty_hunter",
        level = 2,
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
            pages = {
                [1] = {
                    rank_reward_list = {
                        {
                            level = 1, 
                            textureTxd = "inventory_items", 
                            textureName = "provision_signet_ring", 
                            label = "Reinforced Lasso", 
                            description = "A sturdier lasso that is harder for targets to break from." 
                        },
                        {
                            level = 3, 
                            textureTxd = "inventory_items", 
                            textureName = "provision_rs_abalone_shell_fragment", 
                            label = "Focus", 
                            description = "Targets glow red in Eagle Eye." 
                        },
                    },
                    rank_kit_list = {
                        {
                            level = 1,
                            unlocked = true, 
                            owned = true, 
                            token = 2, 
                            tokenAlpha = false,
                            textureTxd = "inventory_items_mp", 
                            textureName = "generic_skin_knife", 
                            label = "Gun Spinning", 
                            description = "Learn to perform a gun spinning trick." 
                        },
                        {
                            level = 3,
                            unlocked = true, 
                            owned = false, 
                            token = 1, 
                            tokenAlpha = true,
                            textureTxd = "inventory_items_mp", 
                            textureName = "generic_skin_machete", 
                            label = "Bounty Wagon", 
                            description = "A secure wagon for transporting multiple bounty targets." 
                        },
                    }
                },
                [2] = {
                    rank_reward_list = {
                        {
                            level = 6, 
                            textureTxd = "inventory_items_mp",
                            textureName = "ammo_22_tranquilizer", 
                            label = "Reinforced Lasso V2", 
                            description = "An even sturdier lasso." 
                        },
                        {
                            level = 8, 
                            textureTxd = "inventory_items_mp", 
                            textureName = "generic_coupon", 
                            label = "Advanced Focus", 
                            description = "Enhanced target tracking." 
                        },
                    },
                    rank_kit_list = {
                        {
                            level = 6,
                            unlocked = true, 
                            owned = true, 
                            token = 2, 
                            tokenAlpha = false,
                            textureTxd = "inventory_items_mp", 
                            textureName = "generic_skin_revolver", 
                            label = "Tricks", 
                            description = "Learn more tricks." 
                        },
                        {
                            level = 7,
                            unlocked = true, 
                            owned = false, 
                            token = 1, 
                            tokenAlpha = true,
                            textureTxd = "inventory_items_mp", 
                            textureName = "generic_stable_expand", 
                            label = "Bounty Wagon livery", 
                            description = "A customized look for your secure wagon." 
                        },
                    }
                },
            }
        }
    },
    ["TRADER"] = {
        name = "TRADER",
        label = "TRADER",
        description = "ROLE_DESC_TRADER",
        textureTxd = "pausemenu_textures",
        textureName = "role_card_trader",
        level = 1,
        levelName = "Promising",
        levelXPText = "850 / 2,000 XP",
        levelXPValue = 850,
        levelXPMax = 2000,
        levelTextureTxd = "toasts_mp_generic",
        levelTextureName = "mp_roles_trader",
        new = false,
        locked = true,
        toolTipText = "View Trader progression.",

        details = {
            roleName = "TRADER",
            largeTextureTxd = "pausemenu_textures_mp", 
            largeTextureName = "role_trader",
            pages = {
                [1] = {
                    rank_reward_list = {
                        {
                            level = 1, 
                            textureTxd = "inventory_items", 
                            textureName = "provision_signet_ring", 
                            label = "Stew Pot", 
                            description = "A camp upgrade that unlocks stew recipes for core boosts." 
                        },
                        {
                            level = 3, 
                            textureTxd = "inventory_items", 
                            textureName = "provision_signet_ring", 
                            label = "Hunting Wagon", 
                            description = "A sturdy wagon suitable for carrying multiple carcasses and pelts." 
                        },
                    },
                    rank_kit_list = {
                        {
                            level = 1,
                            unlocked = true, 
                            owned = true, 
                            token = 2, 
                            tokenAlpha = false,
                            textureTxd = "inventory_items", 
                            textureName = "provision_signet_ring", 
                            label = "Trader Camp Theme", 
                            description = "Decorate your camp with Trader-themed items." 
                        },
                        {
                            level = 3,
                            unlocked = true, 
                            owned = false, 
                            token = 1, 
                            tokenAlpha = true,
                            textureTxd = "inventory_items", 
                            textureName = "provision_signet_ring", 
                            label = "Camp Dog", 
                            description = "A canine companion trained to warn you of camp raids." 
                        },
                    }
                },
                [2] = {
                    rank_reward_list = {
                        {
                            level = 6, 
                            textureTxd = "inventory_items", 
                            textureName = "provision_signet_ring", 
                            label = "Medium Wagon", 
                            description = "An upgraded wagon that holds up to 50 goods for deliveries." 
                        },
                        {
                            level = 8, 
                            textureTxd = "inventory_items", 
                            textureName = "provision_signet_ring", 
                            label = "Large Wagon", 
                            description = "A massive wagon that holds up to 100 goods for deliveries." 
                        },
                    },
                    rank_kit_list = {
                        {
                            level = 6,
                            unlocked = true, 
                            owned = false, 
                            token = 2, 
                            tokenAlpha = true,
                            textureTxd = "inventory_items", 
                            textureName = "provision_signet_ring", 
                            label = "Lance Knife", 
                            description = "A bespoke knife designed specifically for traders." 
                        },
                        {
                            level = 7,
                            unlocked = true, 
                            owned = false, 
                            token = 1, 
                            tokenAlpha = true,
                            textureTxd = "inventory_items", 
                            textureName = "provision_signet_ring", 
                            label = "Trader Gun Belt", 
                            description = "An intricate belt built for heavy durability." 
                        },
                    }
                },
            }
        }
    },
    ["COLLECTOR"] = {
        name = "COLLECTOR",
        label = "COLLECTOR",
        description = "ROLE_DESC_COLLECTOR",
        textureTxd = "pausemenu_textures",
        textureName = "role_card_collector",
        level = 5,
        levelName = "Novice",
        levelXPText = "300 / 2,000 XP",
        levelXPValue = 300,
        levelXPMax = 2000,
        levelTextureTxd = "toasts_mp_generic",
        levelTextureName = "mp_roles_collector",
        new = false,
        locked = false,
        toolTipText = "View Collector progression.",

        details = {
            roleName = "COLLECTOR",
            largeTextureTxd = "pausemenu_textures_mp", 
            largeTextureName = "role_collector",
            pages = {
                [1] = {
                    rank_reward_list = {
                        {
                            level = 1, 
                            textureTxd = "inventory_items", 
                            textureName = "provision_signet_ring", 
                            label = "Field Shovel", 
                            description = "Used to dig up buried treasure sites found across the frontier." 
                        },
                        {
                            level = 3, 
                            textureTxd = "inventory_items", 
                            textureName = "provision_signet_ring", 
                            label = "Metal Detector", 
                            description = "An essential tool used to locate treasures buried deep underground." 
                        },
                    },
                    rank_kit_list = {
                        {
                            level = 1,
                            unlocked = true, 
                            owned = true, 
                            token = 2, 
                            tokenAlpha = false,
                            textureTxd = "inventory_items", 
                            textureName = "provision_signet_ring", 
                            label = "Collector Saddle", 
                            description = "A lightweight saddle fitted with deep satchel pockets." 
                        },
                        {
                            level = 3,
                            unlocked = true, 
                            owned = false, 
                            token = 1, 
                            tokenAlpha = true,
                            textureTxd = "inventory_items", 
                            textureName = "provision_signet_ring", 
                            label = "Collector Theme", 
                            description = "An eclectic camp theme displaying worldly curiosities." 
                        },
                    }
                },
                [2] = {
                    rank_reward_list = {
                        {
                            level = 6, 
                            textureTxd = "inventory_items", 
                            textureName = "provision_signet_ring", 
                            label = "Refined Binoculars", 
                            description = "Specialized binoculars that make dig sites glow from a distance." 
                        },
                        {
                            level = 8, 
                            textureTxd = "inventory_items", 
                            textureName = "provision_signet_ring", 
                            label = "Horse Lantern", 
                            description = "A lantern mounted to your horse's breastplate to illuminate the path." 
                        },
                    },
                    rank_kit_list = {
                        {
                            level = 6,
                            unlocked = true, 
                            owned = false, 
                            token = 2, 
                            tokenAlpha = true,
                            textureTxd = "inventory_items", 
                            textureName = "provision_signet_ring", 
                            label = "Collector Gun Belt", 
                            description = "A stylish belt decorated with woven elements." 
                        },
                        {
                            level = 7,
                            unlocked = true, 
                            owned = false, 
                            token = 1, 
                            tokenAlpha = true,
                            textureTxd = "inventory_items", 
                            textureName = "provision_signet_ring", 
                            label = "Agate Compass", 
                            description = "A beautiful accessory designed to clip onto your gun belt." 
                        },
                    }
                },
            }
        }
    },
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
    if AddTextEntry then
        AddTextEntry(key, value)
    else
        Citizen.InvokeNative(0x289da860, key, value) 
    end
end

local mainRoot = nil 
local currentRolePage = nil
local tabIndexHandle = nil
local tabNameHandle = nil
local roleContainers = {}
local activeRoleData = nil

local pageHandles = {}
local rewardHandles = {}
local kitHandles = {}
local levelTextHandles = {}

function PopulateRoleDetails(roleData, pageIndex)
    if not mainRoot or not DatabindingIsEntryValid(mainRoot) then
        print("Error: Main root for databinding is not valid.")
        return
    end

    pageIndex = pageIndex or 1
    activeRoleData = roleData 

    local isNewLayout = false
    if not currentRolePage or not DatabindingIsEntryValid(currentRolePage) then
        currentRolePage = DatabindingAddDataContainer(mainRoot, "currentRolePage")
        isNewLayout = true
        pageHandles = {}
        rewardHandles = {}
        kitHandles = {}
        levelTextHandles = {}
    end

    local pageStartLevel = ((pageIndex - 1) * 5) + 1

    if isNewLayout then
        pageHandles.roleName = DatabindingAddDataHash(currentRolePage, "roleName", GetHashKey(roleData.details.roleName))
        pageHandles.largeTextureTxd = DatabindingAddDataString(currentRolePage, "largeTextureTxd", roleData.details.largeTextureTxd)
        pageHandles.largeTextureName = DatabindingAddDataString(currentRolePage, "largeTextureName", roleData.details.largeTextureName)
        DatabindingAddDataBool(currentRolePage, "largeTextureAlpha", true)
        pageHandles.rank_total_xp_text = DatabindingAddDataString(currentRolePage, "rank_total_xp_text", "TOTAL XP: " .. roleData.levelXPValue)
        DatabindingAddDataBool(currentRolePage, "rank_total_xp_visible", true)

        tabIndexHandle = DatabindingAddDataInt(currentRolePage, "tabIndex", pageIndex - 1)

        local totalPages = roleData.details.pages and #roleData.details.pages or 1
        pageHandles.tabCount = DatabindingAddDataInt(currentRolePage, "tabCount", totalPages)

        tabNameHandle = DatabindingAddDataString(currentRolePage, "tabName", "Page " .. pageIndex)

        pageHandles.roleGoogleName = DatabindingAddDataString(currentRolePage, "roleGoogleName", roleData.details.roleName)
        pageHandles.description = DatabindingAddDataString(currentRolePage, "description", roleData.description)
        pageHandles.label = DatabindingAddDataString(currentRolePage, "label", roleData.label)

        local startingRank = (pageIndex - 1) * 5
        for j = 0, 5 do
            local displayRank = startingRank + j
            levelTextHandles[j] = DatabindingAddDataString(currentRolePage, "rank_slot_" .. j, tostring(displayRank))
            DatabindingAddDataBool(currentRolePage, "rank_slot_" .. j .. "_enabled", true)
        end
    else
        DatabindingWriteDataInt(pageHandles.roleName, GetHashKey(roleData.details.roleName))
        DatabindingWriteDataString(pageHandles.largeTextureTxd, roleData.details.largeTextureTxd)
        DatabindingWriteDataString(pageHandles.largeTextureName, roleData.details.largeTextureName)
        DatabindingWriteDataString(pageHandles.rank_total_xp_text, "TOTAL XP: " .. roleData.levelXPValue)
        DatabindingWriteDataString(pageHandles.roleGoogleName, roleData.details.roleName)
        DatabindingWriteDataString(pageHandles.description, roleData.description)
        DatabindingWriteDataString(pageHandles.label, roleData.label)

        local totalPages = roleData.details.pages and #roleData.details.pages or 1
        DatabindingWriteDataInt(pageHandles.tabCount, totalPages)

        if tabIndexHandle and DatabindingIsEntryValid(tabIndexHandle) then
            DatabindingWriteDataInt(tabIndexHandle, pageIndex - 1)
        end
        if tabNameHandle and DatabindingIsEntryValid(tabNameHandle) then
            DatabindingWriteDataString(tabNameHandle, "Page " .. pageIndex)
        end
    end

    local startingRank = (pageIndex - 1) * 5
    for j = 0, 5 do
        local displayRank = startingRank + j
        if levelTextHandles[j] and DatabindingIsEntryValid(levelTextHandles[j]) then
            DatabindingWriteDataString(levelTextHandles[j], tostring(displayRank))
        end
    end

    local rankRewardList
    if isNewLayout then
        rankRewardList = DatabindingAddUiItemList(currentRolePage, "rank_reward_list")
    end

    local pageData = roleData.details.pages and roleData.details.pages[pageIndex]
    local rewards = pageData and pageData.rank_reward_list or {}

    local currentRoleXPPercentage = 0.0
    if roleData.levelXPMax and roleData.levelXPMax > 0 then
        currentRoleXPPercentage = (roleData.levelXPValue / roleData.levelXPMax) * 100.0
        if currentRoleXPPercentage > 100.0 then currentRoleXPPercentage = 100.0 end
    end

    for i = 1, 5 do
        local targetLevel = pageStartLevel + (i - 1)
        local reward = nil
        for _, r in ipairs(rewards) do
            if r.level == targetLevel then
                reward = r
                break
            end
        end

        local calculatedXpValue = 0.0
        local isUnlocked = (roleData.level >= targetLevel)

        if roleData.level >= targetLevel then
            calculatedXpValue = 100.0
        elseif roleData.level == (targetLevel - 1) then
            calculatedXpValue = currentRoleXPPercentage
        else
            calculatedXpValue = 0.0
        end

        if isNewLayout then
            local rewardContainer = DatabindingAddDataContainer(currentRolePage, "reward_" .. i)
            rewardHandles[i] = {
                textureTxd = DatabindingAddDataString(rewardContainer, "textureTxd", ""),
                textureName = DatabindingAddDataString(rewardContainer, "textureName", ""),
                unlocked = DatabindingAddDataBool(rewardContainer, "unlocked", false),
                owned = DatabindingAddDataBool(rewardContainer, "owned", false),
                xpMax = DatabindingAddDataFloat(rewardContainer, "xpMax", 100.0),
                xpValue = DatabindingAddDataFloat(rewardContainer, "xpValue", 0.0),
                label = DatabindingAddDataHash(rewardContainer, "label", 0),
                description = DatabindingAddDataHash(rewardContainer, "description", 0),
                dynamic_list_item_enabled = DatabindingAddDataBool(rewardContainer, "dynamic_list_item_enabled", false)
            }
            DatabindingInsertUiItemToListFromContextStringAlias(rankRewardList, -1, "rank_reward_entry", rewardContainer)
        end

        local h = rewardHandles[i]
        if reward then
            DatabindingWriteDataString(h.textureTxd, reward.textureTxd)
            DatabindingWriteDataString(h.textureName, reward.textureName)
            DatabindingWriteDataBool(h.unlocked, isUnlocked)
            DatabindingWriteDataBool(h.owned, isUnlocked)
            DatabindingWriteDataFloat(h.xpValue, calculatedXpValue)

            local labelKey = "REWARD_LABEL_" .. roleData.label .. "_" .. pageIndex .. "_" .. i
            local descKey = "REWARD_DESC_" .. roleData.label .. "_" .. pageIndex .. "_" .. i
            if AddTextEntry then
                AddTextEntry(labelKey, reward.label)
                AddTextEntry(descKey, reward.description)
            else
                Citizen.InvokeNative(0x289da860, labelKey, reward.label) 
                Citizen.InvokeNative(0x289da860, descKey, reward.description) 
            end

            DatabindingWriteDataInt(h.label, GetHashKey(labelKey))
            DatabindingWriteDataInt(h.description, GetHashKey(descKey))
            DatabindingWriteDataBool(h.dynamic_list_item_enabled, true)
        else
            DatabindingWriteDataString(h.textureTxd, "")
            DatabindingWriteDataString(h.textureName, "")
            DatabindingWriteDataBool(h.unlocked, isUnlocked)
            DatabindingWriteDataBool(h.owned, false)
            DatabindingWriteDataFloat(h.xpValue, calculatedXpValue)

            local labelKey = "REWARD_LABEL_EMPTY_" .. pageIndex .. "_" .. i
            local descKey = "REWARD_DESC_EMPTY_" .. pageIndex .. "_" .. i
            if AddTextEntry then
                AddTextEntry(labelKey, "")
                AddTextEntry(descKey, "")
            else
                Citizen.InvokeNative(0x289da860, labelKey, "") 
                Citizen.InvokeNative(0x289da860, descKey, "") 
            end

            DatabindingWriteDataInt(h.label, GetHashKey(labelKey))
            DatabindingWriteDataInt(h.description, GetHashKey(descKey))
            DatabindingWriteDataBool(h.dynamic_list_item_enabled, false)
        end
    end

    local rankKitList
    if isNewLayout then
        rankKitList = DatabindingAddUiItemList(currentRolePage, "rank_kit_list")
    end

    local kits = pageData and pageData.rank_kit_list or {}
    for i = 1, 8 do
        local kitItem = kits[i]

        if isNewLayout then
            local kitContainer = DatabindingAddDataContainer(currentRolePage, "kit_item_" .. i)
            
            AddTextEntry("dynamic_list_item_prompt_text".. "_DoSomethingButton", "Buttonsss")
            kitHandles[i] = {
                textureTxd = DatabindingAddDataString(kitContainer, "textureTxd", ""),
                textureName = DatabindingAddDataString(kitContainer, "textureName", ""),
                unlocked = DatabindingAddDataBool(kitContainer, "unlocked", false),
                owned = DatabindingAddDataBool(kitContainer, "owned", false),
                label = DatabindingAddDataHash(kitContainer, "label", 0),
                description = DatabindingAddDataHash(kitContainer, "description", 0),
                item_token_count = DatabindingAddDataString(kitContainer, "item_token_count", "0"),
                item_token_enabled = DatabindingAddDataBool(kitContainer, "item_token_enabled", false),
                item_token_visible = DatabindingAddDataBool(kitContainer, "item_token_visible", false),
                dynamic_list_item_prompt_enabled = DatabindingAddDataBool(kitContainer, "dynamic_list_item_prompt_enabled", true),
                dynamic_list_item_prompt_visible = DatabindingAddDataBool(kitContainer, "dynamic_list_item_prompt_visible", true),
                dynamic_list_item_prompt_text = DatabindingAddDataString(kitContainer, "dynamic_list_item_prompt_text", "dynamic_list_item_prompt_text".. "_DoSomethingButton"),
                dynamic_list_item_select_hash = DatabindingAddDataString(kitContainer, "dynamic_list_item_select_hash", "DoSomethingButton"),
                dynamic_list_item_prompt_option_enabled = DatabindingAddDataBool(kitContainer, "dynamic_list_item_prompt_option_enabled", true),
                dynamic_list_item_prompt_option_visible = DatabindingAddDataBool(kitContainer, "dynamic_list_item_prompt_option_visible", true),
                dynamic_list_item_prompt_option_raw_text = DatabindingAddDataString(kitContainer, "dynamic_list_item_prompt_option_raw_text", "Buy"),
                dynamic_list_item_prompt_option_select_hash = DatabindingAddDataString(kitContainer, "dynamic_list_item_prompt_option_select_hash", "BuySelectedItem"),
            }
            DatabindingInsertUiItemToListFromContextStringAlias(rankKitList, -1, "rank_kit_entry", kitContainer)
        end

        local h = kitHandles[i]
        if kitItem then
            local kitUnlocked = (roleData.level >= kitItem.level)
            local kitOwned = kitItem.owned and kitUnlocked

            DatabindingWriteDataString(h.textureTxd, kitItem.textureTxd)
            DatabindingWriteDataString(h.textureName, kitItem.textureName)
            DatabindingWriteDataBool(h.unlocked, kitUnlocked)
            DatabindingWriteDataBool(h.owned, kitOwned)

            local labelKey = "KIT_LABEL_" .. roleData.label .. "_" .. pageIndex .. "_" .. i
            local descKey = "KIT_DESC_" .. roleData.label .. "_" .. pageIndex .. "_" .. i
            if AddTextEntry then
                AddTextEntry(labelKey, kitItem.label)
                AddTextEntry(descKey, kitItem.description)
            else
                Citizen.InvokeNative(0x289da860, labelKey, kitItem.label)
                Citizen.InvokeNative(0x289da860, descKey, kitItem.description)
            end

            DatabindingWriteDataInt(h.label, GetHashKey(labelKey))
            DatabindingWriteDataInt(h.description, GetHashKey(descKey))

            DatabindingWriteDataString(h.item_token_count, tostring(kitItem.token or "0"))
            DatabindingWriteDataBool(h.item_token_enabled, kitUnlocked)
            DatabindingWriteDataBool(h.item_token_visible, kitUnlocked and not kitOwned)
            DatabindingWriteDataBool(h.dynamic_list_item_prompt_enabled, kitUnlocked and not kitOwned)
            DatabindingWriteDataBool(h.dynamic_list_item_prompt_visible, kitUnlocked and not kitOwned)
            DatabindingWriteDataBool(h.dynamic_list_item_prompt_option_enabled, kitUnlocked and not kitOwned)
            DatabindingWriteDataBool(h.dynamic_list_item_prompt_option_visible, kitUnlocked and not kitOwned)
        else
            DatabindingWriteDataString(h.textureTxd, "")
            DatabindingWriteDataString(h.textureName, "")
            DatabindingWriteDataBool(h.unlocked, true)
            DatabindingWriteDataBool(h.owned, false)

            local labelKey = "KIT_LABEL_EMPTY_" .. pageIndex .. "_" .. i
            local descKey = "KIT_DESC_EMPTY_" .. pageIndex .. "_" .. i
            if AddTextEntry then
                AddTextEntry(labelKey, "")
                AddTextEntry(descKey, "")
            else
                Citizen.InvokeNative(0x289da860, labelKey, "") 
                Citizen.InvokeNative(0x289da860, descKey, "") 
            end

            DatabindingWriteDataInt(h.label, GetHashKey(labelKey))
            DatabindingWriteDataInt(h.description, GetHashKey(descKey))

            DatabindingWriteDataString(h.item_token_count, "0")
            DatabindingWriteDataBool(h.item_token_enabled, false)
            DatabindingWriteDataBool(h.item_token_visible, false)
            DatabindingWriteDataBool(h.dynamic_list_item_enabled, false)
            DatabindingWriteDataBool(h.dynamic_list_item_prompt_enabled, false)
            DatabindingWriteDataInt(h.dynamic_list_item_prompt_text, 0)
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

    roleContainers = {}
    currentRolePage = nil
    pageHandles = {}
    rewardHandles = {}
    kitHandles = {}
    levelTextHandles = {}

    mainRoot = DatabindingAddDataContainerFromPath("", "role_progression_data")
    local roleSelectPage = DatabindingAddDataContainer(mainRoot, "roleSelectPage")
    local roleCardList = DatabindingAddUiItemList(roleSelectPage, "RoleCardList")

    local index = 1
    for roleKey, roleData in pairs(AllRoles) do
        local roleContainer = DatabindingAddDataContainer(roleSelectPage, "role_" .. index)
        roleContainers[index] = roleContainer 

        DatabindingAddDataHash(roleContainer, "label", GetHashKey(roleData.label))
        DatabindingAddDataHash(roleContainer, "description", GetHashKey(roleData.description))
        DatabindingAddDataString(roleContainer, "textureTxd", roleData.textureTxd)
        DatabindingAddDataString(roleContainer, "textureName", roleData.textureName)

        DatabindingAddDataString(roleContainer, "level", tostring(roleData.level))

        DatabindingAddDataString(roleContainer, "levelName", roleData.levelName)
        DatabindingAddDataString(roleContainer, "levelXPText", roleData.levelXPText)
        DatabindingAddDataFloat(roleContainer, "levelXPValue", roleData.levelXPValue)
        DatabindingAddDataFloat(roleContainer, "levelXPMax", roleData.levelXPMax)
        DatabindingAddDataString(roleContainer, "levelTextureTxd", roleData.levelTextureTxd)
        DatabindingAddDataString(roleContainer, "levelTextureName", roleData.levelTextureName)
        DatabindingAddDataBool(roleContainer, "new", roleData.new)
        DatabindingAddDataBool(roleContainer, "locked", roleData.locked)
        
        AddTextEntry("tooltipinfo_" .. roleData.toolTipText, roleData.toolTipText)
        DatabindingAddDataHash(roleContainer, "toolTipText", GetHashKey("tooltipinfo_" .. roleData.toolTipText))

        DatabindingAddDataInt(roleContainer, "role_index", index)
        DatabindingAddDataBool(roleContainer, "dynamic_list_item_enabled", not roleData.locked)

        DatabindingAddDataString(roleContainer, "dynamic_list_item_select_hash", roleData.name)

        DatabindingInsertUiItemToListFromContextStringAlias(roleCardList, -1, "role_card_entry", roleContainer)
        index = index + 1
    end
    
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
    currentRolePage = nil
    activeRoleData = nil
    pageHandles = {}
    rewardHandles = {}
    kitHandles = {}
    levelTextHandles = {}
end, false)

Citizen.CreateThread(function()
    local lastTabIndex = -1
    while true do
        local isUiActive = IsUiappActiveByHash(GetHashKey("role_progression"))
        
        if isUiActive then
            if currentRolePage and DatabindingIsEntryValid(currentRolePage) and tabIndexHandle then
                local currentTab = DatabindingReadInt(tabIndexHandle)
                
                if currentTab ~= lastTabIndex then
                    lastTabIndex = currentTab
                    local tabLabel = "Page " .. (currentTab + 1)
                    if tabNameHandle and DatabindingIsEntryValid(tabNameHandle) then
                        DatabindingWriteDataString(tabNameHandle, tabLabel)
                    end
                    if activeRoleData then
                        PopulateRoleDetails(activeRoleData, currentTab + 1)
                    end
                end
            end
        else
            lastTabIndex = -1
        end
        Wait(100)
    end
end)

CreateThread(function()
    while true do
        if IsUiappRunning("role_progression") ~= 1 then
            Wait(25)
            goto continue
        end

        while EventsUiIsPending(`UI_EVENT_CHANNEL_ROLE_PROGRESSION`) do
            local msg = DataView.ArrayBuffer(8 * 4)
            msg:SetInt32(0, 0)
            msg:SetInt32(8, 0)
            msg:SetInt32(16, 0)
            msg:SetInt32(24, 0)

            if Citizen.InvokeNative(0x90237103F27F7937, `UI_EVENT_CHANNEL_ROLE_PROGRESSION`, msg:Buffer()) ~= 0 then -- EVENTS_UI_PEEK_MESSAGE
                local eventHash = msg:GetInt32(0)
                local intParameter = msg:GetInt32(8)
                local hashParameter = msg:GetInt32(16)
                local datastoreId = msg:GetInt32(24)

                if eventHash == `ITEM_FOCUSED` then
                    -- print("FOCUSED: " .. eventHash .. ", intParam: " .. intParameter .. ", hashParam: " .. hashParameter .. ", datastoreId: " .. datastoreId)
                elseif eventHash == `ITEM_SELECTED` then
                    for roleKey, roleData in pairs(AllRoles) do
                        if hashParameter == GetHashKey(roleData.name) then
                            if tabIndexHandle and DatabindingIsEntryValid(tabIndexHandle) then
                                DatabindingWriteDataInt(tabIndexHandle, 0)
                            end

                            PopulateRoleDetails(roleData, 1)
                            break
                        elseif hashParameter == GetHashKey("BuySelectedItem") then
                            print("Buy action triggered for item with intParameter: " .. intParameter .. " and datastoreId: " .. datastoreId)
                        elseif hashParameter == GetHashKey("DoSomethingButton") then
                            print("Option action triggered for item with intParameter: " .. intParameter .. " and datastoreId: " .. datastoreId)
                        end
                    end
                end
            end
            EventsUiPopMessage(`UI_EVENT_CHANNEL_ROLE_PROGRESSION`)
        end

        Wait(0)
        ::continue::
    end
end)
