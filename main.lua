local Instance = require("instancer.instance")

local playerImage

function love.load()
    playerImage = love.graphics.newImage("images/player.png") -- Load the image once

    ins = Instance.new("Sprite")
    ins.Sprite = playerImage
    ins.Position.X = 0
    ins.Position.Y = 0

    ins2 = Instance.new("Sprite")
    ins2.Sprite = playerImage
    ins2.Position.X = 100
    ins2.Position.Y = 20
    ins2.Name = "thing2"
end
local drawn = false
function love.draw()
    if drawn == false then 
        drawn = false
        ins:draw()
        ins2:draw()
    end
    
end

function love.update(dt)
end
