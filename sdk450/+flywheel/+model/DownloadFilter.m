% DownloadFilter
%
% DownloadFilter Properties:
%    tags  
%    types 
%
% DownloadFilter Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef DownloadFilter < flywheel.ModelBase
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'tags', 'types' }, ...
            { 'tags', 'types' });
    end
    properties(Dependent)
        tags
        types
    end
    methods
        function obj = DownloadFilter(varargin)
            obj@flywheel.ModelBase(flywheel.model.DownloadFilter.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addParameter(p, 'tags', []);
                addParameter(p, 'types', []);

                parse(p, varargin{:});

                if ~isempty(p.Results.tags)
                    obj.props_('tags') = p.Results.tags;
                end
                if ~isempty(p.Results.types)
                    obj.props_('types') = p.Results.types;
                end
            end
        end
        function result = get.tags(obj)
            if ismethod(obj, 'get_tags')
                result = obj.get_tags();
            else
                if isKey(obj.props_, 'tags')
                    result = obj.props_('tags');
                else
                    result = [];
                end
            end
        end
        function obj = set.tags(obj, value)
            obj.props_('tags') = value;
        end
        function result = get.types(obj)
            if ismethod(obj, 'get_types')
                result = obj.get_types();
            else
                if isKey(obj.props_, 'types')
                    result = obj.props_('types');
                else
                    result = [];
                end
            end
        end
        function obj = set.types(obj, value)
            obj.props_('types') = value;
        end
        function result = toJson(obj)
            result = containers.Map;
            if isKey(obj.props_, 'tags')
                result('tags') = obj.props_('tags').toJson();
            end
            if isKey(obj.props_, 'types')
                result('types') = obj.props_('types').toJson();
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, 'tags')
                result.tags = struct(obj.props_('tags'));
            else
                result.tags = [];
            end
            if isKey(obj.props_, 'types')
                result.types = struct(obj.props_('types'));
            else
                result.types = [];
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
                if isKey(obj.props_, 'tags')
                    propList.tags = obj.props_('tags');
                else
                    propList.tags = [];
                end
                if isKey(obj.props_, 'types')
                    propList.types = obj.props_('types');
                else
                    propList.types = [];
                end
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function obj = fromJson(json, context)
            obj =  flywheel.model.DownloadFilter;
            if isfield(json, 'tags')
                obj.props_('tags') = flywheel.model.DownloadFilterDefinition.fromJson(json.tags, context);
            end
            if isfield(json, 'types')
                obj.props_('types') = flywheel.model.DownloadFilterDefinition.fromJson(json.types, context);
            end
            if isprop(obj, 'context_')
                obj.setContext_(context);
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.DownloadFilter')
                    obj = flywheel.model.DownloadFilter(obj);
                end
                if isKey(obj.props_, 'tags')
                    obj.props_('tags') =  flywheel.model.DownloadFilterDefinition.ensureIsInstance(obj.props_('tags'));
                end
                if isKey(obj.props_, 'types')
                    obj.props_('types') =  flywheel.model.DownloadFilterDefinition.ensureIsInstance(obj.props_('types'));
                end
            end
        end
    end
end
