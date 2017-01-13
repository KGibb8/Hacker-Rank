# Method using case statements

def convert_temp(n, input_scale: "foo", output_scale: "celsius")
  return n if input_scale == output_scale
  n = n.to_f
  case input_scale
  when "celsius"
    case output_scale
    when "fahrenheit"
      return ((n * 1.8) + 32)
    when "kelvin"
      return (n - 273.15)
    end
  when "fahrenheit"
    celsius = (n - 32) / 1.8
    case output_scale
    when "celsius"
      return celsius
    when "kelvin"
      return (celsius + 273.15)
    end
  when "kelvin"
    celsius = n - 273.15
    case output_scale
    when "celsius"
      return celsius
    when "fahrenheit"
      return (celsius * 1.8) + 32
    end
  end
end

puts convert_temp(0, input_scale: "kelvin", output_scale: "celsius")
puts convert_temp(393, input_scale: "kelvin", output_scale: "celsius")
puts convert_temp(400, input_scale: "fahrenheit", output_scale: "celsius")
puts convert_temp(333, input_scale: "fahrenheit", output_scale: "kelvin")

# Method using hash of Procs

$hash = {
  k_to_c: Proc.new { |k| k - 273.15 },
  k_to_f: Proc.new { |k| ((k - 273.15) * 1.8) + 32 },
  c_to_f: Proc.new { |c| (c * 1.8) + 32 },
  c_to_k: Proc.new { |c| c - 273.15 },
  f_to_c: Proc.new { |f| (f - 32) / 1.8 },
  f_to_k: Proc.new { |f| ((f - 32) / 1.8) + 273.15 }
}

def convert_temp(temp, input_scale: "fahrenheit", output_scale: "celsius")
  return n if input_scale == output_scale
  arg = "#{input_scale[0]}_to_#{output_scale[0]}".to_sym
  proc = $hash[arg]
  proc ? proc.call(temp) : temp
end

puts convert_temp(0, input_scale: "kelvin", output_scale: "celsius")
puts convert_temp(393, input_scale: "kelvin", output_scale: "celsius")
puts convert_temp(400, input_scale: "fahrenheit", output_scale: "celsius")
puts convert_temp(333, input_scale: "fahrenheit", output_scale: "kelvin")
