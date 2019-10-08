% ProviderInput
%
% ProviderInput Properties:
%    providerClass  - The provider class - one of compute or storage
%    providerType   - The provider type (e.g. static or gcloud)
%    label          - A human readable label for the provider
%    config         - The provider-specific configuration fields.
%    creds          - The provider-specific credential fields.
%
% ProviderInput Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef ProviderInput < flywheel.ModelBase
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'providerClass', 'providerType', 'label', 'config', 'creds' }, ...
            { 'provider_class', 'provider_type', 'label', 'config', 'creds' });
    end
    properties(Dependent)
        providerClass
        providerType
        label
        config
        creds
    end
    methods
        function obj = ProviderInput(varargin)
            obj@flywheel.ModelBase(flywheel.model.ProviderInput.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addParameter(p, 'providerClass', []);
                addParameter(p, 'providerType', []);
                addParameter(p, 'label', []);
                addParameter(p, 'config', []);
                addParameter(p, 'creds', []);

                parse(p, varargin{:});

                if ~isempty(p.Results.providerClass)
                    obj.props_('provider_class') = p.Results.providerClass;
                end
                if ~isempty(p.Results.providerType)
                    obj.props_('provider_type') = p.Results.providerType;
                end
                if ~isempty(p.Results.label)
                    obj.props_('label') = p.Results.label;
                end
                if ~isempty(p.Results.config)
                    obj.props_('config') = p.Results.config;
                end
                if ~isempty(p.Results.creds)
                    obj.props_('creds') = p.Results.creds;
                end
            end
        end
        function result = get.providerClass(obj)
            if ismethod(obj, 'get_providerClass')
                result = obj.get_providerClass();
            else
                if isKey(obj.props_, 'provider_class')
                    result = obj.props_('provider_class');
                else
                    result = [];
                end
            end
        end
        function obj = set.providerClass(obj, value)
            obj.props_('provider_class') = value;
        end
        function result = get.providerType(obj)
            if ismethod(obj, 'get_providerType')
                result = obj.get_providerType();
            else
                if isKey(obj.props_, 'provider_type')
                    result = obj.props_('provider_type');
                else
                    result = [];
                end
            end
        end
        function obj = set.providerType(obj, value)
            obj.props_('provider_type') = value;
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
        function result = get.config(obj)
            if ismethod(obj, 'get_config')
                result = obj.get_config();
            else
                if isKey(obj.props_, 'config')
                    result = obj.props_('config');
                else
                    result = [];
                end
            end
        end
        function obj = set.config(obj, value)
            obj.props_('config') = value;
        end
        function result = get.creds(obj)
            if ismethod(obj, 'get_creds')
                result = obj.get_creds();
            else
                if isKey(obj.props_, 'creds')
                    result = obj.props_('creds');
                else
                    result = [];
                end
            end
        end
        function obj = set.creds(obj, value)
            obj.props_('creds') = value;
        end
        function result = toJson(obj)
            result = containers.Map;
            if isKey(obj.props_, 'provider_class')
                result('provider_class') = flywheel.ModelBase.serializeValue(obj.props_('provider_class'), 'char');
            end
            if isKey(obj.props_, 'provider_type')
                result('provider_type') = flywheel.ModelBase.serializeValue(obj.props_('provider_type'), 'char');
            end
            if isKey(obj.props_, 'label')
                result('label') = flywheel.ModelBase.serializeValue(obj.props_('label'), 'char');
            end
            if isKey(obj.props_, 'config')
                result('config') = flywheel.ModelBase.serializeValue(obj.props_('config'), 'containers.Map');
            end
            if isKey(obj.props_, 'creds')
                result('creds') = flywheel.ModelBase.serializeValue(obj.props_('creds'), 'containers.Map');
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, 'provider_class')
                result.providerClass = obj.props_('provider_class');
            else
                result.providerClass = [];
            end
            if isKey(obj.props_, 'provider_type')
                result.providerType = obj.props_('provider_type');
            else
                result.providerType = [];
            end
            if isKey(obj.props_, 'label')
                result.label = obj.props_('label');
            else
                result.label = [];
            end
            if isKey(obj.props_, 'config')
                result.config = obj.props_('config');
            else
                result.config = [];
            end
            if isKey(obj.props_, 'creds')
                result.creds = obj.props_('creds');
            else
                result.creds = [];
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
                if isKey(obj.props_, 'provider_class')
                    propList.providerClass = obj.props_('provider_class');
                else
                    propList.providerClass = [];
                end
                if isKey(obj.props_, 'provider_type')
                    propList.providerType = obj.props_('provider_type');
                else
                    propList.providerType = [];
                end
                if isKey(obj.props_, 'label')
                    propList.label = obj.props_('label');
                else
                    propList.label = [];
                end
                if isKey(obj.props_, 'config')
                    propList.config = obj.props_('config');
                else
                    propList.config = [];
                end
                if isKey(obj.props_, 'creds')
                    propList.creds = obj.props_('creds');
                else
                    propList.creds = [];
                end
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function obj = fromJson(json, context)
            obj =  flywheel.model.ProviderInput;
            if isfield(json, 'provider_class')
                obj.props_('provider_class') = flywheel.ModelBase.deserializeValue(json.provider_class, 'char');
            end
            if isfield(json, 'provider_type')
                obj.props_('provider_type') = flywheel.ModelBase.deserializeValue(json.provider_type, 'char');
            end
            if isfield(json, 'label')
                obj.props_('label') = flywheel.ModelBase.deserializeValue(json.label, 'char');
            end
            if isfield(json, 'config')
                obj.props_('config') = flywheel.ModelBase.deserializeValue(json.config, 'containers.Map');
            end
            if isfield(json, 'creds')
                obj.props_('creds') = flywheel.ModelBase.deserializeValue(json.creds, 'containers.Map');
            end
            if isprop(obj, 'context_')
                obj.setContext_(context);
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.ProviderInput')
                    obj = flywheel.model.ProviderInput(obj);
                end
                if isKey(obj.props_, 'provider_class')
                end
                if isKey(obj.props_, 'provider_type')
                end
                if isKey(obj.props_, 'label')
                end
                if isKey(obj.props_, 'config')
                end
                if isKey(obj.props_, 'creds')
                end
            end
        end
    end
end
