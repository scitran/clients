% ModalitiesApi - Modality operations
%
% ModalitiesApi Properties:
%    apiClient - ApiClient instance
%
% ModalitiesApi Methods
%    addModality      - Create a new modality.
%    deleteModality   - Delete a modality
%    getAllModalities - List all modalities.
%    getModality      - Get a modality's classification specification
%    replaceModality  - Replace modality
classdef ModalitiesApi < handle
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties
        apiClient
        context_
    end
    methods
        function obj = ModalitiesApi(apiClient, context)
            obj.apiClient = apiClient;
            obj.context_ = context;
        end

        function [returnData, resp] = addModality(obj, body, varargin)
            % Create a new modality.
            % body (Modality)
            % returns: [ContainerNewOutput, resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addRequired(x__inp, 'body');
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, body, varargin{:});

            % Path parameters
            pathParams = {};

            % Query parameters
            queryParams = {};

            % Header parameters
            headers = {};

            % Form parameters
            formParams = {};
            files = {};

            % Body (as JSON)
            body = flywheel.model.Modality.ensureIsInstance(x__inp.Results.body);
            body = flywheel.ApiClient.encodeJson(body.toJson());

            resp = obj.apiClient.callApi('POST', '/modalities', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                case '200'
                    if x__inp.Results.DumpResponseData
                        x__respData = resp.getBodyAsString();
                        disp(x__respData);
                    end
                    json = flywheel.ApiClient.getResponseJson(resp);
                    returnData = flywheel.model.ContainerNewOutput.fromJson(json, obj.context_);
                    if ~isempty(returnData)
                        returnData = returnData.returnValue();
                    end
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = deleteModality(obj, modalityId, varargin)
            % Delete a modality
            % modalityId (char)
            % returns: [none, resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addRequired(x__inp, 'modalityId');
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, modalityId, varargin{:});

            % Path parameters
            pathParams = {};
            if ~isempty(x__inp.Results.modalityId)
                pathParams = [pathParams, 'ModalityId', x__inp.Results.modalityId];
            end

            % Query parameters
            queryParams = {};

            % Header parameters
            headers = {};

            % Form parameters
            formParams = {};
            files = {};

            % Body (as JSON)
            body = {};

            resp = obj.apiClient.callApi('DELETE', '/modalities/{ModalityId}', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = getAllModalities(obj, varargin)
            % List all modalities.
            % returns: [vector[Modality], resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, varargin{:});

            % Path parameters
            pathParams = {};

            % Query parameters
            queryParams = {};

            % Header parameters
            headers = {};

            % Form parameters
            formParams = {};
            files = {};

            % Body (as JSON)
            body = {};

            resp = obj.apiClient.callApi('GET', '/modalities', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                case '200'
                    if x__inp.Results.DumpResponseData
                        x__respData = resp.getBodyAsString();
                        disp(x__respData);
                    end
                    json = flywheel.ApiClient.getResponseJson(resp);
                    returnData = flywheel.ModelBase.cellmap(@(x) flywheel.model.Modality.fromJson(x, obj.context_), json);
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = getModality(obj, modalityId, varargin)
            % Get a modality's classification specification
            % modalityId (char)
            % returns: [Modality, resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addRequired(x__inp, 'modalityId');
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, modalityId, varargin{:});

            % Path parameters
            pathParams = {};
            if ~isempty(x__inp.Results.modalityId)
                pathParams = [pathParams, 'ModalityId', x__inp.Results.modalityId];
            end

            % Query parameters
            queryParams = {};

            % Header parameters
            headers = {};

            % Form parameters
            formParams = {};
            files = {};

            % Body (as JSON)
            body = {};

            resp = obj.apiClient.callApi('GET', '/modalities/{ModalityId}', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                case '200'
                    if x__inp.Results.DumpResponseData
                        x__respData = resp.getBodyAsString();
                        disp(x__respData);
                    end
                    json = flywheel.ApiClient.getResponseJson(resp);
                    returnData = flywheel.model.Modality.fromJson(json, obj.context_);
                    if ~isempty(returnData)
                        returnData = returnData.returnValue();
                    end
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = replaceModality(obj, modalityId, body, varargin)
            % Replace modality
            % modalityId (char)
            % body (Modality)
            % returns: [none, resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addRequired(x__inp, 'modalityId');
            addRequired(x__inp, 'body');
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, modalityId, body, varargin{:});

            % Path parameters
            pathParams = {};
            if ~isempty(x__inp.Results.modalityId)
                pathParams = [pathParams, 'ModalityId', x__inp.Results.modalityId];
            end

            % Query parameters
            queryParams = {};

            % Header parameters
            headers = {};

            % Form parameters
            formParams = {};
            files = {};

            % Body (as JSON)
            body = flywheel.model.Modality.ensureIsInstance(x__inp.Results.body);
            body = flywheel.ApiClient.encodeJson(body.toJson());

            resp = obj.apiClient.callApi('PUT', '/modalities/{ModalityId}', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                otherwise
                    returnData = [];
            end
        end

    end
end
