savedPlayerTransform = nil
visible = 0
cpMessage = "CHECKPOINT SAVED"

 
function init()
	savedPlayerTransform = GetPlayerTransform()
	cpMessage = "CHECKPOINT TELEPORT MOD\nPress X to save new position\nPress Z to teleport to saved position"
	visible = 1
	SetValue("visible", 0, "linear", 3)
end


function tick()
	if InputPressed("z") then
		savedPlayerTransform = GetPlayerTransform()
		cpMessage = "CHECKPOINT SAVED\nPress Z to teleport"
		SetValue("visible", 1, "linear", 2)
		SetValue("visible", 0, "linear", 4)
	end
	if InputPressed("x") then
		SetPlayerTransform(savedPlayerTransform)
		cpMessage = "CHECKPOINT TELEPORTED\nPress X to save new position"
		SetValue("visible", 1, "linear", 2)
		SetValue("visible", 0, "linear", 4)
	end
end

function ShouldWeTeleportNow()
	if switcher == true then
		switcher = false
	else
		switcher = true
	end
	return switcher
end

function drawCheckpointMessage()
	if visible > 0 then
		UiPush()
				UiColor(38/256, 57/256, 53/256, 1)
				UiColor(1 ,1 ,1, 1)
				UiFont("regular.ttf", 24)
				UiTranslate(800, 800)
				UiAlign("left top")
				UiWordWrap(400)
				UiText(cpMessage)
				UiTranslate(200,16)

			UiPop()
	end
	
end

function draw()
	drawCheckpointMessage()
end