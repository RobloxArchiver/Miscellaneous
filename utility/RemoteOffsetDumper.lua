local console = loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxArchiver/Console/main/src/main.lua"))():Init(true, "Remote-Offset Dumper");
local blacklist = ("OnNewMessage" or "OnMessageDoneFiltering" or "OnNewSystemMessage" or "OnChannelJoined" or "OnChannelLeft" or "OnMuted" or "OnUnmuted" or "OnMainChannelSet" or "ChannelNameColorUpdated" or "SayMessageRequest" or "GetInitDataRequest" or "MutePlayerRequest" or "UnMutePlayerRequest")

--> Blacklist Soon

if rconsoleprint then
    console.log("local remote_offsets = {", "blue");

    for _i, offset in pairs(game.ReplicatedStorage:GetDescendants()) do
        local OffsetName = string.lower(offset.Name);
        local FullOffsetName = offset.Name;
        local OffsetPath = offset:GetFullName();

        if offset:IsA("BindableEvent") then
            console.log("    " .. OffsetName .. " = game." .. OffsetPath .. "[\"" .. FullOffsetName .. "\"]; --> BindableEvent", "light_green");
        elseif offset:IsA("RemoteEvent") then
            console.log("    " .. OffsetName .. " = game." .. OffsetPath .. "[\"" .. FullOffsetName .. "\"]; --> RemoteEvent", "yellow");
        elseif offset:IsA("RemoteFunction") then
            console.log("    " .. OffsetName .. " = game." .. OffsetPath .. "[\"" .. FullOffsetName .. "\"]; --> RemoteFunction", "light_magenta");
        end;
    end;

    console.log("}", "blue");
else
    print("rconsoleprint not supported!");
end;
