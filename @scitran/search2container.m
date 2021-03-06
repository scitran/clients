function result = search2container(st,srch,varargin)
% Convert a cell array of SearchResponses to Flywheel data base entries
%
% Syntax:
%   result = scitran.search2container(st,srch,varargin);
%
% Brief description:
%   A scitran search returns a cell array of SearchResponse objects.  These
%   contain different information from the Flywheel object.  This function
%   converts the cell array of SearchResponses into a cell array of
%   Flywheel data or analysis containers
%
% Inputs:
%   st:    scitran instance
%   srch:  cell array of SearchResponses for a container or analysis
%
% Optional key/value pairs
%   N/A
%
% Outputs:
%   result: cell array of Flywheel.model.<ContainerTypeOutput>
%
% Wandell, SCITRAN Team, 2018
%
% See also
%   stSearch2Container
%   scitran.search
%

% Examples:
%{
 st = scitran('stanfordlabs');
 projects = st.search('project','summary',true,'limit',5);
 projects = stSearch2Container(st,projects);
%}
%{
% Equivalent to
 projects = st.search('project','summary',true,'limit',5,'fw',true);
%}
%{
  analysisSearch = st.search('analysis',...
    'project label exact','Brain Beats',...
    'session label exact','20180319_1232');
  analysis = stSearch2Container(st,analysisSearch);
%}

%% Parse.  Must be a cell array of SearchResponses
p = inputParser;
p.addRequired('st',@(x)(isa(x,'scitran')));
p.addRequired('srch',@(x)(iscell(x) && isa(x{1},'flywheel.model.SearchResponse')));

p.parse(st,srch,varargin{:});

%% Convert the search responses into the relevant container
nSrch  = length(srch);
result = cell(nSrch,1);
containerType = srch{1}.returnType;

% These are the types we can handle at present. 
switch containerType
    case {'project','session','acquisition','collection'}
        for ii=1:nSrch
            result{ii} = st.containerGet(srch{ii}.(containerType).id);
        end
    case {'analysis'}
        for ii=1:nSrch
            result{ii} = st.analysisGet(srch{ii},'container');
        end
    case {'file'}
        for ii=1:nSrch
            result{ii} = srch{ii}.parent.getFile(srch{ii}.file.name);
        end
        %{
        % Code getting more efficient.  Delete this.
            id = srch{ii}.parent.id;
            parent = st.fw.get(id); containerType = parent.containerType;
            switch containerType
                case 'project'
                    % result{ii} = st.fw.getProjectFileInfo(srch{ii}.parent.id,srch{ii}.file.name);
                case 'acquisition'
                    % Maybe we should be using, as per JE email on
                    % Feb. 12, 2019,
                    % result{ii} = srch{ii}.parent.getFile(srch{ii}.file.name)
                    % This will permit result{ii}.download('...');
                    %
                    result{ii} = st.fw.getAcquisitionFileInfo(srch{ii}.parent.id,srch{ii}.file.name);
                otherwise
                    disp('NYI');
            end
        %}
    otherwise
        error('Unknown container type %s\n',containerType);
end


end
