function onCreate()
	makeLuaSprite('2d', '2d', -600, 100);
	setScrollFactor('2d', 1, 1);   
        
        makeLuaSprite('t1','t1',-600, -150)addAnimationByPrefix('t1','dance','fondo',24,true)
        setScrollFactor('t1', 0.9, 0.9)

        makeLuaSprite('t2','t2',1500, 900)addAnimationByPrefix('t2','dance','plantas',24,true)
        setScrollFactor('t2', 1, 1)    

        makeLuaSprite('t3','t3',-170, 800)addAnimationByPrefix('t3','dance','plantas',24,true)
        setScrollFactor('t3', 1, 1)    

        makeLuaSprite('t4','t4',-390, 840)addAnimationByPrefix('t4','dance','plantas',24,true)
        setScrollFactor('t4', 1, 1)    

        addLuaSprite('t2', true);
        addLuaSprite('t1', false);
	 
        setObjectOrder ('t1', 1)
        setObjectOrder ('t2', 4)
        setObjectOrder ('t3', 2)
        setObjectOrder ('t4', 4)
end