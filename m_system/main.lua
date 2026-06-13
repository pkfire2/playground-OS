-- handles basic stuff, loads in assets, settings, sets up the window and loads in other essential system files like the terminal and app loader

require("terminal")
require("apploader")

function love.load()
    -- state variables
    state = "startup"
    canEsc = true
    
    local cr_data = love.image.newImageData("m_assets/cursors/hand.png")
    cursor = love.mouse.newCursor(cr_data, 4, 1)
    love.mouse.setCursor(cursor)

    local defaultFont = love.graphics.newFont("m_assets/fonts/W95F.otf", 23)
    love.graphics.setFont(defaultFont)

    -- load in audio files
    startSound = love.audio.newSource("m_sound/m_sfx/startup.mp3", "static")
    openAppSound = love.audio.newSource("m_sound/m_sfx/openapp.mp3", "static")
    closeAppSound = love.audio.newSource("m_sound/m_sfx/closeapp.mp3", "static")
    notifSound = love.audio.newSource("m_sound/m_sfx/notif.mp3", "static")
    crashSound = love.audio.newSource("m_sound/m_sfx/crashsound.mp3", "static")
end

function love.update(dt)
    
end

function love.keypressed(key)
    if key == "escape" then
        if canEsc == true then
            love.event.quit()
        end
    end
end