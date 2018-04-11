%% Flywheel search examples
%
% This script illustrates Flywheel database searches using the Matlab
% interface.  The typical interface is to create the scitran object
%
%   st = scitran('yourSite');
%
% Run searches
%
%   [results, srchCmd ]  = st.search(searchType,'parameter',value,...)
%
%  searchType - a string that defines what will be returned 
%  ('file', 'acquisition', 'session', 'project', 'collection', 'analysis'
%  or 'group') 
%
%  varagin - parameter value pairs that constrain the search.
%
%  results - a cell array of database descriptions
%  srchCmd - a struct that can be used to rerun the search
%
% For further documentation, see the scitran.search or these documents
%
%  * <https://github.com/scitran/client/wiki scitran/client wiki page>, and
%  specifically the pages on
%
%  * <https://github.com/scitran/client/wiki/Search Search> and the
%  * <https://github.com/scitran/client/wiki/Search-examples search examples>
%
% LMP/BW Scitran Team, 2017

%% Programming notes
%
% To convert the struct to JSON use
%
%  opts = struct('replacementStyle','hex');
%  jsonwrite(cmd,opts);
%
% See also:  st.browser - we use this function to visualize the returned
%            object in the browser.
%

%% Examples
%{
 This sciprt is a set of examples.
%}

%% Site authorization

% You may need to create a local token for your site.  You can do this
% using
%    scitran('yourSite','action','create');
%
% You will be queried for the apiKey on the Flywheel User Profile page.
%

% At Stanford, we have a vistalab site.  You will have to replace
% 'vistalab' with the name for your site.
st = scitran('vistalab');
st.verify

% The Flywheel SDK object is part of the scitran object.  If you want to
% experiment with it, you might pull it out and try some calls.
%
%   fw = st.fw;
%

%% List all projects

% All the projects you are part of
projects = st.search('project','summary',true);
stPrint(projects,'project','label')
assert(length(projects) >= 35);


%% All the projects, not just the ones you are part of
projects = st.search('project',...
    'all data',true,...
    'summary',true);
stPrint(projects,'project','label')
assert(length(projects) >= 62);

projectID = projects{end}.project.id;
projectLabel = projects{end}.project.label;

%% Exact and contains matches

% Not working yet
[projects,srchCmd] = st.search('project',...
    'summary',true,...
    'project label exact','VWFA');
projects{1}.project.label

%% You can also set up a struct with search parameters and run that
projects = st.search(srchCmd,'summary',true);
projects{1}.project.label

%%
[projects,srchCmd] = st.search('project',...
    'summary',true,...
    'project label contains','vwfa');

% Save this project information
projectID    = idGet(projects{end},'data type','project');
projectLabel = projects{end}.project.label;

%% Get a sessions within a specific collection with a subject code

sessions = st.search('session',...
    'collection label exact','Anatomy Male 45-55',...
    'subject code','SU ex10316',...
    'summary',true);

%% Get all the sessions within a specific collection

[sessions, srchCmd] = st.search('session',...
    'collection label contains','Anatomy Male 45-55',...
    'summary',true);
assert(length(sessions) >= 596);

%% Get the sessions within a project
sessions = st.search('session',...
    'project id',projectID,...
    'summary',true);

% Save this session information
sessionID = idGet(sessions{1},'data type','session');
sessionLabel = sessions{1}.session.label;

%% Get the session with this particular sessionID
sessions = st.search('session',...
    'session id',sessionID,...
    'summary',true);

%% Get the acquisitions inside a session using the ID

acquisitions = st.search('acquisition',...
    'session id',sessionID,...
    'summary',true);
assert(length(acquisitions) == 7);

%% Find acquisitions in the project containing a string

[acquisitions,srchCmd] = st.search('acquisition',...
    'string','BOLD_EPI',...
    'project label exact','ALDIT', ...
    'summary',true);
stPrint(acquisitions,'acquisition','label');

%%
[projects,srchCmd] = st.search('project',...
    'string','BOLD_EPI',...
    'summary',true);

%% Projects that have this string somewhere in their representation

[projects,srchCmd] = st.search('project',...
    'string','BOLD_EPI',...
    'summary',true);
stPrint(projects,'project','label');

%% Sessions that have the string somewhere

[sessions,srchCmd] = st.search('session',...
    'string','BOLD_EPI',...
    'summary',true);

% What is the project label of each session?
stPrint(sessions,'project','label');

%% Restrict to one project
thisProject = 'ALDIT';
[sessions,srchCmd] = st.search('session',...
    'string','BOLD_EPI',...
    'project label exact',thisProject,...
    'summary',true);

%% Finding files in various ways

[files,srchCmd] = st.search('file',...
    'acquisition id',idGet(acquisitions{1}),...
    'summary',true);

%%
[files,srchCmd] = st.search('file',...
    'session id',sessionID,...
    'summary',true);

%% A lot of files in a project

[files,srchCmd] = st.search('file',...
    'project id',files{1}.project.x_id,...
    'filetype','nifti',...
    'summary',true);
    
for ii=1:length(files)
    fprintf('%d:  %s\n',ii,files{ii}.file.name);
end

%% Find files in the project using a label

% Get the label
thisProject = st.search('project',...
    'project label contains',...
    'VWFA','limit',1);

% There are a lot of files.  We limit, but there are about 3300
[files,srchCmd] = st.search('file',...
    'project label exact',thisProject{1}.project.label,...
    'limit',88,...
    'summary',true);

%% Look for sessions in the GearTest collection

sessions = st.search('session',...
    'collection label exact','GearTest',...
    'summary',true);
assert(length(sessions) == 3);

%% Analyses that are part of this session
analyses = st.search('analysis',...
    'session id',idGet(sessions{3}),...
    'summary',true);

%% The analysis is part of the session, not the  collection.

% We can't search for analyses in a collections yet. We used to have files in analysis, analysis in collection,
% stuff like that. This code finds all the analyses in the collection by
% looping through the sessions
analyses = cell(length(sessions),1);
for ii=1:length(sessions)
    analyses{ii} = st.search('analysis',...
        'session id',idGet(sessions{ii}),...
        'summary',true);
end

%% Count the number of sessions created in a recent time period

sessions = st.search('session',...
    'session after time','now-16w',...
    'summary',true);

%% Get sessions with this subject code (vistalab)

sessions = st.search('session',...
    'subject code','ex4842',...
    'allData',true,...
    'summary',true);

%% Get sessions in which the subject age is within a range

sessions = st.search('session', ...
    'subject age range',[10,11], ...
    'summary',true);

%% Find a session with a specific label

% Note that multiple sessions can have the same label!!
sessionLabel = '20151128_1621';  % There are two sessions with this label
sessions = st.search('session',...
    'session label exact',sessionLabel,...
    'summary',true);

for ii=1:length(sessions)
    disp(sessions{ii}.project.label)
    files = st.search('file',...
        'session label exact',sessions{ii}.session.label,...
        'project label exact',sessions{ii}.project.label,...
        'filetype','nifti',...
        'summary',true);
end

% When we search constrained only to the session label, we get files from
% both sessions!  
files = st.search('file',...
    'session label exact',sessions{ii}.session.label,...
    'filetype','nifti',...
    'summary',true);

%% get files from a particular project and acquisition

files = st.search('file', ...
    'project label exact','VWFA FOV', ...
    'acquisition label exact','11_1_spiral_high_res_fieldmap',...
    'file type','nifti',...
    'summary',true);

%% Search for files in collection; find session names
files = st.search('file',...
    'collection label exact','DWI',...
    'acquisition label contains','00 Coil Survey',...
    'summary',true);

%% get files in project/session/acquisition/collection
files = st.search('file',...
    'collection label contains','ENGAGE',...
    'acquisition label contains','T1w 1mm', ...
    'summary',true); %#ok<*NASGU>

%% get files in project/session/acquisition/collection
files = st.search('file',...
    'collection label exact','Anatomy Male 45-55',...
    'acquisition label contains','Localizer',...
    'file type','nifti',...
    'summary',true);

%% Find sessions in a project that contain an analysis and subject code
   
% In this case, we are searching through all the data, not just the data
% that we have ownership on.
[sessions,srchCmd] = st.search('session',...
    'project label exact','UMN', ...
    'analysis label contains', 'AFQ', ...
    'subject code','4279',...
    'allData',true,'summary',true); %#ok<*ASGLU>

[projects,srchCmd] = st.search('project',...
    'analysis label contains', 'AFQ', ...
    'subject code','4279',...
    'allData',true,'summary',true);

[projects,srchCmd] = st.search('project',...
    'analysis label contains', 'AFQ', ...
    'subject code','4279',...
    'allData',true,'summary',true);


%%  Find the number of projects owned by a specific group, by label

group = 'Wandell Lab';
[projects,srchCmd] = st.search('project',...
    'group label',group,...
    'summary',true);

group = {'ALDIT','John Day Lab','PanLab'};
for ii=1:length(group)
    projects = st.search('project',...
        'group label',group{ii},...
        'summary',true);
end

%% Or by group name, which is also the group id

group = 'wandell';
[projects,srchCmd] = st.search('project',...
    'group name',group,...
    'summary',true);

group = {'jwday'};
for ii=1:length(group)
    projects = st.search('project',...
        'group name',group{ii},...
        'summary',true);
end


%% Looking up group information

% Structs defining the group
groups = st.search('group','all');
disp(groups{1})

% Just the group labels
labels = st.search('group','alllabels');
disp(labels)

% The users for a particular group
users = st.search('group','users','wandell');
disp(users)

% Struct for a particular group 
thisGroup = st.search('group','name','wandell');
disp(thisGroup)

%% Return collections

collections = st.search('collection',...
    'collection label contains','GearTest',...
    'summary',true);

% All collections
collections = st.search('collection','summary',true);

%% Return analyses

% Analyses within a project
analyses = st.search('analysis',...
    'project label contains','VWFA FOV',...
    'summary',true);

% Freesurfer analyses in the whole vistalab database
analyses = st.search('analysis',...
    'analysis label contains','freesurfer-recon-all',...
    'summary',true);

% Wow, lots of AFQ in the vistalab database
analyses = st.search('analysis',...
    'analysis label contains','AFQ',...
    'summary',true);
assert(length(analyses) >= 601);

%%