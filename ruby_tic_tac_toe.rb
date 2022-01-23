eef = File.open("logs.txt","a")
map = ["...","...","..."]
int = 0
loop do
    puts("pick a line")
    line = gets.chomp.to_i.clamp(0,2)
    puts("pick a spot")
    spot = gets.chomp.to_i.clamp(0,2)
    if int.even?() then
        if map[line][spot] == "." then
            map[line][spot] = "x"
        end
    else
        if map[line][spot] == "." then
            map[line][spot] = "o"
        end
    end
    if map.include?("xxx") then
        eef.write("x wins\n")
        break
    elsif map.include?("ooo") then
        eef.write("o wins\n")
        break
    end
    if map[0][0] == "x" and map[1][0] == "x" and map[2][0] == "x" then
        eef.write("x wins\n")
        break
    elsif map[0][1] == "x" and map[1][1] == "x" and map[2][1] == "x" then
        eef.write("x wins\n")
        break
    elsif map[0][2] == "x" and map[1][2] == "x" and map[2][2] == "x" then
        eef.write("x wins\n")
        break
    end
    if map[0][0] == "o" and map[1][0] == "o" and map[2][0] == "o" then
        eef.write("o wins\n")
        break
    elsif map[0][1] == "o" and map[1][1] == "o" and map[2][1] == "o" then
        eef.write("o wins\n")
        break
    elsif map[0][2] == "o" and map[1][2] == "o" and map[2][2] == "o" then
        eef.write("o wins\n")
        break
    end
    puts(map)
end
