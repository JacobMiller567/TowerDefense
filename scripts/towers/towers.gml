// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function select_tower(tower){
	deselect_tower();
	
	global.selected_tower = tower;
	global.selected_tower.isSelected = true;
	
	oUI_Upgrade.tower_name = global.selected_tower.getName; // get global tower name
	oUI_Upgrade.tower_level = global.selected_tower.upgrade_level; // get global tower upgrade level
	oUI_Upgrade.tower_damage = global.selected_tower.gun_damage; // get global tower gun damage
	oUI_Upgrade.tower_upgrade_cost = global.selected_tower.upgrade_cost; // get global tower upgrade cost
	oUI_Upgrade.tower_sell_price = global.selected_tower.sell_price; // get global tower sell price
	oUI_Upgrade.show();
}

function deselect_tower(){
	
	if (global.selected_tower != noone) {
		global.selected_tower.isSelected = false; // deselect the tower
	}
	global.selected_tower = noone;
}