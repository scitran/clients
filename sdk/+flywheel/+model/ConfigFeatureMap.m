% ConfigFeatureMap - A map of supported features
%
% ConfigFeatureMap Properties:
%    signedUrl     - Whether or not this server supports signed url uploads
%    jobTickets    - Whether or not this server supports new job tickets
%    jobAsk        - Whether or not this server supports the /jobs/ask endpoint
%    multiproject  - Whether or not this server has the multiproject feature enabled
%
% ConfigFeatureMap Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef ConfigFeatureMap < flywheel.ModelBase
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'signedUrl', 'jobTickets', 'jobAsk', 'multiproject' }, ...
            { 'signed_url', 'job_tickets', 'job_ask', 'multiproject' });
    end
    properties(Dependent)
        signedUrl
        jobTickets
        jobAsk
        multiproject
    end
    methods
        function obj = ConfigFeatureMap(varargin)
            obj@flywheel.ModelBase(flywheel.model.ConfigFeatureMap.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addParameter(p, 'signedUrl', []);
                addParameter(p, 'jobTickets', []);
                addParameter(p, 'jobAsk', []);
                addParameter(p, 'multiproject', []);

                parse(p, varargin{:});

                if ~isempty(p.Results.signedUrl)
                    obj.props_('signed_url') = p.Results.signedUrl;
                end
                if ~isempty(p.Results.jobTickets)
                    obj.props_('job_tickets') = p.Results.jobTickets;
                end
                if ~isempty(p.Results.jobAsk)
                    obj.props_('job_ask') = p.Results.jobAsk;
                end
                if ~isempty(p.Results.multiproject)
                    obj.props_('multiproject') = p.Results.multiproject;
                end
            end
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
        function result = get.jobTickets(obj)
            if ismethod(obj, 'get_jobTickets')
                result = obj.get_jobTickets();
            else
                if isKey(obj.props_, 'job_tickets')
                    result = obj.props_('job_tickets');
                else
                    result = [];
                end
            end
        end
        function obj = set.jobTickets(obj, value)
            obj.props_('job_tickets') = value;
        end
        function result = get.jobAsk(obj)
            if ismethod(obj, 'get_jobAsk')
                result = obj.get_jobAsk();
            else
                if isKey(obj.props_, 'job_ask')
                    result = obj.props_('job_ask');
                else
                    result = [];
                end
            end
        end
        function obj = set.jobAsk(obj, value)
            obj.props_('job_ask') = value;
        end
        function result = get.multiproject(obj)
            if ismethod(obj, 'get_multiproject')
                result = obj.get_multiproject();
            else
                if isKey(obj.props_, 'multiproject')
                    result = obj.props_('multiproject');
                else
                    result = [];
                end
            end
        end
        function obj = set.multiproject(obj, value)
            obj.props_('multiproject') = value;
        end
        function result = toJson(obj)
            result = containers.Map;
            if isKey(obj.props_, 'signed_url')
                result('signed_url') = flywheel.ModelBase.serializeValue(obj.props_('signed_url'), 'logical');
            end
            if isKey(obj.props_, 'job_tickets')
                result('job_tickets') = flywheel.ModelBase.serializeValue(obj.props_('job_tickets'), 'logical');
            end
            if isKey(obj.props_, 'job_ask')
                result('job_ask') = flywheel.ModelBase.serializeValue(obj.props_('job_ask'), 'logical');
            end
            if isKey(obj.props_, 'multiproject')
                result('multiproject') = flywheel.ModelBase.serializeValue(obj.props_('multiproject'), 'logical');
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, 'signed_url')
                result.signedUrl = obj.props_('signed_url');
            else
                result.signedUrl = [];
            end
            if isKey(obj.props_, 'job_tickets')
                result.jobTickets = obj.props_('job_tickets');
            else
                result.jobTickets = [];
            end
            if isKey(obj.props_, 'job_ask')
                result.jobAsk = obj.props_('job_ask');
            else
                result.jobAsk = [];
            end
            if isKey(obj.props_, 'multiproject')
                result.multiproject = obj.props_('multiproject');
            else
                result.multiproject = [];
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
                if isKey(obj.props_, 'signed_url')
                    propList.signedUrl = obj.props_('signed_url');
                else
                    propList.signedUrl = [];
                end
                if isKey(obj.props_, 'job_tickets')
                    propList.jobTickets = obj.props_('job_tickets');
                else
                    propList.jobTickets = [];
                end
                if isKey(obj.props_, 'job_ask')
                    propList.jobAsk = obj.props_('job_ask');
                else
                    propList.jobAsk = [];
                end
                if isKey(obj.props_, 'multiproject')
                    propList.multiproject = obj.props_('multiproject');
                else
                    propList.multiproject = [];
                end
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function obj = fromJson(json, context)
            obj =  flywheel.model.ConfigFeatureMap;
            if isfield(json, 'signed_url')
                obj.props_('signed_url') = flywheel.ModelBase.deserializeValue(json.signed_url, 'logical');
            end
            if isfield(json, 'job_tickets')
                obj.props_('job_tickets') = flywheel.ModelBase.deserializeValue(json.job_tickets, 'logical');
            end
            if isfield(json, 'job_ask')
                obj.props_('job_ask') = flywheel.ModelBase.deserializeValue(json.job_ask, 'logical');
            end
            if isfield(json, 'multiproject')
                obj.props_('multiproject') = flywheel.ModelBase.deserializeValue(json.multiproject, 'logical');
            end
            if isprop(obj, 'context_')
                obj.setContext_(context);
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.ConfigFeatureMap')
                    obj = flywheel.model.ConfigFeatureMap(obj);
                end
                if isKey(obj.props_, 'signed_url')
                end
                if isKey(obj.props_, 'job_tickets')
                end
                if isKey(obj.props_, 'job_ask')
                end
                if isKey(obj.props_, 'multiproject')
                end
            end
        end
    end
end
