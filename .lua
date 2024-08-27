-- Defina as posições de destino para teletransportar o jogador
local positions = {
    Vector3.new(13766.4677734375, 0.6596039533615112, 38885.03125), -- Primeira posição
}

-- Índice atual da posição
local currentIndex = 1

-- Função para teletransportar o jogador
local function teleportPlayer()
    local player = game.Players.LocalPlayer
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(positions[currentIndex])
        -- Alterna para a próxima posição
        currentIndex = (currentIndex % #positions) + 1
    else
        warn("O jogador ou a parte do corpo não foram encontrados.")
    end
end

-- Teletransporta o jogador em loop
while true do
    teleportPlayer()
    wait(0) -- Espera 5 segundos antes de teletransportar novamente (ajuste conforme necessário)
end

wait(1)

local player = game.Players.LocalPlayer

local function resetCharacter()
    if player and player.Character then
        player.Character:BreakJoints()
    end
end

while true do
    resetCharacter()
    wait(1.4) -- Wait for 30 seconds before resetting again
end

-- Notification library
 local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/CLEITIN6966/executarscriptsdobrookhaven/main/notificação.lua"))();
 local Notify = Notification.Notify;

 Notify({
		 Description = "by CLEITI6966";
		 Title = "load success";
		 Duration = 9;
		 
});
