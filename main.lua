local composer = require("composer")
audio.reserveChannels(3)
audio.setVolume(0.001, {channel = 3})
system.setIdleTimer(false)
display.setStatusBar(display.HiddenStatusBar)
system.activate("multitouch")
composer.gotoScene("menu")
