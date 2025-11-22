
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

        local playerInfo = DatabindingAddDataContainer(slotContainer, "itemPreview")
        DatabindingAddDataBool(playerInfo, "active", true)



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