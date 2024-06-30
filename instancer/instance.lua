local instance = {}
instance.__index = instance

function instance.new(className, object)
    object = object or {
        ["Name"] = "thing",
        ["ClassName"] = "",
        ["Position"] = {["X"] = 0, ["Y"] = 0},
        ["Scale"] = {["X"] = 1, ["Y"] = 1},
        ["Sprite"] = nil,
        ["Transparency"] = 0
    }
    
    setmetatable(object, instance)

    object.ClassName = className or "Sprite"
    return object
end

function instance:draw()
    if self.ClassName == "Sprite" then
        if not self.Sprite then return end
        love.graphics.setColor(1, 1, 1, 1 - self.Transparency)
        love.graphics.push()
        love.graphics.scale(self.Scale.X, self.Scale.Y)
        love.graphics.draw(self.Sprite, self.Position.X, self.Position.Y)
        love.graphics.pop()
        love.graphics.setColor(1,1,1,1)
    end
end

return instance
