function calculateTimeBonus()
	local baseScore = 0
	local timebonus_rate = 40
	
	-- Windmill Isle Act 1
	if (stageID == "ghz100") or (stageID == "pla200") then
	    baseScore = 84000
	-- Windmill Isle Act 2
	elseif (stageID == "ghz200") then
	    baseScore = 57000
	-- Savannah Citadel
	elseif (stageID == "cpz200") then
	    baseScore = 80000
	-- Rooftop Run
	elseif (stageID == "ssz200") then
	    baseScore = 20000
	-- Dragon Road
	elseif (stageID == "sph200") then
	    baseScore = 55000
	-- Cool Edge
	elseif (stageID == "cte200") then
	    baseScore = 55000
	-- Arid Sands
	elseif (stageID == "ssh200") then
	    baseScore = 30000
	-- Skyscraper Scamper
	elseif (stageID == "csc200") then
		baseScore = 50000
	-- Jungle Joyride
	elseif (stageID == "euc200") then
		baseScore = 70000
	end
	print(stageID .. " time bonus baseScore = " .. baseScore)

	-- Calculate time bonus
	local timeBonus = baseScore - math.floor(elapsedTime) * timebonus_rate
	return timeBonus < 0 and 0 or timeBonus
end