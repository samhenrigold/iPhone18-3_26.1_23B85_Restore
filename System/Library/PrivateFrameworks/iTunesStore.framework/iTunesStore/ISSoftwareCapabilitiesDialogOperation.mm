@interface ISSoftwareCapabilitiesDialogOperation
- (ISSoftwareCapabilitiesDialogOperation)initWithRequiredCapabilities:(id)capabilities mismatches:(id)mismatches;
- (NSDictionary)mismatches;
- (id)requiredCapabilities;
- (void)_postDefaultDialog;
- (void)dealloc;
- (void)run;
@end

@implementation ISSoftwareCapabilitiesDialogOperation

- (ISSoftwareCapabilitiesDialogOperation)initWithRequiredCapabilities:(id)capabilities mismatches:(id)mismatches
{
  __ISRecordSPIClassUsage(self, "/Library/Caches/com.apple.xbs/Sources/iTunesStore/src/ISSoftwareCapabilitiesDialogOperation.m", 39, a2);
  v7 = [(ISOperation *)self init];
  if (v7)
  {
    v7->_mismatches = [mismatches copy];
    v7->_requiredCapabilities = [capabilities copy];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ISSoftwareCapabilitiesDialogOperation;
  [(ISSoftwareCapabilitiesDialogOperation *)&v3 dealloc];
}

- (NSDictionary)mismatches
{
  v2 = self->_mismatches;

  return v2;
}

- (id)requiredCapabilities
{
  v2 = self->_requiredCapabilities;

  return v2;
}

- (void)run
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D69C90] contextWithBagType:0];
  [(ISOperation *)self loadURLBagWithContext:v3 returningError:0];
  v4 = [objc_msgSend(+[ISURLBagCache sharedCache](ISURLBagCache "sharedCache")];
  if (v4)
  {
    v36 = v4;
    v37 = objc_alloc_init(ISStoreURLOperation);
    [(ISURLOperation *)v37 setDataProvider:+[(ISDataProvider *)ISProtocolDataProvider]];
    requiredCapabilities = [(ISSoftwareCapabilitiesDialogOperation *)self requiredCapabilities];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = requiredCapabilities;
    }

    else
    {
      v6 = 0;
    }

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    selfCopy = self;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = [(ISSoftwareCapabilitiesDialogOperation *)self mismatches];
    v8 = [(NSDictionary *)obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v42;
      v11 = 1;
      v12 = 1;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v42 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v41 + 1) + 8 * i);
          v15 = [v6 objectForKey:v14];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([v15 BOOLValue] & 1) == 0)
          {
            v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"vCap%ld", v11++];
          }

          else
          {
            v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"cap%ld", v12++];
          }

          [v7 setObject:v14 forKey:v16];
        }

        v9 = [(NSDictionary *)obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v9);
    }

    v17 = objc_alloc_init(MEMORY[0x277D69BD0]);
    [v17 setCachePolicy:1];
    [v17 setRequestParameters:v7];
    [v17 setURL:v36];
    [(ISURLOperation *)v37 setRequestProperties:v17];

    v40 = 0;
    if ([(ISOperation *)selfCopy runSubOperation:v37 returningError:&v40])
    {
      [(ISOperation *)selfCopy setSuccess:1];
    }

    else
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog = [mEMORY[0x277D69B38] shouldLog];
      if ([mEMORY[0x277D69B38] shouldLogToDisk])
      {
        v28 = shouldLog | 2;
      }

      else
      {
        v28 = shouldLog;
      }

      oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v28;
      }

      else
      {
        v30 = v28 & 2;
      }

      if (v30)
      {
        v31 = objc_opt_class();
        v46 = 138412290;
        v47 = v31;
        v32 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%@: Failed, so posting default dialog", &v46, 12);
        if (v32)
        {
          v33 = v32;
          v34 = [MEMORY[0x277CCACA8] stringWithCString:v32 encoding:4];
          free(v33);
          v35 = v34;
          SSFileLog();
        }
      }

      [(ISSoftwareCapabilitiesDialogOperation *)selfCopy _postDefaultDialog];
      [(ISOperation *)selfCopy setError:v40];
    }
  }

  else
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      v20 = shouldLog2 | 2;
    }

    else
    {
      v20 = shouldLog2;
    }

    oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v20;
    }

    else
    {
      v22 = v20 & 2;
    }

    if (v22)
    {
      v46 = 138412290;
      v47 = objc_opt_class();
      v23 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &dword_275BC3000, oSLogObject2, 0, "%@: No bag key, posting default dialog", &v46, 12);
      if (v23)
      {
        v24 = v23;
        v25 = [MEMORY[0x277CCACA8] stringWithCString:v23 encoding:4];
        free(v24);
        v35 = v25;
        SSFileLog();
      }
    }

    [(ISSoftwareCapabilitiesDialogOperation *)self _postDefaultDialog];
    [(ISOperation *)self setSuccess:1];
  }
}

- (void)_postDefaultDialog
{
  v7 = MGCopyAnswer();
  intValue = [v7 intValue];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = @"HARDWARE_INCOMPATIBLE_ERROR_BODY_IPHONE";
  if (intValue == 3)
  {
    v4 = @"HARDWARE_INCOMPATIBLE_ERROR_BODY_IPAD";
  }

  if (intValue == 2)
  {
    v5 = @"HARDWARE_INCOMPATIBLE_ERROR_BODY_IPOD";
  }

  else
  {
    v5 = v4;
  }

  [v3 localizedStringForKey:v5 value:&stru_2884BCFD0 table:0];
  v6 = +[ISOperationQueue mainQueue];
  [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"HARDWARE_INCOMPATIBLE_ERROR_TITLE", &stru_2884BCFD0, 0}];
  [v6 addOperation:{+[ISDialogOperation operationWithError:](ISDialogOperation, "operationWithError:", SSError())}];
}

@end