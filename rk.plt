k1x = dt*f1(x,y,z)
k1y = dt*f2(x,y,z)
k1z = dt*f3(x,y,z)
k2x = dt*f1(x+k1x/2,y+k1y/2,z+k1z/2)
k2y = dt*f2(x+k1x/2,y+k1y/2,z+k1z/2)
k2z = dt*f3(x+k1x/2,y+k1y/2,z+k1z/2)
k3x = dt*f1(x+k2x/2,y+k2y/2,z+k2z/2)
k3y = dt*f2(x+k2x/2,y+k2y/2,z+k2z/2)
k3z = dt*f3(x+k2x/2,y+k2y/2,z+k2z/2)
k4x = dt*f1(x+k3x  ,y+k3y  ,z+k3z  )
k4y = dt*f2(x+k3x  ,y+k3y  ,z+k3z  )
k4z = dt*f3(x+k3x  ,y+k3y  ,z+k3z  )
x = x + (k1x+2*k2x+2*k3x+k4x)/6
y = y + (k1y+2*k2y+2*k3y+k4y)/6
z = z + (k1z+2*k2z+2*k3z+k4z)/6

print x, y, z
m=m+1
if(m<m_max) reread
m=0

outfile(n) = sprintf("f%d.jpg",n+10000) #出力ファイル名
title(n) = sprintf("t = %4.2f",n*dt) #タイトル名
unset label
set label title(n) font 'Times,12' at -50, -50, 55
set output outfile(n)
splot DATA with line linecolor rgb "blue"

n = n+1
if(n < n_max) reread
n=0