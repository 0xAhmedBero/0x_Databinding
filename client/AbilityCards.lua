local ABILITY_CARDS = {

    [1] = {
        color = "COLOR_RED",
        texture_dictionary = "ability_cards_set_a",
        texture = "ability_card_quite_an_inspiration",
    },

    [2] = {
        color = "COLOR_YELLOW",
        texture_dictionary = "ability_cards_set_b",
        texture = "ability_card_come_back_stronger",
    },

    [3] = {
        color = "COLOR_PURPLE",
        texture_dictionary = "ability_cards_set_c",
        texture = "ability_card_the_short_game",
    },


    [4] = {
        color = "COLOR_GREEN",
        texture_dictionary = "ability_cards_set_d",
        texture = "ability_card_never_without_one",
    },

}


local createdAbilityCard = {}

-- I'm inserting the cards into the table because, if we remove them,
-- they can't be added again until the game restarts.
-- Not sure why this happens, but updating the cards is the only way
-- Try working with them and maybe you’ll find something

RegisterCommand("abilitycards", function()

    local container = DatabindingAddDataContainerFromPath("", "ability_card_data")

    DatabindingAddDataBool(cardItemContainer, "isEnabled", true)

    local cardList = DatabindingAddUiItemList(container, "ability_card_loadout_collection")

    for i = 1, 4 do
        local cardItemContainer = DatabindingAddDataContainer(container, "card_" .. i)

        DatabindingAddDataHash(cardItemContainer, "ability_card_color", ABILITY_CARDS[i].color)
        DatabindingAddDataHash(cardItemContainer, "ability_card_texture", ABILITY_CARDS[i].texture)
        DatabindingAddDataHash(cardItemContainer, "ability_card_texture_dictionary", ABILITY_CARDS[i].texture_dictionary)

        DatabindingAddDataBool(cardItemContainer, "ability_card_loadout_unlocked", true)
        DatabindingAddDataBool(cardItemContainer, "ability_card_locked", true)

        DatabindingAddDataInt(cardItemContainer, "ability_card_tier", 1)

        DatabindingAddDataString(cardItemContainer, "ability_card_loadout_rank_text", "test")

        DatabindingInsertUiItemToListFromContextStringAlias(cardList, -1, "ability_loadout_card_focusable", cardItemContainer)
        table.insert(createdAbilityCard[i], cardItemContainer)
    end
end, false)