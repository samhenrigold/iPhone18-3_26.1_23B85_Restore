@interface FHTrialModel
- (FHTrialModel)initWithModelName:(id)name fhExperiment:(id)experiment modelFactorName:(id)factorName defaultModel:(id)model;
- (FHTrialModel)initWithModelName:(id)name namespaceName:(id)namespaceName modelFactorName:(id)factorName defaultModel:(id)model;
- (void)updateFactors;
@end

@implementation FHTrialModel

- (FHTrialModel)initWithModelName:(id)name namespaceName:(id)namespaceName modelFactorName:(id)factorName defaultModel:(id)model
{
  modelCopy = model;
  factorNameCopy = factorName;
  namespaceNameCopy = namespaceName;
  nameCopy = name;
  v14 = [[FHExperiment alloc] initWithClient:0 namespaceName:namespaceNameCopy setRefresh:1 delegate:self];

  v15 = [(FHTrialModel *)self initWithModelName:nameCopy fhExperiment:v14 modelFactorName:factorNameCopy defaultModel:modelCopy];
  return v15;
}

- (FHTrialModel)initWithModelName:(id)name fhExperiment:(id)experiment modelFactorName:(id)factorName defaultModel:(id)model
{
  v35 = *MEMORY[0x277D85DE8];
  experimentCopy = experiment;
  factorNameCopy = factorName;
  modelCopy = model;
  objc_storeStrong(&self->_fhExperiment, experiment);
  nameCopy = name;
  objc_storeStrong(&self->_modelFactorName, factorName);
  v15 = [(FHExperiment *)self->_fhExperiment getFilePathForFactor:factorNameCopy];
  if (v15)
  {
    v16 = [MEMORY[0x277CBEBC0] URLWithString:v15];
    uRLByStandardizingPath = [v16 URLByStandardizingPath];

    scheme = [uRLByStandardizingPath scheme];
    v19 = [scheme isEqualToString:@"file"];

    if ((v19 & 1) == 0)
    {
      v20 = [MEMORY[0x277CBEBC0] fileURLWithPath:v15];

      uRLByStandardizingPath = v20;
    }

    v21 = [(FHExperiment *)self->_fhExperiment getTrialIdForFactor:factorNameCopy];
    trialId = self->_trialId;
    self->_trialId = v21;
  }

  else
  {
    v23 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v32 = "[FHTrialModel initWithModelName:fhExperiment:modelFactorName:defaultModel:]";
      v33 = 2112;
      v34 = modelCopy;
      _os_log_impl(&dword_226DD4000, v23, OS_LOG_TYPE_DEBUG, "%s Loading default model %@", buf, 0x16u);
    }

    uRLByStandardizingPath = modelCopy;
    v24 = self->_trialId;
    self->_trialId = &stru_283A7B918;
  }

  v30.receiver = self;
  v30.super_class = FHTrialModel;
  v25 = [(FHModel *)&v30 initWithModelURL:uRLByStandardizingPath modelName:nameCopy];

  if (v25)
  {
    mlModel = [(FHModel *)v25 mlModel];

    if (!mlModel)
    {
      v27 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v32 = "[FHTrialModel initWithModelName:fhExperiment:modelFactorName:defaultModel:]";
        v33 = 2112;
        v34 = modelCopy;
        _os_log_impl(&dword_226DD4000, v27, OS_LOG_TYPE_DEBUG, "%s Loading default model %@", buf, 0x16u);
      }

      v28 = v25->_trialId;
      v25->_trialId = &stru_283A7B918;

      [(FHModel *)v25 _loadModel:modelCopy];
    }
  }

  return v25;
}

- (void)updateFactors
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    modelFactorName = self->_modelFactorName;
    v11 = 136315394;
    v12 = "[FHTrialModel updateFactors]";
    v13 = 2112;
    v14 = modelFactorName;
    _os_log_impl(&dword_226DD4000, v3, OS_LOG_TYPE_DEBUG, "%s Updating trial model with factor name: %@", &v11, 0x16u);
  }

  v5 = [(FHExperiment *)self->_fhExperiment getFilePathForFactor:self->_modelFactorName];
  compiledModelURL = [(FHModel *)self compiledModelURL];
  if (v5)
  {
    v7 = [MEMORY[0x277CBEBC0] URLWithString:v5];
    v8 = [(FHModel *)self _loadModel:v7];

    if (v8)
    {
      v9 = [(FHExperiment *)self->_fhExperiment getTrialIdForFactor:self->_modelFactorName];
      trialId = self->_trialId;
      self->_trialId = v9;

      [(FHModel *)self _deleteModelFile:compiledModelURL];
    }
  }
}

@end