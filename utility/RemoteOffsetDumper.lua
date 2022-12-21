--[[

    Console Library is considered deprecated, removed.

]]

if rconsoleprint then
    rconsoleprint("local Dump = {\n");

    for _i, offset in pairs(game.ReplicatedStorage:GetDescendants()) do
        local OffsetName = string.lower(offset.Name);
        local FullOffsetName = offset.Name;
        local OffsetPath = offset:GetFullName();

        if offset:IsA("BindableEvent") then
            if offset.Parent ~= game.ReplicatedStorage.DefaultChatSystemChatEvents then
                rconsoleprint("    " .. OffsetName .. " = game." .. OffsetPath .. "[\"" .. FullOffsetName .. "\"]; --> BindableEvent\n");
            end;
        elseif offset:IsA("RemoteEvent") then
            if offset.Parent ~= game.ReplicatedStorage.DefaultChatSystemChatEvents then
                rconsoleprint("    " .. OffsetName .. " = game." .. OffsetPath .. "[\"" .. FullOffsetName .. "\"]; --> RemoteEvent\n");
            end;
        elseif offset:IsA("RemoteFunction") then
            if offset.Parent ~= game.ReplicatedStorage.DefaultChatSystemChatEvents then
                rconsoleprint("    " .. OffsetName .. " = game." .. OffsetPath .. "[\"" .. FullOffsetName .. "\"]; --> RemoteFunction\n");
            end;
        end;
    end;

    rconsoleprint("}\n", "blue");
else
    print("rconsoleprint not supported!");
end;
