def chart(array)
    array.each do |element|
        puts "| #{ '**' * element}"
    end
    max = array.max
    puts "| #{ '>' + '-' * max  * 2}"
    
    max.times do |i|
        i += 1
        space = " "
        space = space * 2 if i == 1
        print "#{space + i.to_s}"
    end
    print "\n"
end


def chart_file(array,filename="grafico_default.data")
    file = File.open(filename,"w")
        array.each do |element|
            file.write "| #{ '**' * element} \n"
        end
        max = array.max
        file.write "| #{ '>' + '-' * max  * 2}\n"
        max.times do |i|
            i += 1
            space = ' '
            space *= 2 if i == 1
            file.write "#{space + i.to_s}"
        end
        file.write "\n"
    file.close
    return "#{filename} - > Generado OK"
end

a = [2,5,8,6,3,10,11]
puts chart_file(a,"grafico1.data")
puts chart_file(a)
chart(a)