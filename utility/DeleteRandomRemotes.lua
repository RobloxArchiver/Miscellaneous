--> Made for specific game, edit is now universal.

local Blacklist = { "TestRemote" }

for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
    if (v:IsA("RemoteEvent") or v:IsA("RemoteFunction")) and table.find(Blacklist, v.Name) then
        v:Destroy()
    end
end
