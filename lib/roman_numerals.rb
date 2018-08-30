def translate(num)
  
  # Convert to int straight away. 0 for strings or non positive numbers.
  num = num.to_i
  
  r_table = {
    "1": "I",
    "2": "II",
    "3": "III",
    "4": "IV",
    "5": "V",
    "6": "VI",
    "7": "VII",
    "8": "VIII",
    "9": "IX",
    "10": "X",
    "20": "XX",
    "30": "XXX",
    "40": "XL",
    "50": "L",
    "60": "LX",
    "70": "LXX",
    "80": "LXXX",
    "90": "XC",
    "100": "C",
    "200": "CC",
    "300": "CCC",
    "400": "CD",
    "500": "D",
    "600": "DC",
    "700": "DCC",
    "800": "DCCC",
    "900": "CM",
    "1000": "M",
    "2000": "MM",
    "3000": "MMM"
  }
  
  if num >= 4000 || num <= 0
    puts "Sorry, I tried!"
    return "Sorry, I tried!"
  end
  
  my_arr = num.to_s.split("")
  count = my_arr.length-1
  f_convert = ""
  
  # Loops through my_arr adding the correct amount of 0's for ones, tens, hundreds, thousands
  new_array = my_arr.map do |x|
    run = x + ("0" * count)
    count -= 1
    run
  end
  
  # Loops through the new_array passing each value into r_table and concatenating f_convert
  new_array.each do |x|
    if r_table.key? (x.to_sym)
      f_convert << r_table[x.to_sym]
    end
  end

  puts f_convert
  f_convert
  
end

print "Enter a number: "
translate(gets.chomp)
  
