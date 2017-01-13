def count_multibyte_char(string)
  string.each_char.to_a.inject(0){ |count, s| count += s.bytes.count > 1 ? 1 : 0 }
end
