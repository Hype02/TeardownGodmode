health = 1

function tick()
	health = GetPlayerHealth()
	if health != 10 then
		SetPlayerHealth(10)
	end
end