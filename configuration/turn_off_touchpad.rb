#!/usr/bin/env ruby

res=`synclient -l | grep TouchpadOff`
off_code = 1
if $?.exitstatus == 0
  cur_code = res.chomp.split("=").last.strip
end

if cur_code != off_code
  success=`synclient TouchpadOff=1`
  if $?.exitstatus == 0
    puts "Touchpad disabled"
  else
    puts "Could not disable Touchpad"
    puts "message was: '#{success}'"
  end
end

