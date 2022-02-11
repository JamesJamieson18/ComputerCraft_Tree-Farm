function getFuel()
    for i = 1, 16 do
        turtle.select(i)
        if turtle.refuel(0) then
            turtle.refuel(1)
        end
    end
end

function placeTree()
    if turtle.detect() == false then
        turtle.select(16)
        turtle.place()
        turtle.suckDown(1)
    end
end

local loop = true
while loop do
    placeTree()
end