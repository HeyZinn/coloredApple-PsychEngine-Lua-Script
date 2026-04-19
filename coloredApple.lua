--Made by HeyZinn_
--Credit if use pls

local rBF = 0
local gBF = 0
local bBF = 0

initialColor = 1

local rDad = 0
local gDad = 0
local bDad = 0


function onCreate()
    makeLuaSprite('bgBlack', '', -550, -470)
        
    makeGraphic('bgBlack', 4000, 4000, '000000')
    addLuaSprite('bgBlack', false)
    setProperty('bgBlack.alpha', 0.00001)
    rBF = getProperty('boyfriend.healthColorArray[0]')
    gBF = getProperty('boyfriend.healthColorArray[1]')
    bBF = getProperty('boyfriend.healthColorArray[2]')

    rDad = getProperty('dad.healthColorArray[0]')
    gDad = getProperty('dad.healthColorArray[1]')
    bDad = getProperty('dad.healthColorArray[2]')
    
    

end

function onEvent(name, value1, value2)
    if name == 'coloredApple' then
        if value1 == nil then
            value1 = 'off'
        end
        if tonumber(value2) == nil or tonumber(value2) < 0 then
            value2 = 0
        end
        
        if value1 == 'on' then
            doTweenAlpha('fade','bgBlack', 1, value2, 'linear')
            runHaxeCode([[
                FlxTween.tween(boyfriend.colorTransform, {redMultiplier: 0, greenMultiplier: 0, blueMultiplier: 0, redOffset: ]] .. rBF .. [[, greenOffset: ]] .. gBF .. [[, blueOffset: ]] .. bBF .. [[}, ]] .. value2 .. [[);
            ]])

            

            runHaxeCode([[
                FlxTween.tween(dad.colorTransform, {redMultiplier: 0, greenMultiplier: 0, blueMultiplier: 0, redOffset: ]] .. rDad .. [[, greenOffset: ]] .. gDad .. [[, blueOffset: ]] .. bDad .. [[}, ]] .. value2 .. [[);
            ]])

            
        end

        if value1 == 'off' then
            doTweenAlpha('fade','bgBlack', 0, value2, 'linear')
            runHaxeCode([[
                FlxTween.tween(boyfriend.colorTransform, {redMultiplier: 1, greenMultiplier: 1, blueMultiplier: 1, redOffset: ]] .. initialColor .. [[, greenOffset: ]] .. initialColor .. [[, blueOffset: ]] .. initialColor .. [[}, ]] .. value2 .. [[);
            ]])

            

            runHaxeCode([[
                FlxTween.tween(dad.colorTransform, {redMultiplier: 1, greenMultiplier: 1, blueMultiplier: 1, redOffset: ]] .. initialColor .. [[, greenOffset: ]] .. initialColor .. [[, blueOffset: ]] .. initialColor .. [[}, ]] .. value2 .. [[);
            ]])
        end
       

        
    end

    

end

