% ConfigOutput
%
% ConfigOutput Properties:
%    site      
%    modified  
%    auth      
%    created   
%    signedUrl  - Whether or not this server supports signed url uploads
%
% ConfigOutput Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef ConfigOutput < flywheel.ModelBase
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'site', 'modified', 'auth', 'created', 'signedUrl' }, ...
            { 'site', 'modified', 'auth', 'created', 'signed_url' });
    end
    properties(Dependent)
        site
        modified
        auth
        created
        signedUrl
    end
    methods
        function obj = ConfigOutput(varargin)
            obj@flywheel.ModelBase(flywheel.model.ConfigOutput.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addParameter(p, 'site', []);
                addParameter(p, 'modified', []);
                addParameter(p, 'auth', []);
                addParameter(p, 'created', []);
                addParameter(p, 'signedUrl', []);

                parse(p, varargin{:});

                if ~isempty(p.Results.site)
                    obj.props_('site') = p.Results.site;
                end
                if ~isempty(p.Results.modified)
                    obj.props_('modified') = p.Results.modified;
                end
                if ~isempty(p.Results.auth)
                    obj.props_('auth') = p.Results.auth;
                end
                if ~isempty(p.Results.created)
                    obj.props_('created') = p.Results.created;
                end
                if ~isempty(p.Results.signedUrl)
                    obj.props_('signed_url') = p.Results.signedUrl;
                end
            end
        end
        function result = get.site(obj)
            if ismethod(obj, 'get_site')
                result = obj.get_site();
            else
                if isKey(obj.props_, 'site')
                    result = obj.props_('site');
                else
                    result = [];
                end
            end
        end
        function obj = set.site(obj, value)
            obj.props_('site') = value;
        end
        function result = get.modified(obj)
            if ismethod(obj, 'get_modified')
                result = obj.get_modified();
            else
                if isKey(obj.props_, 'modified')
                    result = obj.props_('modified');
                else
                    result = [];
                end
            end
        end
        function obj = set.modified(obj, value)
            obj.props_('modified') = value;
        end
        function result = get.auth(obj)
            if ismethod(obj, 'get_auth')
                result = obj.get_auth();
            else
                if isKey(obj.props_, 'auth')
                    result = obj.props_('auth');
                else
                    result = [];
                end
            end
        end
        function obj = set.auth(obj, value)
            obj.props_('auth') = value;
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
        function result = get.signedUrl(obj)
            if ismethod(obj, 'get_signedUrl')
                result = obj.get_signedUrl();
            else
                if isKey(obj.props_, 'signed_url')
                    result = obj.props_('signed_url');
                else
                    result = [];
                end
            end
        end
        function obj = set.signedUrl(obj, value)
            obj.props_('signed_url') = value;
        end
        function result = toJson(obj)
            result = containers.Map;
            if isKey(obj.props_, 'site')
                result('site') = obj.props_('site').toJson();
            end
            if isKey(obj.props_, 'modified')
                result('modified') = flywheel.ModelBase.serializeValue(obj.props_('modified'), 'char');
            end
            if isKey(obj.props_, 'auth')
                result('auth') = obj.props_('auth').toJson();
            end
            if isKey(obj.props_, 'created')
                result('created') = flywheel.ModelBase.serializeValue(obj.props_('created'), 'char');
            end
            if isKey(obj.props_, 'signed_url')
                result('signed_url') = flywheel.ModelBase.serializeValue(obj.props_('signed_url'), 'logical');
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, 'site')
                result.site = struct(obj.props_('site'));
            else
                result.site = [];
            end
            if isKey(obj.props_, 'modified')
                result.modified = obj.props_('modified');
            else
                result.modified = [];
            end
            if isKey(obj.props_, 'auth')
                result.auth = struct(obj.props_('auth'));
            else
                result.auth = [];
            end
            if isKey(obj.props_, 'created')
                result.created = obj.props_('created');
            else
                result.created = [];
            end
            if isKey(obj.props_, 'signed_url')
                result.signedUrl = obj.props_('signed_url');
            else
                result.signedUrl = [];
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
                if isKey(obj.props_, 'site')
                    propList.site = obj.props_('site');
                else
                    propList.site = [];
                end
                if isKey(obj.props_, 'modified')
                    propList.modified = obj.props_('modified');
                else
                    propList.modified = [];
                end
                if isKey(obj.props_, 'auth')
                    propList.auth = obj.props_('auth');
                else
                    propList.auth = [];
                end
                if isKey(obj.props_, 'created')
                    propList.created = obj.props_('created');
                else
                    propList.created = [];
                end
                if isKey(obj.props_, 'signed_url')
                    propList.signedUrl = obj.props_('signed_url');
                else
                    propList.signedUrl = [];
                end
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function obj = fromJson(json, context)
            obj =  flywheel.model.ConfigOutput;
            if isfield(json, 'site')
                obj.props_('site') = flywheel.model.ConfigSiteConfigOutput.fromJson(json.site, context);
            end
            if isfield(json, 'modified')
                obj.props_('modified') = flywheel.ModelBase.deserializeValue(json.modified, 'char');
            end
            if isfield(json, 'auth')
                obj.props_('auth') = flywheel.model.ConfigAuthOutput.fromJson(json.auth, context);
            end
            if isfield(json, 'created')
                obj.props_('created') = flywheel.ModelBase.deserializeValue(json.created, 'char');
            end
            if isfield(json, 'signed_url')
                obj.props_('signed_url') = flywheel.ModelBase.deserializeValue(json.signed_url, 'logical');
            end
            if isprop(obj, 'context_')
                obj.setContext_(context);
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.ConfigOutput')
                    obj = flywheel.model.ConfigOutput(obj);
                end
                if isKey(obj.props_, 'site')
                    obj.props_('site') =  flywheel.model.ConfigSiteConfigOutput.ensureIsInstance(obj.props_('site'));
                end
                if isKey(obj.props_, 'modified')
                end
                if isKey(obj.props_, 'auth')
                    obj.props_('auth') =  flywheel.model.ConfigAuthOutput.ensureIsInstance(obj.props_('auth'));
                end
                if isKey(obj.props_, 'created')
                end
                if isKey(obj.props_, 'signed_url')
                end
            end
        end
    end
end
