assert(rconsoleprint, "'rconsoleprint' is not supported by your exploit")

rconsoleclear()
rconsoleprint("local remotes = {\n")

for _, remote in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
    local RemoteName = string.lower(remote.Name)
    local FullRemoteName = remote.Name
    local RemotePath = remote:GetFullName()

    if remote.Parent ~= game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents then
        if remote:IsA("RemoteEvent") or remote:IsA("RemoteFunction") then
            rconsoleprint("    [\"" .. RemoteName .. "\"] = game." .. RemotePath .. "[\"" .. FullRemoteName .. "\"]; \n")
        end
    end
end

rconsoleprint("}\n")