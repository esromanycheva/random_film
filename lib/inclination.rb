def inclination(number, array)
  number1 = number.digits.last(2).join.to_i
  number2 = number % 10

  if number1 > 10 && number1 < 20
    return array[2]
  elsif number2 > 1 && number2 < 5
    return array[1]
  elsif number2 == 1
    return array[0]
  else
    return array[2]
  end
end
