@interface ISSetApplicationBadgeOperation
- (void)run;
@end

@implementation ISSetApplicationBadgeOperation

- (void)run
{
  v18 = *MEMORY[0x277D85DE8];
  bundleIdentifier = [(ISSetApplicationBadgeOperation *)self bundleIdentifier];
  badgeValue = [(ISSetApplicationBadgeOperation *)self badgeValue];
  if (bundleIdentifier)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v7) = shouldLog | 2;
    }

    else
    {
      LODWORD(v7) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v7 = v7;
    }

    else
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v12 = 138412802;
      v13 = objc_opt_class();
      v14 = 2112;
      v15 = bundleIdentifier;
      v16 = 2112;
      v17 = badgeValue;
      v9 = v13;
      v10 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_275BC3000, oSLogObject, 1, "%@: Setting badge (%@, %@)", &v12, 32);

      if (!v10)
      {
LABEL_14:

        mEMORY[0x277D0AE18] = [MEMORY[0x277D0AE18] sharedService];
        [mEMORY[0x277D0AE18] setBadgeValue:badgeValue forBundleID:bundleIdentifier];

        [(ISOperation *)self setSuccess:1];
        goto LABEL_15;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:4];
      free(v10);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
}

@end