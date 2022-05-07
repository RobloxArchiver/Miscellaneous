local HumanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart

print(HumanoidRootPart.CFrame.X .. ", " .. HumanoidRootPart.CFrame.Y .. ", " .. HumanoidRootPart.CFrame.Z)
setclipboard("CFrame.new(" .. tostring(math.floor(HumanoidRootPart.CFrame.X) .. ", " .. math.floor(HumanoidRootPart.CFrame.Y) .. ", " .. math.floor(HumanoidRootPart.CFrame.Z)) .. ")")
