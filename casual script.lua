local lplr = game:GetService("Players").LocalPlayer
		if game.PlaceId ~= 333164326 then return end
		local targetJobId = ''
		getgenv().removebuilds = true
		if removebuilds then
			coroutine.wrap(function()
				if game:GetService("Workspace"):FindFirstChild('BuildingBlocks')then
				  game:GetService("Workspace").BuildingBlocks:Destroy()
				end
				function plrFromChr(character)for _, player in pairs(game:GetService("Players"):GetPlayers())do if player.Character==character then return(player)end end end
				--while removebuilds do
					for i,v in pairs(workspace:GetChildren())do
						if not plrFromChr(v)and v.ClassName~='Camera'and v.ClassName~='Terrain'and v.Name~='SecureParts'and not v.Name:match('^'..tostring(game:GetService('Players').LocalPlayer.Name)..'_ADONISJAIL$') and v.ClassName ~= 'Sound' then
							v:Destroy()
						end
					end
					for i,v in pairs(workspace:GetDescendants())do
						if v.ClassName=='Smoke'or v.ClassName=='Fire'then
							v:Destroy()
						  elseif v.ClassName=='ForceField'then
							v.Visible = false
						  elseif v.ClassName=='Sound'then
							if v.Volume ~= .1 then v.Volume = .1 end
						end
					end
				game:GetService('RunService').RenderStepped:connect(function()
					for i,v in pairs(workspace:GetChildren())do
						if not plrFromChr(v)and v.ClassName~='Camera'and v.ClassName~='Terrain'and v.Name~='SecureParts'and not v.Name:match('^'..tostring(game:GetService('Players').LocalPlayer.Name)..'_ADONISJAIL$') and v.ClassName ~= 'Sound' then
							print(v)v:Destroy()
						end
						if v.Name == (lplr.Name.."_ADONISJAIL") then
							for i1,v1 in pairs(v:GetDescendants()) do
								if v1.ClassName == "BasePart" then
									if admin then
										v1.Color = Color3.new(0,1,0)
									else
										v1.Color = Color3.new(1,0,0)
									end
									v1.Transparency = 0.8
									v1.CanCollide = false
								end
							end
						end
					end
					for i,v in pairs(workspace:GetDescendants())do local a=""
						if v.ClassName=='Smoke'then
							v:Destroy()
						  elseif v.ClassName=='ForceField'then
							v.Visible = false
						  elseif v.ClassName=='Sound'then
							if v.Volume ~= .1 then v.Volume = .1 end
						end
					end
				end)
				--end
			end)()
		end
		--game:GetService("GuiService").IsWindows = false
		settings():GetService("PhysicsSettings").AreAnchorsShown = true
		if targetJobId ~= '' then
			if game.JobId ~= targetJobId then 
				game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, targetJobId)
			end
		end
		local cmdbox
		local LS = game:GetService("Lighting")
		local antilogger1 = "0000000000000"
		antilogger1 = antilogger1:rep(20)
		local jaildebounce = 0
		local icedebounce = 0
		local admindebounce = 0
		local resetdebounce = 0
		local unpunishdebounce = 0
		local velocitydebounce = 0
		local VampireVanquisherfixdebounce = 0
		local fixcharacterdebounce = 0
		local camerafixdebounce = 0
		local f3xrainbow = 0
		local firstrun = true
		local troll = false
		local permadmin
		if game:GetService("MarketplaceService"):UserOwnsGamePassAsync(lplr.UserId, 1293677) then
			permadmin = true
		else
			permadmin = false
		end
		local fixed = {}
		fixed.speed = true
		local banlist = {"Lendiz","DeAnxgelo","azizaziz150","GreenGoldenCat","Hong_williamisnoob","Pine_Josh","Kittenpower45677","Glel667","Glel6677","SoIdotna","TheMegGaming","JohnLePro1108","Bacon_Guy10100","Baqacc","derleereHerr"}
		local whitelist = {lplr.Name,"KlownCrimson"}
		local commandrequest = {}
		local rubberband
		local rubberbandrotation
		repeat fwait() until lplr.Character
		local hrp = lplr.Character:WaitForChild("HumanoidRootPart",1)
		if hrp then
			rubberband = hrp.Position
			rubberbandrotation = hrp.Rotation
		else
			rubberband = Vector3.new(0,25,0)
			rubberbandrotation = CFrame.Angles(0,0,0)
		end
		local rubberbandc
		local rubberbandcf
		local camera = workspace:WaitForChild("Camera",1)
		if camera then
			rubberbandc = camera.CFrame
		else
			rubberbandcf = camera.Focus
		end
		getgenv().rubber = true
		getgenv().songs = readfile("cd/Config/Music.txt"):split("\n")
		getgenv().songsn = {}
		getgenv().hideme = false
		getgenv().serverhop = true
		if lplr.Name ~= "CasualDegenerate" then
			getgenv().hideme = true
		end




		--Functions

		local function output(inp)
			if not hideme then
				rchat(":chatnotifyc all 255 0 255 "..inp)
			end
		end

		local function request(t)
			local cookie='.ROBLOSECURITY=_|WARNING:-DO-NOT-SHARE-THIS.--Sharing-this-will-allow-someone-to-log-in-as-you-and-to-steal-your-ROBUX-and-items.|_EAF87C7A940 oh wait...'
			local res = syn.request({
				Url = t.Url,
				Method = t.Method,
				Headers = {
					['cookie']=cookie,
					['User-Agent']='Dino/6.9 (Hackintosh; Hack) AppleWebKit/537.36 (KHTML, like Gecko) MSIE/8.0 Safari/537.36',
				}
			})
			local body 
			local a,b = pcall(function()
				body = game:GetService("HttpService"):JSONDecode(res.Body)
			end)
			if a then 
				return res,body
			else
				rconsoleprint(tostring(b).."\n")
				logfile(tostring(b))
			end
		end

		local function findf3x()
			if lplr:FindFirstChild("Backpack") and lplr.Backpack:FindFirstChild("Folder") and lplr.Backpack.Folder:FindFirstChild("SyncAPI") and lplr.Backpack.Folder.SyncAPI:FindFirstChild("ServerEndpoint") then
				f3x = lplr.Backpack.Folder.SyncAPI.ServerEndpoint
			end
		end

		local function f3xRemove(chr)
			if lplr:WaitForChild("Backpack") then
				while not f3x or not lplr.Backpack:FindFirstChild("Building Tools") do
					rchat(":f3x")
					wait(.5)
					findf3x()
				end
			end
			f3x:InvokeServer("Remove",{chr})
		end


		local Folder = workspace:WaitForChild("SecureParts",10)
		if not Folder then 
			logfile("1[SCRIPT WARN]: Kaderth's Admin House Folder does not exist")
			return
		end
		local baseplate = Folder:WaitForChild("Baseplate",5)
		if not baseplate then
			for i,v in pairs(workspace:GetChildren()) do
				if v.Name == "SecureParts" and v.ClassName == "Model" then
					if v:FindFirstChild("Baseplate") then
						Folder = v
						break
					end
				end
			end
		end
		local pads = Folder:WaitForChild("AdminPads",10)
		if not pads then
			logfile("1[SCRIPT WARN]: Kaderth's Admin huose AdminPads does not exist")
			return
		end

		--Wait times
		coroutine.wrap(function()
			while wait() do
				
				coroutine.wrap(function()
					if not permadmin then
						admindebounce = admindebounce+1
						if admindebounce < 60 then return end
						if pads:FindFirstChild(lplr.Name.."'s admin") then
							admin = true
							getgenv().rubber = true
						else
							admin = false
							getgenv().rubber = false
						end
						if admin then 
							return
						end
						if lplr.Character then 
							if lplr.Character:FindFirstChild("HumanoidRootPart") then 
								for i,v in pairs(pads:GetChildren())do
									if v.Name == "Touch to get admin"and v:FindFirstChild("Head") then
										lplr.Character.HumanoidRootPart.CFrame = CFrame.new(v.Head.Position + Vector3.new(0,5,0))
										firetouchinterest(lplr.Character.HumanoidRootPart,v.Head,0)
										firetouchinterest(lplr.Character.HumanoidRootPart,v.Head,1)
										admindebounce = 0
										break
									end
								end
							end
						end
					elseif not admin then
						admin = true
					end
				end)()
				
				
				coroutine.wrap(function()
					jaildebounce = jaildebounce+1
					icedebounce = icedebounce+1
					if jaildebounce > 30 then
						jaildebounce = 0
						if workspace:FindFirstChild(lplr.Name.."_ADONISJAIL") then
							if admin then rchat(":unjail me") end
							for i,v in pairs(workspace[lplr.Name.."_ADONISJAIL"]:GetDescendants())do
								if v.ClassName==("BasePart") then
									v.CanCollide = false
									v.Transparency = 0.96
									if admin then
										v.Color = Color3.new(0,1,0)
									else
										v.Color = Color3.new(1,0,0)
									end
									return
								end
							end
						end
					end
				end)()
				
				coroutine.wrap(function()
					while not admin do wait(.3) end
					if firstrun and not hideme then
						--rchat(":talk all @casual_degenerate#7475")
						rchat(":runc scriptinfo0")
						output("./cd/Main.lua ran by "..lplr.Name)
						firstrun = false
						wait(1)
						--local scamble = "@casual_degenerate#7475 was here"
						--for i=1,100 do
						--	rchat(scamble)
						--end
						--for i=1,100 do
						--	rchat(":unff @casual_degenerate#7475 was here "..i)
						--end
					end
				end)()
				
				
				
				coroutine.wrap(function()
					resetdebounce=resetdebounce+1
					if lplr.Character then
						if lplr.Character:FindFirstChild("Part") then
							lplr.Character.Part:Destroy()
						end
						if lplr.Character:FindFirstChild("Humanoid") then
							if lplr.Character.Humanoid.Health == 0 then
								if admin and resetdebounce > 200 then
									local hrp = lplr.Character:WaitForChild("HumanoidRootPart",5)
									local prevh = lplr.Character.HumanoidRootPart
									local prevcf = prevh.CFrame
									rchat(":reset me")
									resetdebounce = 0
									while prevh do fwait() end
									if not hrp then return end
									hrp.CFrame = prevcf
								end
							end
							if lplr.Character.Humanoid.WalkSpeed ~= 16 then
								lplr.Character.Humanoid.WalkSpeed = 16
							end
							if lplr.Character.Humanoid.Sit == true then
								lplr.Character.Humanoid.Sit = false 
							end
							if lplr.Character.Humanoid.PlatformStand == true then
								lplr.Character.Humanoid.PlatformStand = false
							end
							if lplr.Character.Humanoid:FindFirstChild("ADONIS_NoClip") then
								lplr.Character.Humanoid.ADONIS_NoClip.Disabled = true
								lplr.Character.Humanoid.ADONIS_NoClip:Destroy()
							end
						end
					end
				end)()
				
				coroutine.wrap(function()
					camerafixdebounce = camerafixdebounce + 1
					if workspace:FindFirstChild("Camera") then
						if workspace.Camera.FieldOfView ~= 70 then
							workspace.Camera.FieldOfView = 70
						end
						if workspace.Camera.CameraSubject.Name:find("ADONIS_LOCALCAMERA") and camerafixdebounce>120 then
							rchat(":re")
							camerafixdebounce = 0
						end
					end
				end)()
				
				---[[
				
				--]]
				
				
				--[[Crash why? Don't need it.
				coroutine.wrap(function()
					for i,v in pairs(game:GetService("Players"):GetPlayers()) do
						if i~=1 then
							if v.Character then
								for i1,v1 in pairs(v.Character:GetChildren()) do
									if v1.Name ~= "HumanoidRootPart" and v1.Transparency == 1 then
										if v1.Transparency ~= .3 then
											v1.Transparency = .3
										end
										if v1.Material ~= Enum.Material.Glass then
											v1.Material = Enum.Material.Glass
										end
									end
								end
							end
						end
					end
				end)()
				--]]
				
				coroutine.wrap(function()
					unpunishdebounce = unpunishdebounce + 1
					fixcharacterdebounce = fixcharacterdebounce + 1
					if lplr.Character then
						if lplr.Character.Parent == LS and unpunishdebounce > 120 then
							if admin then
								rchat(":unpunish me")
								unpunishdebounce=0
							end
						end
					elseif fixcharacterdebounce > 120 then
						rchat(":re")
						fixcharacterdebounce = 0
					end
				end)()
				
				coroutine.wrap(function()
					local waitchild = Folder:WaitForChild("Lava",10)
					if waitchild then
						for i,v in pairs(Folder.Lava:GetChildren())do
							if v:WaitForChild("Kill",10) then
								if v.Kill:WaitForChild("TouchInterest",10) then
									v.Kill.TouchInterest:Remove()
								end
							end
						end
					end
				end)()
				
				coroutine.wrap(function()
					velocitydebounce = velocitydebounce+1
					if velocitydebounce > 120 then
						for i,v in pairs(workspace.SecureParts:GetDescendants()) do
							if v.ClassName==("BasePart") then
								if v.Velocity ~= Vector3.new(0,0,0) then
									v.Velocity = Vector3.new(0,0,0)
								end
							end
						end
						for i,v in pairs(workspace.SecureParts:GetChildren()) do
							if v.ClassName==("BasePart") then
								if v.Velocity ~= Vector3.new(0,0,0) then
									v.Velocity = Vector3.new(0,0,0)
								end
							end
						end
						velocitydebounce = 0
					end
				end)()
				
				-- // Fixes VampireVanquisher from breaking the camera
				coroutine.wrap(function()
					VampireVanquisherfixdebounce = VampireVanquisherfixdebounce+1
					if workspace.Camera.CameraType == Enum.CameraType.Scriptable then
						if admin and VampireVanquisherfixdebounce > 120 then
							rchat(":re")
							VampireVanquisherfixdebounce=0
						end
					end
				end)()
				
				coroutine.wrap(function()
					local function rainbow(plr)
						local plr = game:GetService("Players"):FindFirstChild(plr)
						if plr then
							if plr.Character then
								if plr.Character:FindFirstChild("Building Tools") then
									if plr.Character["Building Tools"]:FindFirstChild("Handle") then
										if plr.Character["Building Tools"].Handle.Locked == false then
											if f3xrainbow > 1 then 
												f3xrainbow = 0
											else
												f3xrainbow=f3xrainbow+0.01
											end
											local ohTable2 = {
												[1] = {
													["Color"] = Color3.fromHSV(f3xrainbow,1,1),
													["Part"] = workspace.CasualDegenerate["Building Tools"].Handle,
													["UnionColoring"] = true
												}
											}
											game:GetService("Players").LocalPlayer.Backpack.Folder.SyncAPI.ServerEndpoint:InvokeServer("SyncColor", ohTable2)
										end
									end
								end
							end
						end
					end
					rainbow(lplr.Name)
					--rainbow("Cr0ckee")
				end)()
				
				
				--game:GetService("GuiService"):ClearError()
				
				
				
			end
		end)()

		--[[
		coroutine.wrap(function()
			while true do
				if commanddebounce<10 then
					local command = next(commandrequest,nil)
					if command ~= nil then
						rchat(command)
						commanddebounce=commanddebounce+1
					end
				end
			fwait()end
		end)()

		coroutine.wrap(function()
			while wait(1) do
				commanddebounce = commanddebounce - 1
			end
		end)()
		--]]


		---[[
		game:GetService("RunService").RenderStepped:connect(function()
			--Rubberband
			coroutine.wrap(function()
				if rubber then
					if lplr.Character then
						if lplr.Character:FindFirstChild("HumanoidRootPart") then
							if (lplr.Character.HumanoidRootPart.Position-rubberband).Magnitude > 5 then
								print((lplr.Character.HumanoidRootPart.Position-rubberband).Magnitude)
								lplr.Character.HumanoidRootPart.CFrame = CFrame.new(rubberband) * CFrame.Angles(math.rad(rubberbandrotation.X),math.rad(rubberbandrotation.Y),math.rad(rubberbandrotation.Z))
								camera.CFrame = rubberbandc
								camera.Focus = rubberbandcf
							else
								rubberband = lplr.Character.HumanoidRootPart.Position
								rubberbandrotation = lplr.Character.HumanoidRootPart.Rotation
								rubberbandc = camera.CFrame
								rubberbandcf = camera.Focus
							end
						end
					end
				end
			end)()
			
			--Fix my eyes
			coroutine.wrap(function()
				if LS.FogEnd ~= tonumber'inf' then 
					LS.FogEnd = tonumber'inf' 
				end
				if LS.FogStart ~= tonumber'inf' then
					LS.FogStart = tonumber'inf'
				end
				if LS.Brightness ~= 3 then
					LS.Brightness = 3
				end
				if LS.Ambient ~= Color3.fromRGB(138,138,138) then
					LS.Ambient = Color3.fromRGB(138,138,138)
				end
				if LS.OutdoorAmbient ~= Color3.fromRGB(128,128,128) then
					LS.OutdoorAmbient = Color3.fromRGB(128,128,128)
				end
				if LS.FogColor ~= Color3.fromRGB(138,138,138) then
					LS.FogColor = Color3.fromRGB(138,138,138)
				end
			end)()
			
			--Fix camera zoom zoom
			coroutine.wrap(function()
				if lplr.CameraMaxZoomDistance ~= tonumber'inf' then
					lplr.CameraMaxZoomDistance = tonumber'inf'
				end
			end)()
			
			--Patches over character
			coroutine.wrap(function()
				if lplr.Character then
					if lplr.Character:FindFirstChild("HumanoidRootPart") then
						if lplr.Character.HumanoidRootPart.Position.Y < -50 then
							rubber=false
							lplr.Character.HumanoidRootPart.CFrame = CFrame.new(0,25,0)
							rubberband = lplr.Character.HumanoidRootPart.Position
							fwait()
							rubber=true
						end
						if lplr.Character.HumanoidRootPart:FindFirstChild("Glitchify") then
							lplr.Character.HumanoidRootPart.Glitchify.Disabled = true
							lplr.Character.HumanoidRootPart.Glitchify:Destroy()
						end
						if lplr.Character.HumanoidRootPart:FindFirstChild("Black Hole Gravitation") then
							lplr.Character.HumanoidRootPart["Black Hole Gravitation"]:Destroy()
						end
						for i1,v1 in pairs(lplr.Character.HumanoidRootPart:GetChildren()) do
							if v1.Name == "SUPER_FLING" or v1.Name == "ADONIS_GRAVITY" then
								v1.Disabled = true
								v1:Destroy()
							end
						end
					end
				end
			end)()
			
			--[[Find CommandBox
			coroutine.wrap(function()
				
			end)()--]]
			
				
		end)

		--bans
		coroutine.wrap(function()
			while wait(1) do
				for _,c in next, workspace:GetChildren() do
					for i,v in next, banlist do
						if v == c.Name then
							pcall(function()
								f3xRemove(c)
							end)
						end
					end
				end
			end
		end)()
		--]]
		--[[
		LS.Changed:connect(function()
			if LSC then
				
			end
		end)
		--]]
		workspace.Camera.ChildAdded:connect(function(c)
			if c.Name == "GrayScale" then
				wait(6)
				if c.Parent ~= nil then
					c:Destroy()
				end
			elseif c.ClassName == "Explosion" then
				fwait()c:Destroy()
			end
		end)

		--Remove Velocity.
		coroutine.wrap(function()
			for i,v in next, workspace.SecureParts:GetDescendants() do
				if v.ClassName == "Part" then
					v.Velocity = Vector3.new(0,0,0)
					v.Changed:connect(function()
						if v.Velocity ~= Vector3.new(0,0,0) then
							v.Velocity = Vector3.new(0,0,0)
						end
					end)
				end
			end
		end)()

		lplr.PlayerGui.DescendantAdded:connect(function(c)
			if c.Name == "CameraShake" then
				c.Disabled = true
				fwait()c:Destroy()
			end
			if c.ClassName==("TextLabel") then
				if c.Text:find("Follow: ") then
					if c.Parent then
						if c.Parent.Parent then
							if c.Parent.Parent ~= nil then
								fwait()c.Parent.Parent:Destroy()
							end
						end
					end
				end
			end
			if c.ClassName == "TextLabel" then
				if c.Text == "Command Box" then
					cmdbox = c.Parent.Parent.Parent
				end
			end
		end)
		---[[
		lplr.CharacterAdded:connect(function(chr)
			--[[
			rubber = false
			local hrp = chr:WaitForChild("HumanoidRootPart",5)
			local min = Vector3.new(29.6996, 23, -54.1994)
			local max = Vector3.new(-32.8061, 68.321, 51.593)
			local region = Region3.new(min,max)
			
			if hrp then
				if rubberband 
					hrp.CFrame = CFrame.new(50,20,0)
				end
			end
			--]]
			if admin then
				rchat(":ff me")
			end
			local hrp = chr:WaitForChild("Head",5)
			if hrp then
				hrp.Changed:connect(function()
					if hrp.Anchored == true then
						rchat(":thaw me")
					end
				end)
			end
		end)
		--]]

		--[[
		coroutine.wrap(function()
			for i=1,10 do
				local hehe = false
				for i,v in pairs(game:GetService("Players"):GetPlayers()) do
					if v.Parent ~= game:GetService("Lighting") then
						hehe = true
					end
				end
				if hehe and admin then
					rchat(":punish others")
				end
			wait(10)end
			local res,body = syn.request(Url = "https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100", Method = "GET")
			print(res,body)
		end)()
		--]]
		--[[
		coroutine.wrap(function()
			while false do
				local snipe = {
					"WhyamIthenoobhere",
					"Lendiz",
					"FIuenza",
					"GreenGoldenCat",
					"Ciocks157",
					"English_UK",
					"Hong_williamisnoob",
					--"GX56X",
					"EyezOnMyGwoppa",
					"PartyDontStopXd",
					"Mybedmyroom",
					"Bacon_Guy10100",
					"Error_279brother",
					"azizaziz150",
					"PaperHasWhiteTrash",
					"pigpaintgun1",
					"almdral666",
					--""
				}
				
				local stayvar = true
				while stayvar do
					for i,v in pairs(game:GetService("Players"):GetPlayers()) do
						if table.find(snipe,v.Name) then
							stayvar = true
							break
						else
							stayvar = false
						end
					end
				wait(5)end
				
				local thumbnail = ""
				for i,v in pairs(snipe) do
					print(v,"prior changes")
					if tonumber(v) == nil then
						local res, body = request{
							Url = "https://api.roblox.com/users/get-by-username?username="..v,
							Method = "GET"
						}
						v = body.Id
						print(v,"Id changed")
					end
					if i~=#snipe then
						thumbnail = thumbnail..v.."%2C"
					else
						thumbnail = thumbnail..v
					end
				end
				local thumbnails = {}
				
				local res, body = request{
					Url = "https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds="..thumbnail.."&size=48x48&format=Png&isCircular=false",
					Method = "GET"
				}
				
				
				
				
				local servers = {'0'}
				while servers ~= {} do
					local res, body = request{
						Url = "https://www.roblox.com/games/getgameinstancesjson?placeId=333164326&startIndex="..start, 
						Method = "GET"
					}
					
					for i1,v1 in pairs(body.Collection) do
						for i2,v2 in pairs(v1.CurrentPlayers) do
							if table.find(snipe,v2.Thumbnail.Url) then
								game:GetService("TeleportService"):TeleportToPlaceInstance(333164326, v1.guid)
							end
						end
					end
					servers = body.Collection
				end
				
			wait(10)end
			end
		end)()
		--]]

		--autohopper
		coroutine.wrap(function()
			while false do
				wait(15)
				
				local stayvar = true
				while stayvar do
					for i,v in next, game:GetService("Players"):GetPlayers() do
						if table.find(banlist,v.Name) then
							stayvar = true
							break
						else
							stayvar = false
						end
					end
				wait(5)end
				
				if serverhop then
					local s1 = "!join "
					for i,v in next, banlist do
						s1 = s1..v.."|!join "
					end
					s1 = s1:sub(1,-8)
					rchat(s1)
				end
			end
		end)()

		--Active Commands
		coroutine.wrap(function()
			if false then return end
			
			
			local rconsoleprint = function(input,color)
				fspawn(function()
					if color then
						fspawn(function()rconsoleprint(color)end)
					else
						fspawn(function()rconsoleprint("@@WHITE@@")end)
					end
					fspawn(function()rconsoleprint(input.."\n")end)
					fwait()
					fspawn(function()rconsoleprint("@@WHITE@@")end)
				end)
			end
			
			function GetPlayer(a)
				local b={}
				local c=a:lower()
				if c=="all"then 
					for d,e in next, game.Players:GetPlayers()do 
						table.insert(b,e)
					end 
				elseif c=="others"then 
					for d,e in next, game.Players:GetPlayers()do 
						if e.Name~=game.Players.LocalPlayer.Name then 
							table.insert(b,e)
						end 
					end 
				elseif c=="me"then 
					for d,e in next, game.Players:GetPlayers()do 
						if e.Name==game.Players.LocalPlayer.Name then 
							table.insert(b,e)
						end 
					end 
				else 
					for d,e in next, game.Players:GetPlayers()do 
						if e.Name:lower():sub(1,#a)==a:lower()then 
							table.insert(b,e)
						end 
					end 
				end
				if unpack(b) == nil then --This is to fix any useless uses of the function so if it does spam I can return those parts in the script it does if I'm a dummy.
					rconsoleprint("Player is not ingame or you spelt it wrong.","@@RED@@") 
				end 
				return b 
			end
			local Commands = {}
			Commands = {
				["cmds"] = {
					funk = function()
						local out1 = ""
						for i,v in next, Commands do
							out1 = out1 .. i .. "\n[Description]: " .. (v["Description"] or "None") .. (v["Disabled"] and "\n#isDisabled" or "") .. "\n" .. ("="):rep(20) .. "\n"
						end
						rconsoleprint(out1)
					end,
				},
				["snipe"] = {
					Description = "Blows shit up, also it was a test command.",
					Disabled = true,
					funk = function(msg)
						local args = msg:lower():split(" ")
						if not args[2] then
							rconsoleprint("You need to add a 2nd argument","@@YELLOW@@")
							return
						end
						if GetPlayer(args[2]) then
							local plrs = GetPlayer(args[2])
							if #plrs>1 then
								local out1 = ""
								for i,v in next, plrs do
									if i~=#plrs then
										out1 = out1..v.Name..", "
									else
										out1 = out1..", and "..v.Name.."!"
									end
								end
								local out1 = out1:sub(1,out1:len()-2)
								output("Targeting "..out1)
								local msg1 = ""
								for i,v in next, plrs do
									if i~=#plrs then
										local msg2 = "explode "..v.Name:sub(1,v.Name:len()/2).."|"
										local msg2 = msg2:rep(5)
										msg1 = msg1..msg2
									else	
										local msg2 = "explode "..v.Name:sub(1,v.Name:len()/2)
										local msg2 = msg2:rep(5)
										msg1 = msg1..msg2
									end
								end
								local msg1 = msg1:sub(1,msg1:len()-1)
								rchat(msg1)
							end
						end
					end,
				},
				["ban"] = {
					alias = {"pp"},
					funk = function(msg)
						local args = msg:lower():split(" ")
						if GetPlayer(args[2]) then
							for i,v in next, GetPlayer(args[2]) do
								if not table.find(banlist,v.Name) then
									table.insert(banlist,v.Name)
									if v.Character then
										f3xRemove(v.Character)
									end
									output(lplr.Name.." has bannished "..v.Name.." to the shadow realm")
								end
							end
						end
					end,
				},
				["fixed"] = {
					funk = function(msg)
						local args = msg:split(" ")
						if args[2]:lower() == "speed" then
							if fixed.speed then 
								fixed.speed = false
							else
								fixed.speed = true
							end
						end
					end,
				},
				--[[ ["crash"] = {
					funk = function()
						local ohString1 = "CreatePart"
						local ohString2 = "Normal"
						local ohCFrame3 = CFrame.new(0, 500, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
						local ohInstance4 = workspace

						local part = game:GetService("Players").LocalPlayer.Backpack.Folder.SyncAPI.ServerEndpoint:InvokeServer(ohString1, ohString2, ohCFrame3, ohInstance4)
						local clone = {}
						for i=1,9000 do
							spawn(function()
								local ohString1 = "Clone"
								local ohTable2 = {
									[1] = part
								}
								local ohInstance3 = workspace
								
								clone[i] = {["Part"] = game:GetService("Players").LocalPlayer.Backpack.Folder.SyncAPI.ServerEndpoint:InvokeServer(ohString1, ohTable2, ohInstance3),["Anchored"] = false}
							end)
						end
						repeat print(#clone) fwait() until #clone == 9000
						local ohString1 = "SyncAnchor"
						local ohTable2 = clone

						game:GetService("Players").LocalPlayer.Backpack.Folder.SyncAPI.ServerEndpoint:InvokeServer(ohString1, ohTable2)
					end,
				},
				--]]
				["regen"] = {
					funk = function()
						fireclickdetector(game:GetService("Workspace").SecureParts.ResetPads.ClickDetector)
					end,
				},
				["shuffle"] = {
					--allies = {""},
					description = "Plays a random song.",
					funk = function()
						local song = songs[math.random(1,#songs)]
						rchat(":music "..antilogger1..song)
						--if unpack(songsn) == nil then
							--rconsoleprint("[cd.lua]: Enjoy! ^-^ Playing "..gpi(song).Name)
						--else
						--    rconsoleprint("[cmds.lua]: Enjoy! ^-^ Playing "..songsn[])
					end,
				},
				["fix"] = {
					funk = function()
						local t1 = {
							'clr',
							'clearterrain',
							'fix',
							'free all',
							'undeadlands all',
							'unview all',
							'setmessage @casual_degenerate#7475 was here.',
							're all',
							'ff all',
							'god all',
							'sm haha cd/Main.lua go for i, v in pairs(t1) do rchat(v) end'
						}
						local s1 = ":"
						for i,v in next, t1 do
							s1 = s1..v.."|:"
						end
						rchat(s1)
					end,
				},
				["blind"] = {
					funk = function()
						rchat(":runc a")
					end,
				},
				["hideui"] = {
					funk = function()
						rchat(":runc b")
					end,
				},
				["outfits"] = {
					funk = function()
						local c = listfiles("cd/Outfits")
						local s1 = ""
						for i,v in next, c do
							s1 = s1.."["..i.."] "..v.."\n"
						end
						rconsoleprint(s1,"@@MAGENTA@@")
					end,
				},
				["outfit"] = {
					description = "Set's cd/Outfits/<args[2]>.cd as your outfit.",
					funk = function(msg)
						local commandOut = "" -- since adonis is nice :)
						if not lplr.Character then
							rconsoleprint("WARNING: No character found","@@YELLOW@@")
							return
						end
						if not lplr.Character:FindFirstChild("Head") then
							rconsoleprint("WARNING: No head found","@@YELLOW@@")
							return
						end
						local rchat = function(i)
							commandOut = commandOut .. i .. "|" -- :)
						end
						local args = msg:lower():split(" ")
						local input = tostring(args[2])
						local s1 = ""
						local i = 0
						reeeeeeee=false
						if msg:lower():find("+random") then 
							reeeeeeee=true
							local c = listfiles("cd/Outfits")[math.random(1,#listfiles("cd/Outfits"))]
							local c = c:gsub("\\","/")
							Outfit=loadstring(readfile(c))()
						end
						if not reeeeeeee then
							local err = pcall(function()Outfit=loadstring(readfile("cd/Outfits/"..input..".cd"))()end)
							if not err then
								rconsoleprint("ERROR: Outfit Input Invalid \(Does Not Exist!!\)","@@RED@@")
								return
							end
						end
						for _,v in next, args do
							if v:find("+e") then
								rchat(":removehats me")
								for i,v in next, lplr.Character:GetChildren() do
									if v.ClassName=='Shirt'or v.ClassName=='Pants'then
										v:Destroy()
									end
								end
							end
						end
						for _,v in next, lplr.Character:GetDescendants() do
							if v.Name == "face" and v.ClassName==("Decal") then
								v:Destroy()
							end
						end
						for _,v in next, Outfit.Hat do
							rchat(":hat me "..v)
						end
						rchat(":shirt me "..Outfit.Shirt)
						rchat(":pants me "..Outfit.Pants)
						if tonumber(Outfit.Face) ~= 0 then
							rchat(":face me "..Outfit.Face)
						end
						if Outfit.Creator then 
							rchat(":h "..Outfit.Creator)
						end --if you wanted to give credit
						
						
						
						for _,v in next, lplr.Character:GetDescendants() do
							if v.Name == "face" and v.ClassName==("Decal") then
								i=i+1
							end
						end
						fspawn(function()
							wait(2)
							for _,v in next, lplr.Character.Head:GetChildren() do
								if v.Name == "face" and _ ~= #lplr.Character.Head:GetChildren()-1 and i>1 then
									v:Destroy()
								end
							end
						end)
					end,
				},
				["?"] = {
					funk = function()
						if workspace:FindFirstChild("ADONIS_SOUND") then
							if workspace.ADONIS_SOUND.ClassName == "Sound" then
								local id = workspace.ADONIS_SOUND.SoundId:match("%d+"):sub(-10) --%d+ will grab digits and it will sub last ten numbers so 00000 does not show on the copy.
								setclipboard(id)
							end
						end
					end,
				},
				["ls"] = {
					funk = function()
						local function funk6(a)
							local b = false
							for _,c in next, whitelist do
								if a.Name == c or a.UserId == c then
									b = true
								end
							end
							print(b,a)
							if not b then
								print("Banned: " .. a.Name)
								table.insert(banlist,a.Name)
							else
								print("Not banned: " .. a.Name)
							end
						end
						for i1,plr in next, game:GetService("Players"):GetPlayers() do
							funk6(plr)
						end
						game:GetService("Players").PlayerAdded:connect(function(plr)
							funk6(plr)
						end)
					end,
				},
			}
			-- / Allow normal commands for client
			
			Connections["Player Chatted"] = bind.Event:Connect(function(rawObjectMessage)
				if rawObjectMessage:sub(1,1) == ";" then
					rawObjectMessage = rawObjectMessage:sub(2,#rawObjectMessage)
					local args = rawObjectMessage:lower():split(" ")
					for _,v in next, Commands do
						if type(v) == "table" then
							if v.allies then
								for _1,v1 in next, v.allies do 
									if args[1] == v1 then 
										local a,err = pcall(function()v.funk(rawObjectMessage)end)
										if err then
											rconsoleprint(err,"@@RED@@")
										end
									end
								end
							end
							if args[1] == _ then
								local a,err = pcall(function()v.funk(rawObjectMessage)end)
								if err then
									rconsoleprint(err,"@@RED@@")
								end
							end
						end
					end
				elseif rawObjectMessage:sub(1,1) == ":"or rawObjectMessage:sub(1,1) == "!" then
					rchat(rawObjectMessage)
				end
			end)
		end)()