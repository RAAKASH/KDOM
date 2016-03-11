function [ output_args ] = main( Data )
m = size(Data);
F = zeros(m-2);
lengths = zeros(m,1);
theta = zeros(m,1);
f = zeros(m);
deltheta = zeros(m,1);
e = .001 ;   %Control value parameter
while(True)
   
if (norm(f) ~=0)
   %     f*deltheta = F ;
    [f,F] = fF (lengths,theta);
    deltheta = inv(f)* F;

    if( norm(deltheta) < e)
    break;
    else
    
    theta = theta + deltheta ;
    end

fprintf( 'The values of theta are \n');
theta

end 



end

