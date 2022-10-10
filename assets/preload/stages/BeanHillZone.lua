function onCreate()
 
        
        makeAnimatedLuaSprite('1b','1b',-300, 200)addAnimationByPrefix('1b','dance','1b',24,true)
        objectPlayAnimation('1b','dance',false)
        setScrollFactor('1b', 0.9, 0.9)
     
        makeAnimatedLuaSprite('2b','2b',-750, -400)addAnimationByPrefix('2b','dance','2b',24,true)
        objectPlayAnimation('2b','dance',false)
        setScrollFactor('2b', 0.9, 0.9)

        makeAnimatedLuaSprite('3b','3b',-750, -900)addAnimationByPrefix('3b','dance','3b',24,true)
        objectPlayAnimation('3b','dance',false)
        setScrollFactor('3b', 0.9, 0.9)

        addLuaSprite('1b', false);
        addLuaSprite('2b', false);

        setObjectOrder ('1b', 2)
        setObjectOrder ('2b', 1)
        setObjectOrder ('3b', 0)
       

end
