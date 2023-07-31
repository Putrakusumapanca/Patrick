function onCreate()
	-- background shit
	makeLuaSprite('pat_bg', 'pat_bg', -700, -300);
	addLuaSprite('pat_bg',false)

		makeLuaSprite('text', 'text thing', -650, -360);
	addLuaSprite('text',true)

	setObjectCamera('text', 'camother')
end



function onBeatHit()
	if curBeat < 388 then

		if curBeat % 2 == 0 then
			angleshit = anglevar;
			angleshit = -anglevar;
		else
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
	if curBeat < 10000 then
		if curStep % 4 == 0 then
			doTweenY('rrr', 'camHUD', -5, stepCrochet*0.002, 'circOut')
			doTweenY('rtr', 'camGame.scroll', 0, stepCrochet*0.002, 'sineIn')
		end
		if curStep % 4 == 2 then
			doTweenY('rir', 'camHUD', 0, stepCrochet*0.002, 'sineIn')
			doTweenY('ryr', 'camGame.scroll', 0, stepCrochet*0.002, 'sineIn')
		end
	end
end

function onUpdate()

        if mustHitSection == false then

            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then

            	triggerEvent('Screen Shake','0.1,0.005','')

            end

	end
end

function onUpdate()

        if mustHitSection == false then

            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then

            	triggerEvent('Screen Shake','0.1,0.005','')

            end

	end
end

function onUpdate()

        if mustHitSection == false then

            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then

            	triggerEvent('Screen Shake','0.1,0.005','')

            end

	end
end