-- JOE SOMETHING IDK
-- SAY :coolcmds FOR A LIST OF COMMANDS
-- enjoy ig
	
local say = function(...)game.Players:Chat(...)end
local prefix = ":"

function notif(msg)
game.StarterGui:SetCore("SendNotification", {
Title = "Joe Something Idk"; 
Text = msg; 
Duration = 3;
})
end

game.Players.PlayerAdded:connect(function(player)
    notif("Hello.")
end)


game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 8) == prefix.."prefix " then
prefix = string.sub(msg:lower(), 9, 9)
notif("Prefix set to '"..string.sub(msg:lower(), 9, 9).."'")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 9) == prefix.."coolcmds" then wait(.1)
notif("Check console for commands.")
wait(.1)
print("---------------------MAIN COMMANDS--------------------------")
print(prefix.."prefix -- changes the command prefix")
print(prefix.."rj -- makes you rejoin")
print(prefix.."nok -- makes you not die by obby")
print(prefix.."resetpads -- reset the admin pads")
print(prefix.."movebp -- moves the baseplate")
print(prefix.."movehouse -- moves the house")
print(prefix.."house -- tps you to the house")
print(prefix.."pads -- tps you to pads")
print(prefix.."afk -- tells everyone you're afk")
print(prefix.."unafk -- tells everyone you're not afk")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 4) == prefix.."rj" then wait(.1)
local place = game:GetService("TeleportService")
local player = game:GetService("Players").LocalPlayer
place:Teleport(game.PlaceId, player)
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 6) == prefix.."nok" then wait(.1)
game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump.TouchInterest:destroy()
game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump1.TouchInterest:destroy()
game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump2.TouchInterest:destroy()
game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump3.TouchInterest:destroy()
game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump4.TouchInterest:destroy()
game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump5.TouchInterest:destroy()
game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump6.TouchInterest:destroy()
game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump7.TouchInterest:destroy()
game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump8.TouchInterest:destroy()
game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump9.TouchInterest:destroy()
wait(.1)
notif("You can now walk over obby.")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 7) == prefix.."movebp" then wait(.1)
notif("Moving the baseplate..")
say("respawn me")
wait()
say("sit me")
wait(.9)
say("punish me")
wait(.3)
say("unpunish me")
wait(.1)
say("skydive me")
wait(.1)
say("reset me")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 10) == prefix.."movehouse" then wait(.1)
notif("Moving house..")
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-55.065, 5.747, 68.674))
wait()
say("sit me")
wait(.9)
say("punish me")
wait(.3)
say("unpunish me")
wait(.1)
say("skydive me")
wait(.1)
say("reset me")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 10) == prefix.."resetpads" then wait(.1)
notif("Resetting pads..")
wait(0.1)
fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
notif("Resetted pads.")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 5) == prefix.."pads" then
notif("Tped to pads")
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-32.7, 8.22999954, 94.5))
end
	
if string.sub(msg:lower(), 0, 6) == prefix.."house" then
notif("Tped to house")
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-28.6829948, 8.2299995, 66.4913253))
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 4) == prefix.."afk" then
	notif("Telling everyone you're afk..")
	say("m i'm afk now..")
	say("blind all")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 6) == prefix.."unafk" then
	notif("Telling everyone you're back..")
	say("m i'm back.")
	say("unblind all")
end
end)
