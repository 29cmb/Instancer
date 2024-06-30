local Instance = require("instancer.instance")
function love.load()
    local ins = Instance.new()
    print(ins:getName())
    local ins2 = Instance.new()
    ins2.Name = "thing2"
    print(ins:getName())
    print(ins2:getName())
end

function love.draw()

end

function love.update(dt)

end