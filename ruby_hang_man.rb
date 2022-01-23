eef = File.open("h_logs.txt","a")
word = "acid"
rip = 0
points = 1
dude = ""
loop do
    inp = gets.chomp.to_s
    puts("enter a letter u think might be in the word")
    if points == word.length then
        eef.write("u win\n")
        break
    end
    if word.include?(inp[0]) then
        puts("good")
        points += 1
    else
        puts("uh oh")
        if rip == 0 then
            dude = " 0"
            rip += 1
            puts(dude)
            next
        end
        if rip == 1 then
            dude = " 0
 |"
            rip += 1
            puts(dude)
            next
        end
        if rip == 2 then
            dude = "  0
 -|"
            rip += 1
            puts(dude)
            next
        end
        if rip == 3 then
            dude = "  0
 -|-"
            rip += 1
            puts(dude)
            next
        end
        if rip == 4 then
            dude = "  0
 -|-
 /"
            rip += 1
            puts(dude)
            next
        end
        if rip == 5 then
            dude = "  0
 -|-
 / \\"
            puts(dude)
            eef.write("u lose\n")
            break
        end
    end
end
