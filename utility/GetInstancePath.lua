local function getInstancePath(folder, tableName, GetDescendants)
    if GetDescendants == true then
        for _i, instances in pairs(folder:GetDescendants()) do
            table.insert(tableName, instances:GetFullName());
        end;
    elseif GetDescendants == false then
        for _i, instances in pairs(folder:GetChildren()) do
            table.insert(tableName, folder:GetFullName());
        end;
    end;
end;
