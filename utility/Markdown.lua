--> Used to create and edit MD files, placeholder and super primitive!
--> Written for luau (base)
--> NOT WITH EXPLOITS IN MIND

local function format(...)
    return tostring(...) .. "\n"
end

function Comment(text: string)
	local text = format(text)

	print("<!-- " .. text .. " -->")
end

function Header(text: string, level: number)
    local level = level or 1
    local text = format(text)
    
    if level == 1 then
        print("# " .. text)
    elseif level == 2 then
        print("## " .. text)
    elseif level == 3 then
        print("### " .. text)
    else
        error("'level' is an invalid number")
        return
    end
end
