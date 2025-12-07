@interface INAccountNotificationPlugin
- (BOOL)account:(id)account willChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
@end

@implementation INAccountNotificationPlugin

- (BOOL)account:(id)account willChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  v41 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  storeCopy = store;
  oldAccountCopy = oldAccount;
  switch(type)
  {
    case 1:
      v30 = _INLogSystem();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = accountCopy;
        _os_log_impl(&dword_29C8D9000, v30, OS_LOG_TYPE_DEFAULT, "iCloud account %@ will be added! Will notify ind...", buf, 0xCu);
      }

      [(INAccountNotificationPlugin *)self notifyCloudSubscriptionFeatures];
      v18 = 0;
      v29 = 1;
      break;
    case 2:
      dirtyProperties = [accountCopy dirtyProperties];
      v20 = [dirtyProperties containsObject:*MEMORY[0x29EDB8368]];

      v21 = _INLogSystem();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = @"NO";
        if (v20)
        {
          v22 = @"YES";
        }

        *buf = 138412546;
        v38 = accountCopy;
        v39 = 2112;
        v40 = v22;
        _os_log_impl(&dword_29C8D9000, v21, OS_LOG_TYPE_DEFAULT, "iCloud account %@ will be modifed! enabled dataclasses changed %@", buf, 0x16u);
      }

      v15 = [accountCopy accountPropertyForKey:@"iCloudNotificationLastRegisterDate"];
      if (v15)
      {
        date = [MEMORY[0x29EDB8DB0] date];
        [date timeIntervalSinceDate:v15];
        v25 = v24;

        v26 = v25 > 86400.0 ? 1 : v20;
        if (v26 != 1)
        {
          v18 = 0;
          goto LABEL_24;
        }
      }

      v27 = _INLogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = accountCopy;
        _os_log_impl(&dword_29C8D9000, v27, OS_LOG_TYPE_DEFAULT, "iCloud account %@ will change, and it has been 24 hours! Will notify ind...", buf, 0xCu);
      }

      date2 = [MEMORY[0x29EDB8DB0] date];
      [accountCopy setAccountProperty:date2 forKey:@"iCloudNotificationLastRegisterDate"];

      v18 = 1;
      v29 = 3;
      break;
    case 3:
      v13 = _INLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = oldAccountCopy;
        _os_log_impl(&dword_29C8D9000, v13, OS_LOG_TYPE_DEFAULT, "iCloud account %@ is going away! Will notify ind...", buf, 0xCu);
      }

      v14 = os_transaction_create();
      v15 = objc_alloc_init(MEMORY[0x29EDC8328]);
      v35[0] = MEMORY[0x29EDCA5F8];
      v35[1] = 3221225472;
      v35[2] = nullsub_1;
      v35[3] = &unk_29F3305A0;
      v16 = &v36;
      v36 = v14;
      v17 = v14;
      [v15 unregisterAccount:oldAccountCopy fromiCloudNotificationsWithCompletion:v35];
      v18 = 0;
      goto LABEL_23;
    default:
      v18 = 0;
      goto LABEL_26;
  }

  v31 = os_transaction_create();
  v15 = objc_alloc_init(MEMORY[0x29EDC8328]);
  v33[0] = MEMORY[0x29EDCA5F8];
  v33[1] = 3221225472;
  v33[2] = nullsub_2;
  v33[3] = &unk_29F3305A0;
  v16 = &v34;
  v34 = v31;
  v17 = v31;
  [v15 registerAccount:accountCopy foriCloudNotificationsWithReason:v29 completion:v33];
LABEL_23:

LABEL_24:
LABEL_26:

  return v18;
}

- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  v13 = *MEMORY[0x29EDCA608];
  oldAccountCopy = oldAccount;
  if (type == 3)
  {
    v9 = _INLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = oldAccountCopy;
      _os_log_impl(&dword_29C8D9000, v9, OS_LOG_TYPE_DEFAULT, "iCloud account %@ was removed! Will notify ind", &v11, 0xCu);
    }

    [(INAccountNotificationPlugin *)self notifyCloudSubscriptionFeatures];
    v10 = objc_alloc_init(MEMORY[0x29EDC8328]);
    [v10 teardownOffersForAccount:oldAccountCopy withCompletion:&unk_2A23D95F8];
  }
}

@end