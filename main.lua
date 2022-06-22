health = 1

lastTickTime = 0.0

function init()

lastTickTime = GetTime()

end

function tick()

	

	-- DebugPrint( GetTime() - lastTickTime)
	-- 22.06.2022 Optimalization Patch | So now the health changes every 100ms not every possible tick
	if(GetTime() - lastTickTime >= 0.1 ) then 
		executeTickScript()
		lastTickTime = GetTime()
	end



	


end

function executeTickScript()

	health = GetPlayerHealth()
	if health < 10 then
		SetPlayerHealth(10000000)
	end

end