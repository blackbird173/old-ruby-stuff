def File.userinput(m)
    eef = File.open(m,"a+")
    eef.read()
    while true do
        read = eef.read()
        if read != "" then
            break
        end
    end
    eef.seek(0)
    eef.read()
end
def File.erasecontent(m)
    File.open(m,"w").close
end
def File.copycontents(m,m2)
    eef = File.open(m2,"w")
    eef2 = File.open(m,"r")
    eef.write(eef2.read())
end
def File.plusspace(m)
    eef = File.open(m,"r")
    ar = []
    eef.readlines.each do |i|
        ar.append(i)
    end
    eef = File.open(m,"w")
    x = ""
    ar.each do |k|
        eef.write(x+k)
        x = x + " "
    end
end
def File.wavify(m)
    eef = File.open(m,"r")
    ar = []
    eef.readlines.each do |i|
        ar.append(i)
    end
    int = 0
    eef = File.open(m,"w")
    x = " "
    ar.each do |k|
        if int.even? then
            x = x + " "
            eef.write(x+k)
            else
            x = x[1..0]
            eef.write(x+k)
        end
        int = int + 1
    end
end
def File.reverse(m)
    eef = File.open(m,"r")
    lol = eef.read
    eef.close()
    eef = File.open(m,"w")
    eef.write(lol.reverse)
end
def File.spaceout(m)
    eef = File.open(m,"r")
    lol = eef.read
    eef.close()
    eef = File.open(m,"w")
    lol.chars.each do |i|
        eef.write(" "+i)
    end
end
def File.rundown(m)
    eef = File.open(m,"r")
    lol = eef.read
    eef.close()
    eef = File.open(m,"w")
    lol.chars.each do |i|
        eef.write("\n"+i)
    end
end
def File.check(m)
    if File.open(m) == false or File.open(m) == nil then 
        puts("file does not exist")
    end
end
def File.bytes(m)
    File.size(m).to_s+" bytes"
end
def File.shuffle(m)
    eef = File.open(m,"r")
    lol = eef.read()
    eef = File.open(m,"w")
    ar = []
    lol.each_char do |i|
        ar.append(i)
    end
    ar.shuffle.each do |i|
        eef.write(i)
    end
end
def File.upper(m)
    eef = File.open(m,"r")
    lol = eef.read()
    eef = File.open(m,"w")
    eef.write(lol.upcase)
end
def File.lower(m)
    eef = File.open(m,"r")
    lol = eef.read()
    eef = File.open(m,"w")
    eef.write(lol.downcase)
end
def File.removespace(m)
    eef = File.open(m,"r")
    lol = eef.read()
    eef = File.open(m,"w")
    eef.write(lol.gsub(" ",""))
end
def File.checkvowel(m)
    eef = File.open(m,"r")
    lol = eef.read()
    if lol.include?("a") or lol.include?("e") or lol.include?("i") or lol.include?("o") or lol.include?("u") then
        puts("there is a vowel in the file contents")
    else
        puts("there isnt a vowel in the file contents")
    end
end
def File.ify(m,m2)
    eef = File.open(m,"r")
    lol = eef.read()
    eef = File.open(m,"w")
    lol.each_char do
        eef.write(m2)
    end
end
def File.stretch(m,m2)
    eef = File.open(m,"r")
    lol = eef.read()
    eef = File.open(m,"w")
    x = ""
    (1..m2).each do
        x = x+" "
    end
    lol.chars.each do |i|
        eef.write(x+i)
    end
end
def File.countchars(m)
    eef = File.open(m,"r")
    lol = eef.read()
    int = 0
    lol.each_char do
        int += 1
    end
    puts("the file has "+int.to_s+" chars")
end
def File.countlines(m)
    eef = File.open(m,"r")
    int = 0
    eef.readlines.each do
        int += 1
    end
    puts("the file has "+int.to_s+" lines")
end
def File.removechars(m,m2)
    eef = File.open(m,"r")
    lol = eef.read()
    eef = File.open(m,"w")
    eef.write(lol.gsub(m2,""))
end
def File.lineincrease(m,m2)
    eef = File.open(m,"r")
    ar = []
    spaces = ""
    eef.readlines.each do |i|
        ar.append(i)
    end
    (1..m2).each do
        spaces = spaces+" "
    end
    eef = File.open(m,"w")
    ar.each do |i|
        eef.write(spaces+i)
    end
end
def File.preandsuf(m,m2)
    eef = File.open(m,"r")
    lol = eef.read()
    eef = File.open(m,"w")
    lol.each_char do |i|
        eef.write(m2+i+m2)
    end
end
def File.preandsuflines(m,m2)
    eef = File.open(m,"r")
    ar = []
    eef.readlines do |i|
        ar.append(i)
    end
    eef = File.open(m,"w")
    ar.each do |i|
        eef.write(m2+i+m2)
    end
end
def File.char_check_times(m,m2)
    eef = File.open(m,"r")
    lol = eef.read()
    int = 0
    lol.each_char do |i|
        if i == m2 then
            int += 1
        elsif not lol.include?(m2) then
            puts("the file does not contain that char at all")
            break
        end
    end
    if lol.include?(m2) then
        puts("the file has "+int.to_s+" "+m2+"/s in it")
    end
end
