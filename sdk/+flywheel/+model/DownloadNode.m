% DownloadNode - A reference to a container
%
% DownloadNode Properties:
%    level 
%    id    
%
% DownloadNode Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef DownloadNode < flywheel.ModelBase
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'level', 'id' }, ...
            { 'level', '_id' });
    end
    properties(Dependent)
        level
        id
    end
    methods
        function obj = DownloadNode(varargin)
            obj@flywheel.ModelBase(flywheel.model.DownloadNode.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addParameter(p, 'level', []);
                addParameter(p, 'id', []);

                parse(p, varargin{:});

                if ~isempty(p.Results.level)
                    obj.props_('level') = p.Results.level;
                end
                if ~isempty(p.Results.id)
                    obj.props_('_id') = p.Results.id;
                end
            end
        end
        function result = get.level(obj)
            if ismethod(obj, 'get_level')
                result = obj.get_level();
            else
                if isKey(obj.props_, 'level')
                    result = obj.props_('level');
                else
                    result = [];
                end
            end
        end
        function obj = set.level(obj, value)
            obj.props_('level') = value;
        end
        function result = get.id(obj)
            if ismethod(obj, 'get_id')
                result = obj.get_id();
            else
                if isKey(obj.props_, '_id')
                    result = obj.props_('_id');
                else
                    result = [];
                end
            end
        end
        function obj = set.id(obj, value)
            obj.props_('_id') = value;
        end
        function result = toJson(obj)
            result = containers.Map;
            if isKey(obj.props_, 'level')
                result('level') = flywheel.ModelBase.serializeValue(obj.props_('level'), 'char');
            end
            if isKey(obj.props_, '_id')
                result('_id') = flywheel.ModelBase.serializeValue(obj.props_('_id'), 'char');
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, 'level')
                result.level = obj.props_('level');
            else
                result.level = [];
            end
            if isKey(obj.props_, '_id')
                result.id = obj.props_('_id');
            else
                result.id = [];
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
                if isKey(obj.props_, 'level')
                    propList.level = obj.props_('level');
                else
                    propList.level = [];
                end
                if isKey(obj.props_, '_id')
                    propList.id = obj.props_('_id');
                else
                    propList.id = [];
                end
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function obj = fromJson(json, context)
            obj =  flywheel.model.DownloadNode;
            if isfield(json, 'level')
                obj.props_('level') = flywheel.ModelBase.deserializeValue(json.level, 'char');
            end
            if isfield(json, 'x0x5Fid')
                obj.props_('_id') = flywheel.ModelBase.deserializeValue(json.x0x5Fid, 'char');
            end
            if isprop(obj, 'context_')
                obj.setContext_(context);
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.DownloadNode')
                    obj = flywheel.model.DownloadNode(obj);
                end
                if isKey(obj.props_, 'level')
                end
                if isKey(obj.props_, '_id')
                end
            end
        end
    end
end
