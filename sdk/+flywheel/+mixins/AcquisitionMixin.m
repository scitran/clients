classdef AcquisitionMixin < flywheel.mixins.ContainerBase ...
        & flywheel.mixins.TagMethods ...
        & flywheel.mixins.InfoMethods ...
        & flywheel.mixins.NoteMethods ...
        & flywheel.mixins.FileMethods ...
        & flywheel.mixins.TimestampMethods ...
        & flywheel.mixins.DownloadMethods ...
        & flywheel.mixins.AnalysisMethods
    properties
        containerType_ = 'Acquisition';
        analyses_ = false;
    end
    methods
        function analyses = get_analyses(obj)
            analyses = obj.getChildren('Analyses');
        end
    end
end