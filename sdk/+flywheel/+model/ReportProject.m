% ReportProject
%
% ReportProject Properties:
%    projects 
%
% ReportProject Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef ReportProject < flywheel.ModelBase
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'projects' }, ...
            { 'projects' });
    end
    properties(Dependent)
        projects
    end
    methods
        function obj = ReportProject(varargin)
            obj@flywheel.ModelBase(flywheel.model.ReportProject.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addParameter(p, 'projects', []);

                parse(p, varargin{:});

                if ~isempty(p.Results.projects)
                    obj.props_('projects') = p.Results.projects;
                end
            end
        end
        function result = get.projects(obj)
            if ismethod(obj, 'get_projects')
                result = obj.get_projects();
            else
                if isKey(obj.props_, 'projects')
                    result = obj.props_('projects');
                else
                    result = [];
                end
            end
        end
        function obj = set.projects(obj, value)
            obj.props_('projects') = value;
        end
        function result = toJson(obj)
            result = containers.Map;
            if isKey(obj.props_, 'projects')
                result('projects') = flywheel.ModelBase.cellmap(@toJson, obj.props_('projects'));
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, 'projects')
                result.projects = flywheel.ModelBase.cellmap(@struct, obj.props_('projects'));
            else
                result.projects = [];
            end
        end
        function result = returnValue(obj)
            result = obj;
        end
    end
    methods(Access = protected)
        function prpgrp = getPropertyGroups(obj)
            if ~isscalar(obj)
                prpgrp = getPropertyGroups@matlab.mixin.CustomDisplay(obj);
            else
                propList = struct;
                if isKey(obj.props_, 'projects')
                    propList.projects = obj.props_('projects');
                else
                    propList.projects = [];
                end
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function obj = fromJson(json, context)
            obj =  flywheel.model.ReportProject;
            if isfield(json, 'projects')
                obj.props_('projects') = flywheel.ModelBase.cellmap(@(x) flywheel.model.ReportDemographicsGrid.fromJson(x, context), json.projects);
            end
            if isprop(obj, 'context_')
                obj.setContext_(context);
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.ReportProject')
                    obj = flywheel.model.ReportProject(obj);
                end
                if isKey(obj.props_, 'projects')
                    obj.props_('projects') = flywheel.ModelBase.cellmap(@flywheel.model.ReportDemographicsGrid.ensureIsInstance, obj.props_('projects'));
                end
            end
        end
    end
end
