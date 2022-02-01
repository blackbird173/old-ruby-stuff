def antijcase(str)   
    str = str.upcase
    str[0] = str[0].downcase
    int = 0
    str.each_char do |i|
        if i == " " then
            str[int+1] = str[int+1].downcase
        end
        int += 1
    end
    str
end
puts(antijcase("hello world"))
