function DB = DBsetupLLGrid(dbname,toolspath)
%DBsetupLLGrid: Create database binding on LLGrid.
%Database internal function.
%  Usage:
%    DB = DBsetupLLGrid(group)
%  Inputs:
%    group = String containing name group that database lives in.
%    toolspath = Optional input to the LLGrid tools/ directory.
%       -Attempts to autodetect if not provided.-
%  Outputs:
%    DB = database binding
  narginchk(1, 2)
  if nargin == 1
      DBdir = [fileparts(mfilename('fullpath')) '/../..'];   % Get tools directory.
  else
      if toolspath(end) == '/' || toolspath(end) == '\'
          toolspath = toolspath(1:end-1);
      end
      DBdir = toolspath;
  end
  fd = filesep;
  fid = fopen([DBdir fd 'groups' fd 'databases' fd dbname fd 'accumulo_user_password.txt']);
  %disp([DBdir fd 'groups' fd 'databases' fd dbname fd 'accumulo_user_password.txt'])
    AccumuloUserKey = fgetl(fid);
  fclose(fid);

  fid = fopen([DBdir fd 'groups' fd 'databases' fd dbname fd 'dnsname']);
    dnsName = fgetl(fid);
  fclose(fid);

  % Create a DB.  
  DB = DBserver([dnsName ':2181'],'Accumulo',dbname,'AccumuloUser',AccumuloUserKey);

return
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% D4M: Dynamic Distributed Dimensional Data Model
% Architect: Dr. Jeremy Kepner (kepner@ll.mit.edu)
% Software Engineer: Dr. Jeremy Kepner (kepner@ll.mit.edu)
% MIT Lincoln Laboratory
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% (c) <2010> Massachusetts Institute of Technology
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
