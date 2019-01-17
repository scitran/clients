% DataViewSaveDataViewInput - A request to save data-view data to a container
%
% DataViewSaveDataViewInput Properties:
%    view          
%    viewId         - Unique database ID
%    containerType  - The type of container (e.g. session)
%    containerId    - Unique database ID
%    filename       - The name of the file on disk
%
% DataViewSaveDataViewInput Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef DataViewSaveDataViewInput < flywheel.ModelBase
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'view', 'viewId', 'containerType', 'containerId', 'filename' }, ...
            { 'view', 'viewId', 'containerType', 'containerId', 'filename' });
    end
    properties(Dependent)
        view
        viewId
        containerType
        containerId
        filename
    end
    methods
        function obj = DataViewSaveDataViewInput(varargin)
            obj@flywheel.ModelBase(flywheel.model.DataViewSaveDataViewInput.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addParameter(p, 'view', []);
                addParameter(p, 'viewId', []);
                addParameter(p, 'containerType', []);
                addParameter(p, 'containerId', []);
                addParameter(p, 'filename', []);

                parse(p, varargin{:});

                if ~isempty(p.Results.view)
                    obj.props_('view') = p.Results.view;
                end
                if ~isempty(p.Results.viewId)
                    obj.props_('viewId') = p.Results.viewId;
                end
                if ~isempty(p.Results.containerType)
                    obj.props_('containerType') = p.Results.containerType;
                end
                if ~isempty(p.Results.containerId)
                    obj.props_('containerId') = p.Results.containerId;
                end
                if ~isempty(p.Results.filename)
                    obj.props_('filename') = p.Results.filename;
                end
            end
        end
        function result = get.view(obj)
            if ismethod(obj, 'get_view')
                result = obj.get_view();
            else
                if isKey(obj.props_, 'view')
                    result = obj.props_('view');
                else
                    result = [];
                end
            end
        end
        function obj = set.view(obj, value)
            obj.props_('view') = value;
        end
        function result = get.viewId(obj)
            if ismethod(obj, 'get_viewId')
                result = obj.get_viewId();
            else
                if isKey(obj.props_, 'viewId')
                    result = obj.props_('viewId');
                else
                    result = [];
                end
            end
        end
        function obj = set.viewId(obj, value)
            obj.props_('viewId') = value;
        end
        function result = get.containerType(obj)
            if ismethod(obj, 'get_containerType')
                result = obj.get_containerType();
            else
                if isKey(obj.props_, 'containerType')
                    result = obj.props_('containerType');
                else
                    result = [];
                end
            end
        end
        function obj = set.containerType(obj, value)
            obj.props_('containerType') = value;
        end
        function result = get.containerId(obj)
            if ismethod(obj, 'get_containerId')
                result = obj.get_containerId();
            else
                if isKey(obj.props_, 'containerId')
                    result = obj.props_('containerId');
                else
                    result = [];
                end
            end
        end
        function obj = set.containerId(obj, value)
            obj.props_('containerId') = value;
        end
        function result = get.filename(obj)
            if ismethod(obj, 'get_filename')
                result = obj.get_filename();
            else
                if isKey(obj.props_, 'filename')
                    result = obj.props_('filename');
                else
                    result = [];
                end
            end
        end
        function obj = set.filename(obj, value)
            obj.props_('filename') = value;
        end
        function result = toJson(obj)
            result = containers.Map;
            if isKey(obj.props_, 'view')
                result('view') = obj.props_('view').toJson();
            end
            if isKey(obj.props_, 'viewId')
                result('viewId') = flywheel.ModelBase.serializeValue(obj.props_('viewId'), 'char');
            end
            if isKey(obj.props_, 'containerType')
                result('containerType') = flywheel.ModelBase.serializeValue(obj.props_('containerType'), 'char');
            end
            if isKey(obj.props_, 'containerId')
                result('containerId') = flywheel.ModelBase.serializeValue(obj.props_('containerId'), 'char');
            end
            if isKey(obj.props_, 'filename')
                result('filename') = flywheel.ModelBase.serializeValue(obj.props_('filename'), 'char');
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, 'view')
                result.view = struct(obj.props_('view'));
            else
                result.view = [];
            end
            if isKey(obj.props_, 'viewId')
                result.viewId = obj.props_('viewId');
            else
                result.viewId = [];
            end
            if isKey(obj.props_, 'containerType')
                result.containerType = obj.props_('containerType');
            else
                result.containerType = [];
            end
            if isKey(obj.props_, 'containerId')
                result.containerId = obj.props_('containerId');
            else
                result.containerId = [];
            end
            if isKey(obj.props_, 'filename')
                result.filename = obj.props_('filename');
            else
                result.filename = [];
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
                if isKey(obj.props_, 'view')
                    propList.view = obj.props_('view');
                else
                    propList.view = [];
                end
                if isKey(obj.props_, 'viewId')
                    propList.viewId = obj.props_('viewId');
                else
                    propList.viewId = [];
                end
                if isKey(obj.props_, 'containerType')
                    propList.containerType = obj.props_('containerType');
                else
                    propList.containerType = [];
                end
                if isKey(obj.props_, 'containerId')
                    propList.containerId = obj.props_('containerId');
                else
                    propList.containerId = [];
                end
                if isKey(obj.props_, 'filename')
                    propList.filename = obj.props_('filename');
                else
                    propList.filename = [];
                end
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function obj = fromJson(json, context)
            obj =  flywheel.model.DataViewSaveDataViewInput;
            if isfield(json, 'view')
                obj.props_('view') = flywheel.model.DataView.fromJson(json.view, context);
            end
            if isfield(json, 'viewId')
                obj.props_('viewId') = flywheel.ModelBase.deserializeValue(json.viewId, 'char');
            end
            if isfield(json, 'containerType')
                obj.props_('containerType') = flywheel.ModelBase.deserializeValue(json.containerType, 'char');
            end
            if isfield(json, 'containerId')
                obj.props_('containerId') = flywheel.ModelBase.deserializeValue(json.containerId, 'char');
            end
            if isfield(json, 'filename')
                obj.props_('filename') = flywheel.ModelBase.deserializeValue(json.filename, 'char');
            end
            if isprop(obj, 'context_')
                obj.setContext_(context);
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.DataViewSaveDataViewInput')
                    obj = flywheel.model.DataViewSaveDataViewInput(obj);
                end
                if isKey(obj.props_, 'view')
                    obj.props_('view') =  flywheel.model.DataView.ensureIsInstance(obj.props_('view'));
                end
                if isKey(obj.props_, 'viewId')
                end
                if isKey(obj.props_, 'containerType')
                end
                if isKey(obj.props_, 'containerId')
                end
                if isKey(obj.props_, 'filename')
                end
            end
        end
    end
end
