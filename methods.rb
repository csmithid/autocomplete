def clean_input(input)
  input.gsub(" ","+").downcase.strip
end

def clean_result(result)
  return [result[1][1],result[1][2],result[1][3]]
end

class String
def remove_lines(i)
    split("\n")[i..-1].join("\n")
end
end
