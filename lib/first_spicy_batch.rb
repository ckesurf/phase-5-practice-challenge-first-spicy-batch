# The is_spicy_batch method is already defined for you and will be called when running tests.
# @param {Integer} batch
# @return {boolean} whether the batch is spicy
# def is_spicy_batch(batch):


# Find the very FIRST spicy batch
# Input: n, Integer, # of cans
# Output: Integer, first spicy can (i.e. the batch #)
def first_spicy_batch(n)
  # iterate through every number from 1 to n
    # if batch number is spicy, return number
  # for batch_number in 1..n
  #   if is_spicy_batch(batch_number)
  #     return batch_number
  #   end
  # end

  lower = 1
  upper = n
  while (lower != upper)
    # start search in the middle (bisect)
    middle = (upper - lower)/2 + lower

    # if middle is spicy, then patient zero is either the middle or to the left
    #   move my right bound in, i.e. right bound becomes the middle
    if is_spicy_batch(middle)
      upper = middle
    else
      # if middle is not spicy, then patient zero is to the right
      #   move my left bound to the middle + 1 and keep searching
      lower = middle + 1
    end
  end
  lower
end


