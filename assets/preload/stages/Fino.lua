function onCreate()
	-- background shit
	makeLuaSprite('fino', 'fino', -400, -200);
	setScrollFactor('fino', 1, 1);
          scaleObject('fino', 1.0, 1.0);



	addLuaSprite('fino', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end