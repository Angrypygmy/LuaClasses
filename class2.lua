local class    = {} -- Stores publics.
local _class   = {} -- Stores privates.

setmetatable(class,{
    __call = function(t,cls) -- t is class tab.
        if class[cls] then
            if type(class[cls]) ~= "function" then 
                print("Invalid class declaration: "..cls)
                return 
            end

            local self = {}
            local private,public = class[cls]()

            if not _class[cls] then
                _class[cls] = {}
                for a,b in pairs(private) do
                    _class[cls][a] = b
                end
            end

            for a,b in pairs(public) do
                self[a] = b
            end

            setmetatable(self,{
                __index = function(t,k)
                    if _class[cls][k] then
                        if type(_class[cls][k]) == "function" then
                            print("Attempt to access private method: "..k)
                        else
                            print("Attempt to access private variable: "..k)
                        end
                    end
                end
            })

            return self
        else
            print("Attempt to index non-existant class: "..cls)
        end
    end
})

function class:Base()
    local private = {}
    local public  = {}

    private.x = 16
    private.y = 16
    private.w = 32
    private.h = 32

    function public:SetX(val)
        private.x = val
    end
    function public:GetX()
        return private.x
    end

    return private,public
end

local obj = class("Base")
local obj2 = class("Base")
obj:SetX(123)

print(obj:GetX())
print(obj2:GetX())

for a,b in pairs(obj) do print(a,b) end
