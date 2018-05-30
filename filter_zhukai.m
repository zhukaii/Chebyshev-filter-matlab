x=A(50:60,1);
y=A(50:60,5);%导入数据
Fs=1/0.13;%采样频率

f1=0.02;f3=0.06;%通带                                                                                         
fsl=0.01;fsh=0.8;%阻带
rp=0.3;rs=1;
 
wp1=2*f1/Fs;
wp3=2*f3/Fs;
wsl=2*fsl/Fs;
wsh=2*fsh/Fs;
wp=[wp1 wp3];
ws=[wsl wsh];%参数调整
[n,wn]=cheb1ord(wp,ws,rp,rs);%阶数
[bz1,az1]=cheby1(n,rp,wp)
g=filter(bz1,az1,y);%滤波后函数
figure(1)
plot(x,y,'r');hold on;
plot(x,g);