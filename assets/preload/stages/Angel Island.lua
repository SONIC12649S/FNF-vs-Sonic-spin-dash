function onCreate()
	-- background shit
	makeLuaSprite('aiz', 'aiz', -500, -200);
	setScrollFactor('aiz', 1, 1);
          scaleObject('aiz', 1.2, 1.2);



	addLuaSprite('aiz', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end