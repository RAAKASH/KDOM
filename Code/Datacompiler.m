function [ B,C,f,A,D ] = Datacompiler( lengths,t )
%%   Compiles the Final set of data( Thetas ) using appropriate Functions*
%     ******************API********************
%     Input Arguments --
%     *lengths - lengths of 4 bars of mechanism
%     *t       -  Animation speed
%
%     Output Arguments --
%     * B   - thetas of branch 1 (Post processed) 
%     * C   - thetas of branch 2 (Post processed)
%     * A   - thetas of processed data
%     * D   - thetas of POST processed data
%     * f   - Number of branches indication
% *********************************************

% *Functions : 
%   * JF             - Returns Jacobian and Function value  
%   * NewtonRaphson  - Uses JF to find the Theta for a Particular configuration
%   * Processing     - Gives values of theta such that 0<theta<360 degrees
%   * Postprocessing - Finds Branches ,segregates them .
%% 

%%  Main Program
%  Variables to be assigned before starting
%  lengths   
%  
%  lengths = [(12^2+1.5^2)^.5;6;10;3];  %-Test lengths 
%  lengths = [28;5;19;15];              %-Test Lengths
theta = [0;1*pi/180;40*pi/180;60*pi/180];  % Tinkered with the initial values of theta
i = 0;         % Iter number
A = [0,0,0,0]; %Data of thetas
f=0;           %Flag for nonexistence of solution

while((theta(2)<360*pi/180))
i =i+1;
    [theta,f] = NewtonRaphson( lengths ,theta );
     d = Plot(lengths,theta);


if(f==0)
A (i,:) = theta;
theta (2) = theta(2) + 2/180*pi ;

else
 A(i,:) = [0,0,0,0];
theta (2) = theta(2) + 2/180*pi ;
fprintf('broke!!!!!!! at %d',i);
% break;
end
pause(t);
end
fprintf('I am in data compiler \n');

 A = processing( A );
[B,C,f,D] = Postprocessing( A ); % Here f is used for number of branches
end

