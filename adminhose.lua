if isfile('huntingaplr.txt') == false then
 writefile('huntingaplr.txt', 'false')
end
if isfile('huntedplr.txt') == false then
 writefile('huntedplr.txt', 'ilimitsasa')
end

local Player = game.Players.LocalPlayer
local Players = game:GetService("Players")
local huntedplr = readfile('huntedplr.txt')
local foundplr = false
local nkick = 'no talk kick'
rchat = function(Message)
  Players:Chat(Message)
end

if readfile('huntingaplr.txt') then
    coroutine.wrap(function()
     while wait() do
        for i,v in Players:GetChildren() do
            if v.Name == huntedplr then
                local foundplr = true
                rchat(':bring '..huntedplr..' | :runc '..nkick)
                print("Player crashed!")
                wait(10)
                end
            end

            if foundplr == false then
                rchat('!join '..huntedplr)
                wait(10)
            end
     end
    end)()
end
rchat = function(Message)
  Players:Chat(Message)
end

Player.Chatted:Connect(function(msg)
    local c = msg
    if c == "nkick" then
       rchat(':runc no talk kick')
    end
end)

Player.Chatted:Connect(function(msg)
    local c = msg
    if c == "allkick" then
       rchat(':runc akick')
    end
end)

Player.Chatted:Connect(function(msg)
    local c = msg
    if c == ".Fs" then
       rchat(':sm SERVER HAS BEEN FROZEN | :loadb ping')
    end
end)

Player.Chatted:Connect(function(msg)
    local cS = string.split(msg, ' ')
    local c = cS[1]
    local hunted = cS[2]
    if c == ".hunt" then
      writefile('huntedplr.txt', hunted)
      print(readfile('huntedplr.txt'))
      local huntedplr = readfile('huntedplr.txt') 
      writefile('huntingaplr.txt', 'true')
      coroutine.wrap(function()
       while true do
          for i,v in Players:GetChildren() do
              if v.Name == huntedplr then
                  local foundplr = true
                  rchat(':bring '..huntedplr..' | :runc '..nkick)
                  print("Player crashed!")
                  wait(10)
                  end
              end

              if foundplr == false then
                  rchat('!join '..huntedplr)
                  wait(10)
              end
       end
      end)()

    end
end)

Player.Chatted:Connect(function(msg)
    local c = msg
    if c == ".nohunt" then
       writefile('huntingaplr.txt', 'false')
       delfile('huntedplr.txt')
    end
end)

Player.Chatted:Connect(function(msg)
    local c = msg
    if c == ".noname" then
        game.RunService.PostSimulation:Connect(function()
             for i,v in game.workspace:GetDescendants() do
                if v.ClassName == 'Humanoid' then
                    v.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.Subject
                    v.HealthDisplayDistance = 0
                    v.NameDisplayDistance = 0
                end
            end
        end)

    end
end)

Player.Chatted:Connect(function(msg)
    local c = msg
    if c == ".nolag" then
    game.RunService.PostSimulation:Connect(function()
       function plrFromChr(character)for _, player in pairs(game:GetService("Players"):GetPlayers())do if player.Character==character then return(player)end end end
					for i,v in pairs(workspace:GetChildren())do
						if not plrFromChr(v)and v.ClassName~='Camera'and v.ClassName~='Terrain'and v.Name~='SecureParts'and not v.Name:match('^'..tostring(game:GetService('Players').LocalPlayer.Name)..'_ADONISJAIL$') and v.ClassName ~= 'Sound' then
							v:Destroy()
                        end end
        end)
    end
end)

rchat(':textw me script loaded. CMDS are ("nkick", "allkick", ".Fs", ".hunt Full_Player_Name", ".nohunt", ".noname", ".nolag"')
