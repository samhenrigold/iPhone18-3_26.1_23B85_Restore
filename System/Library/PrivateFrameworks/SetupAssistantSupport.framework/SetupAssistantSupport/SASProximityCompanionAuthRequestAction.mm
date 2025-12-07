@interface SASProximityCompanionAuthRequestAction
- (id)idmsAccountForiCloud;
- (id)responsePayload;
- (void)setResponseFromData:(id)data;
@end

@implementation SASProximityCompanionAuthRequestAction

- (id)responsePayload
{
  v22 = *MEMORY[0x277D85DE8];
  idmsAccountForiCloud = [(SASProximityCompanionAuthRequestAction *)self idmsAccountForiCloud];
  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  v4 = [mEMORY[0x277CF0130] transportableAuthKitAccount:idmsAccountForiCloud];

  v5 = objc_alloc_init(MEMORY[0x277CB8F48]);
  v15 = 0;
  v6 = [v5 credentialForAccount:v4 error:&v15];
  v7 = v15;
  if (v6)
  {
    [v4 setCredential:v6];
    currentDevice = [MEMORY[0x277CF0218] currentDevice];
    [currentDevice setLinkType:3];
    v16[0] = @"device";
    v16[1] = @"account";
    v17[0] = currentDevice;
    v17[1] = v4;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v14 = v7;
    v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v14];
    v11 = v14;

    if (!v10)
    {
      v12 = +[SASLogging facility];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v11;
        _os_log_impl(&dword_22E4D7000, v12, OS_LOG_TYPE_DEFAULT, "Failed to archive response: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    currentDevice = +[SASLogging facility];
    if (os_log_type_enabled(currentDevice, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = v4;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_22E4D7000, currentDevice, OS_LOG_TYPE_DEFAULT, "Failed to load credentials for IDMS account: %@ - %@", buf, 0x16u);
    }

    v10 = 0;
    v11 = v7;
  }

  return v10;
}

- (void)setResponseFromData:(id)data
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAAC8];
  v5 = MEMORY[0x277CBEB98];
  dataCopy = data;
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v5 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
  v16 = 0;
  v11 = [v4 unarchivedObjectOfClasses:v10 fromData:dataCopy error:&v16];

  v12 = v16;
  if (!v11)
  {
    v13 = +[SASLogging facility];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v12;
      _os_log_impl(&dword_22E4D7000, v13, OS_LOG_TYPE_DEFAULT, "Failed to unarchive response: %@", buf, 0xCu);
    }
  }

  v14 = [v11 objectForKeyedSubscript:@"device"];
  [(SASProximityCompanionAuthRequestAction *)self setCompanionDevice:v14];

  v15 = [v11 objectForKeyedSubscript:@"account"];
  [(SASProximityCompanionAuthRequestAction *)self setAccount:v15];
}

- (id)idmsAccountForiCloud
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CB8F48]);
  aa_primaryAppleAccount = [v2 aa_primaryAppleAccount];
  username = [aa_primaryAppleAccount username];
  aa_altDSID = [aa_primaryAppleAccount aa_altDSID];
  v4 = [aa_primaryAppleAccount accountPropertyForKey:@"DSID"];
  v5 = [v2 accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8C58]];
  [v2 accountsWithAccountType:v5];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v25 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    v18 = aa_primaryAppleAccount;
    v19 = v2;
    v17 = v5;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        aa_altDSID2 = [v11 aa_altDSID];
        if (aa_altDSID2 && [aa_altDSID isEqualToString:aa_altDSID2])
        {
          v15 = v11;
          goto LABEL_20;
        }

        v13 = [v11 accountPropertyForKey:@"DSID"];
        if (v13 && [v4 isEqualToNumber:v13])
        {
          v15 = v11;
          goto LABEL_19;
        }

        username2 = [v11 username];
        if (username2 && ([username isEqualToString:username2] & 1) != 0)
        {
          v15 = v11;

LABEL_19:
LABEL_20:

          aa_primaryAppleAccount = v18;
          v2 = v19;
          v5 = v17;
          goto LABEL_21;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      v15 = 0;
      aa_primaryAppleAccount = v18;
      v2 = v19;
      v5 = v17;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_21:

  return v15;
}

@end