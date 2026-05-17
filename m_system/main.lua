-- handles basic stuff, loads in assets, settings, sets up the window ad loads in other essential system files like the terminal and app loader

function love.load()
    -- state variables
    state = "startup"
    canEsc = true
    
    -- set up the window
    love.window.setMode(800, 800, {resizable=true})
    love.window.setFullscreen(false)
    love.window.setIcon(love.image.newImageData("m_assets/playIcon.png"))
    love.window.setTitle("playgroundtest")
    
    love.graphics.newImage("m_assets/hand.png")
    local cr_data = love.image.newImageData("m_assets/hand.png")
    cursor = love.mouse.newCursor(cr_data, 4, 1)
    love.mouse.setCursor(cursor)

    local defaultFont = love.graphics.newFont("fonts/W95F.otf", 16)
    love.graphics.setFont(defaultFont)

    -- load in audio files
    love.audio.newSource("m_sfx/startsound.mp3", "static")
    love.audio.newSource("m_sfx/openapp.mp3", "static")
    love.audio.newSource("m_sfx/closeapp.mp3", "static")
    love.audio.newSource("m_sfx/notif.mp3", "static")
    love.audio.newSource("m_sfx/crashsound.mp3", "static")


end

function love.update(dt)
    
end

function love.draw()
    love.graphics.setBackgroundColor(0.945, 0.910, 0.835)
    love.graphics.setColor(0, 0, 0)
    love.graphics.print("press ESC to end the program", 0, 0)
end

function love.keypressed(key)
    if key == "escape" then
        if canEsc == true then
            love.event.quit()
        end
    end
end