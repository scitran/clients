% SearchFileResponse - Fields for file search response
%
% SearchFileResponse Properties:
%    classification 
%    created         - Creation time (automatically set)
%    type            - A descriptive file type (e.g. dicom, image, document, ...)
%    name            - The name of the file on disk
%    size            - Size of the file, in bytes
%
% SearchFileResponse Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef SearchFileResponse < flywheel.ModelBase & flywheel.mixins.FileMixin
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'classification', 'created', 'type', 'name', 'size' }, ...
            { 'classification', 'created', 'type', 'name', 'size' });
    end
    properties(Dependent)
        classification
        created
        type
        name
        size
    end
    methods
        function obj = SearchFileResponse(varargin)
            obj@flywheel.ModelBase(flywheel.model.SearchFileResponse.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addParameter(p, 'classification', []);
                addParameter(p, 'created', []);
                addParameter(p, 'type', []);
                addParameter(p, 'name', []);
                addParameter(p, 'size', []);

                parse(p, varargin{:});

                if ~isempty(p.Results.classification)
                    obj.props_('classification') = p.Results.classification;
                end
                if ~isempty(p.Results.created)
                    obj.props_('created') = p.Results.created;
                end
                if ~isempty(p.Results.type)
                    obj.props_('type') = p.Results.type;
                end
                if ~isempty(p.Results.name)
                    obj.props_('name') = p.Results.name;
                end
                if ~isempty(p.Results.size)
                    obj.props_('size') = p.Results.size;
                end
            end
        end
        function result = get.classification(obj)
            if ismethod(obj, 'get_classification')
                result = obj.get_classification();
            else
                if isKey(obj.props_, 'classification')
                    result = obj.props_('classification');
                else
                    result = [];
                end
            end
        end
        function obj = set.classification(obj, value)
            obj.props_('classification') = value;
        end
        function result = get.created(obj)
            if ismethod(obj, 'get_created')
                result = obj.get_created();
            else
                if isKey(obj.props_, 'created')
                    result = obj.props_('created');
                else
                    result = [];
                end
            end
        end
        function obj = set.created(obj, value)
            obj.props_('created') = value;
        end
        function result = get.type(obj)
            if ismethod(obj, 'get_type')
                result = obj.get_type();
            else
                if isKey(obj.props_, 'type')
                    result = obj.props_('type');
                else
                    result = [];
                end
            end
        end
        function obj = set.type(obj, value)
            obj.props_('type') = value;
        end
        function result = get.name(obj)
            if ismethod(obj, 'get_name')
                result = obj.get_name();
            else
                if isKey(obj.props_, 'name')
                    result = obj.props_('name');
                else
                    result = [];
                end
            end
        end
        function obj = set.name(obj, value)
            obj.props_('name') = value;
        end
        function result = get.size(obj)
            if ismethod(obj, 'get_size')
                result = obj.get_size();
            else
                if isKey(obj.props_, 'size')
                    result = obj.props_('size');
                else
                    result = [];
                end
            end
        end
        function obj = set.size(obj, value)
            obj.props_('size') = value;
        end
        function result = toJson(obj)
            result = containers.Map;
            if isKey(obj.props_, 'classification')
                result('classification') = obj.props_('classification').toJson();
            end
            if isKey(obj.props_, 'created')
                result('created') = flywheel.ModelBase.serializeValue(obj.props_('created'), 'datetime');
            end
            if isKey(obj.props_, 'type')
                result('type') = flywheel.ModelBase.serializeValue(obj.props_('type'), 'char');
            end
            if isKey(obj.props_, 'name')
                result('name') = flywheel.ModelBase.serializeValue(obj.props_('name'), 'char');
            end
            if isKey(obj.props_, 'size')
                result('size') = flywheel.ModelBase.serializeValue(obj.props_('size'), 'integer');
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, 'classification')
                result.classification = struct(obj.props_('classification'));
            else
                result.classification = [];
            end
            if isKey(obj.props_, 'created')
                result.created = obj.props_('created');
            else
                result.created = [];
            end
            if isKey(obj.props_, 'type')
                result.type = obj.props_('type');
            else
                result.type = [];
            end
            if isKey(obj.props_, 'name')
                result.name = obj.props_('name');
            else
                result.name = [];
            end
            if isKey(obj.props_, 'size')
                result.size = obj.props_('size');
            else
                result.size = [];
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
                if isKey(obj.props_, 'classification')
                    propList.classification = obj.props_('classification');
                else
                    propList.classification = [];
                end
                if isKey(obj.props_, 'created')
                    propList.created = obj.props_('created');
                else
                    propList.created = [];
                end
                if isKey(obj.props_, 'type')
                    propList.type = obj.props_('type');
                else
                    propList.type = [];
                end
                if isKey(obj.props_, 'name')
                    propList.name = obj.props_('name');
                else
                    propList.name = [];
                end
                if isKey(obj.props_, 'size')
                    propList.size = obj.props_('size');
                else
                    propList.size = [];
                end
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function obj = fromJson(json, context)
            obj =  flywheel.model.SearchFileResponse;
            if isfield(json, 'classification')
                obj.props_('classification') = flywheel.model.CommonClassification.fromJson(json.classification, context);
            end
            if isfield(json, 'created')
                obj.props_('created') = flywheel.ModelBase.deserializeValue(json.created, 'datetime');
            end
            if isfield(json, 'type')
                obj.props_('type') = flywheel.ModelBase.deserializeValue(json.type, 'char');
            end
            if isfield(json, 'name')
                obj.props_('name') = flywheel.ModelBase.deserializeValue(json.name, 'char');
            end
            if isfield(json, 'size')
                obj.props_('size') = flywheel.ModelBase.deserializeValue(json.size, 'integer');
            end
            if isprop(obj, 'context_')
                obj.setContext_(context);
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.SearchFileResponse')
                    obj = flywheel.model.SearchFileResponse(obj);
                end
                if isKey(obj.props_, 'classification')
                    obj.props_('classification') =  flywheel.model.CommonClassification.ensureIsInstance(obj.props_('classification'));
                end
                if isKey(obj.props_, 'created')
                end
                if isKey(obj.props_, 'type')
                end
                if isKey(obj.props_, 'name')
                end
                if isKey(obj.props_, 'size')
                end
            end
        end
    end
end