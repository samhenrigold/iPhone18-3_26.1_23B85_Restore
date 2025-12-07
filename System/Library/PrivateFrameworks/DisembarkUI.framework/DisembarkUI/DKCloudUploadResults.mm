@interface DKCloudUploadResults
- (BOOL)success;
@end

@implementation DKCloudUploadResults

- (BOOL)success
{
  v19 = *MEMORY[0x277D85DE8];
  syncResult = [(DKCloudUploadResults *)self syncResult];
  if (syncResult)
  {
    v4 = syncResult;
    syncResult2 = [(DKCloudUploadResults *)self syncResult];
    success = [syncResult2 success];

    if (!success)
    {
      return 0;
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  backupResults = [(DKCloudUploadResults *)self backupResults];
  v8 = [backupResults countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(backupResults);
        }

        if (![*(*(&v14 + 1) + 8 * i) success])
        {
          v12 = 0;
          goto LABEL_13;
        }
      }

      v9 = [backupResults countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_13:

  return v12;
}

@end