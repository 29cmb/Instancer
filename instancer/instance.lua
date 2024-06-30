local instance = {}
instance.__index = instance


function instance.new(className, object)
    object = object or {
        ["Name"] = "thing",
        ["ClassName"] = "",
        ["Position"] = {["X"] = 0, ["Y"] = 0},
        ["Size"] = {["X"] = 0, ["Y"] = 0},
        ["Sprite"] = nil
    }
    
    setmetatable(object, instance)

    object.ClassName = className or "Sprite"
    return object
end

function instance:draw()
    if self.ClassName == "Sprite" then
        if not self.Sprite then return end

        love.graphics.draw(self.Sprite, self.Position.X, self.Position.Y)
    end
end

return instance
