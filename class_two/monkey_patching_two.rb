class Hash
  def identify_duplicate_values
    values = []
    dupes = []
    self.each_value do |val|
        values.include?(val) ? dupes << val : values << val
    end
    dupes.uniq
  end
end

scores = {a: 100, b: 100, c: 334,d: 13, e: 334, f: 100}
p scores.identify_duplicate_values
