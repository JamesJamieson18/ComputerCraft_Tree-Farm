--[getFuel function not required as the turtle does not move]--
function getFuel()
    for i = 1, 16 do
        turtle.select(i)
        if turtle.refuel(0) then
            turtle.refuel(1)
        end
    end
end

--[Detects when the log is broken by the tree choping turtle then places a sappling then pulls one from chest to replenish its inventory]--
function placeTree()
    if turtle.detect() == false then
        turtle.select(16)
        turtle.place()
        turtle.suckDown(1)
    end
end

--[infinite loop]--
local loop = true
while loop do
    placeTree()
end