
function love.load()
    -- controls the state of vomOS. Ex: boot, app, etc.
    state = "startup"

    canEsc = true
   
    love.window.setFullscreen(false)

    love.graphics.newImage("m_assets/cursor.png")
    
    local cr_data = love.image.newImageData("m_assets/cursor.png")
    cursor = love.mouse.newCursor(cr_data, 6, 6)
    love.mouse.setCursor(cursor)

    love.window.setIcon(love.image.newImageData("m_assets/cursor.png"))
    love.window.setTitle("playground test window")
end

function love.update(dt)
    
end

function love.draw()
    love.graphics.setBackgroundColor(0.945, 0.910, 0.835)
    love.graphics.setColor(0, 0, 0)
    love.graphics.print("press ESC to end the program", 0, 20)
end

function love.keypressed(key)
    if key == "escape" then
        if canEsc == true then
            love.event.quit()
        end
    end
end
