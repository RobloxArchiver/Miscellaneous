local function isOccupied(instance)
    if instance:IsA("Seat") then
        if instance.Occupant then
            return true
        elseif not instance.Occupant then
            return false 
        end
    end
end

return isOccupied
