@interface CellFallbackTrialExperimentHandler
- (CellFallbackTrialExperimentHandler)initWithQueue:(id)queue;
- (void)trialExperimentWithProjectIDHasBegun:(int)begun namespaceName:(id)name factorName:(id)factorName treatmentID:(id)d trialConfiguration:(id)configuration;
- (void)trialExperimentWithProjectIDHasEnded:(int)ended namespaceName:(id)name factorName:(id)factorName;
@end

@implementation CellFallbackTrialExperimentHandler

- (CellFallbackTrialExperimentHandler)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = CellFallbackTrialExperimentHandler;
  v5 = [(CellFallbackTrialExperimentHandler *)&v9 init];
  if (v5)
  {
    v6 = [[SymptomsTrialManager alloc] initWithTrialProjectID:862 namespaceName:@"WIRELESS_DATA_ANALYTICS_CELLULAR_PRODUCT_EXPERIMENTATION_INTERNAL" factorName:@"SWDefinedParamPlist" queue:queueCopy];
    trialManager = v5->_trialManager;
    v5->_trialManager = v6;
  }

  return v5;
}

- (void)trialExperimentWithProjectIDHasBegun:(int)begun namespaceName:(id)name factorName:(id)factorName treatmentID:(id)d trialConfiguration:(id)configuration
{
  v27 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  factorNameCopy = factorName;
  dCopy = d;
  configurationCopy = configuration;
  v16 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 67109890;
    *v22 = begun;
    *&v22[4] = 2112;
    *&v22[6] = nameCopy;
    v23 = 2112;
    v24 = factorNameCopy;
    v25 = 2112;
    v26 = dCopy;
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "CFSM: trialExperimentWithProjectIDHasBegun for %d/%@/%@/%@", &v21, 0x26u);
  }

  v17 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    *v22 = configurationCopy;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "CFSM: Trial configuration: %@", &v21, 0xCu);
  }

  v18 = [dCopy copy];
  [(CellFallbackTrialExperimentHandler *)self setTreatmentID:v18];

  v19 = [configurationCopy objectForKeyedSubscript:@"ForceTurboRNF"];
  if (v19)
  {
    v20 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      *v22 = v19;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "CFSM: trialExperimentWithProjectIDHasBegun forceTurboRNFNum is %@", &v21, 0xCu);
    }

    -[CellFallbackTrialExperimentHandler setTrialTurboRNF:](self, "setTrialTurboRNF:", [v19 unsignedIntValue]);
  }
}

- (void)trialExperimentWithProjectIDHasEnded:(int)ended namespaceName:(id)name factorName:(id)factorName
{
  v16 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  factorNameCopy = factorName;
  v10 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109634;
    v11[1] = ended;
    v12 = 2112;
    v13 = nameCopy;
    v14 = 2112;
    v15 = factorNameCopy;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "CFSM: trialExperimentWithProjectIDHasEnded for %d/%@/%@", v11, 0x1Cu);
  }

  [(CellFallbackTrialExperimentHandler *)self setTreatmentID:0];
  [(CellFallbackTrialExperimentHandler *)self setTrialTurboRNF:0];
}

@end