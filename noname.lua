while wait() do
for i,v in game.workspace:GetDescendants() do
	if v.ClassName == 'Humanoid' then
    	if v.Name ~= 'Cleaned' then
            v.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.Subject
            v.NameDisplayDistance = 0
            v.Name = 'Cleaned'
        end
    end
end
end
