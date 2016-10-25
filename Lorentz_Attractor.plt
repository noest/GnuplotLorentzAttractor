set terminal jpeg enhanced font "Times" 20 size 600, 480
set tics font 'Times,12'
set nokey
set ticslevel 0

set xr[-50:50]
set yr[-50:50]
set zr[0:50]

DATA = "Lorentz_Attractor.data"
set print DATA
f1(x, y, z) = -p*x + p*y
f2(x, y, z) = -x*z + r*x - y
f3(x, y, z) = x*y -b*z
p = 10.0
r = 28.0
b = 8.0/3.0
x = 1
y = 1
z = 1
dt = 0.01    #ŠÔ‚İ
n_max = 1000 #Ã~‰æ”
m_max = 10   #ŠÔˆø‚«”
n = 0;
m = 0
call "rk.plt"