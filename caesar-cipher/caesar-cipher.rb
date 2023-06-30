def caesar_cipher(message, shift)
    charArr = message.split("") #split message into an array
    arrASCII = charArr.map { |char| char.ord } #find the ASCII of each char
    temp = shift % 26
    #lowercase a-z ASCII: 97..122
    #UPPERCASE A-Z ASCII: 65..90 
    cipheredNum = arrASCII.map do |number| #caesar cipher algo
      if number.between?(97, 122-temp) || number.between?(65, 90-temp)
        number + temp
      elsif number.between?(122-temp, 122) || number.between?(90-temp, 90)
        number + temp - 26
      else
        number
      end
    end
    cipheredArr = cipheredNum.map { |cN| cN.chr} #ASCII to char
    cipheredArr.join("") #Arr to string
end

message = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ?.,/\1234567890-="
puts message
puts caesar_cipher(message, 5)