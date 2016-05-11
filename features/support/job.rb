def load_data(myLoadFile)
  myFile=File.new(myLoadFile)
  myFile.each do |line|
    newline= line.gsub("\n",'')
    myArray= newline.split(',')
    $sqlconnection.execute("insert into movies(name,rating,release_year) values('#{myArray[0]}',#{myArray[1]},'#{myArray[2]}')")
  end
end


