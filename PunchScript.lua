CanDoDmg = true
Keybind = "f"
dmg = 10

local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()

mouse.KeyDown:Connect (function(key)
	if key == Keybind then
		local anim = script.Parent.Humanoid:LoadAnimation(script.Animation)
		anim:Play()
		script.Parent.RightHand.Touched:connect (function(hit)
			if hit.Parent.Humanoid and CanDoDmg == true then
				hit.Parent.Humanoid:TakeDamage(dmg)
				CanDoDmg = false
				wait(1)
				CanDoDmg = true
			end
		end)
	end
end)
