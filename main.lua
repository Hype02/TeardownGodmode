

local godmodeHealth = 1000000

function init()
	print('Simple Teardown GodMode is active.')
end
	
	
function tick()
	if GetPlayerHealth() < godmodeHealth then
		SetPlayerHealth(godmodeHealth)
	end
end
