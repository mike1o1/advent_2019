module Day2
  def self.problem_1(state)
    inputs = state.split(",").map(&:to_i)

    index = 0

    inputs[1] = 12
    inputs[2] = 2

    process_intcode(inputs, index)

    inputs[0]
  end

  def self.problem_2(_)
    "Not implemented"
  end
  
  def self.process_intcode(inputs, index)
    while index < inputs.count

      input = inputs[index]

      case input
      when 1
        value_1 = inputs[inputs[index + 1]]
        value_2 = inputs[inputs[index + 2]]

        result = value_1 + value_2

        inputs[inputs[index + 3]] = result

        index += 4

      when 2
        value_1 = inputs[inputs[index + 1]]
        value_2 = inputs[inputs[index + 2]]

        result = value_1 * value_2

        inputs[inputs[index + 3]] = result

        index += 4

      when 99
        break
      end
    end
    
    inputs
  end

end