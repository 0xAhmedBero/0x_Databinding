-- health, stamina, deadeye, staminaHorse, healthHorse
-- from -10 to 10 no 0 and 11 for gold

-- healthCore, staminaCore, deadeyeCore, staminaCoreHorse, healthCoreHorse
-- from -8 to 8 no 0 and 12 for gold

-- CoreDurationCategory
-- level 1 = "3059683677"   means hash "EFFECT_DURATION_CATEGORY_1"
-- level 2 = "3969809883"   means hash "EFFECT_DURATION_CATEGORY_2"
-- level 3 = "585722480"    means hash "EFFECT_DURATION_CATEGORY_3"
-- level 4 = "3373446852"   means hash "EFFECT_DURATION_CATEGORY_4"


local CraftingDatastore = nil

local slotsData = {
    {
        name = "Herbivore Bait",
        dict = "INVENTORY_ITEMS",
        texture = "consumable_herbivore_bait",
    },
    {
        name = "Brandy",
        dict = "INVENTORY_ITEMS",
        texture = "consumable_brandy",
    },
}


RegisterCommand("crafting", function(source, args)

    CraftingDatastore = DatabindingAddDataContainerFromPath("", "CraftingDatastore")


    AddTextEntry('CraftingDatastore_headerText_OVERRIDE', 'test')
    DatabindingAddDataString(CraftingDatastore, "headerText", "CraftingDatastore_headerText_OVERRIDE")

    DatabindingAddDataInt(CraftingDatastore, "filterIndex", 0)
    DatabindingAddDataInt(CraftingDatastore, "filterCount", 2)
    DatabindingAddDataString(CraftingDatastore, "filter", "CraftingDatastore_headerText_OVERRIDE")

    DatabindingAddDataString(CraftingDatastore, "tipText", "tip")

    DatabindingAddDataBool(CraftingDatastore, "variantVisible", false)
    DatabindingAddDataInt(CraftingDatastore, "variantIndex", 0)
    DatabindingAddDataInt(CraftingDatastore, "variantCount", 2)

    
    DatabindingAddDataBool(CraftingDatastore, "ShowRpgDescription", true)
    DatabindingAddDataString(CraftingDatastore, "RPGDescription", "CraftingDatastore_headerText_OVERRIDE")


    for i = 0, 3 do
        local ingredient = DatabindingAddUiItemList(CraftingDatastore, "ingredient" .. i)
        DatabindingAddDataBool(ingredient, "enabled", true)
        DatabindingAddDataBool(ingredient, "inUse", true)
        DatabindingAddDataBool(ingredient, "visible", true)

        DatabindingAddDataInt(ingredient, "count", 2)
        DatabindingAddDataString(ingredient, "textureDictionary", "INVENTORY_ITEMS")
        DatabindingAddDataString(ingredient, "texture", "consumable_herb_wild_mint")


    end


    DatabindingAddDataBool(CraftingDatastore, "ShowRpgPlayer", false)

    DatabindingAddDataBool(CraftingDatastore, "ShowRpgHorse", false)


    local recipesList = DatabindingAddUiItemList(CraftingDatastore, "recipes")
    for i = 1, #slotsData do
        local data = slotsData[i]
        local slotName = "slot" .. i

        local slotContainer = DatabindingAddDataContainer(CraftingDatastore, slotName)

        DatabindingAddDataBool(slotContainer, "enabled", true)
        DatabindingAddDataBool(slotContainer, "visible", true)

        local hashName = "CraftingDatastore_ITEM_NAME_"..data.name.."_OVERRIDE"
        AddTextEntry(hashName, data.name)

        DatabindingAddDataString(slotContainer, "name", hashName)
        DatabindingAddDataBool(slotContainer, "overpower", false)
        DatabindingAddDataBool(slotContainer, "lockVisible", true)
        DatabindingAddDataInt(slotContainer, "count", 3)

        DatabindingAddDataString(slotContainer, "TextureDictionary", data.dict)
        DatabindingAddDataString(slotContainer, "texture", data.texture)


        DatabindingAddDataBool(slotContainer, "slotContainer", true)



        -- health, stamina, deadeye, staminaHorse, healthHorse
        -- from -10 to 10 no 0 and 11 for gold

        -- healthCore, staminaCore, deadeyeCore, staminaCoreHorse, healthCoreHorse
        -- from -8 to 8 no 0 and 12 for gold

        -- CoreDurationCategory
        -- level 1 = "3059683677"   means hash "EFFECT_DURATION_CATEGORY_1"
        -- level 2 = "3969809883"   means hash "EFFECT_DURATION_CATEGORY_2"
        -- level 3 = "585722480"    means hash "EFFECT_DURATION_CATEGORY_3"
        -- level 4 = "3373446852"   means hash "EFFECT_DURATION_CATEGORY_4"


        -- player
        DatabindingAddDataInt(slotContainer, "health", 8)
        DatabindingAddDataInt(slotContainer, "healthDurationCategory", 585722480)

        DatabindingAddDataInt(slotContainer, "stamina", 7)
        DatabindingAddDataInt(slotContainer, "staminaCoreDurationCategory", 3373446852)

        DatabindingAddDataInt(slotContainer, "deadeye", 7)
        DatabindingAddDataInt(slotContainer, "deadeyeDurationCategory", 3373446852)

        DatabindingAddDataInt(slotContainer, "healthCore", 7)
        DatabindingAddDataInt(slotContainer, "healthCoreDurationCategory", 3373446852)

        DatabindingAddDataInt(slotContainer, "staminaCore", 5)
        DatabindingAddDataInt(slotContainer, "staminaDurationCategory", 3969809883)

        DatabindingAddDataInt(slotContainer, "deadeyeCore", 3)
        DatabindingAddDataInt(slotContainer, "deadeyeCoreDurationCategory", 3969809883)





        -- horse
        DatabindingAddDataInt(slotContainer, "staminaHorse", 7)
        DatabindingAddDataInt(slotContainer, "staminaHorseDurationCategory", 3373446852)

        DatabindingAddDataInt(slotContainer, "healthHorse", 5)
        DatabindingAddDataInt(slotContainer, "staminaDurationCategory", 3969809883)

        DatabindingAddDataInt(slotContainer, "staminaCoreHorse", 3)
        DatabindingAddDataInt(slotContainer, "staminaCoreHorseDurationCategory", 3059683677)

        DatabindingAddDataInt(slotContainer, "healthCoreHorse", 3)
        DatabindingAddDataInt(slotContainer, "healthCoreHorseDurationCategory", 3059683677)




        DatabindingInsertUiItemToListFromContextStringAlias(recipesList, -1, "recipes", slotContainer)
    end

    LaunchAppByHash(GetHashKey("Crafting"))
end, false)




RegisterCommand("removecrafting", function(source, args)
    if CraftingDatastore and DatabindingIsEntryValid(CraftingDatastore) then
        DatabindingRemoveDataEntry(CraftingDatastore)
    end
    CloseAppByHash(GetHashKey("Crafting"))
end, false)