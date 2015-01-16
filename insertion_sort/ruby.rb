require 'test/unit'

class Ruby < Test::Unit::TestCase
  def insertion_sort_nondecreasing(array)
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

  def insertion_sort_nonincreasing(array)
    (1..array.index(array.last)).each do | j |
      key = array[j]
      i = j - 1
      while i > -1 && array[i] < key
        array[i + 1] = array[i]
        i -= 1
      end
      array[i + 1] = key
    end
    array
  end

  def test_should_sort_a_array_nondecreasing
    assert_equal [26, 31, 41, 41, 58, 59], insertion_sort_nondecreasing([31, 41, 59, 26, 41, 58])
  end

  def test_should_sort_a_array_nonincreasing
    assert_equal [59, 58, 41, 41, 31, 26], insertion_sort_nonincreasing([31, 41, 59, 26, 41, 58])
  end
end  