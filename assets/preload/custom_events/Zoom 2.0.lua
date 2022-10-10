function onEvent(name,value1,value2)
	if name == 'Zoom 2.0' then
		doTweenZoom('camera', 'camGame', tonumber(value1), tonumber(value2), 'linear');
		--debugPrint('Event triggered: ', name, duration, targetAlpha);
	end
end
