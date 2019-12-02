module Day2
  def self.problem_1(state)
    inputs = state.split(",").map(&:to_i)

    inputs[1] = 12
    inputs[2] = 2

    process_intcode(inputs)

    inputs[0]
  end

  def self.problem_2(state)
    inputs = state.split(",").map(&:to_i)

    100.times do |noun|
      100.times do |verb|
        codes = inputs.clone

        codes[1] = noun
        codes[2] = verb

        process_intcode(codes)

        output = codes[0]

        if output == 19690720
          return 100 * noun + verb
        end

      end
    end

  end

  def self.process_intcode(inputs)
    index = 0
    loop do
      case inputs[index]
      when 1
        operation = :+
      when 2
        operation = :*
      when 99
        break
      else
        puts "Invalid opcode"
      end

      value_1 = inputs[inputs[index + 1]]
      value_2 = inputs[inputs[index + 2]]

      result = value_1.send(operation, value_2)

      inputs[inputs[index + 3]] = result

      index += 4
    end

    inputs
  end

end