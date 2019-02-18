def largest_product(series, size):
	# Exceptions, Errors:
	if len(series) < size:
		raise ValueError("Size is larger than the whole series!")
	if size < 0:
		raise ValueError("How can size be negative?!")
	# Function:
	largest = 0
	for i in range(len(series)-size+1):
		temp = 1
		for j in range(size):
			temp *= int(series[i+j])
		if temp > largest:
			largest = temp
	return largest
