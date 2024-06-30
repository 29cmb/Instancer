instance = {}

local Properties = {
    ["Name"] = "thing",
    ["Position"] = {["X"] = 0, ["Y"] = 0},
    ["Size"] = {["X"] = 0, ["Y"] = 0},
    ["Sprite"] = ""
}

function instance.new(object)
    object = object or {}
    setmetatable(object, instance)
    instance.__index = instance

    for name,prop in pairs(Properties) do 
        object[name] = prop
    end

    return object
end

function instance:getName()
    return self.Name or "no"
end

return instance