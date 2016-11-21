def calculate (first_digit, second_digit, operator)

  if operator == "+"
    result = first_digit + second_digit
  elsif operator == "-"
    reuslt = first_digit - second_digit
  elsif operator == "*"
    reuslt = first_digit * second_digit
  elsif operator == ":"
    reuslt = first_digit.fdiv(second_digit)
  else
    result = ""
  end
  return result
end
