require 'test/unit'

class Ruby < Test::Unit::TestCase
  def insertion_sort(array)
    (1..array.index(array.last)).each do | j |
      key = array[j]
      i = j - 1
      while i > -1 && array[i] > key
        array[i + 1] = array[i]
        i -= 1
      end
      array[i + 1] = key
    end
    array
  end

  def test_should_sort_a_array
    assert_equal [26, 31, 41, 41, 58, 59], insertion_sort([31, 41, 59, 26, 41, 58])
  end
end  