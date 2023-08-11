local composer = require("composer")
local scene = composer.newScene()

local function gotoOds12()
    composer.gotoScene("ods12", {time = 300, effect = "crossFade"})
end

local function gotoInfo()
    composer.gotoScene("info", {time = 500, effect = "crossFade"})
end

function scene:create(event)
    local sceneGroup = self.view
    local backGroup = display.newGroup()
    local mainGroup = display.newGroup()
    local uiGroup = display.newGroup()
    sceneGroup:insert(backGroup)
    sceneGroup:insert(mainGroup)
    sceneGroup:insert(uiGroup)

    local bg = display.newImageRect(backGroup, "imagens/bg.png", 1200/2, 630/2)
    bg.x, bg.y = display.contentCenterX, display.contentCenterY

    local play = display.newImageRect(backGroup, "imagens/play.png", 360/2, 360/2)
    play.x, play.y = display.contentCenterX, display.contentCenterY + 115

    local botaoInfo = display.newImageRect(backGroup, "imagens/iconInfo.png", 600/12, 600/12)
    botaoInfo.x, botaoInfo.y = 445, 40
    transition.to(botaoInfo, {iterations = -1, time = 5000, rotation = -1000})

    play:addEventListener("tap", gotoOds12)
    botaoInfo:addEventListener("tap", gotoInfo)
end

function scene:hide(event)
    if (event.phase == "did") then
    end
end

scene:addEventListener("create", scene)
scene:addEventListener("hide", scene)

return scene
