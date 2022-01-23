kek = File.open("logs.txt","a+")
if kek.read() == "" then
    puts("enter ur name")
    lol = gets.chomp
    kek.write(lol)
    puts("enter ur prefix")
    prefix = gets.chomp
    kek.write(prefix)
end
loop do
    kek.seek(0)
    print(kek.read()+" ")
    cmds = gets.chomp
    case cmds
        when "cmds"
            puts("file create","file_write","file_read","file delete","file rename","file write and read","file remove part of","game","matrix","spinny","output","run","tell me a joke","file text to lines","space out","wavify","slander","tic tac toe","file shuffle","clear","file clear","file remove space","file plusspace","file remove line","fileify")
        when "file create"
            puts("enter the name of the file u wish to create")
            name = gets.chomp
            File.open(name,"w").close()
        when "file_write"
            puts("enter the name of the file u wish to write into")
            name = gets.chomp
            eef = File.open(name,"w")
            puts("enter text")
            txt = gets.chomp
            eef.write(txt)
            eef.close()
        when "file_read"
            puts("enter the name of the file u wish to read")
            name = gets.chomp
            eef = File.open(name)
            puts(eef.read())
            eef.close()
        when "file delete"
            puts("enter the name of the file u wish to delete")
            name = gets.chomp
            File.delete(name)
        when "file rename"
            puts("enter the name of u wish to rename")
            name = gets.chomp
            puts("enter the new file name")
            rename = gets.chomp
            File.rename(name,rename)
        when "file write and read"
            puts("enter the file name")
            name = gets.chomp
            eef = File.open(name,"w+")
            puts("enter the text")
            txt = gets.chomp
            eef.write(txt)
            eef.seek(0)
            puts(eef.read())
            eef.close()
        when "file remove part of"
            puts("enter the file u wish to remove a part from")
            name = gets.chomp
            eef = File.open(name,"r")
            lol = eef.read()
            puts("the file's contents are "+lol)
            puts("enter the text u want to remove")
            txt = gets.chomp
            new_txt = lol.sub!(txt,"")
            eef = File.open(name,"w")
            eef.write(new_txt)
            eef.close()
        when "game"
            player = "|"
            map = ".........."
            goal = "{}"
            puts(player+map+goal)
            loop do
                input = gets
                if input.match("e") then
                    map = "."+map
                    puts(player+map+goal)
                end
                if input.match("d") then
                    map = map[1..]
                    puts(player+map+goal)
                end
                if map.length == 0 then
                    puts("game over")
                    break
                end
            end
        when "matrix"
            hack = [0,1,"m",".","$","-"]
            space = " "
            spaces = []
            for i in 1..119 do
                spaces.append(space)
                space = " "+space
            end
            loop do
                hack.shuffle.each do |m|
                    spaces.shuffle.each do |n|
                        puts(n+m.to_s)
                        sleep(0.01)
                    end
                end
            end
        when "spinny"
            loop do
                lol = "/\b"
                print(lol)
                sleep(0.1)
                lol = "-\b"
                print(lol)
                sleep(0.1)
                lol = "\\\b"
                print(lol)
                sleep(0.1)
                lol = "|\b"
                print(lol)
                sleep(0.1)
            end
        when "output"
            puts("enter the text u wish to output")
            output = gets
            puts(output.to_s)   
        when "run"
            puts("enter the code u wish to run")
            code = gets
            eval(code.to_s)
        when "tell me a joke"
            puts("what do u call a pig in a blanket?")
            lol = gets
            if lol.match("food") then
                puts("damn right")
            else
                puts("nope it's food")
            end
        when "file text to lines"
            puts("enter the file name")
            name = gets.chomp
            eef = File.open(name,"r")
            lol = eef.read()
            eef = File.open(name,"w")
            lol.each_char do |i|
                eef.write(i+"\n")
                eef.flush()
            end
            eef.close()
        when "space out"
            puts("enter the file name")
            name = gets.chomp
            eef = File.open(name,"r")
            lol = eef.read()
            eef = File.open(name,"w")
            lol.each_char do |i|
                i = i+" "
                eef.write(i)
                eef.flush()
            end
            eef.close()
        when "wavify"
            int = 0
            puts("enter the name of the file")
            name = gets.chomp
            eef = File.open(name,"r")
            ar = []
            eef.readlines.each do |i|
                ar.append(i)
            end
            eef = File.open(name,"w")
            ar.each do |i|
                if int.even? then
                    eef.write(" "+i)
                    eef.flush()
                else
                    eef.write(i)
                    eef.flush()
                end
                int += 1
            end
            eef.close()
        when "slander"
            facts = ["bro lua is so bad that you have to make ur own oop","lua is so bad that all vars that arent signed r nil","lua has a terrible file handling system"]
            facts = facts.shuffle
            puts(facts[0])
        when "tic tac toe"
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
            eef.close
        when "file shuffle"
            puts("enter the file name")
            name = gets.chomp
            eef = File.open(name,"r")
            lol = eef.read()
            ar = []
            lol.each_char do |i|
                ar.append(i)
            end
            eef = File.open(name,"w")
            ar.shuffle.each do |i|
                eef.write(i)
                eef.flush()
            end
            eef.close()
        when "clear"
            system("cls")
        when "art"
            puts("   .-.
                (o.o)
                 |=|
                __|__
              //.=|=.\\
             // .=|=. \\
             \\ .=|=. //
              \\(_=_)//
               (:| |:)
                || ||
                () ()
                || ||
                || ||
           l42 ==' '==")
    when "file plusspace"
        puts("enter the file name")
        name = gets.chomp
        eef = File.open(name,"r")
        ar = []
        eef.readlines.each do |i|
            ar.append(i)
        end
        x = ""
        eef = File.open(name,"w")
        ar.each do |i|
            eef.write(x+i)
            x = x+" "
        end
        eef.close()
    when "file remove line"
        puts("enter the file name")
        ar = []
        name = gets.chomp
        eef = File.open(name,"r")
        lol = eef.read()
        k = eef.readlines()[0]
        eef.write()
    when "fileify"
        puts("enter a file name")
        name = gets.chomp
        eef = File.open(name,"r")
        lol = eef.read()
        puts("what do u want each char to change to")
        what = gets.chomp
        eef = File.open(name,"w")
        lol.each_char do |m|
            eef.write(what)
        end
        eef.close()
    end
end
