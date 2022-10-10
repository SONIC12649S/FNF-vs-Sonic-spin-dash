function onCreate()
	-- background shit

          makeAnimatedLuaSprite('pink_bot','pink_bot',-1200, -600)addAnimationByPrefix('pink_bot','dance','lol',16,true)
          objectPlayAnimation('pink_bot','dance',false)
          setScrollFactor('pink_bot', 1, 1);
          scaleObject('pink_bot', 2, 2);
          
          makeLuaSprite('pink_bot1', 'pink_bot1', -600, 700);
	  setScrollFactor('pink_bot1', 1, 1);
          scaleObject('pink_bot1', 1, 1);
          
          makeLuaSprite('pink_bot12', 'pink_bot1', -1200, 700);
	  setScrollFactor('pink_bot12', 1, 1);
          scaleObject('pink_bot12', 1, 1);

          makeLuaSprite('pink_bot13', 'pink_bot1', 600, 700);
	  setScrollFactor('pink_bot13', 1, 1);
          scaleObject('pink_bot13', 1, 1);

	  addLuaSprite('pink_bot', false);
          addLuaSprite('pink_bot1', false);
          addLuaSprite('pink_bot12', false);
          addLuaSprite('pink_bot13', false);
 	  setProperty('pink_bot.antialiasing',false)
          setProperty('pink_bot1.antialiasing',false)
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end