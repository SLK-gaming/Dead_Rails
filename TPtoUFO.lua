-- Kích hoạt script turret ngồi
loadstring(game:HttpGet("https://raw.githubusercontent.com/SLK-gaming/Dead-Rails/refs/heads/main/turretbypass.lua"))()

-- Delay ngắn cho turretbypass hoạt động
task.wait(1)

-- Kiểm tra trạng thái ngồi
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

if humanoid.Sit then
	-- Nếu đã ngồi thì teleport đến vị trí đích
	local rootPart = character:WaitForChild("HumanoidRootPart")
	rootPart.CFrame = CFrame.new(904.1, 12.1, -39468.0)
else
	warn("[TurretTeleport] Chưa ngồi được. Dừng lại, không dịch chuyển.")
end
