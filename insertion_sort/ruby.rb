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
    assert_equal [1, 2, 3, 4, 5, 6], insertion_sort([5, 2, 4, 6, 1, 3])
  end
end  