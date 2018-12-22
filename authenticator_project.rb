users = [
    {username:"mashrur", password:"password1"},
    {username:"jack", password:"password2"},
    {username:"arya", password:"password3"},
    {username:"jonshow", password:"password4"},
    {username:"heisenberg", password:"password5"}
]
def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if(user_record[:username]==username && user_record[:password]==password)
      return user_record
      break
    end
  end
  #루비에서는 마지막줄에 return이 적용되어있다.
  "Credential were not correct"
end


puts "Welcome to the authenticator"
25.times {print "-"}
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

# While 루프 생성
attempts=1
while attempts<4
  print "Username: "
  username = gets.chomp

  print "Password: "
  password = gets.chomp
  authentication=auth_user(username, password, users)
  puts authentication


  puts "Press n to quit or any other key to continue: "
  #입력받은 문자를 소문자로 변환.
  input=gets.chomp.downcase

  break if input == "n"

  attempts += 1
end

puts "You have exceeded the number of attempts" if attempts == 4
