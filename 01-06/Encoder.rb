 ALPHABET = {'a'=> 'alpha', 'b'=> 'bravo', 'c'=>'charlie', 'd'=> 'delta', 'e'=>'echo','f'=>'foxtrot','g'=>'golf','h'=> 'hotel','i'=>'india','j'=>'jewlett','k'=> 'kilo','l'=>'Lima','m'=>'mike','n'=>'november', 'o'=>'oscar','p'=>'papa','q'=>'quebec','r'=>'romeo','s'=>'sierra','t'=>'tango','u'=>'uniform','v'=>'victor','w'=>'whiskey','x'=>'xray','y'=>'yankee','z'=>'zulu'}
 puts "Enter a Phrase"
 User_Input = gets.chomp
 def encode(msg,alphabet)
  result = []
   msg.downcase.each_char do |c|
    if c =~ /[A-Za-z]/   
       result << alphabet[c]
    else
      result << c
    end
   end
   return result
  end
 
 def decode(msg,alphabet)
   result =[]
   msg.each do |c|
    if c =~ /[a-z]/
      result << alphabet.invert[c]
    else
      result << c
     end 
   end
   return result  
 end
 coded = encode(User_Input,ALPHABET)
 puts coded
 puts decode(coded,ALPHABET)

