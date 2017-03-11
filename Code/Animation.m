function [e] = Animation( lengths,B,C,f,d,t,x,y )
%% Function for animation 
%**************API******************
% input arguments :
% lengths = length of four bar members
% B = theta of branch 1
% C = theta of branch 2
% d = choice of branch
% t = speed of animation
% f = number of branches
% output :
% Animates the motion
% ***********************************

%% Functions used 
% Plot( lengths,theta)
%% Main Program

% d = choice of branch
i = 1; % Iter number 
g = 0; % flag
s = 1; % step

B = B/180*pi; % Conversion of degrees to radians
C = C/180*pi; % Conversion of degrees to radians
if(f==2)
    
 if(d==1)
         while(1) 
         if((i==size(B,1)))
         s = -1;
         end
         if(i==1)
         s = 1;   
         end
    
      axis equal;
    e  =  Plot( lengths,B(i,:));
    
    pause(t);
    i = i + s;
     
         end
 elseif(d ==2)
      while(1)
     if((i==size(C,1)))
         s = -1;
     end
     if(i==1)
         s = 1;   
     end
   axis equal;              
   e =  Plot( lengths,C(i,:));
    i = i+s;
    pause(t);
      end
end
elseif(f==1)
         while(1)
         if((i==size(B,1)))
         i=1;
         end
         
       plot(x(i),y(i),'b-o');
       hold on;   
%        axis equal;  
    e  =  Plot( lengths,B(i,:));
    hold off;
     i = i + 1;
      pause(t);

         end
end
e=0;
end
