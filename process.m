function [ A ] = process( A )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
A = A*180/pi;



A = mod(A,360);    
    
A = A/180*pi;





end

