function [ var,f ] = NR1(var , l , t  )
%UNTITLED3 Summary of this function goes here
%   

  f =0; 
  e = 10^-5;
  E = 1;
  i =0;
    while(E > e)
   i=i+1;
   [del, E] = JF2 (l,t);
    var  = var + del ;
      t(3) =  var(1);
%       t(5) =  var(2);
%       l(3) =  var(3);
      l(7) =  var(2);
      t =  (process(t'))';
   if(i>100 || max(max(l)) >=54)
       fprintf('Some problem  ,the Error is %d \n',E);
           f = 1;
           fprintf('iteration number %d\n',i);
           fprintf('link lengths %d\n',l);
           break;
   end
           f=0;  
    
%  theta*180/pi %Used to report bug

%   pause;  % Used to debug error
    end
end
