function [TrainSamIn,TrainSamOut,TestSamIn,TestSamOut]= SI()
%% System Identification Dataset %%
yp(1)=0; yp(2)=0;yp(3)=0;yp(4)=0;
for i=1:1:1000
    u(i)=1.05*sin(i/45);
end
for i =5:1:1000
    yp(i)=0.72*yp(i-1)+0.025*yp(i-2)*u(i-2)+0.01*u(i-3)^2+0.2*u(i-4);
end
SamIn=[u',yp']; 
SamOut=yp;  

for i=1:1:249
    u(i)=sin((3.1416*i)/25);
end
for i=250:1:499
    u(i)=1;
end
for i=500:1:749
    u(i)=-1;
end
for i=750:1:1000
    u(i)=0.3*sin((3.1416*i)/25)+0.1*sin((3.1416*i)/32)+0.6*sin((3.1416*i)/10);
end
for i =5:1:1000
    yp(i)=0.72*yp(i-1)+0.025*yp(i-2)*u(i-2)+0.01*u(i-3)^2+0.2*u(i-4);
end

TargetIn=[u',yp'];
TargetOut=yp;  

TrainSamIn=SamIn';
TrainSamOut=SamOut;
[InDim,TrainSamNum]=size(TrainSamIn); 
OutDim=size(TrainSamOut,1);  
TestSamIn=TargetIn';
TestSamOut=TargetOut;
TestSamNum=size(TestSamIn,2);

save('System_Identification_Dataset.mat', 'u', 'yp', 'SamIn', 'SamOut');
end

