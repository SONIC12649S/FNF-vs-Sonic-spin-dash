function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 0.0 then
       setProperty('health', health- 0.02);
	end
end
local angleshit = 1;
local anglevar = 1;
function onCreate()
	makeLuaSprite('bg','dmbg',-343.15, -295.45)
	addLuaSprite('bg',false)
	
end


function onBeatHit()
	if curBeat < 9999999999999999 then
		triggerEvent('Add Camera Zoom', 0.04,0.05)

		if curBeat % 2 == 0 then
			angleshit = anglevar;
		else
			angleshit = -anglevar;
		end
		setProperty('camHUD.angle',angleshit*3)
		setProperty('camGame.angle',angleshit*3)
		doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'circOut')
		doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'linear')
		doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'circOut')
		doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.001, 'linear')
	else
		setProperty('camHUD.angle',0)
		setProperty('camHUD.x',0)
		setProperty('camHUD.x',0)
	end
		
end

function onStepHit()
	if curBeat < 388 then
		if curStep % 4 == 0 then
			doTweenY('rrr', 'camHUD', -12, stepCrochet*0.002, 'circOut')
			doTweenY('rtr', 'camGame.scroll', 12, stepCrochet*0.002, 'sineIn')
		end
		if curStep % 4 == 2 then
			doTweenY('rir', 'camHUD', 0, stepCrochet*0.002, 'sineIn')
			doTweenY('ryr', 'camGame.scroll', 0, stepCrochet*0.002, 'sineIn')
		end
	end
end
function onSongStart()
	noteTweenX("NoteMove1", 0, -1000, 0.5, cubeInOut)
	noteTweenX("NoteMove2", 1, -1000, 0.5, cubeInOut)
	noteTweenX("NoteMove3", 2, -1000, 0.5, cubeInOut)
	noteTweenX("NoteMove4", 3, -1000, 0.5, cubeInOut)
end

local stompcheck = true
local bruh = 1
local a = 1/120
local x = {}
local y = {}
local modchart = false
local aA = 0
local start = false
local speed = 1
local modchart2 = false
local md = 1
local stompvalue = -40
local stompmode = 0
local condition = 8
local stompcount = 0
local zoom = 0
local b = 1/100
local xStomp = 30

function flag()
  for i = 0,7 do
    setPropertyFromGroup('strumLineNotes', i, 'y', y[i] + 20 * math.cos(i/1.5 + a))
    setPropertyFromGroup('strumLineNotes', i, 'x', x[i] + 20 * math.cos(a + i*0.80))
  end
end

function stomp(numbah)
  if numbah % 2 == 0 then
    for i = 0,7 do
      noteTweenX('stompLeft'..i, i, x[i] + xStomp, 0.15, 'circInOut')
    end
    xStomp = xStomp*(-1)
  else
    for i = 0,7 do
      noteTweenX('stompRight'..i, i, x[i], 0.15, 'circInOut')
    end
  end
  if numbah == 1 then
    for i = 0,7,2 do
      noteTweenY('stompA'..i, i, y[i] - stompvalue, 0.2, 'circInOut')
    end
  elseif numbah == 2 then
    for i = 1,7,2 do
      noteTweenY('stompB'..i, i, y[i] - stompvalue, 0.2, 'circInOut')
    end
  elseif numbah == 3 or numbah == 4 or numbah == 5 or numbah == 6 then
    noteTweenY('stompC'..numbah, (numbah-3), y[(numbah-3)], 0.2, 'circInOut')
    noteTweenY('stompD'..numbah, (numbah+1), y[(numbah+1)], 0.2, 'circInOut')
  elseif numbah == 7 or numbah == 8 or numbah == 9 or numbah == 10 then
    noteTweenY('stompE'..numbah, (numbah-7), y[(numbah-7)] - stompvalue, 0.2, 'circInOut')
    noteTweenY('stompF'..numbah, (numbah-3), y[(numbah-3)] - stompvalue, 0.2, 'circInOut')
  elseif numbah == 11 then
    for i = 0,7 do
      noteTweenY('stompG'..i, i, y[i], 0.2, 'circInOut')
    end
  end
end

function onSongStart()
  zoom = getProperty('camGame.zoom')
  speed = 240 / getPropertyFromClass('ClientPrefs', 'framerate')
  if downscroll then
    stompvalue = 40
  end
  for i = 0,7 do
    local xA = getPropertyFromGroup('strumLineNotes', i, 'x')
    local yB = getPropertyFromGroup('strumLineNotes', i, 'y')
    x[i] = xA
    y[i] = yB
  end

  for i = 0,7 do
    noteTweenX(i .. 'xpos', i, x[i] + 30 * math.cos(a + i*0.80), 1, 'circInOut')
    noteTweenY(i .. 'ypos', i, y[i] + 30 * math.cos(i/1.5 + a), 1, 'circInOut')
  end
end

function onUpdate(elapsed)
  if modchart == true then
    if md == 1 then
      flag()
      a = a + 1/120 * speed
    end
  end

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
  if followchars == true then
    if mustHitSection == false then
      setProperty('defaultCamZoom',0.7)
      if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
        triggerEvent('Camera Follow Pos',xx-ofs,yy)
      end
      if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
        triggerEvent('Camera Follow Pos',xx+ofs,yy)
      end
      if getProperty('dad.animation.curAnim.name') == 'singUP' then
        triggerEvent('Camera Follow Pos',xx,yy-ofs)
      end
      if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
        triggerEvent('Camera Follow Pos',xx,yy+ofs)
      end
      if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
        triggerEvent('Camera Follow Pos',xx-ofs,yy)
      end
      if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
        triggerEvent('Camera Follow Pos',xx+ofs,yy)
      end
      if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
        triggerEvent('Camera Follow Pos',xx,yy-ofs)
      end
      if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
        triggerEvent('Camera Follow Pos',xx,yy+ofs)
      end
      if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
        triggerEvent('Camera Follow Pos',xx,yy)
      end
      if getProperty('dad.animation.curAnim.name') == 'idle' then
        triggerEvent('Camera Follow Pos',xx,yy)
      end
    else
      setProperty('defaultCamZoom',0.6)
      if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
        triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
      end
      if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
        triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
      end
      if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
        triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
      end
      if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
        triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
      end
      if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
        triggerEvent('Camera Follow Pos',xx2,yy2)
      end
      if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
        triggerEvent('Camera Follow Pos',xx2,yy2)
      end
    end
  else
    triggerEvent('Camera Follow Pos','','')
  end
end

function onStepHit()
  if curStep == 99999999999999999 then
    modchart = false
    for i = 0,7 do
      noteTweenX(i .. 'xposA', i, x[i], 0.8, 'circInOut')
      noteTweenY(i .. 'yposA', i, y[i], 0.8, 'circInOut')
      noteTweenAngle(i .. 'angleposA', i, 360, 0.5, 'circInOut')
    end
  end
end

function onTweenCompleted(tag)
  if tag == '7ypos' then
    modchart = true
    for i = 0,7 do
      noteTweenAngle(i .. 'anglepos', i, 360, 1, 'circInOut')
    end
  end
  if tag == 'stompLeft7' or tag == 'stompRight7' then
    stompcheck = true
  end
end

function onTimerCompleted(tag, loops, loopsLeft)
  if tag == 'start' then
    modchart = false
  end
end

function onEvent(name, value1, value2)
  if name == 'stomps' and stompcheck then
    stomp(bruh)
    if bruh < 12 then
      bruh = bruh + 1
    else
      bruh = 1
    end
    stompcheck = false
  end
end


function onGameOver()
  modchart = false
  return Function_Continue;
end

local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('sonic_cutscene_3');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onCreatePost()

setProperty('timeBar.color', getColorFromHex('683AA0'))

end
