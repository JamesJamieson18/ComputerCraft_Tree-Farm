function getFuel()
    for i = 1, 16 do
        turtle.select(i)
        if turtle.refuel(0) then
            turtle.refuel(1)
        end
    end
end

