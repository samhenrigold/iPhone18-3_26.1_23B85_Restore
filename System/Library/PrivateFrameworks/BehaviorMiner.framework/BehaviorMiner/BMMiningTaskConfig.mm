@interface BMMiningTaskConfig
- (BMMiningTaskConfig)init;
- (BOOL)loadBMMiningTaskConfig:(id)config;
- (void)loadDefaultConfig;
- (void)registerWithTrial;
- (void)updateFactorLevels;
- (void)updateFactorLevelsFromFilePath:(id)path;
@end

@implementation BMMiningTaskConfig

- (BMMiningTaskConfig)init
{
  v5.receiver = self;
  v5.super_class = BMMiningTaskConfig;
  v2 = [(BMMiningTaskConfig *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BMMiningTaskConfig *)v2 loadDefaultConfig];
    [(BMMiningTaskConfig *)v3 registerWithTrial];
  }

  return v3;
}

- (void)registerWithTrial
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v3 = getTRIClientClass_softClass;
  v21 = getTRIClientClass_softClass;
  if (!getTRIClientClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __getTRIClientClass_block_invoke;
    v16 = &unk_278D066F0;
    v17 = &v18;
    __getTRIClientClass_block_invoke(buf);
    v3 = v19[3];
  }

  v4 = v3;
  _Block_object_dispose(&v18, 8);
  v5 = [v3 clientWithIdentifier:210];
  trialClient = self->_trialClient;
  self->_trialClient = v5;

  if (self->_trialClient)
  {
    v8 = BMLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241ACA000, v8, OS_LOG_TYPE_INFO, "Trial: get trial client", buf, 2u);
    }

    [(BMMiningTaskConfig *)self updateFactorLevels];
    objc_initWeak(buf, self);
    v9 = self->_trialClient;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __39__BMMiningTaskConfig_registerWithTrial__block_invoke;
    v11[3] = &unk_278D06720;
    objc_copyWeak(&v12, buf);
    v10 = [(TRIClient *)v9 addUpdateHandlerForNamespaceName:@"COREML_SYSTEMS_PEOPLE_SUGGESTER" usingBlock:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

void __39__BMMiningTaskConfig_registerWithTrial__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained updateFactorLevels];
    WeakRetained = v2;
  }
}

- (void)updateFactorLevels
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = BMLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241ACA000, v3, OS_LOG_TYPE_INFO, "Try to load psConfig", buf, 2u);
  }

  newTrackingId = [(TRIClient *)self->_trialClient newTrackingId];
  trialTrackingID = self->_trialTrackingID;
  self->_trialTrackingID = newTrackingId;

  v31 = -1;
  trialClient = self->_trialClient;
  v29 = 0;
  v30 = 0;
  v7 = [(TRIClient *)trialClient trialIdentifiersWithNamespaceName:@"COREML_SYSTEMS_PEOPLE_SUGGESTER" experimentId:&v30 deploymentId:&v31 treatmentId:&v29];
  v8 = v30;
  v9 = v30;
  v10 = v29;
  v11 = v29;
  objc_storeStrong(&self->_experimentID, v8);
  self->_deploymentID = v31;
  objc_storeStrong(&self->_treatmentID, v10);
  v13 = BMLog(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = self->_trialTrackingID;
    treatmentID = self->_treatmentID;
    experimentID = self->_experimentID;
    v17 = [MEMORY[0x277CCABB0] numberWithInt:self->_deploymentID];
    *buf = 138413058;
    v33 = v14;
    v34 = 2112;
    v35 = treatmentID;
    v36 = 2112;
    v37 = experimentID;
    v38 = 2112;
    v39 = v17;
    _os_log_impl(&dword_241ACA000, v13, OS_LOG_TYPE_INFO, "TrackingID:%@, TreatmentID:%@, ExperimentID:%@ DeploymentID:%@", buf, 0x2Au);
  }

  if (v7)
  {
    v19 = [(TRIClient *)self->_trialClient levelForFactor:@"psConfigFactor" withNamespaceName:@"COREML_SYSTEMS_PEOPLE_SUGGESTER"];
    fileValue = [v19 fileValue];
    path = [fileValue path];

    v23 = BMLog(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v33 = path;
      _os_log_impl(&dword_241ACA000, v23, OS_LOG_TYPE_INFO, "Get config path:%@", buf, 0xCu);
    }

    v24 = [(BMMiningTaskConfig *)self loadBMMiningTaskConfig:path];
    if ((v24 & 1) == 0)
    {
      v25 = BMLog(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [(BMMiningTaskConfig *)v25 updateFactorLevels];
      }

      [(BMMiningTaskConfig *)self loadDefaultConfig];
    }

    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", self->_treatmentID, self->_experimentID];
    trialID = self->_trialID;
    self->_trialID = v26;
  }

  else
  {
    v28 = BMLog(v18);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241ACA000, v28, OS_LOG_TYPE_INFO, "Can not find valid treat&experiment id, try to load default psConfig", buf, 2u);
    }

    [(BMMiningTaskConfig *)self loadDefaultConfig];
  }
}

- (void)updateFactorLevelsFromFilePath:(id)path
{
  v11 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v5 = BMLog(pathCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = pathCopy;
    _os_log_impl(&dword_241ACA000, v5, OS_LOG_TYPE_INFO, "Updating from override config path:%@", &v9, 0xCu);
  }

  v6 = [(BMMiningTaskConfig *)self loadBMMiningTaskConfig:pathCopy];
  if (v6)
  {
    trialID = self->_trialID;
    self->_trialID = @"Override";
  }

  else
  {
    v8 = BMLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BMMiningTaskConfig updateFactorLevelsFromFilePath:v8];
    }

    [(BMMiningTaskConfig *)self loadDefaultConfig];
  }
}

- (void)loadDefaultConfig
{
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v5 pathForResource:@"com.apple.BehaviorMiner.Config.Default" ofType:@"plist"];
  [(BMMiningTaskConfig *)self loadBMMiningTaskConfig:v3];
  trialID = self->_trialID;
  self->_trialID = @"Default";
}

- (BOOL)loadBMMiningTaskConfig:(id)config
{
  v21 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:configCopy];
  v16 = 0;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v5 error:&v16];
  v7 = v16;
  [(BMMiningTaskConfig *)self setBmMiningTaskConfig:v6];

  bmMiningTaskConfig = [(BMMiningTaskConfig *)self bmMiningTaskConfig];

  if (bmMiningTaskConfig)
  {
    bmMiningTaskConfig2 = [(BMMiningTaskConfig *)self bmMiningTaskConfig];
    v11 = [bmMiningTaskConfig2 objectForKeyedSubscript:@"interactionExtractedTopicFromAttachmentFactorInUse"];
    -[BMMiningTaskConfig setInteractionExtractedTopicFromAttachmentFactorInUse:](self, "setInteractionExtractedTopicFromAttachmentFactorInUse:", [v11 BOOLValue]);

    v13 = BMLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      bmMiningTaskConfig3 = [(BMMiningTaskConfig *)self bmMiningTaskConfig];
      *buf = 138412546;
      v18 = bmMiningTaskConfig3;
      v19 = 2112;
      v20 = configCopy;
      _os_log_impl(&dword_241ACA000, v13, OS_LOG_TYPE_INFO, "Loaded bmMiningTaskConfig with contents:%@, loaded from path:%@", buf, 0x16u);
    }
  }

  else
  {
    v13 = BMLog(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(BMMiningTaskConfig *)configCopy loadBMMiningTaskConfig:v7, v13];
    }
  }

  return bmMiningTaskConfig != 0;
}

- (void)loadBMMiningTaskConfig:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_241ACA000, log, OS_LOG_TYPE_ERROR, "Failed to load trial config with path:%@, with error：%@", &v3, 0x16u);
}

@end