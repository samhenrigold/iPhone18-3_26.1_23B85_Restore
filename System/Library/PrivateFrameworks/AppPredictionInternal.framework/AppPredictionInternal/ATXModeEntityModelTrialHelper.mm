@interface ATXModeEntityModelTrialHelper
- (ATXModeEntityModelTrialHelper)init;
- (id)loadCoreMLModelFromTrialWithName:(id)name;
@end

@implementation ATXModeEntityModelTrialHelper

- (ATXModeEntityModelTrialHelper)init
{
  v6.receiver = self;
  v6.super_class = ATXModeEntityModelTrialHelper;
  v2 = [(ATXModeEntityModelTrialHelper *)&v6 init];
  if (v2)
  {
    mEMORY[0x277CEB6A8] = [MEMORY[0x277CEB6A8] sharedInstance];
    modeEntityTrialClientWrapper = v2->_modeEntityTrialClientWrapper;
    v2->_modeEntityTrialClientWrapper = mEMORY[0x277CEB6A8];
  }

  return v2;
}

- (id)loadCoreMLModelFromTrialWithName:(id)name
{
  nameCopy = name;
  v5 = [(ATXModeEntityTrialClientWrapper *)self->_modeEntityTrialClientWrapper directoryPathForTrialResource:nameCopy];
  v18 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [defaultManager fileExistsAtPath:v5 isDirectory:&v18];

  if (v7)
  {
    v8 = v18 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v9 = objc_opt_new();
    [v9 setComputeUnits:0];
    v10 = MEMORY[0x277CBFF20];
    v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
    v17 = 0;
    v12 = [v10 modelWithContentsOfURL:v11 configuration:v9 error:&v17];
    v13 = v17;

    if (v13)
    {
      v15 = __atxlog_handle_default(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(ATXModeEntityModelTrialHelper *)nameCopy loadCoreMLModelFromTrialWithName:v13, v15];
      }
    }
  }

  return v12;
}

- (void)loadCoreMLModelFromTrialWithName:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "ATXModeEntityModelTrialHelper: Error initializing %@ model: %@", &v3, 0x16u);
}

@end