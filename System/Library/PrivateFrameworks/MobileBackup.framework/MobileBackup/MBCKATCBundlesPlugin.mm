@interface MBCKATCBundlesPlugin
- (BOOL)shouldBackgroundRestoreContentWithPolicy:(id)policy fileInfo:(id)info;
- (BOOL)shouldRestoreContentWithPolicy:(id)policy fileInfo:(id)info;
@end

@implementation MBCKATCBundlesPlugin

- (BOOL)shouldRestoreContentWithPolicy:(id)policy fileInfo:(id)info
{
  policyCopy = policy;
  infoCopy = info;
  v7 = +[ATClientController sharedInstance];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  allClients = [v7 allClients];
  v9 = [allClients countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v19 = v7;
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(allClients);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        if (objc_opt_respondsToSelector())
        {
          v15 = +[MBCKManager sharedInstance];
          v16 = [v13 shouldRestoreFile:infoCopy backupManager:v15];

          if (!v16)
          {
            objc_autoreleasePoolPop(v14);
            v17 = 0;
            goto LABEL_12;
          }
        }

        objc_autoreleasePoolPop(v14);
      }

      v10 = [allClients countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v17 = 1;
LABEL_12:
    v7 = v19;
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

- (BOOL)shouldBackgroundRestoreContentWithPolicy:(id)policy fileInfo:(id)info
{
  policyCopy = policy;
  infoCopy = info;
  if ([policyCopy isRestoringPrimaryAccount])
  {
    v7 = +[ATClientController sharedInstance];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = [v7 allClients];
    v8 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v8)
    {
      v28 = v7;
      v29 = policyCopy;
      v9 = *v33;
      v10 = &selRef_setServiceDelegate_;
      v11 = &selRef_setServiceDelegate_;
      while (2)
      {
        v12 = 0;
        v13 = v10[245];
        v14 = v11[244];
        do
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v32 + 1) + 8 * v12);
          v16 = objc_autoreleasePoolPush();
          if (objc_opt_respondsToSelector() & 1) != 0 && ([infoCopy path], context = v16, v17 = v14, v18 = v13, v19 = v8, v20 = v9, v21 = infoCopy, v22 = objc_claimAutoreleasedReturnValue(), +[MBCKManager sharedInstance](MBCKManager, "sharedInstance"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v15, "shouldBackgroundRestorePath:backupManager:", v22, v23), v23, v22, infoCopy = v21, v9 = v20, v8 = v19, v13 = v18, v14 = v17, v16 = context, (v24) || (objc_opt_respondsToSelector() & 1) != 0 && (+[MBCKManager sharedInstance](MBCKManager, "sharedInstance"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v15, "shouldBackgroundRestoreFile:backupManager:", infoCopy, v25), v25, (v26))
          {
            objc_autoreleasePoolPop(v16);
            LOBYTE(v8) = 1;
            goto LABEL_16;
          }

          objc_autoreleasePoolPop(v16);
          v12 = v12 + 1;
        }

        while (v8 != v12);
        v8 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
        v10 = &selRef_setServiceDelegate_;
        v11 = &selRef_setServiceDelegate_;
        if (v8)
        {
          continue;
        }

        break;
      }

LABEL_16:
      v7 = v28;
      policyCopy = v29;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

@end