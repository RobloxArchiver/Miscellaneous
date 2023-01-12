--[[
    This is all temporary until I get home and actually work on it lol.
]]

local UnanchoredParts = {}

--> Creates a event constantly sending the local position.
local function SendPosition(Coordinate)
    local self = { Coord = Coordinate or CFrame.new(0, 0, 0), Event = nil }

    self.Event = game:GetService("RunService").Heartbeat:Connect(function(t)
        rnet.sendposition(self.Coord)
    end)

    return self
end

--> Returns true it not a player, false if it is.
local function PlayerCheck(instance)
    for i,v in pairs(game.Players:GetChildren()) do
        if instance.Parent.Name == v.Name then
            return false
        end
    end
    
    return true
end

--> Adds all the unanchored parts (that can presumably be fucked with) to the list.
for i,v in pairs(workspace:GetDescendants()) do
    if v:IsA("Part") and v.Anchored == false and v.CanCollide == true and IsPlayer(v) then
        print("Found '" .. v.Name .. "' adding to the list!")
        table.insert(UnanchoredParts, v)
    end
end

--> Gotta figure out what to do here now :/
for i,v in pairs(UnanchoredParts) do
    local Humanoid = game.Players.LocalPlayer.Character.HumanoidRootPart
    local SavedCFrame = Humanoid.CFrame
    local Net = SendPos(v.CFrame)
    
    repeat
        Net.Coord = v.CFrame
    until v.Position.Magnitude < 5
    
    net.Event:Disconnect()
end
