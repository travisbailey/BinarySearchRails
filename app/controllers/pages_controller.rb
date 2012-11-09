class PagesController < ApplicationController
  

  def chop(ints, arrayOfInts, high, low)
	mid = (high + low) / 2.to_i
	if ints == arrayOfInts[mid]
		return 0
	elsif ints > arrayOfInts[mid]
		return chop(ints, arrayOfInts, arrayOfInts.length, mid - 1)
	elsif ints < arrayOfInts[mid]
		return chop(ints, arrayOfInts, 0, mid + 1)
	else
		return -1;
	end
  end

  def search
	@search = params[:content]
	@there = chop(@search, @array, @array.length, 0)
  end

  def home
	@array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def contact
  end
end
