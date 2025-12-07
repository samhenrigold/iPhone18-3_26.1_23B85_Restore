@interface GameCenterAccountNotificationPlugin
- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
@end

@implementation GameCenterAccountNotificationPlugin

- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  v8 = *&type;
  v57 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  storeCopy = store;
  oldAccountCopy = oldAccount;
  v12 = oldAccountCopy;
  if (v8 == 3)
  {
    v13 = oldAccountCopy;
  }

  else
  {
    v13 = accountCopy;
  }

  v14 = v13;
  accountType = [v14 accountType];
  identifier = [accountType identifier];

  v17 = MEMORY[0x29EDC1218];
  v18 = *MEMORY[0x29EDC1218];
  if (!*MEMORY[0x29EDC1218])
  {
    v19 = GKOSLoggers();
    v18 = *v17;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v20 = MEMORY[0x29EDBA070];
    v21 = v18;
    v22 = [v20 numberWithUnsignedInt:v8];
    *buf = 138413058;
    v50 = accountCopy;
    v51 = 2112;
    v52 = v22;
    v53 = 2112;
    v54 = v12;
    v55 = 2112;
    v56 = storeCopy;
    _os_log_impl(&dword_29C8CD000, v21, OS_LOG_TYPE_INFO, "Plugin account: %@ - changeType: %@ - oldAccount: %@ - store: %@", buf, 0x2Au);
  }

  v23 = *v17;
  if (!*v17)
  {
    v24 = GKOSLoggers();
    v23 = *v17;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v25 = v23;
    accountType2 = [accountCopy accountType];
    [accountType2 identifier];
    v48 = identifier;
    v27 = accountCopy;
    v28 = v14;
    v30 = v29 = storeCopy;
    [v12 accountType];
    v31 = v8;
    v33 = v32 = v12;
    identifier2 = [v33 identifier];
    *buf = 138412546;
    v50 = v30;
    v51 = 2112;
    v52 = identifier2;
    _os_log_impl(&dword_29C8CD000, v25, OS_LOG_TYPE_INFO, "Plugin account identifier: %@ - oldAccount identifier: %@", buf, 0x16u);

    v12 = v32;
    v8 = v31;
    v17 = MEMORY[0x29EDC1218];

    storeCopy = v29;
    v14 = v28;
    accountCopy = v27;
    identifier = v48;
  }

  v35 = *v17;
  if (!*v17)
  {
    v36 = GKOSLoggers();
    v35 = *v17;
  }

  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    v37 = MEMORY[0x29EDBA070];
    v38 = v35;
    v39 = [v37 numberWithUnsignedInt:v8];
    *buf = 138412802;
    v50 = v39;
    v51 = 2112;
    v52 = v14;
    v53 = 2112;
    v54 = storeCopy;
    _os_log_impl(&dword_29C8CD000, v38, OS_LOG_TYPE_INFO, "Plugin (didChangeWithType: %@) - %@ - %@", buf, 0x20u);
  }

  if ([identifier isEqualToString:*MEMORY[0x29EDB8230]])
  {
    switch(v8)
    {
      case 2:
        v44 = v17;
        v41 = *v17;
        if (!v41)
        {
          v45 = GKOSLoggers();
          v41 = *v44;
        }

        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v50 = accountCopy;
          v43 = "Plugin (didChangeWithType): Game Center account was modified: %@";
          goto LABEL_32;
        }

        break;
      case 1:
        v40 = v17;
        v41 = *v17;
        if (!v41)
        {
          v42 = GKOSLoggers();
          v41 = *v40;
        }

        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v50 = accountCopy;
          v43 = "Plugin (didChangeWithType): New Game Center account was added: %@";
LABEL_32:
          _os_log_impl(&dword_29C8CD000, v41, OS_LOG_TYPE_INFO, v43, buf, 0xCu);
        }

        break;
      case 3:
        v46 = v17;
        v41 = *v17;
        if (!v41)
        {
          v47 = GKOSLoggers();
          v41 = *v46;
        }

        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v50 = v12;
          v43 = "Plugin (didChangeWithType): Game Center account was deleted: %@";
          goto LABEL_32;
        }

        break;
    }
  }
}

@end