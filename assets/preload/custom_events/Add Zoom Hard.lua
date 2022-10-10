function onCreatePost()
	reset = getProperty('camera.zoom')
end
function onEvent(name, value1, value2)
	ChartingMode = getPropertyFromClass('PlayState', 'chartingMode')
	
	targetZoom = tonumber(value1);
		if targetZoom == null then
			targetZoom = reset
		else
			targetZoom = targetZoom
		end
	
	
	
	
	
	
	
	time = tonumber(value2);
		if time == null then
			time = 0.5
		else
			time = time
		end
	if name == "Add Zoom Hard" then
		
		--setProperty('camGame.zoom', targetZoom);
		doTweenZoom('daTween', 'camGame', targetZoom, time, 'elasticOut');
		if ChartingMode then	
			debugPrint('Event Triggered; Add Zoom Hard. ',targetZoom,', ',time);
		end
	end
end
