local lplr = game:GetService("Players").LocalPlayer
local Players = game:GetService("Players")
local Player = lplr.Name
local antitp = true
local c1
local c2
if not lplr.Character then lplr.CharacterAdded:Wait() end
while antitp do
	local dis = lplr.Character.Humanoid.WalkSpeed / 2.5
    pcall(function() c1 = lplr.Character.HumanoidRootPart.CFrame end)
    wait(0.2)
    pcall(function() c2 = lplr.Character.HumanoidRootPart.CFrame end)
    if not c1 or not c2 then 
        antitp = false
        return 
    end
    local d = (c1.Position - c2.Position).Magnitude
    if d > dis then
        pcall(function()
            lplr.Character.HumanoidRootPart.CFrame = c1 
        end)
    end
end