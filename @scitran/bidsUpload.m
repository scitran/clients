function projectID = bidsUpload(st,bidsData, groupLabel, varargin)
%Upload a BIDS compliant directory to a Flywheel site
%
%   projectID = @scitran.bidsUpload
% 
% See also: s_bidsPut.m
%
% Example in code
%
% BW/DH Scitran Team, 2017

% Example
%{
 
 % Only works for wandell
 st = scitran('vistalab');
 data = bids(fullfile(stRootPath,'local','BIDS-examples','fw_test'));
 data.projectLabel = 'BIDSUp';
 groupLabel = 'Wandell Lab'; 
 project = st.bidsUpload(data,groupLabel);

 % Delete upload when done testing
 [s,id] = st.exist('project',data.projectLabel);
 if s, st.deleteContainer('project',id); end
%}

%% Parse inputs

% Check the bids data structure and determine the project label.
p = inputParser;
p.addRequired('bidsData',@(x)(isa(x,'bids')));
p.addRequired('groupLabel',@ischar);

p.addParameter('projectLabel','',@ischar);

p.parse(bidsData,groupLabel,varargin{:});

% If no project label is sent in, then use the project label in the
% bidsData structure.
projectLabel = p.Results.projectLabel;
if isempty(projectLabel), projectLabel = bidsData.projectLabel; end

%% Check that the group exists

if ~(st.exist('group',groupLabel))
    error('No group label %s\n',groupLabel);
end

%%  Create the project

% Check if the project already exists.  If it does, throw an error
% Otherwise, create it.
[status, projectID] = st.exist('project',projectLabel);
if ~status
    id = st.create(groupLabel,projectLabel);
    projectID = id.project;
    fprintf('Created project %s (id %s).\n',projectLabel,projectID);
else
    error('Project %s exists (id %s).\n',projectLabel,projectID);
end

%% Make the sessions, acquisitions within the project. Upload data files

% Make all the sessions.  They will be labeled sub-N_ses-M
nSessions = sum(bidsData.nSessions);   % Total number of sessions
sessionLabels = cell(nSessions,1);

cntr = 1;   % Count the number of sessions we are creating.
for ii=1:length(bidsData.subjectFolders)
    
    % How many sessions for this subject
    nSessions = bidsData.nSessions(ii);
    
    for ss = 1:nSessions
        
        % Even if there is only one session for the subject, label it.
        thisSessionLabel = sprintf('%s-ses-%d',bidsData.subjectFolders{ii},ss);  % **** save the sessionLabels
        
        sessionLabels{cntr} = thisSessionLabel; cntr = cntr+1;
        
        fprintf('Uploading session %s.\n',thisSessionLabel);
        id = st.create(groupLabel,projectLabel,'session',thisSessionLabel);
        
        % We can add more subject fields here.  The update method can fill
        % in various database fields. Probably these should be filled in by
        % a separate function.
        data.subject.code = sprintf('%s',bidsData.subjectFolders{ii});
        st.setContainerInfo('session',id.session,data);
        
        % For each subject folder find the dataFiles fields
        acqNames = fieldnames(bidsData.dataFiles(ii).session(ss));

        for jj=1:length(acqNames)
            thisAcquisitionLabel = acqNames{jj};
            fprintf('Create acquisition %s in session %s\n',thisAcquisitionLabel,thisSessionLabel);
            id = st.create(groupLabel,projectLabel,...
                'session',thisSessionLabel,...
                'acquisition',thisAcquisitionLabel);
            
            % Upload the data files
            nFiles = length(bidsData.dataFiles(ii).session(ss).(thisAcquisitionLabel));
            acquisitionID = idGet(st.getContainerInfo('acquisition',id.acquisition));
            
            if nFiles > 0
                fprintf('Uploading %d files.\n',nFiles);
                for kk=1:nFiles
                    fname = fullfile(bidsData.directory,...
                        bidsData.dataFiles(ii).session(ss).(thisAcquisitionLabel){kk});
                    st.upload(fname,'acquisition',acquisitionID);
                end
            end
        end
        fprintf('Done uploading session %s.\n',thisSessionLabel);
    end
end

%% Upload the PROJECT metadata

% Put the meta data into the Project tab as an attachment
fprintf('Uploading project metadata\n');
if ~isempty(bidsData.projectMeta)
    for ii=1:length(bidsData.projectMeta)
        localName  = fullfile(bidsData.directory,bidsData.projectMeta{ii});
        st.upload(localName,'project',projectID);
    end
end

%% Upload the SESSION meta data into the anotation tab as an attachment.

fprintf('Uploading session metadata\n');

% Find the sessions in this project
sessions = st.list('session',projectID);
nSessions = numel(sessions);

% For each session
for ii=1:nSessions
    for jj=1:length(sessionLabels)
        % Find the bids sessionLabel that matches
        if strcmp(sessions{ii}.label,sessionLabels{jj})
            labels = split(sessionLabels{jj},'-');
            whichSubject = uint8(str2double(labels{2}));  % Skip sub-
            whichSession = uint8(str2double(labels{4}));  % Skip ses-
            
            % Upload these files.  sessionMeta is participant x session.
            % So, we have to figure out the subject from the session label.
            theseFiles = bidsData.sessionMeta{whichSubject,whichSession};
            fprintf('Uploading %d file(s) to %s\n',length(theseFiles),sessions{ii}.label);
            for ff = 1:length(theseFiles)
                localName = fullfile(bidsData.directory,theseFiles{ff});
                st.upload(localName,'session',sessions{ii}.id);
            end
            break;  % On to the next session.
        end
    end
end

%% Upload the subject meta data.  

% We attach the subject metadata files to the project.  
%
% In the future, we will attach them with a slightly different name to the
% subject slot.  That will happen when the subject becomes visible in the
% UI.
fprintf('Uploading subject metadata\n');
for ii=1:length(bidsData.subjectMeta)
    theseFiles = bidsData.subjectMeta{ii};
    for ff = 1:length(theseFiles)
        % Build the remote name for the file
        localName = fullfile(bidsData.directory,theseFiles{ff});
        [~,name,ext] = fileparts(theseFiles{ff});
        remoteName = ['bids@',name,ext];
        
        % Upload
        st.upload(localName,'project',projectID,'remote name',remoteName);
    end
end

fprintf('Upload of %s to %s is complete\n',bidsData.directory,projectLabel);

end
