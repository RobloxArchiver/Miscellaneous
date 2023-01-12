local HumanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart

print("Copied: " .. HumanoidRootPart.CFrame.X .. ", " .. HumanoidRootPart.CFrame.Y .. ", " .. HumanoidRootPart.CFrame.Z)
setclipboard("game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.new(" .. tostring(math.floor(HumanoidRootPart.CFrame.X) .. ", " .. math.floor(HumanoidRootPart.CFrame.Y) .. ", " .. math.floor(HumanoidRootPart.CFrame.Z)) .. ")")