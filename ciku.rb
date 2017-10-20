arr = ['bd1.txt', 'bd2.txt', 'bd3.txt', 'gaoxueya.txt', 'qq1.txt', 'sg1.txt', 'sg2.txt']
dir_path = "/Users/zjf/pyltp/cidian/"
out_file = "/Users/zjf/pyltp/cidian/ciku.txt"
words = []
arr.each do |file|
  file_path = dir_path + file
  File.open(file_path, "r").each_line do |line|
    puts line
    words << line.split(" ").last
  end
end

words.uniq.each do |word|
  File.open(out_file, 'a') do |out_file|
      out_file << (word + "\n")
    end
end


file_path = "/Users/zjf/pyltp/cidian/gaoxueya.txt"
File.open(file_path, "r").each_line do |line|
  puts line
  puts line.split(" ").last
  puts "====="
end