@interface AMSBag_iTunesStoreUI
- (AMSBagValue)appleMusicDeviceOfferDeepLink;
- (AMSBagValue)iCloudDeviceOfferDeepLink;
@end

@implementation AMSBag_iTunesStoreUI

- (AMSBagValue)appleMusicDeviceOfferDeepLink
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E69E4770]);
  v3 = [MEMORY[0x1E69D49F8] contextWithBagType:0];
  v4 = [v2 initWithBagContext:v3];

  [v4 start];
  uRLBag = [v4 URLBag];
  if (!uRLBag)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      LODWORD(v8) = shouldLog | 2;
    }

    else
    {
      LODWORD(v8) = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v16 = 138543618;
      v17 = objc_opt_class();
      v18 = 2080;
      v19 = "[AMSBag_iTunesStoreUI appleMusicDeviceOfferDeepLink]";
      v10 = v17;
      v11 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_1C21AF000, oSLogObject, 16, "%{public}@: %s failed to load the bag for Apple Music device offer removal.", &v16, 22);

      if (!v11)
      {
LABEL_12:

        goto LABEL_13;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:4];
      free(v11);
      v15 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_12;
  }

LABEL_13:
  v12 = [uRLBag valueForKey:{@"appleMusicDeviceOfferDeepLink", v15}];
  v13 = [MEMORY[0x1E698C7E8] frozenBagValueWithKey:@"appleMusicDeviceOfferDeepLink" value:v12 valueType:5];

  return v13;
}

- (AMSBagValue)iCloudDeviceOfferDeepLink
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E69E4770]);
  v3 = [MEMORY[0x1E69D49F8] contextWithBagType:0];
  v4 = [v2 initWithBagContext:v3];

  [v4 start];
  uRLBag = [v4 URLBag];
  if (!uRLBag)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      LODWORD(v8) = shouldLog | 2;
    }

    else
    {
      LODWORD(v8) = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v16 = 138543618;
      v17 = objc_opt_class();
      v18 = 2080;
      v19 = "[AMSBag_iTunesStoreUI iCloudDeviceOfferDeepLink]";
      v10 = v17;
      v11 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_1C21AF000, oSLogObject, 16, "%{public}@: %s failed to load the bag for iCloud device offer removal.", &v16, 22);

      if (!v11)
      {
LABEL_12:

        goto LABEL_13;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:4];
      free(v11);
      v15 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_12;
  }

LABEL_13:
  v12 = [uRLBag valueForKey:{@"iCloudDeviceOfferDeepLink", v15}];
  v13 = [MEMORY[0x1E698C7E8] frozenBagValueWithKey:@"iCloudDeviceOfferDeepLink" value:v12 valueType:5];

  return v13;
}

@end