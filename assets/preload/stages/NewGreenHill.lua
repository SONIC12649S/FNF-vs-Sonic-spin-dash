function onCreate()
	-- background shit
	makeAnimatedLuaSprite('stageback', '3', -200, -50)
	setLuaSpriteScrollFactor('stageback', 0.9, 0.9);
	scaleObject('stageback', 1.4, 1.4);
	addAnimationByPrefix('stageback', 'lol', 'fondo', 24, true)

	makeAnimatedLuaSprite('stagefront', '2', -350, -50)
	setLuaSpriteScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.4, 1.4);
	addAnimationByPrefix('stagefront', 'lol', 'piso', 24, true)

	makeAnimatedLuaSprite('stagecurtains', '1', -200, -50)
	setLuaSpriteScrollFactor('stagecurtains', 0.9, 0.9);
	scaleObject('stagecurtains', 1.4, 1.4);
	addAnimationByPrefix('stagecurtains', 'lol', 'Plantas ', 24, true)

	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end