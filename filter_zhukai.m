x=A(50:60,1);
y=A(50:60,5);%��������
Fs=1/0.13;%����Ƶ��

f1=0.02;f3=0.06;%ͨ��                                                                                         
fsl=0.01;fsh=0.8;%���
rp=0.3;rs=1;
 
wp1=2*f1/Fs;
wp3=2*f3/Fs;
wsl=2*fsl/Fs;
wsh=2*fsh/Fs;
wp=[wp1 wp3];
ws=[wsl wsh];%��������
[n,wn]=cheb1ord(wp,ws,rp,rs);%����
[bz1,az1]=cheby1(n,rp,wp)
g=filter(bz1,az1,y);%�˲�����
figure(1)
plot(x,y,'r');hold on;
plot(x,g);