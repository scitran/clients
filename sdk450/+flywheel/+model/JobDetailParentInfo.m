% JobDetailParentInfo
%
% JobDetailParentInfo Properties:
%    group       
%    project     
%    subject     
%    session     
%    acquisition 
%    analysis    
%
% JobDetailParentInfo Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef JobDetailParentInfo < flywheel.ModelBase
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'group', 'project', 'subject', 'session', 'acquisition', 'analysis' }, ...
            { 'group', 'project', 'subject', 'session', 'acquisition', 'analysis' });
    end
    properties(Dependent)
        group
        project
        subject
        session
        acquisition
        analysis
    end
    methods
        function obj = JobDetailParentInfo(varargin)
            obj@flywheel.ModelBase(flywheel.model.JobDetailParentInfo.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addParameter(p, 'group', []);
                addParameter(p, 'project', []);
                addParameter(p, 'subject', []);
                addParameter(p, 'session', []);
                addParameter(p, 'acquisition', []);
                addParameter(p, 'analysis', []);

                parse(p, varargin{:});

                if ~isempty(p.Results.group)
                    obj.props_('group') = p.Results.group;
                end
                if ~isempty(p.Results.project)
                    obj.props_('project') = p.Results.project;
                end
                if ~isempty(p.Results.subject)
                    obj.props_('subject') = p.Results.subject;
                end
                if ~isempty(p.Results.session)
                    obj.props_('session') = p.Results.session;
                end
                if ~isempty(p.Results.acquisition)
                    obj.props_('acquisition') = p.Results.acquisition;
                end
                if ~isempty(p.Results.analysis)
                    obj.props_('analysis') = p.Results.analysis;
                end
            end
        end
        function result = get.group(obj)
            if ismethod(obj, 'get_group')
                result = obj.get_group();
            else
                if isKey(obj.props_, 'group')
                    result = obj.props_('group');
                else
                    result = [];
                end
            end
        end
        function obj = set.group(obj, value)
            obj.props_('group') = value;
        end
        function result = get.project(obj)
            if ismethod(obj, 'get_project')
                result = obj.get_project();
            else
                if isKey(obj.props_, 'project')
                    result = obj.props_('project');
                else
                    result = [];
                end
            end
        end
        function obj = set.project(obj, value)
            obj.props_('project') = value;
        end
        function result = get.subject(obj)
            if ismethod(obj, 'get_subject')
                result = obj.get_subject();
            else
                if isKey(obj.props_, 'subject')
                    result = obj.props_('subject');
                else
                    result = [];
                end
            end
        end
        function obj = set.subject(obj, value)
            obj.props_('subject') = value;
        end
        function result = get.session(obj)
            if ismethod(obj, 'get_session')
                result = obj.get_session();
            else
                if isKey(obj.props_, 'session')
                    result = obj.props_('session');
                else
                    result = [];
                end
            end
        end
        function obj = set.session(obj, value)
            obj.props_('session') = value;
        end
        function result = get.acquisition(obj)
            if ismethod(obj, 'get_acquisition')
                result = obj.get_acquisition();
            else
                if isKey(obj.props_, 'acquisition')
                    result = obj.props_('acquisition');
                else
                    result = [];
                end
            end
        end
        function obj = set.acquisition(obj, value)
            obj.props_('acquisition') = value;
        end
        function result = get.analysis(obj)
            if ismethod(obj, 'get_analysis')
                result = obj.get_analysis();
            else
                if isKey(obj.props_, 'analysis')
                    result = obj.props_('analysis');
                else
                    result = [];
                end
            end
        end
        function obj = set.analysis(obj, value)
            obj.props_('analysis') = value;
        end
        function result = toJson(obj)
            result = containers.Map;
            if isKey(obj.props_, 'group')
                result('group') = obj.props_('group').toJson();
            end
            if isKey(obj.props_, 'project')
                result('project') = obj.props_('project').toJson();
            end
            if isKey(obj.props_, 'subject')
                result('subject') = obj.props_('subject').toJson();
            end
            if isKey(obj.props_, 'session')
                result('session') = obj.props_('session').toJson();
            end
            if isKey(obj.props_, 'acquisition')
                result('acquisition') = obj.props_('acquisition').toJson();
            end
            if isKey(obj.props_, 'analysis')
                result('analysis') = obj.props_('analysis').toJson();
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, 'group')
                result.group = struct(obj.props_('group'));
            else
                result.group = [];
            end
            if isKey(obj.props_, 'project')
                result.project = struct(obj.props_('project'));
            else
                result.project = [];
            end
            if isKey(obj.props_, 'subject')
                result.subject = struct(obj.props_('subject'));
            else
                result.subject = [];
            end
            if isKey(obj.props_, 'session')
                result.session = struct(obj.props_('session'));
            else
                result.session = [];
            end
            if isKey(obj.props_, 'acquisition')
                result.acquisition = struct(obj.props_('acquisition'));
            else
                result.acquisition = [];
            end
            if isKey(obj.props_, 'analysis')
                result.analysis = struct(obj.props_('analysis'));
            else
                result.analysis = [];
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
                if isKey(obj.props_, 'group')
                    propList.group = obj.props_('group');
                else
                    propList.group = [];
                end
                if isKey(obj.props_, 'project')
                    propList.project = obj.props_('project');
                else
                    propList.project = [];
                end
                if isKey(obj.props_, 'subject')
                    propList.subject = obj.props_('subject');
                else
                    propList.subject = [];
                end
                if isKey(obj.props_, 'session')
                    propList.session = obj.props_('session');
                else
                    propList.session = [];
                end
                if isKey(obj.props_, 'acquisition')
                    propList.acquisition = obj.props_('acquisition');
                else
                    propList.acquisition = [];
                end
                if isKey(obj.props_, 'analysis')
                    propList.analysis = obj.props_('analysis');
                else
                    propList.analysis = [];
                end
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function obj = fromJson(json, context)
            obj =  flywheel.model.JobDetailParentInfo;
            if isfield(json, 'group')
                obj.props_('group') = flywheel.model.JobContainerDetail.fromJson(json.group, context);
            end
            if isfield(json, 'project')
                obj.props_('project') = flywheel.model.JobContainerDetail.fromJson(json.project, context);
            end
            if isfield(json, 'subject')
                obj.props_('subject') = flywheel.model.JobContainerDetail.fromJson(json.subject, context);
            end
            if isfield(json, 'session')
                obj.props_('session') = flywheel.model.JobContainerDetail.fromJson(json.session, context);
            end
            if isfield(json, 'acquisition')
                obj.props_('acquisition') = flywheel.model.JobContainerDetail.fromJson(json.acquisition, context);
            end
            if isfield(json, 'analysis')
                obj.props_('analysis') = flywheel.model.JobContainerDetail.fromJson(json.analysis, context);
            end
            if isprop(obj, 'context_')
                obj.setContext_(context);
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.JobDetailParentInfo')
                    obj = flywheel.model.JobDetailParentInfo(obj);
                end
                if isKey(obj.props_, 'group')
                    obj.props_('group') =  flywheel.model.JobContainerDetail.ensureIsInstance(obj.props_('group'));
                end
                if isKey(obj.props_, 'project')
                    obj.props_('project') =  flywheel.model.JobContainerDetail.ensureIsInstance(obj.props_('project'));
                end
                if isKey(obj.props_, 'subject')
                    obj.props_('subject') =  flywheel.model.JobContainerDetail.ensureIsInstance(obj.props_('subject'));
                end
                if isKey(obj.props_, 'session')
                    obj.props_('session') =  flywheel.model.JobContainerDetail.ensureIsInstance(obj.props_('session'));
                end
                if isKey(obj.props_, 'acquisition')
                    obj.props_('acquisition') =  flywheel.model.JobContainerDetail.ensureIsInstance(obj.props_('acquisition'));
                end
                if isKey(obj.props_, 'analysis')
                    obj.props_('analysis') =  flywheel.model.JobContainerDetail.ensureIsInstance(obj.props_('analysis'));
                end
            end
        end
    end
end