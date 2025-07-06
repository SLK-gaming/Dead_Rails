local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Hàm teleport
local function TeleportTo(pos)
    local character = player.Character or player.CharacterAdded:Wait()
    local rootPart = character:WaitForChild("HumanoidRootPart")
    rootPart.CFrame = CFrame.new(pos)
end

-- Tọa độ đầu tiên
local firstPosition = Vector3.new(164.8, 19.2, -9112.1)
-- Tọa độ thứ hai
local secondPosition = Vector3.new(904.1, 12.1, -39468.0)

-- Bước 1: Teleport đến tọa độ đầu tiên
TeleportTo(firstPosition)

-- Bước 2: Đợi 2 giây rồi chạy script turret bypass
task.delay(1, function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SLK-gaming/Dead-Rails/refs/heads/main/turretbypass.lua"))()

    -- Bước 3: Đợi thêm 2 giây rồi teleport đến tọa độ thứ hai
    task.delay(1, function()
        TeleportTo(secondPosition)
    end)
end)
