function calculateTimeBonus()
	local baseScore = 0
	local timebonus_rate = 40
	
	-- Green Hill
	if (stageID == "ghz100") then
	    baseScore = 44000
	elseif (stageID == "ghz200") then
	    baseScore = 30000
	-- Chemical Plant
	elseif (stageID == "cpz100") then
	    baseScore = 50000
	elseif (stageID == "cpz200") then
	    baseScore = 42000
	-- Sky Sanctuary
	elseif (stageID == "ssz100") then
	    baseScore = 40000
	elseif (stageID == "ssz200") then
	    baseScore = 43000
	-- Speed Highway
	elseif (stageID == "sph100") then
	    baseScore = 49000
	elseif (stageID == "sph200") then
	    baseScore = 32000
	-- City Escape
	elseif (stageID == "cte100") then
	    baseScore = 42000
	elseif (stageID == "cte200") then
	    baseScore = 36000
	-- Seaside Hill
	elseif (stageID == "ssh100") then
	    baseScore = 41000
	elseif (stageID == "ssh200") then
	    baseScore = 32000
	-- Crisis City
	elseif (stageID == "csc100") then
		baseScore = 46000
	elseif (stageID == "csc200") then
		baseScore = 41000
	-- Rooftop Run
	elseif (stageID == "euc100") then
		baseScore = 40000
	elseif (stageID == "euc200") then
		baseScore = 26000
	-- Planet Wisp
	elseif (stageID == "pla100") then
		baseScore = 34000
	elseif (stageID == "pla200") then
		baseScore = 30000
	end
	print(stageID .. " time bonus baseScore = " .. baseScore)

	-- Calculate time bonus
	local timeBonus = baseScore - math.floor(elapsedTime) * timebonus_rate
	return timeBonus < 0 and 0 or timeBonus
end