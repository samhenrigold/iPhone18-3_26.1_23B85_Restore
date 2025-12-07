@interface TRAccountManager
+ (id)_idmsAccountForAccountWithUsername:(id)username altDSID:(id)d DSID:(id)iD;
+ (id)_idmsAccountForGameCenterService;
+ (id)_idmsAccountForICloudService;
+ (id)_idmsAccountForITunesService;
+ (id)_primaryGameCenterAccount;
+ (id)_primaryICloudAccount;
+ (id)_primaryITunesAccount;
+ (id)associatedAccountServicesForIDMSAccount:(id)account;
+ (id)idmsAccountForAccountService:(unint64_t)service;
@end

@implementation TRAccountManager

+ (id)idmsAccountForAccountService:(unint64_t)service
{
  v10 = *MEMORY[0x277D85DE8];
  switch(service)
  {
    case 3uLL:
      _idmsAccountForGameCenterService = [self _idmsAccountForGameCenterService];
      break;
    case 2uLL:
      _idmsAccountForGameCenterService = [self _idmsAccountForITunesService];
      break;
    case 1uLL:
      _idmsAccountForGameCenterService = [self _idmsAccountForICloudService];
      break;
    default:
      if (_TRLogEnabled == 1)
      {
        v5 = TRLogHandle(self);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = StringFromTRAccountService(service);
          v8 = 138412290;
          v9 = v6;
          _os_log_impl(&dword_26F2A2000, v5, OS_LOG_TYPE_DEFAULT, "Unknown account service: %@", &v8, 0xCu);
        }
      }

      _idmsAccountForGameCenterService = 0;
      break;
  }

  return _idmsAccountForGameCenterService;
}

+ (id)_primaryICloudAccount
{
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];

  return aa_primaryAppleAccount;
}

+ (id)_primaryITunesAccount
{
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];

  return activeAccount;
}

+ (id)_primaryGameCenterAccount
{
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  v3 = [defaultStore accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8C38]];
  v4 = [defaultStore accountsWithAccountType:v3];
  firstObject = [v4 firstObject];

  return firstObject;
}

+ (id)_idmsAccountForICloudService
{
  _primaryICloudAccount = [self _primaryICloudAccount];
  username = [_primaryICloudAccount username];
  aa_altDSID = [_primaryICloudAccount aa_altDSID];
  v6 = [_primaryICloudAccount accountPropertyForKey:@"DSID"];
  v7 = [self _idmsAccountForAccountWithUsername:username altDSID:aa_altDSID DSID:v6];

  return v7;
}

+ (id)_idmsAccountForITunesService
{
  _primaryITunesAccount = [self _primaryITunesAccount];
  accountName = [_primaryITunesAccount accountName];
  altDSID = [_primaryITunesAccount altDSID];
  uniqueIdentifier = [_primaryITunesAccount uniqueIdentifier];
  v7 = [self _idmsAccountForAccountWithUsername:accountName altDSID:altDSID DSID:uniqueIdentifier];

  return v7;
}

+ (id)_idmsAccountForGameCenterService
{
  _primaryGameCenterAccount = [self _primaryGameCenterAccount];
  username = [_primaryGameCenterAccount username];
  aa_altDSID = [_primaryGameCenterAccount aa_altDSID];
  v6 = [_primaryGameCenterAccount accountPropertyForKey:@"DSID"];
  v7 = [self _idmsAccountForAccountWithUsername:username altDSID:aa_altDSID DSID:v6];

  return v7;
}

+ (id)_idmsAccountForAccountWithUsername:(id)username altDSID:(id)d DSID:(id)iD
{
  v57 = *MEMORY[0x277D85DE8];
  usernameCopy = username;
  dCopy = d;
  iDCopy = iD;
  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  store = [mEMORY[0x277CF0130] store];
  v9 = [store accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8C58]];

  v50 = 0;
  v10 = [mEMORY[0x277CF0130] allAuthKitAccountsWithError:&v50];
  v11 = v50;
  v12 = v11;
  if (v11)
  {
    if (_TRLogEnabled != 1)
    {
      v33 = 0;
      goto LABEL_49;
    }

    v13 = TRLogHandle(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v53 = "+[TRAccountManager _idmsAccountForAccountWithUsername:altDSID:DSID:]";
      _os_log_impl(&dword_26F2A2000, v13, OS_LOG_TYPE_DEFAULT, "%s [ERROR] accounts could not be fetched.", buf, 0xCu);
    }

    goto LABEL_38;
  }

  v38 = mEMORY[0x277CF0130];
  v13 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v36 = v10;
  v14 = v10;
  v15 = [v14 countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v47;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v47 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v46 + 1) + 8 * i);
        accountType = [v19 accountType];
        v21 = [accountType isEqual:v9];

        if (v21)
        {
          [v13 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v16);
  }

  if (_TRLogEnabled == 1)
  {
    v23 = TRLogHandle(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v53 = "+[TRAccountManager _idmsAccountForAccountWithUsername:altDSID:DSID:]";
      v54 = 2112;
      v55 = v13;
      _os_log_impl(&dword_26F2A2000, v23, OS_LOG_TYPE_DEFAULT, "%s accounts: %@.", buf, 0x16u);
    }
  }

  if ([v13 count])
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v13 = v13;
    v24 = [v13 countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v43;
      while (2)
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v43 != v26)
          {
            objc_enumerationMutation(v13);
          }

          v28 = *(*(&v42 + 1) + 8 * j);
          aa_altDSID = [v28 aa_altDSID];
          if (aa_altDSID && [dCopy isEqualToString:aa_altDSID])
          {
            v32 = v28;
            goto LABEL_45;
          }

          v30 = [v28 accountPropertyForKey:@"DSID"];
          if (v30 && [iDCopy isEqualToNumber:v30])
          {
            v32 = v28;
            goto LABEL_44;
          }

          username = [v28 username];
          if (username && ([usernameCopy isEqualToString:username] & 1) != 0)
          {
            v32 = v28;

LABEL_44:
LABEL_45:

            goto LABEL_46;
          }
        }

        v25 = [v13 countByEnumeratingWithState:&v42 objects:v51 count:16];
        v32 = 0;
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v32 = 0;
    }

LABEL_46:

    v33 = v32;
    v12 = 0;
    mEMORY[0x277CF0130] = v38;
    goto LABEL_47;
  }

  v12 = 0;
  mEMORY[0x277CF0130] = v38;
  if (_TRLogEnabled != 1)
  {
    v33 = 0;
LABEL_47:
    v10 = v37;
    goto LABEL_48;
  }

  v34 = TRLogHandle(0);
  v10 = v37;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v53 = "+[TRAccountManager _idmsAccountForAccountWithUsername:altDSID:DSID:]";
    _os_log_impl(&dword_26F2A2000, v34, OS_LOG_TYPE_DEFAULT, "%s No IDMS accounts found.", buf, 0xCu);
  }

LABEL_38:
  v33 = 0;
LABEL_48:

LABEL_49:

  return v33;
}

+ (id)associatedAccountServicesForIDMSAccount:(id)account
{
  accountCopy = account;
  v5 = [MEMORY[0x277CBEB58] set];
  _idmsAccountForICloudService = [self _idmsAccountForICloudService];
  identifier = [_idmsAccountForICloudService identifier];
  identifier2 = [accountCopy identifier];
  v9 = [identifier isEqualToString:identifier2];

  if (v9)
  {
    [v5 addObject:&unk_287F629F0];
  }

  _idmsAccountForITunesService = [self _idmsAccountForITunesService];
  identifier3 = [_idmsAccountForITunesService identifier];
  identifier4 = [accountCopy identifier];
  v13 = [identifier3 isEqualToString:identifier4];

  if (v13)
  {
    [v5 addObject:&unk_287F62A08];
  }

  _idmsAccountForGameCenterService = [self _idmsAccountForGameCenterService];
  identifier5 = [_idmsAccountForGameCenterService identifier];
  identifier6 = [accountCopy identifier];
  v17 = [identifier5 isEqualToString:identifier6];

  if (v17)
  {
    [v5 addObject:&unk_287F62A20];
  }

  v18 = [MEMORY[0x277CBEB98] setWithSet:v5];

  return v18;
}

@end