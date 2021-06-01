mcl_uhc.enchantments = {
    ["pickaxe"] = {
        {name="unbreaking", level=1},
        {name="efficiency", level=3},
    },
    ["shovel"] = {
        {name="unbreaking", level=1},
        {name="efficiency", level=3},
    },
    ["axe"] = {
        {name="unbreaking", level=1},
        {name="efficiency", level=3},
    },
}

minetest.register_on_craft(function(itemstack, player, old_craft_grid, craft_inv)
    for group, enchants in pairs(mcl_uhc.enchantments) do
        if minetest.get_item_group(itemstack:get_name(), group) > 0 then
            for _,enchant in pairs(enchants) do
                itemstack = mcl_enchanting.enchant(itemstack, enchant.name, enchant.level)
            end
        end
    end
    return itemstack
end)