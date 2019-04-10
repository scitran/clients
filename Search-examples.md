* [Script with search examples](https://github.com/vistalab/scitran/blob/master/scripts/search/s_stSearches.m)

***


The **search** method returns information about objects from the whole database. This contrasts with the **list** methods, which describe the contents of a specific container.

The examples here apply to the 'vistalab' Flywheel instance.  The specific labels and project names will be different on other instances.

### Projects
```
% All the projects you have access to
projects = st.search('projects');

% All the projects in the Flywheel instance, and print the count
projects = st.search('project',...
    'all data',true,...
    'summary',true);
```
### Sessions
```
% The sessions within a project - assuming you have the projects{} array from above
projectID = idGet(projects{1}, 'data type','project'); 
sessions = st.search('session',...
    'project id',projectID,...
    'summary',true);

sessions = st.search('session',...
    'collection label exact','Anatomy Male 45-55',...
    'subject code','SU ex10316',...
    'summary',true);

thisProject = 'ALDIT';
[sessions,srchCmd] = st.search('session',...
    'string','BOLD_EPI',...
    'project label exact',thisProject,...
    'summary',true);

%% Count the number of sessions created in a recent time period
sessions = st.search('session',...
    'session after time','now-16w',...
    'summary',true);

% Sessions that are part of the GearTest collection
sessions = st.search('session',...
    'collection label exact','GearTest',...
    'summary',true);
```
### Acquisitions
```
[acquisitions,srchCmd] = st.search('acquisition',...
    'string','BOLD_EPI',...
    'project label exact','ALDIT', ...
    'summary',true);
```

### Files
```
% Two example files from this session
sessionID = idGet(sessions{1},'data type','session');
[files,srchCmd] = st.search('file',...
    'session id',sessionID,...
    'limit',2,...
    'summary',true);

files = st.search('files',...
    'collection label','Anatomy Male 45-55',...
    'acquisition label exact','Localizer',...
    'file type','nifti');
```
### Groups
```
% Structs defining the group
groups = st.search('group','all');
disp(groups{1})
          label: 'ADNI'
        created: '2016-03-29T05:06:18.337Z'
       modified: '2016-03-29T05:06:18.337Z'
    permissions: [2×1 struct]
             id: 'adni'

% Projects owned by a particular group
group = 'Wandell Lab';
[projects,srchCmd] = st.search('project',...
    'group label',group,...
    'summary',true);

% Analyses within a project
analyses = st.search('analysis',...
    'project label contains','VWFA FOV',...
    'summary',true);

```




