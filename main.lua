local Instance = require("instancer.instance")

function love.load()
    local playerImage = love.graphics.newImage("images/player.png")

    ins = Instance.new("Sprite")
    ins.Sprite = playerImage
    ins.Position.X = 0
    ins.Position.Y = 0
    ins.Transparency = 0.5

    ins2 = Instance.new("Sprite")
    ins2.Sprite = playerImage
    ins2.Position.X = 100
    ins2.Position.Y = 20
    ins2.Name = "thing2"
end
local drawn = false
function love.draw()
    ins:draw()
    ins2:draw()
end

function love.update(dt)
end
