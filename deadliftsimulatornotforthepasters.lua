-- Gui to Lua
-- Version: 3.2

-- Instances:

local fece = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Label = Instance.new("TextLabel")
local Text = Instance.new("TextBox")
local Enter = Instance.new("TextButton")

--Properties:

fece.Name = "fece"
fece.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
fece.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = fece
Frame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(.4, 0, -1, 0)
Frame.Size = UDim2.new(0.199910149, 0, 0.099605523, 0)
Frame.Active = true
Frame.Draggable = true

Instance.new("UICorner",Frame)

Label.Name = "Label"
Label.Parent = Frame
Label.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Label.BackgroundTransparency = 1.000
Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
Label.BorderSizePixel = 0
Label.Size = UDim2.new(1, 0, 0.237623766, 0)
Label.Font = Enum.Font.Unknown
Label.Text = "Godware | Get key at  discord.gg/vJTVvSxy6V"
Label.TextColor3 = Color3.fromRGB(255, 255, 255)
Label.TextSize = 14.000

Text.Name = "Text"
Text.Parent = Frame
Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text.BackgroundTransparency = 0.950
Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
Text.BorderSizePixel = 0
Text.Position = UDim2.new(0.0179775283, 0, 0.247524753, 0)
Text.Size = UDim2.new(0.961797774, 0, 0.297029704, 0)
Text.Font = Enum.Font.SourceSans
Text.PlaceholderColor3 = Color3.fromRGB(62, 62, 62)
Text.PlaceholderText = "Put key from discord here"
Text.Text = ""
Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Text.TextScaled = true
Text.TextSize = 14.000
Text.TextWrapped = true

Instance.new("UICorner",Text)

Enter.Name = "Enter"
Enter.Parent = Frame
Enter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Enter.BackgroundTransparency = 0.950
Enter.BorderColor3 = Color3.fromRGB(0, 0, 0)
Enter.BorderSizePixel = 0
Enter.Position = UDim2.new(0.0179775283, 0, 0.633663356, 0)
Enter.Size = UDim2.new(0.961797774, 0, 0.287128717, 0)
Enter.Font = Enum.Font.Unknown
Enter.Text = "Continue"
Enter.TextColor3 = Color3.fromRGB(255, 255, 255)
Enter.TextScaled = true
Enter.TextSize = 14.000
Enter.TextWrapped = true

Instance.new("UICorner",Enter)

local ti = TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,false,0)
game:GetService("TweenService"):Create(Frame,ti,{Position = UDim2.new(.4,0,.4,0)}):Play()

local key = loadstring(game:HttpGet("https://pastebin.com/raw/qvnCiJ6S"))()

Enter.MouseButton1Click:Connect(function()
	if Text.text == key then
        local ti2 = TweenInfo.new(.5,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,1,false,0)
        game:GetService("TweenService"):Create(Enter,ti2,{BackgroundColor3 = Color3.fromRGB(0,200,0),Transparency = 0}):Play()
        wait(.6)
        game:GetService("TweenService"):Create(Enter,ti2,{BackgroundColor3 = Color3.fromRGB(255, 255, 255),Transparency = .95}):Play()
        Enter.TextColor3 = Color3.fromRGB(255, 255, 255)
        Enter.TextTransparency = 0
        game:GetService("TweenService"):Create(Frame,ti,{Position = UDim2.new(.4,0,2,0)}):Play()
        wait(1)
		fece:Destroy()
        if game.PlaceId == 14131866367 then
            local CoreGui = game:GetService("StarterGui")
        
            CoreGui:SetCore("SendNotification", {
                Title = "GODWARE";
                Text = string.lower(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name).." LOADED!";
                Duration = 1000;
                --Callback here
                Button1 = "Ok";
            })
        
            if getgenv().window ~= nil then
                getgenv().window.Parent = workspace
            end
            
            local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/cueshut/saves/main/criminality%20paste%20ui%20library'))()
            
            -- // Window \\ --
            getgenv().window = library.new('godware | '..string.lower(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name).. " | discord.gg/vJTVvSxy6V", 'leadmarker')
            
            local autotab = window.new_tab('rbxassetid://10098013519')
            
            local autosect = autotab.new_section('autofarm main')
            
            -- // Sector \\ --
            local autosecr = autosect.new_sector('autofarm', 'Left')
            
        
            local tptab = window.new_tab('rbxassetid://6723742952')
            
            local tpsect = tptab.new_section('teleports')
            
            -- // Sector \\ --
            local tpsecr = tpsect.new_sector('teleports', 'Left')
        
        
            local pottab = window.new_tab('rbxassetid://129698026')
            
            local potsect = pottab.new_section('auto potions')
            
            -- // Sector \\ --
            local potsecr = potsect.new_sector('auto potions main', 'Left')
        
            local mtab = window.new_tab('rbxassetid://14134158045')
            
            local msec = mtab.new_section('misc')
            
            -- // Sector \\ --
            local msecr = msec.new_sector('misc main', 'Left')
        
            local ws = 16
            msecr.element('Slider', 'walkspeed', {default = {min = 1, max = 128, default = 16}}, function(v)
                ws = v.Slider
            end)
            msecr.element('Slider', 'jumpheight', {default = {min = 1, max = 64, default = 7}}, function(v)
                game.Players.LocalPlayer.Character.Humanoid.JumpHeight = v.Slider
            end)
            msecr.element('Slider', 'gravity', {default = {min = 1, max = 500, default = 196}}, function(v)
                workspace.Gravity = v.Slider
            end)
             
        
        
            local superlucky = false
            potsecr.element('Toggle', 'auto superlucky', false, function(plr)
                superlucky = plr.Toggle -- :nerd:
            end)
        
            local ultralucky = false
            potsecr.element('Toggle', 'auto ultralucky', false, function(plr)
                ultralucky = plr.Toggle -- :nerd:
            end)
        
            local wins = false
            potsecr.element('Toggle', 'auto x3wins', false, function(plr)
                wins = plr.Toggle -- :nerd:
            end)
        
            local stren = false
            potsecr.element('Toggle', 'auto x3strength', false, function(plr)
                stren = plr.Toggle -- :nerd:
            end)
        
        
        
        
            local lp = game.Players.LocalPlayer
        
            local tween_s = game:GetService('TweenService')
            local tweeninfo = TweenInfo.new(0.01,Enum.EasingStyle.Linear)  
            function bypass_teleport(v)
                if lp.Character and 
                lp.Character:FindFirstChild('HumanoidRootPart') then
                    local cf = CFrame.new(v)
                    local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                    a:Play()
                    -- a.Completed:Wait()
                    -- print('Teleporting Done!')
                end
            end
        
            tpsecr.element('Button', 'park', false, function()
                bypass_teleport(Vector3.new(-0.20970091223716736, 5.571778297424316, -0.30361005663871765))
            end)
        
            tpsecr.element('Button', 'desert', false, function()
                bypass_teleport(Vector3.new(16.669198989868164, 4.524625778198242, -693.3619384765625))
            end)
        
            tpsecr.element('Button', 'winter', false, function()
                bypass_teleport(Vector3.new(698.57421875, 4.5246262550354, -726.526123046875))
            end)
    
            tpsecr.element('Button', 'lava', false, function()
                bypass_teleport(Vector3.new(700.7571411132812, 4.5246262550354, 4.891197204589844))
            end)
    
            tpsecr.element('Button', 'candy', false, function()
                bypass_teleport(Vector3.new(700.0177001953125, 4.5246262550354, 634.6568603515625))
            end)
            
            local autofarm = false
            autosecr.element('Toggle', 'autofarm', false, function(plr)
                autofarm = plr.Toggle -- :nerd:
            end)
            
            local autogift = false
            autosecr.element('Toggle', 'autogift', false, function(plr)
                autogift = plr.Toggle -- :nerd:
            end)
            
            local autospin = false
            autosecr.element('Toggle', 'autospin', false, function(plr)
                autospin = plr.Toggle -- :nerd:
            end)
        
            local autorebirth = false
            autosecr.element('Toggle', 'autorebirth', false, function(plr)
                autorebirth = plr.Toggle -- :nerd:
            end)
            
            local autoredaily = false
            autosecr.element('Toggle', 'autodaily', false, function(plr)
                autoredaily = plr.Toggle -- :nerd:
            end)
            
            game.RunService.RenderStepped:Connect(function()
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = ws
            end)
    
            while wait() do
                if wins then
                    local args = {
                        [1] = "x3Wins",
                        [2] = 1
                    }
                    
                    game:GetService("ReplicatedStorage").Remotes.Events.UseBoost:FireServer(unpack(args))
        
                    local args = {
                        [1] = "x3Wins",
                        [2] = 2
                    }
                    
                    game:GetService("ReplicatedStorage").Remotes.Events.UseBoost:FireServer(unpack(args))
        
                    local args = {
                        [1] = "x3Wins",
                        [2] = 3
                    }
                    
                    game:GetService("ReplicatedStorage").Remotes.Events.UseBoost:FireServer(unpack(args))
                end
                if stren then
                    local args = {
                        [1] = "x3Strength",
                        [2] = 1
                    }
                    
                    game:GetService("ReplicatedStorage").Remotes.Events.UseBoost:FireServer(unpack(args))
                    local args = {
                        [1] = "x3Strength",
                        [2] = 2
                    }
                    
                    game:GetService("ReplicatedStorage").Remotes.Events.UseBoost:FireServer(unpack(args))
                    local args = {
                        [1] = "x3Strength",
                        [2] = 3
                    }
                    
                    game:GetService("ReplicatedStorage").Remotes.Events.UseBoost:FireServer(unpack(args))
                end
                if ultralucky then
                    local args = {
                        [1] = "UltraLuck",
                        [2] = 1
                    }
                    
                    game:GetService("ReplicatedStorage").Remotes.Events.UseBoost:FireServer(unpack(args))
        
                    local args = {
                        [1] = "UltraLuck",
                        [2] = 2
                    }
                    
                    game:GetService("ReplicatedStorage").Remotes.Events.UseBoost:FireServer(unpack(args))
        
                    local args = {
                        [1] = "UltraLuck",
                        [2] = 3
                    }
                    
                    game:GetService("ReplicatedStorage").Remotes.Events.UseBoost:FireServer(unpack(args))
                end
                if superlucky then
                    local args = {
                        [1] = "SuperLuck",
                        [2] = 1
                    }
                    
                    game:GetService("ReplicatedStorage").Remotes.Events.UseBoost:FireServer(unpack(args))
                    local args = {
                        [1] = "SuperLuck",
                        [2] = 2
                    }
                    
                    game:GetService("ReplicatedStorage").Remotes.Events.UseBoost:FireServer(unpack(args))
                    local args = {
                        [1] = "SuperLuck",
                        [2] = 3
                    }
                    
                    game:GetService("ReplicatedStorage").Remotes.Events.UseBoost:FireServer(unpack(args))
                end
        
                if autoredaily then
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Events"):WaitForChild("ClaimDailys"):FireServer()
                end
        
                if autorebirth then
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Events"):WaitForChild("RequestRebirth"):FireServer()
                end
        
                if autofarm then
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Events"):WaitForChild("Click"):FireServer(true)
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Events"):WaitForChild("AutoTrain"):FireServer(true)
                end
            
                if autogift then
                    for _ = 1,9 do
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Events"):WaitForChild("ClaimTReward"):FireServer(_)
                    end
                end
            
                if autospin then
                    for _ = 1,9 do
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Events"):WaitForChild("ClaimSpin"):FireServer(_)
                    end
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Events"):WaitForChild("SpinWheel"):FireServer()
                end
            end
        else
            local CoreGui = game:GetService("StarterGui")
        
            CoreGui:SetCore("SendNotification", {
                Title = "GODWARE";
                Text = "You are not in the supported game";
                Duration = 1000;
                --Callback here
                Button1 = "Ok";
            })
        end
    else
        local CoreGui = game:GetService("StarterGui")
        
            CoreGui:SetCore("SendNotification", {
                Title = "GODWARE";
                Text = "Invalid key get! it at discord.gg/vJTVvSxy6V";
                Duration = 1000;
                --Callback here
                Button1 = "Ok";
            })
        local ti2 = TweenInfo.new(.5,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,1,false,0)
        game:GetService("TweenService"):Create(Enter,ti2,{BackgroundColor3 = Color3.fromRGB(155,0,0),Transparency = 0}):Play()
        wait(.6)
        game:GetService("TweenService"):Create(Enter,ti2,{BackgroundColor3 = Color3.fromRGB(255, 255, 255),Transparency = .95}):Play()
        Enter.TextColor3 = Color3.fromRGB(255, 255, 255)
        Enter.TextTransparency = 0
	end
end)
