class String
  define_method(:word_count) do |word|
    sentence = self
    sentence_scan = self.downcase.scan(word)
    sentence_scan.length
  end
end
