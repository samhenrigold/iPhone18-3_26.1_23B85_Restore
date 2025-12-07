@interface AAFollowUpUtilities
+ (BOOL)hasValidIDMSAccountForUserInfo:(id)info;
+ (id)followUpPostAnalyticsInfoWithContext:(id)context identifier:(id)identifier error:(id)error;
@end

@implementation AAFollowUpUtilities

+ (BOOL)hasValidIDMSAccountForUserInfo:(id)info
{
  v57 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  v5 = [infoCopy objectForKeyedSubscript:AAFollowUpUserInfoAccountIdentifier[0]];
  v6 = _AALogSystem(v5);
  v7 = v6;
  if (!v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpUtilities hasValidIDMSAccountForUserInfo:v7];
    }

    goto LABEL_32;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    +[AAFollowUpUtilities hasValidIDMSAccountForUserInfo:];
  }

  v8 = [defaultStore accountWithIdentifier:v5];
  v7 = v8;
  if (!v8)
  {
LABEL_32:
    v35 = 0;
    goto LABEL_38;
  }

  v9 = _AALogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    +[AAFollowUpUtilities hasValidIDMSAccountForUserInfo:];
  }

  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  allAuthKitAccounts = [mEMORY[0x1E698DC80] allAuthKitAccounts];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v12 = allAuthKitAccounts;
  v44 = [v12 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v44)
  {
    v13 = *v52;
    v41 = defaultStore;
    v42 = infoCopy;
    v39 = *v52;
    v40 = v5;
    v43 = v12;
    while (2)
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v52 != v13)
        {
          objc_enumerationMutation(v12);
        }

        v15 = *(*(&v51 + 1) + 8 * i);
        username = [v15 username];
        username2 = [v7 username];
        v18 = [username isEqualToString:username2];

        if (v18)
        {
          v38 = _AALogSystem(v19);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            +[AAFollowUpUtilities hasValidIDMSAccountForUserInfo:];
          }

          v35 = 1;
LABEL_36:
          v34 = v12;
          defaultStore = v41;
          infoCopy = v42;
          v5 = v40;
          goto LABEL_37;
        }

        mEMORY[0x1E698DC80]2 = [MEMORY[0x1E698DC80] sharedInstance];
        v21 = [mEMORY[0x1E698DC80]2 aliasesForAccount:v15];

        if (v21)
        {
          v23 = _AALogSystem(v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            [(AAFollowUpUtilities *)&buf hasValidIDMSAccountForUserInfo:v50, v23];
          }

          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v24 = v21;
          v25 = [v24 countByEnumeratingWithState:&v45 objects:v55 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v46;
            while (2)
            {
              for (j = 0; j != v26; ++j)
              {
                if (*v46 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = *(*(&v45 + 1) + 8 * j);
                username3 = [v7 username];
                v31 = [username3 isEqualToString:v29];

                if (v31)
                {
                  v36 = _AALogSystem(v32);
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                  {
                    +[AAFollowUpUtilities hasValidIDMSAccountForUserInfo:];
                  }

                  v35 = 1;
                  v12 = v43;
                  goto LABEL_36;
                }
              }

              v26 = [v24 countByEnumeratingWithState:&v45 objects:v55 count:16];
              if (v26)
              {
                continue;
              }

              break;
            }
          }

          v12 = v43;
          v13 = v39;
        }
      }

      defaultStore = v41;
      infoCopy = v42;
      v5 = v40;
      v44 = [v12 countByEnumeratingWithState:&v51 objects:v56 count:16];
      if (v44)
      {
        continue;
      }

      break;
    }
  }

  v34 = _AALogSystem(v33);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
  {
    [(AAFollowUpUtilities *)v7 hasValidIDMSAccountForUserInfo:v34];
  }

  v35 = 0;
LABEL_37:

LABEL_38:
  return v35;
}

+ (id)followUpPostAnalyticsInfoWithContext:(id)context identifier:(id)identifier error:(id)error
{
  contextCopy = context;
  identifierCopy = identifier;
  errorCopy = error;
  v10 = objc_alloc_init(MEMORY[0x1E6985DA8]);
  proxiedDevice = [contextCopy proxiedDevice];

  if (proxiedDevice)
  {
    [v10 setHasProxiedDevice:&unk_1F2F24B80];
  }

  _proxiedAppBundleID = [contextCopy _proxiedAppBundleID];

  if (_proxiedAppBundleID)
  {
    _proxiedAppBundleID2 = [contextCopy _proxiedAppBundleID];
    [v10 setProxiedBundleID:_proxiedAppBundleID2];
  }

  if (errorCopy)
  {
    [v10 setPostedReasonError:errorCopy];
  }

  telemetryFlowID = [contextCopy telemetryFlowID];

  if (telemetryFlowID)
  {
    telemetryFlowID2 = [contextCopy telemetryFlowID];
    [v10 setFlowID:telemetryFlowID2];
  }

  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  altDSID = [contextCopy altDSID];
  v18 = [mEMORY[0x1E698DC80] authKitAccountWithAltDSID:altDSID];

  if ([mEMORY[0x1E698DC80] accountAccessTelemetryOptInForAccount:v18])
  {
    v19 = [mEMORY[0x1E698DC80] telemetryDeviceSessionIDForAccount:v18];
    [v10 setDeviceSessionID:v19];
  }

  [v10 setCfuType:identifierCopy];
  v20 = [v10 copy];

  return v20;
}

+ (void)hasValidIDMSAccountForUserInfo:(os_log_t)log .cold.3(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_1B6F6A000, log, OS_LOG_TYPE_DEBUG, "AAFollowUpUtilities: Checking aliases...", buf, 2u);
}

+ (void)hasValidIDMSAccountForUserInfo:(void *)a1 .cold.6(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 accountType];
  v4 = [v3 identifier];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_FAULT, "AAFollowUpUtilities: Unable to find valid account for followup with account type %{public}@. Clearing item.", v5, 0xCu);
}

@end