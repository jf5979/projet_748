   %% Time specifications:
   Fs = 16777216;                   % samples per second
   dt = 1/Fs;                   % seconds per sample
   StopTime = 0.0027;             % seconds
   t = (0:dt:StopTime-dt)';     % seconds
   %% Sine wave:
   F1 = 20000;                     % hertz
   F2 = 15000;
   F3 = 10000;
   F4 = 5000;
   F5 = 1000;
   F6 = 500;
   a = sin(2*pi*F1*t);
   b = sin(2*pi*F2*t);
   c = sin(2*pi*F3*t);
   d = sin(2*pi*F4*t);
   e = sin(2*pi*F5*t);
   f = sin(2*pi*F6*t);
   
   z= sin(2*pi*t);
   
%    
%    for n=0:dt:StopTime-dt
%     if n<=0.0006
%        g(end +1)=(a+b)/2;
%     elseif n<=0.0011
%        g(end +1)=(a+b+c)/3;
%     elseif n<=0.0016
%        g(end +1)=(a+b+c+d)/4;
%     elseif n<=0.0021
%        g(end +1)=(a+b+c+d+e)/5;
%     elseif n<=0.0026
%        g(end +1)=(a+b+c+d+e+f)/6;
%     end  
%    end    
   
g=((a+b+c+d+e+f)/6)*z;     

   % Plot the signal versus time:
   plot(t,g);
   xlabel('time (in seconds)');
   title('Signal versus Time');
   zoom xon;