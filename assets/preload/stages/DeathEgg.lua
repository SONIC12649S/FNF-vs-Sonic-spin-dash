function onCreate()
	-- background shit
	makeAnimatedLuaSprite('stageback', 'fondo', -800, -300)
	setLuaSpriteScrollFactor('stageback', 0.9, 0.9);
	scaleObject('stageback', 1.6, 1.6);
	addAnimationByPrefix('stageback', 'lol', 'fondo', 24, true)

	makeAnimatedLuaSprite('stagefront', 'piso', -800, 500)
	setLuaSpriteScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.6, 1.6);
	addAnimationByPrefix('stagefront', 'lol', 'piso', 24, true)

	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end