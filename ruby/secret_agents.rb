# ask user for string
# loop string to go through each index and add .next
# change index character to new .next character
# for space characters, set them equal to space and separate them from non-space character operations
# set "z" character to equal "a" character to avoid edge case issue.

   
def encrypt(str)
	n=0
	until n == str.length
		if str[n] == " " 
			str[n] = " " 
		elsif str[n] == "z"
			str[n] = "a"
		else
			str[n] = str[n].next
		end	
	n+=1
	end
p str
end
 

# ask user for a string
# create a loop to go through each character in the string
# calculate the index number of each character in the alphabet
# loop through each character of the string and find the it's alphabet index match and subtract one. change that character to the new character
# for space characters, set them equal to space and separate them from non-space character operations
 
def decrypt(str)	
n=0	
 	while n < str.length  
 		if 	str[n]== " "
 			str[n]= " "
 		else	
		alphabet = "abcdefghijklmnopqrstuvwxyz"
		alpha_index = alphabet.index("#{str[n]}")
		str[n] = alphabet[alpha_index-1]
		end
	n+=1
	end	
p str
end	

def cipher
p "Do we need to read or write?"
reply = gets.chomp
p "What is the password?"
password = gets.chomp
	if reply == "write"
		encrypt(password)
	elsif reply =="read"
		decrypt(password)
	else
		p "This communique will self destruct in"
		s=5	
		until s==0
			p s
			s-=1
		end
		p "Boom!!"
	end	
end	

cipher


# decrypt(encrypt(str))
# This nested call workd because the argument for both methods is a string. "swordfish" is a string and the encryption for swordfish is also a string.

