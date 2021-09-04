
function start (song)
	print("Succesfully initialized song(dadbattle)")
        if getActorY(0) < 150 then
            ds = false
        end
        if getActorY(0) > 150 then
            ds = true
        end
end

function update (elapsed)
    local currentBeat = (songPos / 1000)*(bpm/60)
    if currentBeat > 289 then
        for i=0,7 do
            setActorY(_G['defaultStrum'..i..'Y'], i)
            setActorX(_G['defaultStrum'..i..'X'], i)
        end
    end
    if currentBeat > 96 and currentBeat < 161 then
        for i=0,7 do
            if i < 4 then
                setActorX((_G['defaultStrum'..i..'X'] + 20) + 100 * math.sin((currentBeat / 10) * math.pi), i)
                setActorY((screenHeight / 2 - 240) + 32 * math.cos((currentBeat / 6) * math.pi), i)
                setActorAlpha(1, i)
            end
            if i > 3 then
                setActorX((_G['defaultStrum'..i..'X'] + 60) + 100 * math.sin((currentBeat / -10) * math.pi), i)
                setActorY((screenHeight / 2 - 240) + 32 * math.cos((currentBeat / -6) * math.pi) * -1, i)
            end
        end
        if ds == true then
            for i=0,7 do
                setActorY(getActorY(i) * 4, i)
            end
        end
    end
    if currentBeat > 224 and currentBeat < 288 then
        for i=0,7 do
            if i < 4 then
                setActorX((_G['defaultStrum'..i..'X'] + 20) + 100 * math.sin((currentBeat / 10) * math.pi), i)
                setActorY((screenHeight / 2 - 240) + 32 * math.cos((currentBeat / 6) * math.pi), i)
                setActorAlpha(1, i)
            end
            if i > 3 then
                setActorX((_G['defaultStrum'..i..'X'] + 60) + 100 * math.sin((currentBeat / -10) * math.pi), i)
                setActorY((screenHeight / 2 - 240) + 32 * math.cos((currentBeat / -6) * math.pi) * -1, i)
            end
        end
        if ds == true then
            for i=0,7 do
                setActorY(getActorY(i) * 4, i)
            end
        end
    end
end

function beatHit (beat)
	
end

function stepHit (step)
    local currentBeat = (songPos / 1000)*(bpm/60)
    if currentBeat > 161 and currentBeat < 224 then
        for i=0,7 do
            setActorY(_G['defaultStrum'..i..'Y'], i)
            setActorX(_G['defaultStrum'..i..'X'], i)
        end
    end
    if currentBeat > 289 then
        for i=0,7 do
            setActorY(_G['defaultStrum'..i..'Y'], i)
            setActorX(_G['defaultStrum'..i..'X'], i)
        end
    end
    if currentBeat < 97 then
        for i=0,7 do
            setActorY(_G['defaultStrum'..i..'Y'], i)
            setActorX(_G['defaultStrum'..i..'X'], i)
        end
    end
end

function keyPressed (key)
	
end

