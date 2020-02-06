
def victory?(array)
	if array[0..2] == [1, 1, 1] || array[3..5] == [1, 1, 1] || array[6..8] == [1, 1, 1]
		return 1
	elsif array[0] == 1 && array[3] == 1 && array[6] == 1 || array[1] == 1 && array[4] == 1 && array[7] == 1 || array[2] == 1 && array[5] == 1 && array[8] == 1
		return 1
	elsif array[0] == 1 && array[4] == 1 && array[8] == 1 || array[2] == 1 && array[4] == 1 && array[6] == 1
		return 1
	elsif array[0..2] == [2, 2, 2] || array[3..5] == [2, 2, 2] || array[6..8] == [2, 2, 2]
		return 2
	elsif array[0] == 2 && array[3] == 2 && array[6] == 2 || array[1] == 2 && array[4] == 2 && array[7] == 2 || array[2] == 2 && array[5] == 2 && array[8] == 2
		return 2
	elsif array[0] == 2 && array[4] == 2 && array[8] == 2 || array[2] == 2 && array[4] == 2 && array[6] == 2
		return 2
	elsif array[0] != 0 && array[1] != 0 && array[2] != 0 && array[3] != 0 && array[4] != 0 && array[5] != 0 && array[6] != 0 && array[7] != 0 && array[8] != 0
		return 3
	else
		return 0
	end
end
	