% JobsApi - Job operations
%
% JobsApi Properties:
%    apiClient - ApiClient instance
%
% JobsApi Methods
%    acceptFailedOutput - Accept failed job output.
%    addJob             - Add a job
%    addJobLogs         - Add logs to a job.
%    getAllJobs         - Return all jobs
%    getJob             - Get job details
%    getJobConfig       - Get a job's config
%    getJobDetail       - Get job container details
%    getJobLogs         - Get job logs
%    getJobsStats       - Get stats about all current jobs
%    getNextJob         - Get the next job in the queue
%    modifyJob          - Update a job.
%    prepareCompeteJob  - Create a ticket for completing a job, with id and status.
%    reapJobs           - Reap stale jobs
%    retryJob           - Retry a job.
%    updateJobProfile   - Update profile information on a job. (e.g. machine type, etc)
classdef JobsApi < handle
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties
        apiClient
        context_
    end
    methods
        function obj = JobsApi(apiClient, context)
            obj.apiClient = apiClient;
            obj.context_ = context;
        end

        function [returnData, resp] = acceptFailedOutput(obj, jobId, varargin)
            % Accept failed job output.
            % jobId (char)
            % returns: [none, resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addRequired(x__inp, 'jobId');
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, jobId, varargin{:});

            % Path parameters
            pathParams = {};
            if ~isempty(x__inp.Results.jobId)
                pathParams = [pathParams, 'JobId', x__inp.Results.jobId];
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

            resp = obj.apiClient.callApi('POST', '/jobs/{JobId}/accept-failed-output', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = addJob(obj, body, varargin)
            % Add a job
            % body (Job)
            % returns: [CommonObjectCreated, resp]

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
            body = flywheel.model.Job.ensureIsInstance(x__inp.Results.body);
            body = flywheel.ApiClient.encodeJson(body.toJson());

            resp = obj.apiClient.callApi('POST', '/jobs/add', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                case '200'
                    if x__inp.Results.DumpResponseData
                        x__respData = resp.getBodyAsString();
                        disp(x__respData);
                    end
                    json = flywheel.ApiClient.getResponseJson(resp);
                    returnData = flywheel.model.CommonObjectCreated.fromJson(json, obj.context_);
                    if ~isempty(returnData)
                        returnData = returnData.returnValue();
                    end
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = addJobLogs(obj, jobId, body, varargin)
            % Add logs to a job.
            % jobId (char)
            % body (vector[JobLogStatement])
            % returns: [none, resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addRequired(x__inp, 'jobId');
            addRequired(x__inp, 'body');
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, jobId, body, varargin{:});

            % Path parameters
            pathParams = {};
            if ~isempty(x__inp.Results.jobId)
                pathParams = [pathParams, 'JobId', x__inp.Results.jobId];
            end

            % Query parameters
            queryParams = {};

            % Header parameters
            headers = {};

            % Form parameters
            formParams = {};
            files = {};

            % Body (as JSON)
            body = flywheel.ModelBase.cellmap(@(x) flywheel.model.JobLogStatement.ensureIsInstance(x), x__inp.Results.body);
            body = flywheel.ApiClient.encodeJson(body.toJson());

            resp = obj.apiClient.callApi('POST', '/jobs/{JobId}/logs', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = getAllJobs(obj, varargin)
            % Return all jobs
            % states (char):filter results by job state
            % tags (char):filter results by job tags
            % filter (char):The filter to apply. (e.g. label=my-label,created>2018-09-22)
            % sort (char):The sort fields and order. (e.g. label:asc,created:desc)
            % limit (integer):The maximum number of entries to return.
            % skip (integer):The number of entries to skip.
            % page (integer):The page number (i.e. skip limit*page entries)
            % afterId (char):Paginate after the given id. (Cannot be used with sort, page or skip)
            % returns: [vector[JobListEntry], resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addParameter(x__inp, 'states', []);
            addParameter(x__inp, 'tags', []);
            addParameter(x__inp, 'filter', []);
            addParameter(x__inp, 'sort', []);
            addParameter(x__inp, 'limit', []);
            addParameter(x__inp, 'skip', []);
            addParameter(x__inp, 'page', []);
            addParameter(x__inp, 'afterId', []);
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, varargin{:});

            % Path parameters
            pathParams = {};

            % Query parameters
            queryParams = {};
            if ~isempty(x__inp.Results.states)
                queryParams = [queryParams, 'states', flywheel.ApiClient.castParam(x__inp.Results.states, 'char')];
            end
            if ~isempty(x__inp.Results.tags)
                queryParams = [queryParams, 'tags', flywheel.ApiClient.castParam(x__inp.Results.tags, 'char')];
            end
            if ~isempty(x__inp.Results.filter)
                queryParams = [queryParams, 'filter', flywheel.ApiClient.castParam(x__inp.Results.filter, 'char')];
            end
            if ~isempty(x__inp.Results.sort)
                queryParams = [queryParams, 'sort', flywheel.ApiClient.castParam(x__inp.Results.sort, 'char')];
            end
            if ~isempty(x__inp.Results.limit)
                queryParams = [queryParams, 'limit', flywheel.ApiClient.castParam(x__inp.Results.limit, 'integer')];
            else
                queryParams = [queryParams, 'limit', '1000'];
            end
            if ~isempty(x__inp.Results.skip)
                queryParams = [queryParams, 'skip', flywheel.ApiClient.castParam(x__inp.Results.skip, 'integer')];
            end
            if ~isempty(x__inp.Results.page)
                queryParams = [queryParams, 'page', flywheel.ApiClient.castParam(x__inp.Results.page, 'integer')];
            end
            if ~isempty(x__inp.Results.afterId)
                queryParams = [queryParams, 'after_id', flywheel.ApiClient.castParam(x__inp.Results.afterId, 'char')];
            end

            % Header parameters
            headers = {};

            % Form parameters
            formParams = {};
            files = {};

            % Body (as JSON)
            body = {};

            resp = obj.apiClient.callApi('GET', '/jobs', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                case '200'
                    if x__inp.Results.DumpResponseData
                        x__respData = resp.getBodyAsString();
                        disp(x__respData);
                    end
                    json = flywheel.ApiClient.getResponseJson(resp);
                    returnData = flywheel.ModelBase.cellmap(@(x) flywheel.model.JobListEntry.fromJson(x, obj.context_), json);
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = getJob(obj, jobId, varargin)
            % Get job details
            % jobId (char)
            % returns: [Job, resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addRequired(x__inp, 'jobId');
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, jobId, varargin{:});

            % Path parameters
            pathParams = {};
            if ~isempty(x__inp.Results.jobId)
                pathParams = [pathParams, 'JobId', x__inp.Results.jobId];
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

            resp = obj.apiClient.callApi('GET', '/jobs/{JobId}', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                case '200'
                    if x__inp.Results.DumpResponseData
                        x__respData = resp.getBodyAsString();
                        disp(x__respData);
                    end
                    json = flywheel.ApiClient.getResponseJson(resp);
                    returnData = flywheel.model.Job.fromJson(json, obj.context_);
                    if ~isempty(returnData)
                        returnData = returnData.returnValue();
                    end
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = getJobConfig(obj, jobId, varargin)
            % Get a job's config
            % jobId (char)
            % returns: [JobConfigOutput, resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addRequired(x__inp, 'jobId');
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, jobId, varargin{:});

            % Path parameters
            pathParams = {};
            if ~isempty(x__inp.Results.jobId)
                pathParams = [pathParams, 'JobId', x__inp.Results.jobId];
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

            resp = obj.apiClient.callApi('GET', '/jobs/{JobId}/config.json', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                case '200'
                    if x__inp.Results.DumpResponseData
                        x__respData = resp.getBodyAsString();
                        disp(x__respData);
                    end
                    json = flywheel.ApiClient.getResponseJson(resp);
                    returnData = flywheel.model.JobConfigOutput.fromJson(json, obj.context_);
                    if ~isempty(returnData)
                        returnData = returnData.returnValue();
                    end
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = getJobDetail(obj, jobId, varargin)
            % Get job container details
            % jobId (char)
            % returns: [JobDetail, resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addRequired(x__inp, 'jobId');
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, jobId, varargin{:});

            % Path parameters
            pathParams = {};
            if ~isempty(x__inp.Results.jobId)
                pathParams = [pathParams, 'JobId', x__inp.Results.jobId];
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

            resp = obj.apiClient.callApi('GET', '/jobs/{JobId}/detail', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                case '200'
                    if x__inp.Results.DumpResponseData
                        x__respData = resp.getBodyAsString();
                        disp(x__respData);
                    end
                    json = flywheel.ApiClient.getResponseJson(resp);
                    returnData = flywheel.model.JobDetail.fromJson(json, obj.context_);
                    if ~isempty(returnData)
                        returnData = returnData.returnValue();
                    end
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = getJobLogs(obj, jobId, varargin)
            % Get job logs
            % jobId (char)
            % returns: [JobLog, resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addRequired(x__inp, 'jobId');
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, jobId, varargin{:});

            % Path parameters
            pathParams = {};
            if ~isempty(x__inp.Results.jobId)
                pathParams = [pathParams, 'JobId', x__inp.Results.jobId];
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

            resp = obj.apiClient.callApi('GET', '/jobs/{JobId}/logs', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                case '200'
                    if x__inp.Results.DumpResponseData
                        x__respData = resp.getBodyAsString();
                        disp(x__respData);
                    end
                    json = flywheel.ApiClient.getResponseJson(resp);
                    returnData = flywheel.model.JobLog.fromJson(json, obj.context_);
                    if ~isempty(returnData)
                        returnData = returnData.returnValue();
                    end
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = getJobsStats(obj, varargin)
            % Get stats about all current jobs
            % returns: [containers.Map, resp]

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

            resp = obj.apiClient.callApi('GET', '/jobs/stats', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                case '200'
                    if x__inp.Results.DumpResponseData
                        x__respData = resp.getBodyAsString();
                        disp(x__respData);
                    end
                    json = flywheel.ApiClient.getResponseJson(resp);
                    returnData = flywheel.model.containers.Map.fromJson(json, obj.context_);
                    if ~isempty(returnData)
                        returnData = returnData.returnValue();
                    end
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = getNextJob(obj, varargin)
            % Get the next job in the queue
            % tags (vector[char])
            % returns: [Job, resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addParameter(x__inp, 'tags', []);
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, varargin{:});

            % Path parameters
            pathParams = {};

            % Query parameters
            queryParams = {};
            if ~isempty(x__inp.Results.tags)
                queryParams = flywheel.ApiClient.formatParamCollection(queryParams, 'tags', x__inp.Results.tags, 'multi');
            end

            % Header parameters
            headers = {};

            % Form parameters
            formParams = {};
            files = {};

            % Body (as JSON)
            body = {};

            resp = obj.apiClient.callApi('GET', '/jobs/next', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                case '200'
                    if x__inp.Results.DumpResponseData
                        x__respData = resp.getBodyAsString();
                        disp(x__respData);
                    end
                    json = flywheel.ApiClient.getResponseJson(resp);
                    returnData = flywheel.model.Job.fromJson(json, obj.context_);
                    if ~isempty(returnData)
                        returnData = returnData.returnValue();
                    end
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = modifyJob(obj, jobId, body, varargin)
            % Update a job.
            % jobId (char)
            % body (Job)
            % returns: [none, resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addRequired(x__inp, 'jobId');
            addRequired(x__inp, 'body');
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, jobId, body, varargin{:});

            % Path parameters
            pathParams = {};
            if ~isempty(x__inp.Results.jobId)
                pathParams = [pathParams, 'JobId', x__inp.Results.jobId];
            end

            % Query parameters
            queryParams = {};

            % Header parameters
            headers = {};

            % Form parameters
            formParams = {};
            files = {};

            % Body (as JSON)
            body = flywheel.model.Job.ensureIsInstance(x__inp.Results.body);
            body = flywheel.ApiClient.encodeJson(body.toJson());

            resp = obj.apiClient.callApi('PUT', '/jobs/{JobId}', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = prepareCompeteJob(obj, jobId, body, varargin)
            % Create a ticket for completing a job, with id and status.
            % jobId (char)
            % body (JobCompletionInput)
            % returns: [JobCompletionTicket, resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addRequired(x__inp, 'jobId');
            addRequired(x__inp, 'body');
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, jobId, body, varargin{:});

            % Path parameters
            pathParams = {};
            if ~isempty(x__inp.Results.jobId)
                pathParams = [pathParams, 'JobId', x__inp.Results.jobId];
            end

            % Query parameters
            queryParams = {};

            % Header parameters
            headers = {};

            % Form parameters
            formParams = {};
            files = {};

            % Body (as JSON)
            body = flywheel.model.JobCompletionInput.ensureIsInstance(x__inp.Results.body);
            body = flywheel.ApiClient.encodeJson(body.toJson());

            resp = obj.apiClient.callApi('POST', '/jobs/{JobId}/prepare-complete', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                case '200'
                    if x__inp.Results.DumpResponseData
                        x__respData = resp.getBodyAsString();
                        disp(x__respData);
                    end
                    json = flywheel.ApiClient.getResponseJson(resp);
                    returnData = flywheel.model.JobCompletionTicket.fromJson(json, obj.context_);
                    if ~isempty(returnData)
                        returnData = returnData.returnValue();
                    end
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = reapJobs(obj, varargin)
            % Reap stale jobs
            % returns: [containers.Map, resp]

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

            resp = obj.apiClient.callApi('POST', '/jobs/reap', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                case '200'
                    if x__inp.Results.DumpResponseData
                        x__respData = resp.getBodyAsString();
                        disp(x__respData);
                    end
                    json = flywheel.ApiClient.getResponseJson(resp);
                    returnData = flywheel.model.containers.Map.fromJson(json, obj.context_);
                    if ~isempty(returnData)
                        returnData = returnData.returnValue();
                    end
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = retryJob(obj, jobId, varargin)
            % Retry a job.
            % jobId (char)
            % ignoreState (logical)
            % returns: [containers.Map, resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addRequired(x__inp, 'jobId');
            addParameter(x__inp, 'ignoreState', []);
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, jobId, varargin{:});

            % Path parameters
            pathParams = {};
            if ~isempty(x__inp.Results.jobId)
                pathParams = [pathParams, 'JobId', x__inp.Results.jobId];
            end

            % Query parameters
            queryParams = {};
            if ~isempty(x__inp.Results.ignoreState)
                queryParams = [queryParams, 'ignoreState', flywheel.ApiClient.castParam(x__inp.Results.ignoreState, 'logical')];
            end

            % Header parameters
            headers = {};

            % Form parameters
            formParams = {};
            files = {};

            % Body (as JSON)
            body = {};

            resp = obj.apiClient.callApi('POST', '/jobs/{JobId}/retry', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                case '200'
                    if x__inp.Results.DumpResponseData
                        x__respData = resp.getBodyAsString();
                        disp(x__respData);
                    end
                    json = flywheel.ApiClient.getResponseJson(resp);
                    returnData = flywheel.model.containers.Map.fromJson(json, obj.context_);
                    if ~isempty(returnData)
                        returnData = returnData.returnValue();
                    end
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = updateJobProfile(obj, jobId, body, varargin)
            % Update profile information on a job. (e.g. machine type, etc)
            % jobId (char)
            % body (JobProfileInput)
            % returns: [InlineResponse200, resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addRequired(x__inp, 'jobId');
            addRequired(x__inp, 'body');
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, jobId, body, varargin{:});

            % Path parameters
            pathParams = {};
            if ~isempty(x__inp.Results.jobId)
                pathParams = [pathParams, 'JobId', x__inp.Results.jobId];
            end

            % Query parameters
            queryParams = {};

            % Header parameters
            headers = {};

            % Form parameters
            formParams = {};
            files = {};

            % Body (as JSON)
            body = flywheel.model.JobProfileInput.ensureIsInstance(x__inp.Results.body);
            body = flywheel.ApiClient.encodeJson(body.toJson());

            resp = obj.apiClient.callApi('PUT', '/jobs/{JobId}/profile', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                case '200'
                    if x__inp.Results.DumpResponseData
                        x__respData = resp.getBodyAsString();
                        disp(x__respData);
                    end
                    json = flywheel.ApiClient.getResponseJson(resp);
                    returnData = flywheel.model.InlineResponse200.fromJson(json, obj.context_);
                    if ~isempty(returnData)
                        returnData = returnData.returnValue();
                    end
                otherwise
                    returnData = [];
            end
        end

    end
end
