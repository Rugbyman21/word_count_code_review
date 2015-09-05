class String
  define_method(:word_count) do |word|
    sentence = self
    sentence_scan = scan(word)
    sentence_scan.length
  end
end
