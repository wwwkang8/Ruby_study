dial_book = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717"
}

# Get city names from the hash
def get_city_names(somehash)
# Write code here
# 해쉬의 키들만 모아서 리턴한다.
  return somehash.keys
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
# Write code here

  if somehash.has_key?(key)
    return somehash[key]
  end
  return "not exist. Please write correctly"
end


loop do
  puts "Do you want to lookup an area code based on a city name?(Y/N)"
  answer = gets.chomp.downcase
  break if answer !="y"

  # 키들을 받아서 출력.
  city_keys=get_city_names(dial_book)
  puts city_keys

  puts "Write the cityname that you want to know"
  city_name=gets.chomp
  city_area_code=get_area_code(dial_book, city_name)

  puts "The #{city_name} area code is #{city_area_code}"



end