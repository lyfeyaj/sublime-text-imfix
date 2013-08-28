require "erb"

desc "install sot's file to user's home directory"
task :install do
  Dir["*"].each do |file|
    next if %w[ Rakefile README.md bin ].include?(file)
    
    file_name = file.sub(".erb", "")
    target_file = "#{ENV['HOME']}/.#{file_name}"
    
    replace_all = false
    if File.exist?(target_file)
      if File.identical?(file, target_file)
        puts "identical ~/.#{file_name}"
      elsif replace_all
        replace_file(file)
      else
        print "overwrite ~/.#{file_name}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        else
          puts "skipping ~/.#{file_name}"
        end
      end
    else
      link_file(file)
    end
  end
end


def replace_file(file)
  system %Q{rm -rf "$HOME/.#{file.sub('.erb', '')}"}
  link_file(file)
end

def link_file(file)
  if file =~ /.erb$/
    puts "generating ~/.#{file.sub('.erb', '')}"
    File.open(File.join(ENV['HOME'], ".#{file.sub('.erb', '')}"), 'w') do |new_file|
      new_file.write ERB.new(File.read(file)).result(binding)
    end
  else
    puts "linking ~/.#{file}"
    system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
  end
end