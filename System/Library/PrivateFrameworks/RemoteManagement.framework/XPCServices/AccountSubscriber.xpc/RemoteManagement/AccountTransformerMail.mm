@interface AccountTransformerMail
- (BOOL)changesRequireRecreation:(id)recreation properties:(id)properties;
- (id)_authSchemeForAuthenticationMethod:(id)method;
- (void)accountPropertiesFromConfiguration:(id)configuration account:(id)account accountStore:(id)store completionHandler:(id)handler;
- (void)applyProperties:(id)properties toAccount:(id)account accountStore:(id)store completionHandler:(id)handler;
- (void)configurationUIForConfiguration:(id)configuration completionHandler:(id)handler;
@end

@implementation AccountTransformerMail

- (void)accountPropertiesFromConfiguration:(id)configuration account:(id)account accountStore:(id)store completionHandler:(id)handler
{
  configurationCopy = configuration;
  accountCopy = account;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000ED34;
  v17[3] = &unk_10001CCA0;
  storeCopy = store;
  handlerCopy = handler;
  v18 = configurationCopy;
  selfCopy = self;
  v20 = accountCopy;
  v16.receiver = self;
  v16.super_class = AccountTransformerMail;
  v12 = storeCopy;
  v13 = accountCopy;
  v14 = handlerCopy;
  v15 = configurationCopy;
  [(AccountTransformer *)&v16 accountPropertiesFromConfiguration:v15 account:v13 accountStore:v12 completionHandler:v17];
}

- (id)_authSchemeForAuthenticationMethod:(id)method
{
  methodCopy = method;
  if ([methodCopy isEqualToString:@"EmailAuthCRAMMD5"])
  {
    v4 = @"CRAM-MD5";
  }

  else if ([methodCopy isEqualToString:@"EmailAuthNTLM"])
  {
    v4 = @"NTLM";
  }

  else if ([methodCopy isEqualToString:@"EmailAuthHTTPMD5"])
  {
    v4 = @"DIGEST-MD5";
  }

  else
  {
    v4 = ACAuthenticationSchemeAnyPlainText;
  }

  return v4;
}

- (void)applyProperties:(id)properties toAccount:(id)account accountStore:(id)store completionHandler:(id)handler
{
  propertiesCopy = properties;
  accountCopy = account;
  handlerCopy = handler;
  v10 = [accountCopy objectForKeyedSubscript:@"RemoteManagementSecondaryAccountIdentifier"];
  v11 = +[RMLog accountTransformerMail];
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (!v10)
  {
    if (v12)
    {
      sub_100013750(v11);
    }

    goto LABEL_9;
  }

  if (v12)
  {
    sub_1000136E8();
  }

  v13 = [SMTPAccount accountWithIdentifier:v10];
  if (!v13)
  {
LABEL_9:
    v14 = +[RMLog accountTransformerMail];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_100013794(v14);
    }

    v13 = objc_opt_new();
  }

  v58 = v10;
  v15 = +[RMLog accountTransformerMail];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D8();
  }

  persistentAccount = [v13 persistentAccount];
  [persistentAccount setAuthenticated:1];

  v17 = [propertiesCopy objectForKeyedSubscript:@"RemoteManagementAccountType"];
  [v17 isEqualToString:ACAccountTypeIdentifierIMAP];
  v18 = objc_opt_class();

  v19 = [[v18 alloc] initWithPersistentAccount:accountCopy];
  v20 = NSStringFromClass(v18);
  [v19 setAccountProperty:v20 forKey:MFMailAccountClass];

  [accountCopy setAuthenticated:1];
  v77[0] = _NSConcreteStackBlock;
  v77[1] = 3221225472;
  v77[2] = sub_1000103AC;
  v77[3] = &unk_10001CCC8;
  v21 = v19;
  v78 = v21;
  v57 = accountCopy;
  v79 = v57;
  v22 = propertiesCopy;
  v80 = v22;
  [v22 enumerateKeysAndObjectsUsingBlock:v77];
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_100010AE8;
  v75[3] = &unk_10001CDE0;
  v23 = v13;
  v76 = v23;
  [v22 enumerateKeysAndObjectsUsingBlock:v75];
  [v21 setDeliveryAccount:v23];
  identifier = [v23 identifier];
  [v21 setAccountProperty:identifier forKey:@"RemoteManagementSecondaryAccountIdentifier"];

  identifier2 = [v21 identifier];
  [v23 setAccountProperty:identifier2 forKey:@"RemoteManagementPrimaryAccountIdentifier"];

  +[MailAccount reloadAccounts];
  v26 = +[MailAccount mailAccounts];
  v27 = [v26 mutableCopy];

  [v27 addObject:v21];
  v28 = [v22 objectForKeyedSubscript:ACAccountPropertyPersonaIdentifier];
  v29 = +[RMLog accountTransformerMail];
  v30 = &NSStringFromClass_ptr;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    sub_100013840();
  }

  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_100010DB4;
  v71[3] = &unk_10001CE08;
  v31 = v28;
  v72 = v31;
  v56 = v27;
  v73 = v56;
  v32 = v21;
  v74 = v32;
  v33 = [DMCPersonaHelper performBlockUnderPersona:v31 block:v71];
  v34 = +[RMLog accountTransformerMail];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    sub_1000138A8();
  }

  [DeliveryAccount addDeliveryAccount:v23];
  v35 = +[RMLog accountTransformerMail];
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    sub_100013910();
  }

  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_100010E20;
  v68[3] = &unk_10001CD78;
  v36 = v31;
  v69 = v36;
  v55 = v23;
  v70 = v55;
  v37 = [DMCPersonaHelper performBlockUnderPersona:v36 block:v68];
  v38 = [v22 objectForKeyedSubscript:@"_remotemanagement_smimeSigningIdentity"];

  if (v38)
  {
    v39 = [v32 accountPropertyForKey:MailAccountEmailAddresses];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v40 = [v39 countByEnumeratingWithState:&v64 objects:v82 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v65;
      do
      {
        for (i = 0; i != v41; i = i + 1)
        {
          if (*v65 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v64 + 1) + 8 * i);
          v45 = [v22 objectForKeyedSubscript:@"_remotemanagement_smimeSigningIdentity"];
          [v32 setSigningIdentityPersistentReference:v45 forAddress:v44];
        }

        v41 = [v39 countByEnumeratingWithState:&v64 objects:v82 count:16];
      }

      while (v41);
    }

    v30 = &NSStringFromClass_ptr;
  }

  v46 = [v22 objectForKeyedSubscript:@"_remotemanagement_smimeEncryptionIdentity"];

  if (v46)
  {
    v47 = [v32 accountPropertyForKey:MailAccountEmailAddresses];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v48 = [v47 countByEnumeratingWithState:&v60 objects:v81 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v61;
      do
      {
        for (j = 0; j != v49; j = j + 1)
        {
          if (*v61 != v50)
          {
            objc_enumerationMutation(v47);
          }

          v52 = *(*(&v60 + 1) + 8 * j);
          v53 = [v22 objectForKeyedSubscript:@"_remotemanagement_smimeEncryptionIdentity"];
          [v32 setEncryptionIdentityPersistentReference:v53 forAddress:v52];
        }

        v49 = [v47 countByEnumeratingWithState:&v60 objects:v81 count:16];
      }

      while (v49);
    }

    v30 = &NSStringFromClass_ptr;
  }

  accountTransformerMail = [v30[133] accountTransformerMail];
  if (os_log_type_enabled(accountTransformerMail, OS_LOG_TYPE_DEBUG))
  {
    sub_100013978();
  }

  handlerCopy[2](handlerCopy, 0);
}

- (BOOL)changesRequireRecreation:(id)recreation properties:(id)properties
{
  recreationCopy = recreation;
  propertiesCopy = properties;
  v7 = propertiesCopy;
  if (recreationCopy)
  {
    v8 = [propertiesCopy objectForKeyedSubscript:@"RemoteManagementAccountType"];
    [v8 isEqualToString:ACAccountTypeIdentifierIMAP];
    v9 = objc_opt_class();

    v10 = [[v9 alloc] initWithPersistentAccount:recreationCopy];
    username = [v10 username];
    v12 = [v7 objectForKeyedSubscript:@"_remotemanagement_username"];
    v13 = [username isEqualToString:v12];

    if (v13)
    {
      hostname = [v10 hostname];
      v15 = [v7 objectForKeyedSubscript:@"_remotemanagement_hostname"];
      v16 = [hostname isEqualToString:v15];

      if (v16)
      {
        v17 = [v7 objectForKeyedSubscript:@"_remotemanagement_port"];
        if (v17 && (v18 = [v10 portNumber], v18 != -[NSObject unsignedIntValue](v17, "unsignedIntValue")))
        {
          v22 = +[RMLog accountTransformerMail];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *v45 = 0;
            v35 = "Configuration change to inbound mail port number requires account to be recreated";
            v36 = v45;
            goto LABEL_25;
          }
        }

        else
        {
          v19 = NSStringFromClass(v9);
          v20 = [recreationCopy objectForKeyedSubscript:MFMailAccountClass];
          v21 = [v19 isEqualToString:v20];

          if (v21)
          {
            v22 = [recreationCopy objectForKeyedSubscript:@"RemoteManagementSecondaryAccountIdentifier"];
            if (!v22)
            {
LABEL_13:
              v32 = 0;
LABEL_33:

              goto LABEL_34;
            }

            v23 = [SMTPAccount accountWithIdentifier:v22];
            username2 = [v23 username];
            v25 = [v7 objectForKeyedSubscript:@"_remotemanagement_usernameSecondary"];
            v26 = [username2 isEqualToString:v25];

            if (v26)
            {
              hostname2 = [v23 hostname];
              v28 = [v7 objectForKeyedSubscript:@"_remotemanagement_hostnameSecondary"];
              v29 = [hostname2 isEqualToString:v28];

              if (v29)
              {
                v30 = [v7 objectForKeyedSubscript:@"_remotemanagement_portSecondary"];
                if (!v30 || (v31 = [v23 portNumber], v31 == -[NSObject unsignedIntValue](v30, "unsignedIntValue")))
                {

                  goto LABEL_13;
                }

                v40 = +[RMLog accountTransformerMail];
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                {
                  *v41 = 0;
                  _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Configuration change to outbound mail port number requires account to be recreated", v41, 2u);
                }

                goto LABEL_31;
              }

              v30 = +[RMLog accountTransformerMail];
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *v42 = 0;
                v37 = "Configuration change to outbound mail hostname requires account to be recreated";
                v38 = v42;
                goto LABEL_30;
              }
            }

            else
            {
              v30 = +[RMLog accountTransformerMail];
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                v43 = 0;
                v37 = "Configuration change to outbound mail username requires account to be recreated.";
                v38 = &v43;
LABEL_30:
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v37, v38, 2u);
              }
            }

LABEL_31:

            goto LABEL_32;
          }

          v22 = +[RMLog accountTransformerMail];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v44 = 0;
            v35 = "Configuration change to inbound mail type requires account to be recreated";
            v36 = &v44;
LABEL_25:
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v35, v36, 2u);
          }
        }

LABEL_32:
        v32 = 1;
        goto LABEL_33;
      }

      v17 = +[RMLog accountTransformerMail];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v33 = "Configuration change to inbound mail hostname requires account to be recreated";
        v34 = buf;
        goto LABEL_19;
      }
    }

    else
    {
      v17 = +[RMLog accountTransformerMail];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v47 = 0;
        v33 = "Configuration change to inbound mail username requires account to be recreated.";
        v34 = &v47;
LABEL_19:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v33, v34, 2u);
      }
    }

    v32 = 1;
LABEL_34:

    goto LABEL_35;
  }

  v32 = 0;
LABEL_35:

  return v32;
}

- (void)configurationUIForConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  v6 = +[RMLog accountTransformerMail];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    declaration = [configurationCopy declaration];
    declarationIdentifier = [declaration declarationIdentifier];
    *buf = 138543362;
    v30 = declarationIdentifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Get configuration UI for: %{public}@", buf, 0xCu);
  }

  declaration2 = [configurationCopy declaration];
  payloadVisibleName = [declaration2 payloadVisibleName];
  payloadIncomingServer = [declaration2 payloadIncomingServer];
  payloadHostName = [payloadIncomingServer payloadHostName];

  v23 = configurationCopy;
  if (payloadVisibleName)
  {
    v12 = payloadVisibleName;
  }

  else
  {
    v12 = payloadHostName;
  }

  if (payloadVisibleName)
  {
    v13 = payloadVisibleName;
  }

  else
  {
    v13 = @"-";
  }

  rMConfigurationUIDetails = [RMStoreLocalizable string:v12, RMConfigurationUIDetails];
  v15 = [RMStoreLocalizable string:@"UI.Description.Mail"];
  v16 = [RMStoreLocalizable string:@"UI.Key.Name"];
  v27[0] = v16;
  v27[1] = v13;
  v17 = [NSArray arrayWithObjects:v27 count:2];
  v28[0] = v17;
  v18 = [RMStoreLocalizable string:@"UI.Key.Server"];
  v26[0] = v18;
  v26[1] = payloadHostName;
  v19 = [NSArray arrayWithObjects:v26 count:2];
  v28[1] = v19;
  v20 = [NSArray arrayWithObjects:v28 count:2];
  v21 = [v22 configurationUIWithTitle:rMConfigurationUIDetails description:v15 details:v20];

  handlerCopy[2](handlerCopy, 1, v21, 0);
}

@end