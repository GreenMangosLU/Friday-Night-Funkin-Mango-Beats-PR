function start (song)
	print("Succesfully initialized song(dadbattle)")
end

function update (elapsed)
	
end

function beatHit (beat)
	
end

function stepHit (step)
    if currentBeat > 24 and currentBeat < 41 then
        if step == 1 then
            setActorAccelerationX(100, 0)
            setActorAccelerationX(100, 1)
            setActorAccelerationX(100, 2)
            setActorAccelerationX(100, 3)
            setActorAccelerationY(100, 0)
            setActorAccelerationY(100, 1)
            setActorAccelerationY(100, 2)
            setActorAccelerationY(100, 3)
            end
    else 
        if step == 1 then
            setActorAccelerationY(100, 0)
            setActorAccelerationY(100, 1)
            setActorAccelerationY(100, 2)
            setActorAccelerationY(100, 3)
        end
        if step == 3 then
            setActorAccelerationY(100, 4)
            setActorAccelerationY(100, 5)
            setActorAccelerationY(100, 6)
            setActorAccelerationY(100, 7)
        end
        for i=4,7 do
            if getActorY(i) >= 100 then
            setActorY(100, i)
            setActorVelocityY(-100, i)
            end
        end
    end
end

function keyPressed (key)
	
end

