while wait() do
function plrFromChr(character)for _, player in pairs(game:GetService("Players"):GetPlayers())do if player.Character==character then return(player)end end end
	for i,v in pairs(workspace:GetDescendants())do
		if not plrFromChr(v)and v.Name=='Mesh'and not v:IsDescendantOf(workspace.SecureParts) then
			v:Destroy()
        end
    end
    for i,v in game.workspace:GetDescendants() do
        if v.ClassName == 'Humanoid' then
            v.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.Subject
            v.HealthDisplayDistance = 0
            v.NameDisplayDistance = 0
        end
    end
end
