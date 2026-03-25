--Made by HeyZinn_
--Credit if use pls

local rBF = 0
local gBF = 0
local bBF = 0

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
        if value1 == 'on' then
            setProperty('bgBlack.alpha', 1)
            setProperty('boyfriend.colorTransform.redMultiplier', 0)
            setProperty('boyfriend.colorTransform.greenMultiplier', 0)
            setProperty('boyfriend.colorTransform.blueMultiplier', 0)

            setProperty('boyfriend.colorTransform.redOffset', rBF)
            setProperty('boyfriend.colorTransform.greenOffset', gBF)
            setProperty('boyfriend.colorTransform.blueOffset', bBF)

            setProperty('dad.colorTransform.redMultiplier', 0)
            setProperty('dad.colorTransform.greenMultiplier', 0)
            setProperty('dad.colorTransform.blueMultiplier', 0)

            setProperty('dad.colorTransform.redOffset', rDad)
            setProperty('dad.colorTransform.greenOffset', gDad)
            setProperty('dad.colorTransform.blueOffset', bDad)
        end

        if value1 == 'off' then
            setProperty('bgBlack.alpha', 0.00001)
            setProperty('boyfriend.colorTransform.redMultiplier', 1)
            setProperty('boyfriend.colorTransform.greenMultiplier', 1)
            setProperty('boyfriend.colorTransform.blueMultiplier', 1)

            setProperty('boyfriend.colorTransform.redOffset', 0)
            setProperty('boyfriend.colorTransform.greenOffset', 0)
            setProperty('boyfriend.colorTransform.blueOffset', 0)

            setProperty('dad.colorTransform.redMultiplier', 1)
            setProperty('dad.colorTransform.greenMultiplier', 1)
            setProperty('dad.colorTransform.blueMultiplier', 1)

            setProperty('dad.colorTransform.redOffset', 0)
            setProperty('dad.colorTransform.greenOffset', 0)
            setProperty('dad.colorTransform.blueOffset', 0)
        end
       

        
    end

    

end

