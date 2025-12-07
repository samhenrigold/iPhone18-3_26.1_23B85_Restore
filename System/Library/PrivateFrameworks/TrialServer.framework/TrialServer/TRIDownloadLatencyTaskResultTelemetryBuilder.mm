@interface TRIDownloadLatencyTaskResultTelemetryBuilder
- (TRIDownloadLatencyTaskResultTelemetryBuilder)initWithTelemetryValidator:(id)validator;
- (id)builtTelemetry;
- (void)_handleActivationTask:(id)task runResult:(id)result;
- (void)_handleFetchTask:(id)task runResult:(id)result;
- (void)_updateBuiltTelemetryWithDeployment:(id)deployment rolloutFields:(id)fields downloadStatus:(int)status;
- (void)updateWithTask:(id)task runResult:(id)result;
@end

@implementation TRIDownloadLatencyTaskResultTelemetryBuilder

- (TRIDownloadLatencyTaskResultTelemetryBuilder)initWithTelemetryValidator:(id)validator
{
  validatorCopy = validator;
  v11.receiver = self;
  v11.super_class = TRIDownloadLatencyTaskResultTelemetryBuilder;
  v6 = [(TRIDownloadLatencyTaskResultTelemetryBuilder *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_validator, validator);
    v8 = objc_opt_new();
    telemetryForDeployment = v7->_telemetryForDeployment;
    v7->_telemetryForDeployment = v8;
  }

  return v7;
}

- (void)updateWithTask:(id)task runResult:(id)result
{
  taskCopy = task;
  resultCopy = result;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TRIDownloadLatencyTaskResultTelemetryBuilder *)self _handleActivationTask:taskCopy runResult:resultCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(TRIDownloadLatencyTaskResultTelemetryBuilder *)self _handleFetchTask:taskCopy runResult:resultCopy];
    }
  }
}

- (void)_handleActivationTask:(id)task runResult:(id)result
{
  v17 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  resultCopy = result;
  deployment = [taskCopy deployment];
  validator = self->_validator;
  deployment2 = [taskCopy deployment];
  factorPackSetId = [taskCopy factorPackSetId];
  v12 = [(TRILatencyMetricTelemetryValidating *)validator validateAndReturnTelemetryForDeployment:deployment2 factorPackSetId:factorPackSetId];

  if (v12)
  {
    if ([resultCopy reportResultToServer])
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    [(TRIDownloadLatencyTaskResultTelemetryBuilder *)self _updateBuiltTelemetryWithDeployment:deployment rolloutFields:v12 downloadStatus:v13];
  }

  else
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = 138543362;
      v16 = taskCopy;
      _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_INFO, "Skipping immediate download telemetry for task %{public}@ (likely because the namespace descriptor has not opted in)", &v15, 0xCu);
    }
  }
}

- (void)_handleFetchTask:(id)task runResult:(id)result
{
  v17 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  resultCopy = result;
  rolloutDeployment = [taskCopy rolloutDeployment];
  if (rolloutDeployment)
  {
    validator = self->_validator;
    rolloutDeployment2 = [taskCopy rolloutDeployment];
    factorPackSetId = [taskCopy factorPackSetId];
    v12 = [(TRILatencyMetricTelemetryValidating *)validator validateAndReturnTelemetryForDeployment:rolloutDeployment2 factorPackSetId:factorPackSetId];

    if (v12)
    {
      if ([resultCopy runStatus] == 2)
      {
        v13 = 0;
      }

      else
      {
        v13 = 3;
      }

      [(TRIDownloadLatencyTaskResultTelemetryBuilder *)self _updateBuiltTelemetryWithDeployment:rolloutDeployment rolloutFields:v12 downloadStatus:v13];
    }

    else
    {
      v14 = TRILogCategory_Server();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = 138543362;
        v16 = taskCopy;
        _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_INFO, "Skipping immediate download telemetry for task %{public}@ (likely because the namespace descriptor has not opted in)", &v15, 0xCu);
      }
    }
  }
}

- (void)_updateBuiltTelemetryWithDeployment:(id)deployment rolloutFields:(id)fields downloadStatus:(int)status
{
  v5 = *&status;
  deploymentCopy = deployment;
  fieldsCopy = fields;
  telemetryForDeployment = [(TRIDownloadLatencyTaskResultTelemetryBuilder *)self telemetryForDeployment];
  v10 = [telemetryForDeployment objectForKeyedSubscript:deploymentCopy];

  if (!v10)
  {
    v11 = objc_opt_new();
    telemetryForDeployment2 = [(TRIDownloadLatencyTaskResultTelemetryBuilder *)self telemetryForDeployment];
    [telemetryForDeployment2 setObject:v11 forKeyedSubscript:deploymentCopy];
  }

  telemetryForDeployment3 = [(TRIDownloadLatencyTaskResultTelemetryBuilder *)self telemetryForDeployment];
  v14 = [telemetryForDeployment3 objectForKeyedSubscript:deploymentCopy];

  v15 = objc_opt_new();
  [v14 setDownloadStatusFields:v15];

  downloadStatusFields = [v14 downloadStatusFields];
  [downloadStatusFields setStatus:v5];

  [v14 setRolloutFields:fieldsCopy];
}

- (id)builtTelemetry
{
  telemetryForDeployment = [(TRIDownloadLatencyTaskResultTelemetryBuilder *)self telemetryForDeployment];
  allValues = [telemetryForDeployment allValues];

  return allValues;
}

@end