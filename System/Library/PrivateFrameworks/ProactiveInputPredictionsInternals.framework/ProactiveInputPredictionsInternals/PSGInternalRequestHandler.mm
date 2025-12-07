@interface PSGInternalRequestHandler
- (PSGInternalRequestHandler)init;
- (id)_getWordBoundaryExperimentInfo:(id)info;
- (id)_getZKWExperimentInfo:(id)info;
- (id)_initWithExperimentResolver:(id)resolver;
- (void)sysdiagnoseInformationWithCompletion:(id)completion;
@end

@implementation PSGInternalRequestHandler

- (void)sysdiagnoseInformationWithCompletion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v16 = objc_opt_new();
  v4 = objc_opt_new();
  [(PSGInternalRequestHandler *)self _getPreferredLanguages];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v24 = 0u;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v25[0] = @"WB";
        v10 = [(PSGInternalRequestHandler *)self _getWordBoundaryExperimentInfo:v9, v16];
        v25[1] = @"ZKW";
        v26[0] = v10;
        v11 = [(PSGInternalRequestHandler *)self _getZKWExperimentInfo:v9];
        v26[1] = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
        [v4 setObject:v12 forKeyedSubscript:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v6);
  }

  if (![v4 count])
  {
    [v4 setObject:@"No preferredLanguages" forKeyedSubscript:@"Error"];
  }

  [v17 setObject:v4 forKeyedSubscript:@"ExperimentInfo"];

  v20 = 0;
  v13 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v17 options:3 error:&v20];
  v14 = v20;
  if (v13)
  {
    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v13 encoding:4];
    completionCopy[2](completionCopy, v15, v14);
  }

  else
  {
    completionCopy[2](completionCopy, 0, v14);
  }
}

- (id)_getWordBoundaryExperimentInfo:(id)info
{
  v22[6] = *MEMORY[0x277D85DE8];
  v3 = [(PSGExperimentResolver *)self->_experimentResolver getWordBoundarySuggestionsExperimentConfig:info shouldDownloadAssets:0];
  v21[0] = @"treatment";
  treatmentName = [v3 treatmentName];
  v22[0] = treatmentName;
  v21[1] = @"experiment-id";
  experimentIdentifiers = [v3 experimentIdentifiers];
  experimentId = [experimentIdentifiers experimentId];
  v22[1] = experimentId;
  v21[2] = @"treatment-id";
  experimentIdentifiers2 = [v3 experimentIdentifiers];
  treatmentId = [experimentIdentifiers2 treatmentId];
  v22[2] = treatmentId;
  v21[3] = @"ml-enabled";
  isMLModelEnabled = [v3 isMLModelEnabled];
  v9 = @"NO";
  if (isMLModelEnabled)
  {
    v9 = @"YES";
  }

  v22[3] = v9;
  v21[4] = @"model-config";
  inferenceModelConfigPath = [v3 inferenceModelConfigPath];
  lastPathComponent = [inferenceModelConfigPath lastPathComponent];
  v12 = lastPathComponent;
  if (lastPathComponent)
  {
    v13 = lastPathComponent;
  }

  else
  {
    v13 = @"nil";
  }

  v22[4] = v13;
  v21[5] = @"model-file";
  espressoBinFilePath = [v3 espressoBinFilePath];
  lastPathComponent2 = [espressoBinFilePath lastPathComponent];
  v16 = lastPathComponent2;
  if (lastPathComponent2)
  {
    v17 = lastPathComponent2;
  }

  else
  {
    v17 = @"nil";
  }

  v22[5] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:6];

  return v18;
}

- (id)_getZKWExperimentInfo:(id)info
{
  v22[6] = *MEMORY[0x277D85DE8];
  v3 = [(PSGExperimentResolver *)self->_experimentResolver getResponseSuggestionsExperimentConfig:info shouldDownloadAssets:0];
  v21[0] = @"treatment";
  treatmentName = [v3 treatmentName];
  v22[0] = treatmentName;
  v21[1] = @"experiment-id";
  experimentIdentifiers = [v3 experimentIdentifiers];
  experimentId = [experimentIdentifiers experimentId];
  v22[1] = experimentId;
  v21[2] = @"treatment-id";
  experimentIdentifiers2 = [v3 experimentIdentifiers];
  treatmentId = [experimentIdentifiers2 treatmentId];
  v22[2] = treatmentId;
  v21[3] = @"ml-enabled";
  isMLModelEnabled = [v3 isMLModelEnabled];
  v9 = @"NO";
  if (isMLModelEnabled)
  {
    v9 = @"YES";
  }

  v22[3] = v9;
  v21[4] = @"model-config";
  inferenceModelConfigPath = [v3 inferenceModelConfigPath];
  lastPathComponent = [inferenceModelConfigPath lastPathComponent];
  v12 = lastPathComponent;
  if (lastPathComponent)
  {
    v13 = lastPathComponent;
  }

  else
  {
    v13 = @"nil";
  }

  v22[4] = v13;
  v21[5] = @"model-file";
  espressoBinFilePath = [v3 espressoBinFilePath];
  lastPathComponent2 = [espressoBinFilePath lastPathComponent];
  v16 = lastPathComponent2;
  if (lastPathComponent2)
  {
    v17 = lastPathComponent2;
  }

  else
  {
    v17 = @"nil";
  }

  v22[5] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:6];

  return v18;
}

- (id)_initWithExperimentResolver:(id)resolver
{
  resolverCopy = resolver;
  v9.receiver = self;
  v9.super_class = PSGInternalRequestHandler;
  v6 = [(PSGInternalRequestHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_experimentResolver, resolver);
  }

  return v7;
}

- (PSGInternalRequestHandler)init
{
  v3 = +[PSGExperimentResolver sharedInstance];
  v4 = [(PSGInternalRequestHandler *)self _initWithExperimentResolver:v3];

  return v4;
}

@end