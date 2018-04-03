a=[0 1 0 0 0 1 1 0 0 0;
   0 0 1 0 0 1 1 1 0 0;
   1 0 0 1 0 0 1 1 1 0;
   0 1 0 0 1 0 0 1 1 1;
   0 0 1 0 0 0 0 0 1 1;
   1 0 0 0 0 0 1 0 0 0;
   0 0 0 0 0 0 0 1 0 0;
   0 0 0 0 0 1 0 0 1 0;
   0 0 0 0 0 0 1 0 0 0;
   0 0 0 0 1 0 0 1 0 0];

i=[1 0 0 0 0 0 0 0 0 0;
   0 1 0 0 0 0 0 0 0 0;
   0 0 1 0 0 0 0 0 0 0;
   0 0 0 1 0 0 0 0 0 0;
   0 0 0 0 1 0 0 0 0 0;
   0 0 0 0 0 1 0 0 0 0;
   0 0 0 0 0 0 1 0 0 0;
   0 0 0 0 0 0 0 1 0 0;
   0 0 0 0 0 0 0 0 1 0;
   0 0 0 0 0 0 0 0 0 1];

msg0='adding matrix A with identity matrix I';
msg5='Taking powers of (A+I) matrix : ';
msg1='(A+I)=';
c=a+i;
disp(msg0);
disp(msg1);
disp(c);
disp(msg5);
e=c; 
d=c;
count=1;

for i=1:50
 c=e;
 c=c*d;
 for j=1:10
 for k=1:10
     if c(j,k)<1
         c(j,k)=0;
     elseif c(j,k)>1
             c(j,k)=1;
     end;
 end;
 end;
 count=count+1;
 disp(c);
 if c==d
     break;
 end;
 d=c;
 end;
 
 msg2='matrix of (A+I)power7';
 msg3='(A+I)power7 = (A+I)power8 = (A+I)power9............so on ';
 msg4='So our Highest Path in Graph is : ';
 disp(msg2);
 disp(c);
 disp(msg3);
 disp(msg4);
 disp(count);
