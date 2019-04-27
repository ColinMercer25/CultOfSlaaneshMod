cm:add_first_tick_callback(function()
	if cm:is_new_game() then
		colinCultOfSlaanish_startup() 
	end
end)

function colinCultOfSlaanish_startup()
	if cm:get_local_faction() == "wh2_main_def_cult_of_pleasure" then
		cm:treasury_mod("wh2_main_def_cult_of_pleasure", 1500)
		out("Colin: Added 1500 gold to the Cult of Slaanish's treasury. ")
		if cm:model():campaign_name("main_warhammer") then
			cm:instantly_dismantle_building_in_region("wh2_main_titan_peaks_ancient_city_of_quintex", 1)
			--cm:instantly_upgrade_building("wh2_main_titan_peaks_ancient_city_of_quintex:0","colin_def_CoS_settlement_major_2")
		elseif cm:model():campaign_name("wh2_main_great_vortex") then
			cm:instantly_dismantle_building_in_region("wh2_main_vor_iron_peaks_ancient_city_of_quintex", 1)
			--cm:instantly_upgrade_building("wh2_main_vor_iron_peaks_ancient_city_of_quintex:0","colin_def_CoS_settlement_major_2")
		end
	end	
end