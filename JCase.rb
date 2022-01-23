def JCase(str)
    int = 0
    str[0] = str[0].upcase
    str.each_char do |i|
        if i == " " then
            str[int+1] = str[int+1].upcase
        end
        int += 1
    end
    str
end
