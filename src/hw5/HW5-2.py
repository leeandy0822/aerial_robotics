import pandas as pd
import numpy as np
import math
from pyquaternion import Quaternion
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import numpy as np

# Read Dataset
df = pd.read_excel (r'HW5-2.xls')
ax = df.loc[:,["ax"]].to_numpy()
ay = df.loc[:,["ay"]].to_numpy()
az = df.loc[:,["az"]].to_numpy()

data_amount = 100
iteration = 500
alpha = 0.001
Data = np.zeros([100,4])


q = np.array([1,0,0,0])
q_predict = np.zeros([100,4])


for i in range(data_amount):
    for j in range(iteration):
        norA = math.sqrt(ax[i,0]*ax[i,0]+ay[i,0]*ay[i,0]+az[i,0]*az[i,0])
        ax_n = ax[i,0]/norA
        ay_n = ay[i,0]/norA
        az_n = az[i,0]/norA
        # define cost function, due to the d = [ 0 0 0 -9.8], the calculation becomes much simpler
        # also do not want the negative gravity to mislead us, so use normalization to avoid the 9.8 in the equation
        c_x = -2*(q[1]*q[3] - q[0]*q[2]) - ax_n
        c_y = -2*(q[0]*q[1] - q[2]*q[3]) - ay_n
        c_z = -2*(0.5 - q[1]*q[1] - q[2]*q[2]) - az_n
        f = np.array([c_x,c_y,c_z])
        
        # to compute the gradient , we need to compute the jacobian
        # array([[2*q[2],  -2*q[3],   2*q[0],    -2*q[2]],
        #        [-2*q[1], -2*q[0], -2*q[3],  -2*q[2]],
        #        [0,       4*q[1],   4*q[3],    0]])
        J = np.array([[2*q[2],-2*q[3],2*q[0],-2*q[2]],[-2*q[1],-2*q[0],-2*q[3],-2*q[2]],[0,4*q[1],4*q[3],0]])
        
        # compute gradient
        G = (J.T).dot(f)
        norG = math.sqrt(G[0]*G[0]+G[1]*G[1]+G[2]*G[2]+G[3]*G[3])
        G = G/norG
        
        # Find the quaternion
        q = q - alpha * G.T
        
        norq = math.sqrt(q[0]*q[0]+q[1]*q[1]+q[2]*q[2]+q[3]*q[3])
        q = q/norq
        
    q_predict[i,0] = q[0]
    q_predict[i,1] = q[1]
    q_predict[i,2] = q[2]
    q_predict[i,3] = q[3]
    
    
    
    q1 = Quaternion(q[0],q[1],q[2],q[3])
    q1_inv = q1.inverse
    E = Quaternion(0,0,0,-9.8)
    q2 = q1_inv*E*q1
    
    
    for k in range(4):
        Data[i,k] = round(q2[k],2)
    

Data = Data[:,1:]
## convert your array into a dataframe
df = pd.DataFrame (Data)
## save to xlsx file
filepath = 'HW5-2_predict.xlsx'
df.to_excel(filepath, index=False)



# Data Visulization, we pick 10 datasets to show its attitude trajectory
Data_draw = np.zeros((100,6))
Data_draw[:,3:] = Data
row_idx = np.array([0,10,20,30,40,50,60,70,80,90,99])
Data_draw = Data_draw[row_idx, :]
soa = Data_draw

X, Y, Z, U, V, W = zip(*soa)

fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')


ax.quiver(X, Y, Z, U, V, W, color='r',pivot = 'tail',length = 1)
ax.quiver(0, 0, 0, 3, 0, 0,  color='g',pivot = 'tail',length = 1)
ax.quiver(0, 0, 0, 0, 3, 0,  color='g',pivot = 'tail',length = 1)
ax.quiver(0, 0, 0, 0, 0, 3,  color='g',pivot = 'tail',length = 1)


ax.set_xlim([-9.8, 5])
ax.set_ylim([-9.8, 5])
ax.set_zlim([-9.8, 5])

ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_zlabel('z (gravity = -9.8)')
plt.title("Attitude of the UAV (10 datasets)")

plt.show()