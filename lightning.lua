minetest.register_on_dieplayer(function(player, reason)
	lightning.strike(player:get_pos())
end)
