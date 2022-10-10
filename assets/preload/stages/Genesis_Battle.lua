function onCreate()
	-- background shit
	makeLuaSprite('genesis-background', 'genesis-background', -500, 100);
	setScrollFactor('genesis-background', 1, 1);
          scaleObject('genesis-background', 1.2, 1.2);



	addLuaSprite('genesis-background', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end