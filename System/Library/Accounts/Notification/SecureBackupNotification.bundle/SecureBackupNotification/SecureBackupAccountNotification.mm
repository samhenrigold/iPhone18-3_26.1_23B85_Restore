@interface SecureBackupAccountNotification
- (BOOL)account:(id)account willChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
@end

@implementation SecureBackupAccountNotification

- (BOOL)account:(id)account willChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  v6 = *&type;
  v29 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"-[SecureBackupAccountNotification account:willChangeWithType:inStore:oldAccount:]"];
    *buf = 138412290;
    v26 = v9;
    _os_log_impl(&dword_29C90F000, v8, OS_LOG_TYPE_DEFAULT, "in %@", buf, 0xCu);
  }

  v10 = CloudServicesLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v6];
    *buf = 138412546;
    v26 = accountCopy;
    v27 = 2112;
    v28 = v11;
    _os_log_impl(&dword_29C90F000, v10, OS_LOG_TYPE_DEFAULT, "account %@, ACAccountChangeType = %@", buf, 0x16u);
  }

  if (sub_29C910200() && sub_29C910270(accountCopy))
  {
    identifier = [accountCopy identifier];
    if (v6 == 3)
    {
      v13 = [objc_alloc(MEMORY[0x29EDC0B58]) initWithUserActivityLabel:@"EMCS backup"];
      v23 = *MEMORY[0x29EDC0B60];
      v24 = MEMORY[0x29EDB8EB0];
      username = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v15 = [v13 backupWithInfo:username];
      if (!v15)
      {
LABEL_17:

        goto LABEL_18;
      }

      v16 = CloudServicesLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_29C910AD0();
      }
    }

    else
    {
      if (MKBGetDeviceLockState() != 3)
      {
        v13 = CloudServicesLog();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        username = [accountCopy username];
        *buf = 138412546;
        v26 = identifier;
        v27 = 2112;
        v28 = username;
        _os_log_impl(&dword_29C90F000, v13, OS_LOG_TYPE_DEFAULT, "nothing to do for account %@: %@", buf, 0x16u);
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      _aa_rawPassword = [accountCopy _aa_rawPassword];
      if (!_aa_rawPassword)
      {
        v13 = CloudServicesLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v26 = identifier;
          _os_log_impl(&dword_29C90F000, v13, OS_LOG_TYPE_DEFAULT, "Account %@ did not present a password", buf, 0xCu);
        }

        goto LABEL_19;
      }

      v13 = _aa_rawPassword;
      username = [accountCopy aa_personID];
      v18 = CloudServicesLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = username;
        _os_log_impl(&dword_29C90F000, v18, OS_LOG_TYPE_DEFAULT, " got password for dsid: %@", buf, 0xCu);
      }

      v15 = [objc_alloc(MEMORY[0x29EDC0B58]) initWithUserActivityLabel:@"EMCS enable"];
      v19 = *MEMORY[0x29EDC0B70];
      v21[0] = *MEMORY[0x29EDC0B60];
      v21[1] = v19;
      v22[0] = MEMORY[0x29EDB8EB0];
      v22[1] = v13;
      v16 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
      [v15 enableWithInfo:v16 completionBlock:&unk_2A23DCF10];
    }

    goto LABEL_17;
  }

LABEL_20:

  return 1;
}

- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  v6 = *&type;
  v37 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"-[SecureBackupAccountNotification account:didChangeWithType:inStore:oldAccount:]"];
    *buf = 138412290;
    v32 = v9;
    _os_log_impl(&dword_29C90F000, v8, OS_LOG_TYPE_DEFAULT, "in %@", buf, 0xCu);
  }

  v10 = CloudServicesLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v6];
    *buf = 138412546;
    v32 = accountCopy;
    v33 = 2112;
    v34 = v11;
    _os_log_impl(&dword_29C90F000, v10, OS_LOG_TYPE_DEFAULT, "account %@, ACAccountChangeType = %@", buf, 0x16u);
  }

  if (sub_29C910200() && sub_29C910270(accountCopy))
  {
    identifier = [accountCopy identifier];
    if (v6 == 2 && MKBGetDeviceLockState() != 3)
    {
      _aa_rawPassword = [accountCopy _aa_rawPassword];
      credential = [accountCopy credential];
      username2 = [credential credentialItemForKey:@"old-password"];

      if (username2 && _aa_rawPassword && ([(__CFString *)username2 isEqualToString:_aa_rawPassword]& 1) == 0)
      {
        v19 = objc_alloc_init(MEMORY[0x29EDBFB48]);
        v20 = objc_alloc_init(MEMORY[0x29EDBFB50]);
        username = [accountCopy username];
        [v19 setUsername:username];

        [v19 _setPassword:_aa_rawPassword];
        [v19 setIsUsernameEditable:0];
        [v19 setShouldAllowAppleIDCreation:0];
        [v19 setNeedsCredentialRecovery:0];
        [v19 setNeedsNewAppleID:0];
        [v19 setServiceType:0];
        [v19 setAuthenticationType:1];
        [v19 setShouldRequestShortLivedToken:1];
        [v19 setShouldRequestConfigurationInfo:1];
        [v19 setIsEphemeral:1];
        v22 = dispatch_semaphore_create(0);
        v26[0] = MEMORY[0x29EDCA5F8];
        v26[1] = 3221225472;
        v26[2] = sub_29C9107AC;
        v26[3] = &unk_29F332DC0;
        v27 = username2;
        v28 = _aa_rawPassword;
        v29 = accountCopy;
        v30 = v22;
        v23 = v22;
        v24 = _aa_rawPassword;
        v25 = username2;
        [v20 authenticateWithContext:v19 completion:v26];
        dispatch_semaphore_wait(v23, 0xFFFFFFFFFFFFFFFFLL);

        _aa_rawPassword = v19;
        goto LABEL_23;
      }

      v16 = CloudServicesLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = &stru_2A23DD010;
        if (username2)
        {
          v18 = @"non-";
        }

        else
        {
          v18 = &stru_2A23DD010;
        }

        *buf = 138412802;
        v32 = identifier;
        v34 = v18;
        v33 = 2112;
        if (_aa_rawPassword)
        {
          v17 = @"non-";
        }

        v35 = 2112;
        v36 = v17;
        _os_log_impl(&dword_29C90F000, v16, OS_LOG_TYPE_DEFAULT, "Account %@ modified but old password = %@nil, new password = %@nil", buf, 0x20u);
      }
    }

    else
    {
      _aa_rawPassword = CloudServicesLog();
      if (!os_log_type_enabled(_aa_rawPassword, OS_LOG_TYPE_DEFAULT))
      {
LABEL_23:

        goto LABEL_24;
      }

      username2 = [accountCopy username];
      *buf = 138412546;
      v32 = identifier;
      v33 = 2112;
      v34 = username2;
      _os_log_impl(&dword_29C90F000, _aa_rawPassword, OS_LOG_TYPE_DEFAULT, "nothing to do for account %@: %@", buf, 0x16u);
    }

    goto LABEL_23;
  }

LABEL_24:
}

@end