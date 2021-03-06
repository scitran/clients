% PackfileSessionInput
%
% PackfileSessionInput Properties:
%    label   
%    subject 
%
% PackfileSessionInput Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef PackfileSessionInput < flywheel.ModelBase
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'label', 'subject' }, ...
            { 'label', 'subject' });
    end
    properties(Dependent)
        label
        subject
    end
    methods
        function obj = PackfileSessionInput(varargin)
            obj@flywheel.ModelBase(flywheel.model.PackfileSessionInput.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addParameter(p, 'label', []);
                addParameter(p, 'subject', []);

                parse(p, varargin{:});

                if ~isempty(p.Results.label)
                    obj.props_('label') = p.Results.label;
                end
                if ~isempty(p.Results.subject)
                    obj.props_('subject') = p.Results.subject;
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
        function result = toJson(obj)
            result = containers.Map;
            if isKey(obj.props_, 'label')
                result('label') = flywheel.ModelBase.serializeValue(obj.props_('label'), 'char');
            end
            if isKey(obj.props_, 'subject')
                result('subject') = obj.props_('subject').toJson();
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, 'label')
                result.label = obj.props_('label');
            else
                result.label = [];
            end
            if isKey(obj.props_, 'subject')
                result.subject = struct(obj.props_('subject'));
            else
                result.subject = [];
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
                if isKey(obj.props_, 'subject')
                    propList.subject = obj.props_('subject');
                else
                    propList.subject = [];
                end
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function obj = fromJson(json, context)
            obj =  flywheel.model.PackfileSessionInput;
            if isfield(json, 'label')
                obj.props_('label') = flywheel.ModelBase.deserializeValue(json.label, 'char');
            end
            if isfield(json, 'subject')
                obj.props_('subject') = flywheel.model.Subject.fromJson(json.subject, context);
            end
            if isprop(obj, 'context_')
                obj.setContext_(context);
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.PackfileSessionInput')
                    obj = flywheel.model.PackfileSessionInput(obj);
                end
                if isKey(obj.props_, 'label')
                end
                if isKey(obj.props_, 'subject')
                    obj.props_('subject') =  flywheel.model.Subject.ensureIsInstance(obj.props_('subject'));
                end
            end
        end
    end
end
