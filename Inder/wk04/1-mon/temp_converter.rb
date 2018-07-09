require 'pry'

puts ('Enter Temperature to be Coverted: ')
temp_value = gets.chomp.to_i

puts ('Enter Temperature Unit: f,C,K: ')
temp_unit = gets.chomp

def temp_conv(t_unit, t_value)
    if t_unit == "f"
        temp_C = ( t_value - 32) / 1.8
        temp_K = ( t_value + 459.67) / 1.8
        puts("#{t_value} fahrenheit to #{temp_C}  Celsius #{temp_K}  Kelvin")
    elsif t_unit == "C"
      #  temp_f = t_value x 1.8 + 32
        temp_K = t_value  + 273.15
        temp_f = t_value * 1.8 + 32
        puts("#{t_value} Celsius to #{temp_f}  fahrenheit #{temp_K}  Kelvin")
    else
        temp_f = t_value * 1.8 - 459.67
        temp_C = t_value  - 273.15
        puts("#{t_value} Kelvin to #{temp_f}  fahrenheit #{temp_C}  Celsius")
    end
end

temp_conv(temp_unit,temp_value)


