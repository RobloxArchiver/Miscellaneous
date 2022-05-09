local console = loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxArchiver/Console/main/src/main.lua"))():Init(true, "Remote-Offset Dumper");

if rconsoleprint then
    console.log("local" .. getfenv().tableName .. "= {", "blue");

    for _i, offset in pairs(game.ReplicatedStorage:GetDescendants()) do
        local OffsetName = string.lower(offset.Name);
        local FullOffsetName = offset.Name;
        local OffsetPath = offset:GetFullName();

        if offset:IsA("BindableEvent") then
            if offset.Parent ~= game.ReplicatedStorage.DefaultChatSystemChatEvents then
                console.log("    " .. OffsetName .. " = game." .. OffsetPath .. "[\"" .. FullOffsetName .. "\"]; --> BindableEvent", "light_green");
            end;
        elseif offset:IsA("RemoteEvent") then
            if offset.Parent ~= game.ReplicatedStorage.DefaultChatSystemChatEvents then
                console.log("    " .. OffsetName .. " = game." .. OffsetPath .. "[\"" .. FullOffsetName .. "\"]; --> RemoteEvent", "yellow");
            end;
        elseif offset:IsA("RemoteFunction") then
            if offset.Parent ~= game.ReplicatedStorage.DefaultChatSystemChatEvents then
                console.log("    " .. OffsetName .. " = game." .. OffsetPath .. "[\"" .. FullOffsetName .. "\"]; --> RemoteFunction", "light_magenta");
            end;
        end;
    end;

    console.log("}", "blue");
else
    print("rconsoleprint not supported!");
end;
