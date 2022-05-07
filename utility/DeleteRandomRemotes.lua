for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
		if v:IsA("RemoteEvent") then
				v:Destroy();
		end;
end;
