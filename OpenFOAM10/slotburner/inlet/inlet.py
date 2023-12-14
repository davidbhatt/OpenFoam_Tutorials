#generates the inlet profile for slot burner premixed diffussion flame
import numpy as np



# Load data from y.dat

ydat = np.loadtxt("./y.dat").flatten()



# Define the piecewise function z(y)

def z(y):

    return np.piecewise(y, [np.logical_and(y > 0.01, y < 0.015),

                             np.logical_or(np.logical_and(y >= 0, y < 0.01), np.logical_and(y > 0.015, y <= 0.025))],

                        [1, 0])



# Apply the function to the array

list_result = z(ydat)



# Print the result

print(list_result)



# Export the result to inlet.dat

np.savetxt("./inlet.dat", list_result)

