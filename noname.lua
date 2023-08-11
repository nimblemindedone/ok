while wait() do
    for i,v in pairs(workspace:GetDescendants())do
        if v.Name=='Mesh' or v.Name=='SpecialMesh' then
            if v.Parent.Name~='Head' and v.Parent.Name~='Handle' then
                if not v:IsDescendantOf(Workspace.SecureParts) then
                    v:Destroy()
                end
            end
        end
    end
    for i,v in game.workspace:GetDescendants() do
        if v.ClassName == 'Humanoid' then
            if v.Name ~= 'Cleaned' then
                v.NameDisplayDistance = 0
                v.Name = 'Cleaned'
            end
        end
    end
end
