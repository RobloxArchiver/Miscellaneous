--> Used to create and edit MD files, placeholder and super primitive!
--> Written with Shitsploits in mind

local function format(...)
    return tostring(...) .. "\n"
end

function Comment(text)
    local text = format(text)
    
    print("<!-- " .. text .. " -->")
end

function Header(text, level)
    local level = level or 1
    local text = format(text)
    
    if level == 1 then
        print("# " .. text)
    elseif level == 2 then
        print("## " .. text)
    elseif level == 3 then
        print("### " .. text)
	elseif level == 4 then
		print("#### " .. text)
    elseif level == 5 then
		print("##### " .. text)
	elseif level == 6 then
	    print("###### " .. text)
	else
        error("'level' is an invalid number")
        return
    end
end

function Text(text)
    print(format(text))
end
