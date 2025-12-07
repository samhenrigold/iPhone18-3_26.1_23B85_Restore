@interface ISJSONDataProvider
- (BOOL)parseData:(id)data returningError:(id *)error;
- (ISJSONDataProvider)init;
@end

@implementation ISJSONDataProvider

- (ISJSONDataProvider)init
{
  __ISRecordSPIClassUsage(self, "/Library/Caches/com.apple.xbs/Sources/iTunesStore/src/ISJSONDataProvider.m", 19, a2);
  v4.receiver = self;
  v4.super_class = ISJSONDataProvider;
  return [(ISDataProvider *)&v4 init];
}

- (BOOL)parseData:(id)data returningError:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:data options:-[ISJSONDataProvider parserOptions](self error:{"parserOptions"), &v15}];
  if (v6)
  {
    [(ISDataProvider *)self setOutput:v6];
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
      LODWORD(v10) = shouldLog | 2;
    }

    else
    {
      LODWORD(v10) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v10 = v10;
    }

    else
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v12 = objc_opt_class();
      v16 = 138412546;
      v17 = v12;
      v18 = 2112;
      v19 = v15;
      v13 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%@: Could not parse JSON: %@", &v16, 22);
      if (v13)
      {
        v14 = v13;
        [MEMORY[0x277CCACA8] stringWithCString:v13 encoding:4];
        free(v14);
        SSFileLog();
      }
    }
  }

  if (error)
  {
    *error = v15;
  }

  return v6 != 0;
}

@end