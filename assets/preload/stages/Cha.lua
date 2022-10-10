function onCreate()
	-- background shit
	makeLuaSprite('cha', 'cha', -400, -200);
	setScrollFactor('cha', 1, 1);
          scaleObject('cha', 1.2, 1.2);



	addLuaSprite('cha', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end