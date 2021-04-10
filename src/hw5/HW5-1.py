import pandas as pd
import numpy as np
df = pd.read_excel (r'HW5-1.xls')

# Get the columns
out = df.loc[:, ["Output"]]
A = df.loc[:,["Input 1","Input 2"]]

# turn out and A to numpy array
out = out.to_numpy()
A = A.to_numpy()

# add the column for constant
A = np.c_[A, np.ones(50)]  

# Let the function to be : out = A * X

X = np.array([0,0,0])

# Because A is not a square matrix, use the pseudo inverse matrix way
A_pseudo = np.linalg.inv(((A.T).dot(A))).dot(A.T)

# calculate
X = A_pseudo.dot(out)
print("Let the function be  ax + by + c = output")
print("Final result: a = {}, b = {}, c = {}".format(round(X[0,0],2),round(X[1,0],2),round(X[2,0])))