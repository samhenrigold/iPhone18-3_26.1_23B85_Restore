@interface ISLoadSoftwareMapOperation
- (void)run;
@end

@implementation ISLoadSoftwareMapOperation

- (void)run
{
  v31 = *MEMORY[0x277D85DE8];
  if (+[ISSoftwareMap currentMapIsValid])
  {

    [(ISOperation *)self setSuccess:1];
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
      LODWORD(v5) = shouldLog | 2;
    }

    else
    {
      LODWORD(v5) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v5 = v5;
    }

    else
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v29 = 138412290;
      v30 = objc_opt_class();
      v7 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_275BC3000, oSLogObject, 1, "%@: Loading software map", &v29, 12);
      if (v7)
      {
        v8 = v7;
        v9 = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:4];
        free(v8);
        v26 = v9;
        SSFileLog();
      }
    }

    v10 = objc_alloc_init(ISSoftwareMap);
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    mEMORY[0x277D69B38]3 = mEMORY[0x277D69B38]2;
    if (v10)
    {
      if (!mEMORY[0x277D69B38]2)
      {
        mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog2 = [mEMORY[0x277D69B38]3 shouldLog];
      if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
      {
        LODWORD(v14) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v14) = shouldLog2;
      }

      oSLogObject2 = [mEMORY[0x277D69B38]3 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
      {
        v14 = v14;
      }

      else
      {
        v14 &= 2u;
      }

      if (v14)
      {
        v16 = objc_opt_class();
        v29 = 138412290;
        v30 = v16;
        LODWORD(v28) = 12;
        v17 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_275BC3000, oSLogObject2, 1, "%@: Loaded software map", &v29, v28);
        if (v17)
        {
          v18 = v17;
          v19 = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:4];
          free(v18);
          v27 = v19;
          SSFileLog();
        }
      }

      [ISSoftwareMap setCurrentMap:v10, v27];
      [(ISOperation *)self setSuccess:1];
    }

    else
    {
      if (!mEMORY[0x277D69B38]2)
      {
        mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
      if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
      {
        LODWORD(v21) = shouldLog3 | 2;
      }

      else
      {
        LODWORD(v21) = shouldLog3;
      }

      oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v21;
      }

      else
      {
        v21 &= 2u;
      }

      if (v21)
      {
        v23 = objc_opt_class();
        v29 = 138412290;
        v30 = v23;
        LODWORD(v28) = 12;
        v24 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &dword_275BC3000, oSLogObject3, 0, "%@: Could not load software map", &v29, v28);
        if (v24)
        {
          v25 = v24;
          [MEMORY[0x277CCACA8] stringWithCString:v24 encoding:4];
          free(v25);
          SSFileLog();
        }
      }
    }
  }
}

@end