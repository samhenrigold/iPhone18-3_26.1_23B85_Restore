@interface ServerAuthUICredentialStore
- (void)dropCredentialsForServerURL:(id)l;
- (void)getUsername:(id *)username password:(id *)password forServerURL:(id)l;
- (void)storeCredentialsFromServerURL:(id)l;
@end

@implementation ServerAuthUICredentialStore

- (void)getUsername:(id *)username password:(id *)password forServerURL:(id)l
{
  v43[0] = kSecClassInternetPassword;
  v42[0] = kSecClass;
  v42[1] = kSecAttrServer;
  lCopy = l;
  host = [lCopy host];
  v43[1] = host;
  v42[2] = kSecAttrProtocol;
  serverAuthUI_protocolFromScheme = [lCopy serverAuthUI_protocolFromScheme];
  v43[2] = serverAuthUI_protocolFromScheme;
  v42[3] = kSecAttrPort;
  port = [lCopy port];

  v11 = &off_100008650;
  if (port)
  {
    v11 = port;
  }

  v43[3] = v11;
  v43[4] = kSecMatchLimitOne;
  v42[4] = kSecMatchLimit;
  v42[5] = kSecAttrSynchronizable;
  v43[5] = kCFBooleanTrue;
  v43[6] = &__kCFBooleanTrue;
  v42[6] = kSecReturnAttributes;
  v42[7] = kSecUseOperationPrompt;
  v42[8] = kSecReturnData;
  v43[7] = @"Access your password on the keychain";
  v43[8] = &__kCFBooleanTrue;
  v12 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:9];

  result = 0;
  v13 = SecItemCopyMatching(v12, &result);
  if (v13)
  {
    v15 = v13;
    if (v13 == -25300)
    {
      v16 = serverAuthUILogHandle;
      if (!serverAuthUILogHandle)
      {
        ServerAuthUIInitLogging(v13, v14);
        v16 = serverAuthUILogHandle;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v17 = "No password found";
        v18 = v16;
        v19 = 2;
LABEL_22:
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, v17, buf, v19);
      }
    }

    else
    {
      v34 = serverAuthUILogHandle;
      if (!serverAuthUILogHandle)
      {
        ServerAuthUIInitLogging(v13, v14);
        v34 = serverAuthUILogHandle;
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v41 = v15;
        v17 = "Error retrieving username and password from keychain (status: %d)";
        v18 = v34;
        v19 = 8;
        goto LABEL_22;
      }
    }
  }

  else
  {
    v20 = result;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v23 = [v20 objectForKeyedSubscript:kSecAttrAccount];
      objc_opt_class();
      v24 = objc_opt_isKindOfClass();
      if (v24)
      {
        v26 = [v20 objectForKeyedSubscript:kSecValueData];
        objc_opt_class();
        v27 = objc_opt_isKindOfClass();
        if (v27)
        {
          v29 = [[NSString alloc] initWithData:v26 encoding:4];
          v31 = v29;
          if (v23 && v29)
          {
            if (username)
            {
              v32 = v23;
              *username = v23;
            }

            if (password)
            {
              v33 = v31;
              *password = v31;
            }
          }

          else
          {
            v38 = serverAuthUILogHandle;
            if (!serverAuthUILogHandle)
            {
              ServerAuthUIInitLogging(v29, v30);
              v38 = serverAuthUILogHandle;
            }

            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              sub_100003D54(v38);
            }
          }
        }

        else
        {
          v37 = serverAuthUILogHandle;
          if (!serverAuthUILogHandle)
          {
            ServerAuthUIInitLogging(v27, v28);
            v37 = serverAuthUILogHandle;
          }

          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            sub_100003CC8(v37, v26);
          }
        }
      }

      else
      {
        v36 = serverAuthUILogHandle;
        if (!serverAuthUILogHandle)
        {
          ServerAuthUIInitLogging(v24, v25);
          v36 = serverAuthUILogHandle;
        }

        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_100003C3C(v36, v23);
        }
      }
    }

    else
    {
      v35 = serverAuthUILogHandle;
      if (!serverAuthUILogHandle)
      {
        ServerAuthUIInitLogging(isKindOfClass, v22);
        v35 = serverAuthUILogHandle;
      }

      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_100003BB0(v35, v20);
      }
    }
  }
}

- (void)storeCredentialsFromServerURL:(id)l
{
  lCopy = l;
  v4 = [NSURLComponents componentsWithURL:lCopy resolvingAgainstBaseURL:0];
  user = [v4 user];
  password = [v4 password];
  v7 = [v4 setPassword:&stru_1000085C8];
  v9 = serverAuthUILogHandle;
  if (!serverAuthUILogHandle)
  {
    ServerAuthUIInitLogging(v7, v8);
    v9 = serverAuthUILogHandle;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [v4 URL];
    *buf = 138412290;
    v54 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Updating keychain with user input credentials for server URL %@", buf, 0xCu);
  }

  if (user)
  {
    v12 = password == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v51[0] = kSecClass;
    v51[1] = kSecAttrAccount;
    v52[0] = kSecClassInternetPassword;
    v52[1] = user;
    v48 = user;
    v51[2] = kSecValueData;
    v47 = password;
    v13 = [password dataUsingEncoding:4];
    v52[2] = v13;
    v51[3] = kSecAttrServer;
    host = [lCopy host];
    v52[3] = host;
    v51[4] = kSecAttrProtocol;
    serverAuthUI_protocolFromScheme = [lCopy serverAuthUI_protocolFromScheme];
    v52[4] = serverAuthUI_protocolFromScheme;
    v51[5] = kSecAttrPort;
    port = [lCopy port];
    v17 = port;
    v18 = &off_100008650;
    if (port)
    {
      v18 = port;
    }

    v52[5] = v18;
    v52[6] = kSecAttrAccessibleWhenUnlocked;
    v51[6] = kSecAttrAccessible;
    v51[7] = kSecAttrSynchronizable;
    v52[7] = kCFBooleanTrue;
    v19 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:8];

    v20 = SecItemAdd(v19, 0);
    if (v20 == -25299)
    {
      v23 = serverAuthUILogHandle;
      if (!serverAuthUILogHandle)
      {
        ServerAuthUIInitLogging(v20, v21);
        v23 = serverAuthUILogHandle;
      }

      user = v48;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Updating existing keychain entry", buf, 2u);
      }

      v24 = [NSMutableDictionary alloc];
      v50[0] = kSecClass;
      v50[1] = kSecAttrServer;
      v50[2] = kSecAttrProtocol;
      v50[3] = kSecAttrPort;
      v25 = [NSArray arrayWithObjects:v50 count:4];
      [(__CFDictionary *)v19 dictionaryWithValuesForKeys:v25];
      v27 = v26 = v19;
      v28 = [v24 initWithDictionary:v27];

      [v28 setObject:kSecAttrSynchronizableAny forKeyedSubscript:kSecAttrSynchronizable];
      v49[0] = kSecAttrAccount;
      v49[1] = kSecValueData;
      v49[2] = kSecAttrAccessible;
      v49[3] = kSecAttrSynchronizable;
      v29 = [NSArray arrayWithObjects:v49 count:4];
      v19 = [(__CFDictionary *)v26 dictionaryWithValuesForKeys:v29];

      v30 = SecItemUpdate(v28, v19);
      if (v30)
      {
        v32 = v30;
        v33 = serverAuthUILogHandle;
        if (!serverAuthUILogHandle)
        {
          ServerAuthUIInitLogging(v30, v31);
          v33 = serverAuthUILogHandle;
        }

        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_100003D98(v32, v33, v34, v35, v36, v37, v38, v39);
        }
      }

      password = v47;
    }

    else
    {
      v22 = v20;
      if (v20)
      {
        v40 = serverAuthUILogHandle;
        user = v48;
        if (!serverAuthUILogHandle)
        {
          ServerAuthUIInitLogging(v20, v21);
          v40 = serverAuthUILogHandle;
        }

        password = v47;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_100003E04(v22, v40, v41, v42, v43, v44, v45, v46);
        }
      }

      else
      {
        password = v47;
        user = v48;
      }
    }
  }
}

- (void)dropCredentialsForServerURL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  v6 = serverAuthUILogHandle;
  if (!serverAuthUILogHandle)
  {
    ServerAuthUIInitLogging(lCopy, v4);
    v6 = serverAuthUILogHandle;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Dropping credentials for server URL %@", buf, 0xCu);
  }

  v24[0] = kSecClassInternetPassword;
  host = [v5 host];
  v24[1] = host;
  v23[2] = kSecAttrProtocol;
  serverAuthUI_protocolFromScheme = [v5 serverAuthUI_protocolFromScheme];
  v24[2] = serverAuthUI_protocolFromScheme;
  v23[3] = kSecAttrPort;
  port = [v5 port];
  v10 = port;
  v11 = &off_100008650;
  if (port)
  {
    v11 = port;
  }

  v23[4] = kSecAttrSynchronizable;
  v24[3] = v11;
  v24[4] = kCFBooleanTrue;
  v12 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:5];

  v13 = SecItemDelete(v12);
  if (v13)
  {
    v15 = v13;
    v16 = serverAuthUILogHandle;
    if (!serverAuthUILogHandle)
    {
      ServerAuthUIInitLogging(v13, v14);
      v16 = serverAuthUILogHandle;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100003E70(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }
}

@end