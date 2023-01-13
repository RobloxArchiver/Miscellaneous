--> Formula for Magnitude

local Player = Players.Random
local LocalPlayer = Players.LocalPlayer

--> First you subtract them
local Sub = (Player.Position - LocalPlayer.Position)
local Mag = Sub.Magnitude --> Add .Magnitude to get the magnitude (in studs)

if Mag < 5 then
  print("Near!")
elseif Mag > 5 then
  print("Far!")
end
