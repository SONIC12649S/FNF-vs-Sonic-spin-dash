function onCreate()
	makeLuaSprite('stageback', 'stageback', -600, -400);
	setScrollFactor('stageback', 0.9, 0.9);
          scaleObject('stageback', 1, 1);

          makeLuaSprite('stagefront', 'stagefront', -600, -400);
	setScrollFactor('stagefront', 1, 1);
          scaleObject('stagefront', 1, 1);

           makeLuaSprite('C', 'stagecurtains', -600, -400);
	setScrollFactor('C', 1, 1);
          scaleObject('C', 1, 1);

	addLuaSprite('stageback', false);
       addLuaSprite('stagefront', false);
       addLuaSprite('l', true);
       addLuaSprite('C', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end