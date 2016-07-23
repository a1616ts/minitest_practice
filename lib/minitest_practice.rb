require 'minitest_practice/version'

module MinitestPractice
  class Main
    def odd?(n)
      return n % 2 == 0 ? false : true
    end

    def check_number?(n)
      nn = n.to_i
      if (999 < nn.to_i)
        nn % 2 == 0 ? false : true
      end
      return false
    end

    def enough_length?(str)
      str_length = str.length
      if (3 <= str_length && str_length <= 8)
        return true
      else
        return false
      end
    end

    def divide(molecule, denominator)
      raise StandardError if denominator == 0
      return molecule / denominator
    end

    def fizz_buzz(n)
      return ['Fizz', '', ''][n % 3] + ['Buzz', '', '', '', ''][n % 5]
    end

    def hello
      print 'hello'
    end
  end
end
