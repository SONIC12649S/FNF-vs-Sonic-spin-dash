--Made my Sp4rk1ngc0m3t (modified to work on the Y axis instead of X by Ring)
sprite = 'hyper_lool' 
size = 5048 
startX = 0 
startY = 500 
duration = 230

function onCreate()
makeLuaSprite(sprite .. '1', sprite, startY, startY)
addLuaSprite(sprite .. '1', false)
makeLuaSprite(sprite .. '2', sprite, startY + size, startY)
addLuaSprite(sprite .. '2', false)
scrollA()
end


function scrollA()
doTweenY(sprite .. '1move',sprite .. '1', startY - size, duration)
doTweenY(sprite .. '2move',sprite .. '2', startY, duration)
end

function onTweenCompleted(tag)
if tag == (sprite .. '2move') then
scrollB()
end
if tag == (sprite .. '2move2') then
scrollA()
end
end
function scrollB()
doTweenY(sprite .. '1move2',sprite .. '1', startY, 0.001)
doTweenY(sprite .. '2move2',sprite .. '2', startY + size, 0.001)
end