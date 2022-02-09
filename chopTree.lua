function getFuel()
    for i = 1, 16 do
        turtle.select(i)
        if turtle.refuel(0) then
            turtle.refuel(1)
        end
    end
end

function chopTree()
    if turtle.detect() then
        turtle.dig()
        turtle.forward()
        turtle.digDown()
        while turtle.detectUp() do
            turtle.digUp()
            turtle.up()
        end
        while turtle.detectDown() == false do
            turtle.down()
        end
        turtle.back()
    end
end

local loop = true
while loop do
    chopTree()
end