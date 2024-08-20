-- LocalScript dentro de StarterPlayerScripts

-- Defina a posição de destino para teleportar o jogador
local targetPosition = Vector3.new(13766.4677734375, 0.6596039533615112, 38885.03125) -- Altere para a posição desejada

-- Função para teletransportar o jogador
local function teleportPlayer()
    local player = game.Players.LocalPlayer
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
    else
        warn("O jogador ou a parte do corpo não foram encontrados.")
    end
end

-- Teletransporta o jogador em loop
while true do
    teleportPlayer()
    wait(0) -- Espera 5 segundos antes de teletransportar novamente (ajuste conforme necessário)
end
