% Collection
%
% Collection Properties:
%    public       - Indicates whether or not a container is public
%    label        - Application-specific label
%    info        
%    description 
%    contents    
%    id           - Unique database ID
%    infoExists   - Flag that indicates whether or not info exists on this container
%    curator      - Database ID of a user
%    created      - Creation time (automatically set)
%    modified     - Last modification time (automatically updated)
%    permissions 
%    files       
%    notes       
%    tags         - Array of application-specific tags
%    analyses    
%
% Collection Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef Collection < flywheel.ModelBase & flywheel.mixins.CollectionMixin
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'public', 'label', 'info', 'description', 'contents', 'id', 'infoExists', 'curator', 'created', 'modified', 'permissions', 'files', 'notes', 'tags', 'analyses' }, ...
            { 'public', 'label', 'info', 'description', 'contents', '_id', 'info_exists', 'curator', 'created', 'modified', 'permissions', 'files', 'notes', 'tags', 'analyses' });
    end
    properties(Dependent)
        public
        label
        info
        description
        contents
        id
        infoExists
        curator
        created
        modified
        permissions
        files
        notes
        tags
        analyses
    end
    methods
        function obj = Collection(varargin)
            obj@flywheel.ModelBase(flywheel.model.Collection.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addParameter(p, 'public', []);
                addParameter(p, 'label', []);
                addParameter(p, 'info', []);
                addParameter(p, 'description', []);
                addParameter(p, 'contents', []);
                addParameter(p, 'id', []);
                addParameter(p, 'infoExists', []);
                addParameter(p, 'curator', []);
                addParameter(p, 'created', []);
                addParameter(p, 'modified', []);
                addParameter(p, 'permissions', []);
                addParameter(p, 'files', []);
                addParameter(p, 'notes', []);
                addParameter(p, 'tags', []);
                addParameter(p, 'analyses', []);

                parse(p, varargin{:});

                if ~isempty(p.Results.public)
                    obj.props_('public') = p.Results.public;
                end
                if ~isempty(p.Results.label)
                    obj.props_('label') = p.Results.label;
                end
                if ~isempty(p.Results.info)
                    obj.props_('info') = p.Results.info;
                end
                if ~isempty(p.Results.description)
                    obj.props_('description') = p.Results.description;
                end
                if ~isempty(p.Results.contents)
                    obj.props_('contents') = p.Results.contents;
                end
                if ~isempty(p.Results.id)
                    obj.props_('_id') = p.Results.id;
                end
                if ~isempty(p.Results.infoExists)
                    obj.props_('info_exists') = p.Results.infoExists;
                end
                if ~isempty(p.Results.curator)
                    obj.props_('curator') = p.Results.curator;
                end
                if ~isempty(p.Results.created)
                    obj.props_('created') = p.Results.created;
                end
                if ~isempty(p.Results.modified)
                    obj.props_('modified') = p.Results.modified;
                end
                if ~isempty(p.Results.permissions)
                    obj.props_('permissions') = p.Results.permissions;
                end
                if ~isempty(p.Results.files)
                    obj.props_('files') = p.Results.files;
                end
                if ~isempty(p.Results.notes)
                    obj.props_('notes') = p.Results.notes;
                end
                if ~isempty(p.Results.tags)
                    obj.props_('tags') = p.Results.tags;
                end
                if ~isempty(p.Results.analyses)
                    obj.props_('analyses') = p.Results.analyses;
                end
            end
        end
        function result = get.public(obj)
            if ismethod(obj, 'get_public')
                result = obj.get_public();
            else
                if isKey(obj.props_, 'public')
                    result = obj.props_('public');
                else
                    result = [];
                end
            end
        end
        function obj = set.public(obj, value)
            obj.props_('public') = value;
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
        function result = get.info(obj)
            if ismethod(obj, 'get_info')
                result = obj.get_info();
            else
                if isKey(obj.props_, 'info')
                    result = obj.props_('info');
                else
                    result = [];
                end
            end
        end
        function obj = set.info(obj, value)
            obj.props_('info') = value;
        end
        function result = get.description(obj)
            if ismethod(obj, 'get_description')
                result = obj.get_description();
            else
                if isKey(obj.props_, 'description')
                    result = obj.props_('description');
                else
                    result = [];
                end
            end
        end
        function obj = set.description(obj, value)
            obj.props_('description') = value;
        end
        function result = get.contents(obj)
            if ismethod(obj, 'get_contents')
                result = obj.get_contents();
            else
                if isKey(obj.props_, 'contents')
                    result = obj.props_('contents');
                else
                    result = [];
                end
            end
        end
        function obj = set.contents(obj, value)
            obj.props_('contents') = value;
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
        function result = get.infoExists(obj)
            if ismethod(obj, 'get_infoExists')
                result = obj.get_infoExists();
            else
                if isKey(obj.props_, 'info_exists')
                    result = obj.props_('info_exists');
                else
                    result = [];
                end
            end
        end
        function obj = set.infoExists(obj, value)
            obj.props_('info_exists') = value;
        end
        function result = get.curator(obj)
            if ismethod(obj, 'get_curator')
                result = obj.get_curator();
            else
                if isKey(obj.props_, 'curator')
                    result = obj.props_('curator');
                else
                    result = [];
                end
            end
        end
        function obj = set.curator(obj, value)
            obj.props_('curator') = value;
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
        function result = get.permissions(obj)
            if ismethod(obj, 'get_permissions')
                result = obj.get_permissions();
            else
                if isKey(obj.props_, 'permissions')
                    result = obj.props_('permissions');
                else
                    result = [];
                end
            end
        end
        function obj = set.permissions(obj, value)
            obj.props_('permissions') = value;
        end
        function result = get.files(obj)
            if ismethod(obj, 'get_files')
                result = obj.get_files();
            else
                if isKey(obj.props_, 'files')
                    result = obj.props_('files');
                else
                    result = [];
                end
            end
        end
        function obj = set.files(obj, value)
            obj.props_('files') = value;
        end
        function result = get.notes(obj)
            if ismethod(obj, 'get_notes')
                result = obj.get_notes();
            else
                if isKey(obj.props_, 'notes')
                    result = obj.props_('notes');
                else
                    result = [];
                end
            end
        end
        function obj = set.notes(obj, value)
            obj.props_('notes') = value;
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
        function result = get.analyses(obj)
            if ismethod(obj, 'get_analyses')
                result = obj.get_analyses();
            else
                if isKey(obj.props_, 'analyses')
                    result = obj.props_('analyses');
                else
                    result = [];
                end
            end
        end
        function obj = set.analyses(obj, value)
            obj.props_('analyses') = value;
        end
        function result = toJson(obj)
            result = containers.Map;
            if isKey(obj.props_, 'public')
                result('public') = flywheel.ModelBase.serializeValue(obj.props_('public'), 'logical');
            end
            if isKey(obj.props_, 'label')
                result('label') = flywheel.ModelBase.serializeValue(obj.props_('label'), 'char');
            end
            if isKey(obj.props_, 'info')
                result('info') = obj.props_('info').toJson();
            end
            if isKey(obj.props_, 'description')
                result('description') = flywheel.ModelBase.serializeValue(obj.props_('description'), 'char');
            end
            if isKey(obj.props_, 'contents')
                result('contents') = obj.props_('contents').toJson();
            end
            if isKey(obj.props_, '_id')
                result('_id') = flywheel.ModelBase.serializeValue(obj.props_('_id'), 'char');
            end
            if isKey(obj.props_, 'info_exists')
                result('info_exists') = flywheel.ModelBase.serializeValue(obj.props_('info_exists'), 'logical');
            end
            if isKey(obj.props_, 'curator')
                result('curator') = flywheel.ModelBase.serializeValue(obj.props_('curator'), 'char');
            end
            if isKey(obj.props_, 'created')
                result('created') = flywheel.ModelBase.serializeValue(obj.props_('created'), 'datetime');
            end
            if isKey(obj.props_, 'modified')
                result('modified') = flywheel.ModelBase.serializeValue(obj.props_('modified'), 'datetime');
            end
            if isKey(obj.props_, 'permissions')
                result('permissions') = flywheel.ModelBase.cellmap(@toJson, obj.props_('permissions'));
            end
            if isKey(obj.props_, 'files')
                result('files') = flywheel.ModelBase.cellmap(@toJson, obj.props_('files'));
            end
            if isKey(obj.props_, 'notes')
                result('notes') = flywheel.ModelBase.cellmap(@toJson, obj.props_('notes'));
            end
            if isKey(obj.props_, 'tags')
                result('tags') = flywheel.ModelBase.serializeValue(obj.props_('tags'), 'vector[char]');
            end
            if isKey(obj.props_, 'analyses')
                result('analyses') = flywheel.ModelBase.cellmap(@toJson, obj.props_('analyses'));
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, 'public')
                result.public = obj.props_('public');
            else
                result.public = [];
            end
            if isKey(obj.props_, 'label')
                result.label = obj.props_('label');
            else
                result.label = [];
            end
            if isKey(obj.props_, 'info')
                result.info = struct(obj.props_('info'));
            else
                result.info = [];
            end
            if isKey(obj.props_, 'description')
                result.description = obj.props_('description');
            else
                result.description = [];
            end
            if isKey(obj.props_, 'contents')
                result.contents = struct(obj.props_('contents'));
            else
                result.contents = [];
            end
            if isKey(obj.props_, '_id')
                result.id = obj.props_('_id');
            else
                result.id = [];
            end
            if isKey(obj.props_, 'info_exists')
                result.infoExists = obj.props_('info_exists');
            else
                result.infoExists = [];
            end
            if isKey(obj.props_, 'curator')
                result.curator = obj.props_('curator');
            else
                result.curator = [];
            end
            if isKey(obj.props_, 'created')
                result.created = obj.props_('created');
            else
                result.created = [];
            end
            if isKey(obj.props_, 'modified')
                result.modified = obj.props_('modified');
            else
                result.modified = [];
            end
            if isKey(obj.props_, 'permissions')
                result.permissions = flywheel.ModelBase.cellmap(@struct, obj.props_('permissions'));
            else
                result.permissions = [];
            end
            if isKey(obj.props_, 'files')
                result.files = flywheel.ModelBase.cellmap(@struct, obj.props_('files'));
            else
                result.files = [];
            end
            if isKey(obj.props_, 'notes')
                result.notes = flywheel.ModelBase.cellmap(@struct, obj.props_('notes'));
            else
                result.notes = [];
            end
            if isKey(obj.props_, 'tags')
                result.tags = obj.props_('tags');
            else
                result.tags = [];
            end
            if isKey(obj.props_, 'analyses')
                result.analyses = flywheel.ModelBase.cellmap(@struct, obj.props_('analyses'));
            else
                result.analyses = [];
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
                if isKey(obj.props_, 'public')
                    propList.public = obj.props_('public');
                else
                    propList.public = [];
                end
                if isKey(obj.props_, 'label')
                    propList.label = obj.props_('label');
                else
                    propList.label = [];
                end
                if isKey(obj.props_, 'info')
                    propList.info = obj.props_('info');
                else
                    propList.info = [];
                end
                if isKey(obj.props_, 'description')
                    propList.description = obj.props_('description');
                else
                    propList.description = [];
                end
                if isKey(obj.props_, 'contents')
                    propList.contents = obj.props_('contents');
                else
                    propList.contents = [];
                end
                if isKey(obj.props_, '_id')
                    propList.id = obj.props_('_id');
                else
                    propList.id = [];
                end
                if isKey(obj.props_, 'info_exists')
                    propList.infoExists = obj.props_('info_exists');
                else
                    propList.infoExists = [];
                end
                if isKey(obj.props_, 'curator')
                    propList.curator = obj.props_('curator');
                else
                    propList.curator = [];
                end
                if isKey(obj.props_, 'created')
                    propList.created = obj.props_('created');
                else
                    propList.created = [];
                end
                if isKey(obj.props_, 'modified')
                    propList.modified = obj.props_('modified');
                else
                    propList.modified = [];
                end
                if isKey(obj.props_, 'permissions')
                    propList.permissions = obj.props_('permissions');
                else
                    propList.permissions = [];
                end
                if isKey(obj.props_, 'files')
                    propList.files = obj.props_('files');
                else
                    propList.files = [];
                end
                if isKey(obj.props_, 'notes')
                    propList.notes = obj.props_('notes');
                else
                    propList.notes = [];
                end
                if isKey(obj.props_, 'tags')
                    propList.tags = obj.props_('tags');
                else
                    propList.tags = [];
                end
                if isKey(obj.props_, 'analyses')
                    propList.analyses = obj.props_('analyses');
                else
                    propList.analyses = [];
                end
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function obj = fromJson(json, context)
            obj =  flywheel.model.Collection;
            if isfield(json, 'public')
                obj.props_('public') = flywheel.ModelBase.deserializeValue(json.public, 'logical');
            end
            if isfield(json, 'label')
                obj.props_('label') = flywheel.ModelBase.deserializeValue(json.label, 'char');
            end
            if isfield(json, 'info')
                obj.props_('info') = flywheel.model.CommonInfo.fromJson(json.info, context);
            end
            if isfield(json, 'description')
                obj.props_('description') = flywheel.ModelBase.deserializeValue(json.description, 'char');
            end
            if isfield(json, 'contents')
                obj.props_('contents') = flywheel.model.CollectionOperation.fromJson(json.contents, context);
            end
            if isfield(json, 'x0x5Fid')
                obj.props_('_id') = flywheel.ModelBase.deserializeValue(json.x0x5Fid, 'char');
            end
            if isfield(json, 'info_exists')
                obj.props_('info_exists') = flywheel.ModelBase.deserializeValue(json.info_exists, 'logical');
            end
            if isfield(json, 'curator')
                obj.props_('curator') = flywheel.ModelBase.deserializeValue(json.curator, 'char');
            end
            if isfield(json, 'created')
                obj.props_('created') = flywheel.ModelBase.deserializeValue(json.created, 'datetime');
            end
            if isfield(json, 'modified')
                obj.props_('modified') = flywheel.ModelBase.deserializeValue(json.modified, 'datetime');
            end
            if isfield(json, 'permissions')
                obj.props_('permissions') = flywheel.ModelBase.cellmap(@(x) flywheel.model.Permission.fromJson(x, context), json.permissions);
            end
            if isfield(json, 'files')
                obj.props_('files') = flywheel.ModelBase.cellmap(@(x) flywheel.model.FileEntry.fromJson(x, context), json.files);
            end
            if isfield(json, 'notes')
                obj.props_('notes') = flywheel.ModelBase.cellmap(@(x) flywheel.model.Note.fromJson(x, context), json.notes);
            end
            if isfield(json, 'tags')
                obj.props_('tags') = flywheel.ModelBase.deserializeValue(json.tags, 'vector[char]');
            end
            if isfield(json, 'analyses')
                obj.props_('analyses') = flywheel.ModelBase.cellmap(@(x) flywheel.model.AnalysisOutput.fromJson(x, context), json.analyses);
            end
            if isprop(obj, 'context_')
                obj.setContext_(context);
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.Collection')
                    obj = flywheel.model.Collection(obj);
                end
                if isKey(obj.props_, 'public')
                end
                if isKey(obj.props_, 'label')
                end
                if isKey(obj.props_, 'info')
                    obj.props_('info') =  flywheel.model.CommonInfo.ensureIsInstance(obj.props_('info'));
                end
                if isKey(obj.props_, 'description')
                end
                if isKey(obj.props_, 'contents')
                    obj.props_('contents') =  flywheel.model.CollectionOperation.ensureIsInstance(obj.props_('contents'));
                end
                if isKey(obj.props_, '_id')
                end
                if isKey(obj.props_, 'info_exists')
                end
                if isKey(obj.props_, 'curator')
                end
                if isKey(obj.props_, 'created')
                end
                if isKey(obj.props_, 'modified')
                end
                if isKey(obj.props_, 'permissions')
                    obj.props_('permissions') = flywheel.ModelBase.cellmap(@flywheel.model.Permission.ensureIsInstance, obj.props_('permissions'));
                end
                if isKey(obj.props_, 'files')
                    obj.props_('files') = flywheel.ModelBase.cellmap(@flywheel.model.FileEntry.ensureIsInstance, obj.props_('files'));
                end
                if isKey(obj.props_, 'notes')
                    obj.props_('notes') = flywheel.ModelBase.cellmap(@flywheel.model.Note.ensureIsInstance, obj.props_('notes'));
                end
                if isKey(obj.props_, 'tags')
                end
                if isKey(obj.props_, 'analyses')
                    obj.props_('analyses') = flywheel.ModelBase.cellmap(@flywheel.model.AnalysisOutput.ensureIsInstance, obj.props_('analyses'));
                end
            end
        end
    end
end
