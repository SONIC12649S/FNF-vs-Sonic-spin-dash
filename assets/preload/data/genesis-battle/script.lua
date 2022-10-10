function onCreate()
    setProperty('scoreTxt.visible', false)
    setProperty('healthBar.alpha', 0)
    setProperty('iconP1.visible', false)
    setProperty('iconP2.visible', false)
     -- Create Texts --
     for i = 1, #Texts do
        makeLuaText(Texts[i], '0')
        setTextSize(Texts[i], 30)
        setTextFont(Texts[i], 'HUD.ttf')
        setTextBorder(Texts[i], '0')
        setObjectCamera(Texts[i], 'other')
    end
    -- Text Settings --
    for i = 1, #Shadows do
        setTextColor(Shadows[i], '000000')
    end
    for i = 1, #StaticTexts do
        setTextColor(StaticTexts[i], 'FFFF00')
    end
    for i = 1, #ActualTexts do
        setTextColor(ActualTexts[i], 'FFFFFF')
    end
    setTextString('SonicScoreText', 'SCORE')
    setTextString('SonicScoreTextShadow', 'SCORE')
    setTextString('SonicTimeText', 'TIME')
    setTextString('SonicTimeTextShadow', 'TIME')
    setTextString('SonicRingsText', 'RINGS')
    setTextString('SonicRingsTextShadow', 'RINGS')
    for i = 1, #Shadows do
        addLuaText(Shadows[i])
        setProperty(Shadows[i] .. '.x', 52)
    end
    if downscroll == true then
    setProperty('SonicScoreTextShadow.y', 52)
    setProperty('SonicTimeTextShadow.y', 102)
    setProperty('SonicRingsTextShadow.y', 152)
    setProperty('SonicScoreShadow.y', 52)
    setProperty('SonicTimeShadow.y', 102)
    setProperty('SonicRingsShadow.y', 152)
    setProperty('SonicScoreShadow.x', 202)
    setProperty('SonicTimeShadow.x', 202)
    setProperty('SonicRingsShadow.x', 202)
    else
    setProperty('SonicScoreTextShadow.y', 552)
    setProperty('SonicTimeTextShadow.y', 602)
    setProperty('SonicRingsTextShadow.y', 652)
    setProperty('SonicScoreShadow.y', 552)
    setProperty('SonicTimeShadow.y', 602)
    setProperty('SonicRingsShadow.y', 652)
    setProperty('SonicScoreShadow.x', 202)
    setProperty('SonicTimeShadow.x', 202)
    setProperty('SonicRingsShadow.x', 202)
    end
    for i = 1, #StaticTexts do
        addLuaText(StaticTexts[i])
        setProperty(StaticTexts[i] .. '.x', 50)
    end
    if downscroll == true then
        setProperty('SonicScoreText.y', 50)
        setProperty('SonicTimeText.y', 100)
        setProperty('SonicRingsText.y', 150)
    else
        setProperty('SonicScoreText.y', 550)
        setProperty('SonicTimeText.y', 600)
        setProperty('SonicRingsText.y', 650)
    end
    for i = 1, #ActualTexts do
        addLuaText(ActualTexts[i])
        setProperty(ActualTexts[i] .. '.x', 200)
    end
    if downscroll == true then
        setProperty('SonicScore.y', 50)
        setProperty('SonicTime.y', 100)
        setProperty('SonicRings.y', 150)
    else
        setProperty('SonicScore.y', 550)
        setProperty('SonicTime.y', 600)
        setProperty('SonicRings.y', 650)
    end
    makeLuaText('AccuracyText', '100.00 Accuracy')
    setTextSize('AccuracyText', 15)
    setTextFont('AccuracyText', 'PIXEL.ttf')
    setTextBorder('AccuracyText', '0')
    setObjectCamera('AccuracyText', 'other')
    setProperty('AccuracyText.x', 1230 - getProperty('AccuracyText.width'))
    setProperty('AccuracyText.y', 100)
    --
    makeLuaText('AccuracyTextShadow', '100.00 Accuracy')
    setTextSize('AccuracyTextShadow', 15)
    setTextFont('AccuracyTextShadow', 'PIXEL.ttf')
    setTextBorder('AccuracyTextShadow', '0')
    setObjectCamera('AccuracyTextShadow', 'other')
    setTextColor('AccuracyTextShadow', '000000')
    setProperty('AccuracyTextShadow.x', 1232 - getProperty('AccuracyText.width'))
    setProperty('AccuracyTextShadow.y', 102)
    --
    addLuaText('AccuracyTextShadow')
    addLuaText('AccuracyText')
    --
    makeLuaText('MissesText', '0 Misses')
    setTextSize('MissesText', 15)
    setTextFont('MissesText', 'PIXEL.ttf')
    setTextBorder('MissesText', '0')
    setObjectCamera('MissesText', 'other')
    setProperty('MissesText.x', 1230 - getProperty('MissesText.width'))
    setProperty('MissesText.y', 125)
    --
    makeLuaText('MissesTextShadow', '0 Misses')
    setTextSize('MissesTextShadow', 15)
    setTextFont('MissesTextShadow', 'PIXEL.ttf')
    setTextBorder('MissesTextShadow', '0')
    setObjectCamera('MissesTextShadow', 'other')
    setTextColor('MissesTextShadow', '000000')
    setProperty('MissesTextShadow.x', 1232 - getProperty('MissesText.width'))
    setProperty('MissesTextShadow.y', 127)
    --
    addLuaText('MissesTextShadow')
    addLuaText('MissesText')
    --
    makeLuaText('RatingText', 'N/A')
    setTextSize('RatingText', 30)
    setTextFont('RatingText', 'HUD.ttf')
    setTextBorder('RatingText', '0')
    setObjectCamera('RatingText', 'other')
    setTextColor('RatingText', 'FFFF00')
    setProperty('RatingText.x', 1230 - getProperty('RatingText.width'))
    setProperty('RatingText.y', 50)
    --
    makeLuaText('RatingTextShadow', 'N/A')
    setTextSize('RatingTextShadow', 30)
    setTextFont('RatingTextShadow', 'HUD.ttf')
    setTextBorder('RatingTextShadow', '0')
    setObjectCamera('RatingTextShadow', 'other')
    setTextColor('RatingTextShadow', '000000')
    setProperty('RatingTextShadow.x', 1232 - getProperty('RatingText.width'))
    setProperty('RatingTextShadow.y', 52)
    --
    addLuaText('RatingTextShadow')
    addLuaText('RatingText')
end
