module Numbers
  def mode(*numbers)
    return nil if numbers.empty?
    numbers
      .each_with_object(Hash.new(0)) { |number, ocurrences| ocurrences[number] += 1 }
      .max_by{|k,v| v}[0]
  end

  extend self
end
