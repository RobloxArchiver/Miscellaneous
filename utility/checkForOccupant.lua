function checkForOccupant(inst)
    if inst:IsA("Seat") then
        if inst.Occupant then
            return true;
        else
            return false;
        end;
    else
        error("Instance is not Seat");
        return;
    end;
end;
