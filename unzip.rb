require 'csv'
require 'rubygems'
require 'zip'
require 'net/http'

Net::HTTP.start("s3.amazonaws.com") { |http|

  content = http.get("http://s3.amazonaws.com/alexa-static/top-1m.csv.zip")

  File.open("b", "w"){ |file|

    file.write(content.body)

   }

}


puts"downloaded"

def unzip_file (file, destination)
  Zip::File.open(file)do |zip_file|
    zip_file.each do |f|
      f_path = File.join(destination, f.name)
        FileUtils.mkdir_p(File.dirname(f_path))
        f.extract(f_path)unless File.exist?(f_path)
        @a=f

    end
  end
end

unzip_file("b", "/home/sandeep/Desktop/ruby")
  a="#{@a}"
  i=1
  ar=[]
  CSV.foreach(a) do |row| 
    ar << row[1]
   
    i=i+1
    if (i==100000000) 
    
        break
    end
  end
  puts "SORTED LIST:::::::::::::::::::"
  def mergesort(list)
    return list if list.size <= 1
    mid   = list.size / 2
    left  = list[0, mid]
    right = list[mid, list.size]
    merge(mergesort(left), mergesort(right))
  end
  
  def merge(left, right)
    sorted = []
    until left.empty? || right.empty?
      if left.first <= right.first
        sorted << left.shift
      else
        sorted << right.shift
      end
  end
    @temp=sorted.concat(left).concat(right)
    
 end
puts mergesort(ar)

File.open("newfile.txt","w") do |f|
  f.puts @temp
end
