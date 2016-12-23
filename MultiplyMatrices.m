function[C]=MultiplyMatrices(A,B)
%% Function description
% MultiplyMatrices is the function to calculate the result of A*B
% INPUTS
% A and B are the two matrices
% OUTPUTS
% C is the result
% NOTES
% error checking if these two matrices can be multiplied.
%% Validation of inputs
[rows1,cols1]=size(A);
[rows2,cols2]=size(B);
if (cols1~=rows2) & (cols2~=rows1)
    error('size of a and b does not match;these two matrices cannot be multiplied')
end
%% Computation
for i=1:rows1  
    % the size of C=A*B is rows1*cols2
    for j=1:cols2
        C(i,j)=0 
        % give C(i,j) an initial value so that it can be cumulated
        for k=1:cols1
            % if cols1<cols2
          C(i,j)=A(i,k)*B(k,j)+C(i,j)
        end
    end
end
