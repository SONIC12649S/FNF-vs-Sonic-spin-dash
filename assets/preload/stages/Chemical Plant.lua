function onCreate()
	makeLuaSprite('FG', 'FG', -600, -400);
	setScrollFactor('FG', 0.9, 0.9);
          scaleObject('FG', 1, 1);

      makeLuaSprite('Capsule', 'Capsule', -600, -400);
	setScrollFactor('Capsule', 0.9, 0.9);
          scaleObject('Capsule', 1, 1);

          makeLuaSprite('Ground', 'Ground', -600, -400);
	setScrollFactor('Ground', 1, 1);
          scaleObject('Ground', 1, 1);

           makeLuaSprite('l', 'shade', -600, -400);
	setScrollFactor('l', 0.9, 0.9);
          scaleObject('l', 1, 1);
       
           makeLuaSprite('C', 'chainfront', -600, -400);
	setScrollFactor('C', 1, 1);
          scaleObject('C', 1, 1);
        
           makeLuaSprite('CB', 'chainback', -600, -400);
	setScrollFactor('CB', 0.8, 0.8);
          scaleObject('CB', 1, 1);

	addLuaSprite('FG', false);
        addLuaSprite('Capsule', false);
       addLuaSprite('Ground', false);
       addLuaSprite('l', true);
       addLuaSprite('C', true);
      addLuaSprite('CB', false);
 
     setObjectOrder('CB', 2);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end