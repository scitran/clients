% Tag
%
% Tag Properties:
%    value 
%
% Tag Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef Tag < flywheel.ModelBase
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'value' }, ...
            { 'value' });
    end
    properties(Dependent)
        value
    end
    methods
        function obj = Tag(varargin)
            obj@flywheel.ModelBase(flywheel.model.Tag.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addRequired(p, 'value');

                parse(p, varargin{:});

                if ~isempty(p.Results.value)
                    obj.props_('value') = p.Results.value;
                end
            end
        end
        function result = get.value(obj)
            if ismethod(obj, 'get_value')
                result = obj.get_value();
            else
                if isKey(obj.props_, 'value')
                    result = obj.props_('value');
                else
                    result = [];
                end
            end
        end
        function obj = set.value(obj, value)
            obj.props_('value') = value;
        end
        function result = toJson(obj)
            result = containers.Map;
            if isKey(obj.props_, 'value')
                result('value') = flywheel.ModelBase.serializeValue(obj.props_('value'), 'char');
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, 'value')
                result.value = obj.props_('value');
            else
                result.value = [];
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
                if isKey(obj.props_, 'value')
                    propList.value = obj.props_('value');
                else
                    propList.value = [];
                end
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function obj = fromJson(json, context)
            obj =  flywheel.model.Tag;
            if isfield(json, 'value')
                obj.props_('value') = flywheel.ModelBase.deserializeValue(json.value, 'char');
            end
            if isprop(obj, 'context_')
                obj.setContext_(context);
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.Tag')
                    obj = flywheel.model.Tag(obj);
                end
                if isKey(obj.props_, 'value')
                end
            end
        end
    end
end
