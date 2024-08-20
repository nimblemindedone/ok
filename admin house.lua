local lplr = game:GetService("Players").LocalPlayer
local Players = game:GetService("Players")
local Player = lplr.Name
local s = Instance.new("Sound")
local nojail = true
local nofling = true
local nolag = true
local noice = true
local nodeath = true
rchat = function(Message)
  Players:Chat(Message)
end

s.SoundId = "http://www.roblox.com/asset/?id=8679659744"
s.Volume = 999999999
s.Parent = game.Workspace
 
s:play()

print("Is that a skid i smell?")
print("afvk#0000")
rchat(":textw me simple commands made by nim 9199")
rchat(":mpm me scripts made by nim 9199.")
rchat(":chatnotifyc all 62 174 0 "..lplr.DisplayName.." has loaded nim's scripts v1")
--delete creds i delete you
while true do
	wait()
if nojail then do
		if workspace:FindFirstChild(lplr.Name.."_ADONISJAIL") then
			rchat(":unjail me") 
			wait(1)
end end end 

if nolag then do
 function plrFromChr(character)for _, player in pairs(game:GetService("Players"):GetPlayers())do if player.Character==character then return(player)end end end
				--while removebuilds do
					for i,v in pairs(workspace:GetChildren())do
						if not plrFromChr(v)and v.ClassName~='Camera'and v.ClassName~='Terrain'and v.Name~='SecureParts'and not v.Name:match('^'..tostring(game:GetService('Players').LocalPlayer.Name)..'_ADONISJAIL$') and v.ClassName ~= 'Sound' then
							v:Destroy()
end end end end 

if noice then do
			if workspace:GetDescendants("Adonis_Ice") then
				rchat(":thaw me") 
				wait(1)
end end end 

if nofling then do
	for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
if child:IsA("BasePart") then
child.CustomPhysicalProperties = PhysicalProperties.new(9e110,9e110,9e110)

if lplr.Character.Humanoid.Sit == true then
								lplr.Character.Humanoid.Sit = false 
							end
							if lplr.Character.Humanoid.PlatformStand == true then
								lplr.Character.Humanoid.PlatformStand = false
							end
   end
end end end 

if nodeath then do
	if lplr.Character.Humanoid.Health == 0 then
		rchat(":reset")
	end
end
end
end


