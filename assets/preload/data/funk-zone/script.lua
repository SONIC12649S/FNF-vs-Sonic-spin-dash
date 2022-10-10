
local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('sonic_cutscene_1');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onCreatePost()

setProperty('timeBar.color', getColorFromHex('96E342'))

end
