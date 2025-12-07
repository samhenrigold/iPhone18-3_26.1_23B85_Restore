@interface PCCGroupJob
- (PCCGroupJob)initWithID:(id)d forTarget:(id)target options:(id)options;
- (id)description;
- (id)result;
- (void)prepareNext;
- (void)registerResult:(BOOL)result error:(id)error;
@end

@implementation PCCGroupJob

- (id)result
{
  errObj = self->super._errObj;
  if (!errObj)
  {
    errObj = self->_content;
  }

  return errObj;
}

- (PCCGroupJob)initWithID:(id)d forTarget:(id)target options:(id)options
{
  v57[6] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v49.receiver = self;
  v49.super_class = PCCGroupJob;
  v9 = [(PCCJob *)&v49 initWithID:d forTarget:target options:optionsCopy];
  if (v9)
  {
    v10 = objc_opt_new();
    log_sets = v9->_log_sets;
    v9->_log_sets = v10;

    v12 = [optionsCopy objectForKeyedSubscript:@"allFiles"];
    bOOLValue = [v12 BOOLValue];

    if (bOOLValue)
    {
      v14 = @"xfer-all";
    }

    else
    {
      v14 = @"xfer-group";
    }

    objc_storeStrong(&v9->_group_type, v14);
    v15 = [optionsCopy objectForKeyedSubscript:@"<preserve>"];
    bOOLValue2 = [v15 BOOLValue];

    v17 = OSAIsRSDDisplay() ^ 1;
    v18 = v17 & bOOLValue2;
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults addSuiteNamed:@"com.apple.osanalytics.factoryproxysync"];
    v48 = optionsCopy;
    if (OSAIsConfiguredRSDDevice())
    {
      v20 = [standardUserDefaults objectForKey:@"autoCleanupProxiedFiles"];

      if (v20)
      {
        v17 = [standardUserDefaults BOOLForKey:@"autoCleanupProxiedFiles"];
        v18 = v17 ^ 1;
      }
    }

    v47 = standardUserDefaults;
    v21 = v9->_log_sets;
    v56[0] = @"routing";
    v56[1] = @"extensions";
    v57[0] = @"<sync>";
    v57[1] = &unk_286EB23F8;
    v57[2] = @"log-aggregated";
    v56[2] = @"<sort>";
    v56[3] = @"<exempt>";
    [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
    v22 = v46 = bOOLValue;
    v57[3] = v22;
    v56[4] = @"<cleanup>";
    [MEMORY[0x277CCABB0] numberWithBool:v17];
    v24 = v23 = v17;
    v57[4] = v24;
    v56[5] = @"<preserve>";
    v25 = [MEMORY[0x277CCABB0] numberWithBool:v18];
    v57[5] = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:6];
    v27 = [v26 mutableCopy];
    [(NSMutableArray *)v21 addObject:v27];

    v45 = v9->_log_sets;
    v54[0] = @"routing";
    v54[1] = @"extensions";
    v55[0] = @"<sync>";
    v55[1] = &unk_286EB2410;
    v55[2] = MEMORY[0x277CBEC28];
    v54[2] = @"<metadata>";
    v54[3] = @"<exempt>";
    v28 = [MEMORY[0x277CCABB0] numberWithBool:v46];
    v55[3] = v28;
    v54[4] = @"<cleanup>";
    v29 = [MEMORY[0x277CCABB0] numberWithBool:v23];
    v55[4] = v29;
    v54[5] = @"<preserve>";
    v30 = [MEMORY[0x277CCABB0] numberWithBool:v18];
    v55[5] = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:6];
    v32 = [v31 mutableCopy];
    [(NSMutableArray *)v45 addObject:v32];

    if (v46)
    {
      v33 = v9->_log_sets;
      v52[0] = @"routing";
      v52[1] = @"extensions";
      v53[0] = @"<sync>";
      v53[1] = &unk_286EB2428;
      v52[2] = @"<descend>";
      v52[3] = @"<exempt>";
      v53[2] = MEMORY[0x277CBEC38];
      v53[3] = MEMORY[0x277CBEC38];
      v52[4] = @"<cleanup>";
      v34 = [MEMORY[0x277CCABB0] numberWithBool:v23];
      v53[4] = v34;
      v52[5] = @"<preserve>";
      v35 = [MEMORY[0x277CCABB0] numberWithBool:v18];
      v53[5] = v35;
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:6];
      v37 = [v36 mutableCopy];
      [(NSMutableArray *)v33 addObject:v37];
    }

    v38 = objc_opt_new();
    mEMORY[0x277D36B80] = [MEMORY[0x277D36B80] sharedInstance];
    pathSubmission = [mEMORY[0x277D36B80] pathSubmission];
    [v38 addObject:pathSubmission];

    if ([MEMORY[0x277D36B68] isDataVaultEnabled])
    {
      mEMORY[0x277D36B80]2 = [MEMORY[0x277D36B80] sharedInstance];
      pathSubmissionDataVault = [mEMORY[0x277D36B80]2 pathSubmissionDataVault];
      [v38 addObject:pathSubmissionDataVault];
    }

    v9->_total_count = [MEMORY[0x277D36B68] scanLogs:v9->_log_sets from:v38];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      total_count = v9->_total_count;
      *buf = 67109120;
      v51 = total_count;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "gathered %u files for transfer", buf, 8u);
    }

    [(PCCGroupJob *)v9 prepareNext];

    optionsCopy = v48;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PCCJob *)self jid];
  success_count = self->_success_count;
  total_count = self->_total_count;
  filepath = [(OSALog *)self->super._package filepath];
  v8 = [v3 stringWithFormat:@"group %@ %d/%d %@", v4, success_count, total_count, filepath];

  return v8;
}

- (void)prepareNext
{
  v60 = *MEMORY[0x277D85DE8];
  package = self->super._package;
  self->super._package = 0;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = self->_log_sets;
  v39 = [(NSMutableArray *)obj countByEnumeratingWithState:&v43 objects:v59 count:16];
  if (v39)
  {
    v38 = *v44;
LABEL_3:
    v4 = 0;
    while (1)
    {
      if (*v44 != v38)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v43 + 1) + 8 * v4);
      v42 = [v5 objectForKeyedSubscript:@"routing"];
      v6 = [v5 objectForKeyedSubscript:@"logs"];
      v7 = [v5 objectForKeyedSubscript:@"<metadata>"];
      v40 = v4;
      if (v7)
      {
        v8 = [v5 objectForKeyedSubscript:@"<metadata>"];
        bOOLValue = [v8 BOOLValue];
      }

      else
      {
        bOOLValue = 1;
      }

      v57[0] = @"<metadata>";
      v41 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
      v58[0] = v41;
      v57[1] = @"<exempt>";
      v10 = MEMORY[0x277CCABB0];
      v11 = [v5 objectForKeyedSubscript:?];
      v12 = [v10 numberWithBool:{objc_msgSend(v11, "BOOLValue")}];
      v58[1] = v12;
      v57[2] = @"<cleanup>";
      v13 = MEMORY[0x277CCABB0];
      v14 = [v5 objectForKeyedSubscript:?];
      v15 = [v13 numberWithBool:{objc_msgSend(v14, "BOOLValue")}];
      v58[2] = v15;
      v57[3] = @"<preserve>";
      v16 = MEMORY[0x277CCABB0];
      v17 = [v5 objectForKeyedSubscript:?];
      v18 = [v16 numberWithBool:{objc_msgSend(v17, "BOOLValue")}];
      v58[3] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:4];

      while ([v6 count])
      {
        firstObject = [v6 firstObject];
        [v6 removeObjectAtIndex:0];
        v55[0] = @"current";
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_success_count + 1];
        v56[0] = v21;
        v55[1] = @"rejects";
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_rejected_count];
        v56[1] = v22;
        v55[2] = @"errors";
        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_error_count];
        v56[2] = v23;
        v55[3] = @"total";
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_total_count];
        v56[3] = v24;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:4];

        [(PCCJob *)self packageLog:firstObject forRouting:v42 info:v25 options:v19];
        if (self->super._package)
        {

          break;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v50 = firstObject;
          _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "unable to package %@", buf, 0xCu);
        }

        ++self->_rejected_count;
      }

      v26 = self->super._package;

      if (v26)
      {
        break;
      }

      v4 = v40 + 1;
      if (v40 + 1 == v39)
      {
        v39 = [(NSMutableArray *)obj countByEnumeratingWithState:&v43 objects:v59 count:16];
        if (v39)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (!self->super._package)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      success_count = self->_success_count;
      rejected_count = self->_rejected_count;
      error_count = self->_error_count;
      v30 = [(PCCJob *)self jid];
      *buf = 67109890;
      *v50 = success_count;
      *&v50[4] = 1024;
      *&v50[6] = rejected_count;
      v51 = 1024;
      v52 = error_count;
      v53 = 2112;
      v54 = v30;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "finished transferring %u logs successfully (%u rejected, %u errors) for job %@", buf, 0x1Eu);
    }

    v47[0] = @"current";
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_success_count];
    v48[0] = v31;
    v47[1] = @"rejects";
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_rejected_count];
    v48[1] = v32;
    v47[2] = @"errors";
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_error_count];
    v48[2] = v33;
    v47[3] = @"total";
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_total_count];
    v48[3] = v34;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:4];
    content = self->_content;
    self->_content = v35;

    CFPreferencesSetAppValue(@"LastSuccess", [MEMORY[0x277CBEAA8] date], @"com.apple.ProxiedCrashCopier");
  }
}

- (void)registerResult:(BOOL)result error:(id)error
{
  resultCopy = result;
  v13 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  package = self->super._package;
  if (!package)
  {
    [PCCGroupJob registerResult:error:];
  }

  if (resultCopy)
  {
    [(OSALog *)package retire:"transferred"];
    self->_consecutive_error_count = 0;
    ++self->_success_count;
LABEL_4:
    [(PCCGroupJob *)self prepareNext];
    goto LABEL_5;
  }

  ++self->_error_count;
  v9 = self->_consecutive_error_count + 1;
  self->_consecutive_error_count = v9;
  if (v9 <= 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      consecutive_error_count = self->_consecutive_error_count;
      v12[0] = 67109120;
      v12[1] = consecutive_error_count;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "consecutive file send failure #%u", v12, 8u);
    }

    goto LABEL_4;
  }

  objc_storeStrong(&self->super._errObj, error);
  v11 = self->super._package;
  self->super._package = 0;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "file send failure limit, abandoning job", v12, 2u);
  }

LABEL_5:
}

@end