function [nSessions,participantList] = checkSessions(obj,participantList)
% DEPRECATED
%
% Using countSessions instead.
%
% CHECKSESSIONS - Count the number of session folders for each participant
%
%    [nSessions,participantList] = obj.checkSessions(participantList)
%
% DH,BW Scitran Team, 2017

%% If empty, report on all of them
if ~exist('participantList','var') || isempty(participantList)
    participantList = 1:obj.nParticipants; 
end

% nSessions = sum(obj.nSessions);

%% For each participant, find the number of sessions

for ii=1:(obj.nParticipants)
    
    % Find the folders beginning with 'ses'
    thisDir = fullfile(obj.directory,obj.subjectFolders{ii});
    sessionFolders = dirPlus(thisDir,...
        'ReturnDirs',true,...
        'PrependPath',false, ...
        'DirFilter','ses');
    
    % If the count is 0, then there is really one session.  Otherwise
    % store the full count.
    if ~isempty(sessionFolders),  nSessions(ii) = length(sessionFolders);
    else                          nSessions(ii) = 1;
    end
    

end

obj.nSessions = nSessions;

end
