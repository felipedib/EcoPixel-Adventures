local composer = require("composer")
local scene = composer.newScene()

local function gotoMenu()
    composer.gotoScene("menu", { time = 500, effect = "crossFade" })
end

function scene:create(event)
    local sceneGroup = self.view

    backGroup = display.newGroup()
    sceneGroup:insert(backGroup)

    mainGroup = display.newGroup()
    sceneGroup:insert(mainGroup)

    uiGroup = display.newGroup()
    sceneGroup:insert(uiGroup)

    local bg = display.newImageRect(backGroup, "imagens/ods.jpeg", 850 / 1.8, 450 / 2)
    bg.x, bg.y = display.contentCenterX, display.contentCenterY

    local botaoVoltar = display.newImageRect(mainGroup, "imagens/voltar.png", 121 / 3, 91 / 3)
    botaoVoltar.x, botaoVoltar.y = 35, 0

    botaoVoltar:addEventListener("tap", gotoMenu)
end

function scene:show(event)
    local phase = event.phase
    if (phase == "did") then
        -- Code here runs when the scene is entirely on screen
        -- physics.start ()
        -- Runtime:addEventListener ("collision", onCollision)
        -- gameLoopTimer = timer.performWithDelay (700, gameLoop, 0)
        -- audio.play (musicaFundo, {channel = 2, loops = -1})
    end
end

function scene:hide(event)
    local phase = event.phase
    if (phase == "did") then
        -- Code here runs immediately after the scene goes entirely off screen
        -- Runtime:removeEventListener ("collision", onCollision)
        -- physics.pause( )
        -- audio.stop (1)
        -- composer.removeScene ("game")
    end
end

function scene:destroy(event)
    -- Code here runs prior to the removal of scene's view
    -- audio.dispose(somExplosao)
    -- audio.dispose(somTiro)
    -- audio.dispose(musicaFundo)
end

scene:addEventListener("create", scene)
scene:addEventListener("show", scene)
scene:addEventListener("hide", scene)
scene:addEventListener("destroy", scene)

return scene
