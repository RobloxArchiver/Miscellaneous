--> Used to create and edit MD files, placeholder and super primitive!

local function format(...)
    return tostring(...) .. "\n"
end

--> The idea is super super simple, just a bunch of functions to make writing MD files in lua cooler!!
--> Written for Exploits (Syn, SW, etc) will make one for base luau (latest ver)
function Header(text, level)
    local level = level or 1
    local text = format(text)
    
    if level == 1 then
        return "# " .. text
    elseif level == 2 then
        return "## " .. text
    elseif level == 3 then
        return "### " .. text
    else
        error("'level' is an invalid number")
        return
    end
end
