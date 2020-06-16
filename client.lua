local visible = false
local mcps = GetHashKey("WEAPON_MACHINEPISTOL")
local sawedoff = GetHashKey("WEAPON_DBSHOTGUN")
local snspistol = GetHashKey("WEAPON_SNSPISTOL")

AddEventHandler("playerSpawned", function()
	local plrpedid = GetPlayerPed(-1)
	SetMaxWantedLevel(0)
	GiveWeaponToPed(plrpedid, mcps, 0, false, true)
	GiveWeaponToPed(plrpedid, sawedoff, 0, false, false)
	GiveWeaponToPed(plrpedid, snspistol, 0, false, false)
	GiveWeaponComponentToPed(plrpedid, mcps, 0xB92C6979)
	SetEntityInvincible(plrpedid, true)
	for i=0,5 do
		SetEntityVisible(plrpedid, visible)
		visible = not visible
		Wait(500)
		i = i + 1
	end
	SetEntityInvincible(plrpedid, false)
	AddAmmoToPed(plrpedid, mcps, 80)
	AddAmmoToPed(plrpedid, snspistol, 30)
	AddAmmoToPed(plrpedid, sawedoff, 6)
	GiveWeaponToPed(plrpedid, GetHashKey("WEAPON_CROWBAR"), 1, false, false)
	GiveWeaponToPed(plrpedid, GetHashKey("WEAPON_MOLOTOV"), 1, false, false)
	MakePedReload(plrpedid)
end)



-- AddEventHandler("OnPlayerKilled", function(killer)
-- 	local KillerName = GetPlayerName(killer)
-- 	local killed = PlayerId()
-- 	local plrname = GetPlayerName(killed)
-- 	SetNotificationTextEntry("string")
-- 	AddTextComponentString(KillerName.." zabił "..plrname)
-- 	DrawNotification(false, false)
-- end)