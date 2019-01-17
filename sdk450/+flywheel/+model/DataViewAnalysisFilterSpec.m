% DataViewAnalysisFilterSpec - Specifies which analyses to match for files
%
% DataViewAnalysisFilterSpec Properties:
%    label       
%    gearName    
%    gearVersion 
%
% DataViewAnalysisFilterSpec Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef DataViewAnalysisFilterSpec < flywheel.ModelBase
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'label', 'gearName', 'gearVersion' }, ...
            { 'label', 'gear.name', 'gear.version' });
    end
    properties(Dependent)
        label
        gearName
        gearVersion
    end
    methods
        function obj = DataViewAnalysisFilterSpec(varargin)
            obj@flywheel.ModelBase(flywheel.model.DataViewAnalysisFilterSpec.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addParameter(p, 'label', []);
                addParameter(p, 'gearName', []);
                addParameter(p, 'gearVersion', []);

                parse(p, varargin{:});

                if ~isempty(p.Results.label)
                    obj.props_('label') = p.Results.label;
                end
                if ~isempty(p.Results.gearName)
                    obj.props_('gear.name') = p.Results.gearName;
                end
                if ~isempty(p.Results.gearVersion)
                    obj.props_('gear.version') = p.Results.gearVersion;
                end
            end
        end
        function result = get.label(obj)
            if ismethod(obj, 'get_label')
                result = obj.get_label();
            else
                if isKey(obj.props_, 'label')
                    result = obj.props_('label');
                else
                    result = [];
                end
            end
        end
        function obj = set.label(obj, value)
            obj.props_('label') = value;
        end
        function result = get.gearName(obj)
            if ismethod(obj, 'get_gearName')
                result = obj.get_gearName();
            else
                if isKey(obj.props_, 'gear.name')
                    result = obj.props_('gear.name');
                else
                    result = [];
                end
            end
        end
        function obj = set.gearName(obj, value)
            obj.props_('gear.name') = value;
        end
        function result = get.gearVersion(obj)
            if ismethod(obj, 'get_gearVersion')
                result = obj.get_gearVersion();
            else
                if isKey(obj.props_, 'gear.version')
                    result = obj.props_('gear.version');
                else
                    result = [];
                end
            end
        end
        function obj = set.gearVersion(obj, value)
            obj.props_('gear.version') = value;
        end
        function result = toJson(obj)
            result = containers.Map;
            if isKey(obj.props_, 'label')
                result('label') = obj.props_('label').toJson();
            end
            if isKey(obj.props_, 'gear.name')
                result('gear.name') = obj.props_('gear.name').toJson();
            end
            if isKey(obj.props_, 'gear.version')
                result('gear.version') = obj.props_('gear.version').toJson();
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, 'label')
                result.label = struct(obj.props_('label'));
            else
                result.label = [];
            end
            if isKey(obj.props_, 'gear.name')
                result.gearName = struct(obj.props_('gear.name'));
            else
                result.gearName = [];
            end
            if isKey(obj.props_, 'gear.version')
                result.gearVersion = struct(obj.props_('gear.version'));
            else
                result.gearVersion = [];
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
                if isKey(obj.props_, 'label')
                    propList.label = obj.props_('label');
                else
                    propList.label = [];
                end
                if isKey(obj.props_, 'gear.name')
                    propList.gearName = obj.props_('gear.name');
                else
                    propList.gearName = [];
                end
                if isKey(obj.props_, 'gear.version')
                    propList.gearVersion = obj.props_('gear.version');
                else
                    propList.gearVersion = [];
                end
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function obj = fromJson(json, context)
            obj =  flywheel.model.DataViewAnalysisFilterSpec;
            if isfield(json, 'label')
                obj.props_('label') = flywheel.model.DataViewNameFilterSpec.fromJson(json.label, context);
            end
            if isfield(json, 'gear0x2Ename')
                obj.props_('gear.name') = flywheel.model.DataViewNameFilterSpec.fromJson(json.gear0x2Ename, context);
            end
            if isfield(json, 'gear0x2Eversion')
                obj.props_('gear.version') = flywheel.model.DataViewNameFilterSpec.fromJson(json.gear0x2Eversion, context);
            end
            if isprop(obj, 'context_')
                obj.setContext_(context);
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.DataViewAnalysisFilterSpec')
                    obj = flywheel.model.DataViewAnalysisFilterSpec(obj);
                end
                if isKey(obj.props_, 'label')
                    obj.props_('label') =  flywheel.model.DataViewNameFilterSpec.ensureIsInstance(obj.props_('label'));
                end
                if isKey(obj.props_, 'gear.name')
                    obj.props_('gear.name') =  flywheel.model.DataViewNameFilterSpec.ensureIsInstance(obj.props_('gear.name'));
                end
                if isKey(obj.props_, 'gear.version')
                    obj.props_('gear.version') =  flywheel.model.DataViewNameFilterSpec.ensureIsInstance(obj.props_('gear.version'));
                end
            end
        end
    end
end
