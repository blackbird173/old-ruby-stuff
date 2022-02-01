chars = ["q","w","e","r","t","y","u","i","o","p","a","s","d","f","g","h","j","k","l","z","x","c","v","b","n","m"]
spaces = []
clrs = ["\x1b[30m","\x1b[31m","\x1b[32m","\x1b[33m","\x1b[34m","\x1b[35m","\x1b[36m","\x1b[37m","\x1b[90m","\x1b[91m","\x1b[92m","\x1b[93m","\x1b[94m","\x1b[95m","\x1b[96m","\x1b[97m"]
space = ""
spaces.append(space)
(0..118).each do
    space = space + " "
    spaces.append(space)
end
int = 0
loop do
    m = spaces.shuffle[0]
    if int <= 26 then
        (1..9).each do
            int += 1
            puts(clrs.shuffle[0]+m+chars.shuffle[0])
            sleep(0.01)
        end
    else
        int = 0
        puts("\033[0;0H")
    end
end
