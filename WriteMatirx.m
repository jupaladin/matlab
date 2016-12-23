function WriteMatirx(C,fileout)
%% Function description
% WriteMatirx is the function to write the result
% INPUTS
% C is the matrix to be written in the fileout and can be calculated by A*B
% OUTPUTS
% fileout is a txt format document with matrix C inside
% NDIMS means the matrix dimensions of C
%% Output the first line
NDIMS= ndims(C);
[rows3,cols3]=size(C);
NAME='ZhuXueyi';
Numlocker=[45];
formatSpec = 'The matrix dimensions of C is %d ;The size of C is %d*%d ;Assigment by %s ;Locker NO. %3.0f \n';
fid= fopen(fileout,'w');
fprintf(fid,formatSpec,NDIMS,rows3,cols3,NAME,Numlocker)
%% Output the Matrix C
for i=1:rows3
    for j=1:cols3 
        % make sure it outputs all the number in the Matrix C
       if j==cols3  % put each following number in Matrix C in a new row
         fprintf(fid,'%10.3f\n',C(i,j));
       else % put each following number in Matrix C in the same row
         fprintf(fid,'%10.3f \t',C(i,j));
       end
    end
end
fclose(fid)
end
