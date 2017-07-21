   % Time specifications:
   Fs = 16777216;                   % samples per second
   dt = 1/Fs;                   % seconds per sample
   StopTime = 0.0027;             % seconds
   t = (0:dt:StopTime-dt)';     % seconds
   
  a = sin(2*pi*t*10000);
  b = sin(2*pi*t*64);
  [m1,n1]=size(a);
  [m2,n2]=size(b);
  
  for n=0:45297
      c(end+1)=a(n,0)*b(,0n);
  end;