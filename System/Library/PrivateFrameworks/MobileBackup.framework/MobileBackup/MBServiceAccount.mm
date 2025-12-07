@interface MBServiceAccount
+ (NSArray)allServiceAccounts;
+ (id)_stringForAccountCredentialRenewResult:(int64_t)result;
+ (id)accountsQueue;
+ (unint64_t)_optionsFromACAccount:(id)account currentOptions:(unint64_t)options;
+ (void)_setBackupEnabled:(BOOL)enabled account:(id)account completion:(id)completion;
+ (void)enableBackupInPreferences;
+ (void)setBackupEnabled:(BOOL)enabled completion:(id)completion;
- (BOOL)hasAppleAccount;
- (BOOL)isAuthenticated;
- (BOOL)isBackupOnCellularEnabled;
- (BOOL)isBeneficiaryAccount;
- (BOOL)isCloudPhotosEnabled;
- (BOOL)isEmailVerified;
- (BOOL)isEnabled;
- (BOOL)isEnabledForBackup;
- (BOOL)isManagedAppleID;
- (BOOL)isPrimaryAccount;
- (BOOL)verifyAppleAccountCredentialsWithContext:(BOOL)context;
- (MBPersona)persona;
- (MBServiceAccount)initWithPersona:(id)persona account:(id)account options:(unint64_t)options;
- (MBServiceAccount)initWithPersona:(id)persona accountIdentifier:(id)identifier dsid:(id)dsid altDSID:(id)d serviceURL:(id)l chunkStoreURL:(id)rL options:(unint64_t)options;
- (MBServiceAccount)initWithPersona:(id)persona error:(id *)error;
- (NSString)accountIdentifier;
- (NSString)altDSID;
- (NSString)appleID;
- (NSString)dsid;
- (NSURL)chunkStoreURL;
- (NSURL)serviceURL;
- (id)_updateApplePasswordSync:(id)sync;
- (id)description;
- (id)updateAppleAccountSync;
- (int64_t)_snapshotFormat;
- (void)_reloadAccountPropertiesFromACAccount:(id)account;
- (void)_reloadAccounts;
- (void)_updateAppleAccount:(id)account;
- (void)_updateApplePassword:(id)password completionHandler:(id)handler;
- (void)renewCredentials;
- (void)setBackupEnabled:(BOOL)enabled completion:(id)completion;
@end

@implementation MBServiceAccount

- (int64_t)_snapshotFormat
{
  v3 = +[MBRemoteConfiguration sharedInstance];
  v4 = [v3 allowSnapshotFormatSelectionOnGMForAccount:self];

  if ((MBIsInternalInstall() & 1) == 0 && ((MBBuildIsSeed() | v4) & 1) == 0)
  {
    return -1;
  }

  v5 = +[MBRemoteConfiguration sharedInstance];
  v6 = [v5 snapshotFormatForBackupWithAccount:self];

  return v6;
}

+ (id)accountsQueue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F4570;
  block[3] = &unk_1003BBFE8;
  block[4] = self;
  if (qword_100421A38 != -1)
  {
    dispatch_once(&qword_100421A38, block);
  }

  v2 = qword_100421A30;

  return v2;
}

+ (NSArray)allServiceAccounts
{
  v2 = +[ACAccountStore defaultStore];
  v26 = [v2 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierAppleAccount];
  v27 = v2;
  v3 = [v2 accountsWithAccountType:v26];
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v36 = [v3 count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Found %ld system accounts", buf, 0xCu);
    _MBLog(@"Df", "Found %ld system accounts", [v3 count]);
  }

  v28 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    v8 = AAAccountClassPrimary;
    do
    {
      v9 = 0;
      do
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        personaIdentifier = [v10 personaIdentifier];
        if (personaIdentifier)
        {
          userPersonaUniqueString = personaIdentifier;
          v14 = [UMUserPersonaAttributes personaAttributesForIdentifier:personaIdentifier];
          if (v14)
          {
            v15 = v14;
            if ([v10 aa_isAccountClass:v8])
            {
LABEL_19:
              path = @"/private/var/mobile";
            }

            else
            {
              if (![v15 isEnterprisePersona])
              {
                path = 0;
                v20 = 0;
                aa_accountClass2 = userPersonaUniqueString;
                userPersonaUniqueString = 0;
                goto LABEL_28;
              }

              personaLayoutPathURL = [v15 personaLayoutPathURL];
              path = [personaLayoutPathURL path];

              if (!path)
              {
                aa_accountClass2 = MBGetDefaultLog();
                if (os_log_type_enabled(aa_accountClass2, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v36 = userPersonaUniqueString;
                  _os_log_impl(&_mh_execute_header, aa_accountClass2, OS_LOG_TYPE_ERROR, "nil volumeMountPoint for %{public}@", buf, 0xCu);
                  _MBLog(@"E ", "nil volumeMountPoint for %{public}@", userPersonaUniqueString);
                }

                path = 0;
                goto LABEL_27;
              }
            }

            aa_accountClass2 = [MBPersona personaWithAttributes:v15 volumeMountPoint:path];
            v20 = [[self alloc] initWithPersona:aa_accountClass2 account:v10 options:0];
            if (v20)
            {
              [v28 addObject:v20];
            }

            goto LABEL_28;
          }

          path = MBGetDefaultLog();
          if (os_log_type_enabled(path, OS_LOG_TYPE_ERROR))
          {
            aa_accountClass = [v10 aa_accountClass];
            *buf = 138543618;
            v36 = userPersonaUniqueString;
            v37 = 2112;
            v38 = aa_accountClass;
            _os_log_impl(&_mh_execute_header, path, OS_LOG_TYPE_ERROR, "Failed to fetch the attributes for persona %{public}@ accountClass %@", buf, 0x16u);

            aa_accountClass2 = [v10 aa_accountClass];
            _MBLog(@"E ", "Failed to fetch the attributes for persona %{public}@ accountClass %@", userPersonaUniqueString, aa_accountClass2);
            goto LABEL_26;
          }

          v15 = 0;
          v20 = 0;
        }

        else
        {
          if (![v10 aa_isAccountClass:v8])
          {
            aa_accountClass2 = 0;
LABEL_25:
            path = 0;
            userPersonaUniqueString = 0;
LABEL_26:
            v15 = 0;
LABEL_27:
            v20 = 0;
LABEL_28:

            goto LABEL_29;
          }

          v19 = [UMUserPersonaAttributes personaAttributesForPersonaType:0];
          if (!v19)
          {
            aa_accountClass2 = MBGetDefaultLog();
            if (os_log_type_enabled(aa_accountClass2, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, aa_accountClass2, OS_LOG_TYPE_ERROR, "Failed to fetch the attributes for personal persona", buf, 2u);
              _MBLog(@"E ", "Failed to fetch the attributes for personal persona");
            }

            goto LABEL_25;
          }

          v15 = v19;
          userPersonaUniqueString = [v19 userPersonaUniqueString];
          if (userPersonaUniqueString)
          {
            goto LABEL_19;
          }

          v20 = 0;
          path = @"/private/var/mobile";
        }

LABEL_29:

        objc_autoreleasePoolPop(v11);
        v9 = v9 + 1;
      }

      while (v6 != v9);
      v22 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
      v6 = v22;
    }

    while (v22);
  }

  v23 = MBGetDefaultLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v24 = [v28 count];
    *buf = 134217984;
    v36 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Found %lu service accounts", buf, 0xCu);
    _MBLog(@"Db", "Found %lu service accounts", [v28 count]);
  }

  return v28;
}

- (MBServiceAccount)initWithPersona:(id)persona error:(id *)error
{
  personaCopy = persona;
  if (!error)
  {
    __assert_rtn("[MBServiceAccount initWithPersona:error:]", "MBServiceAccount.m", 204, "error");
  }

  v7 = personaCopy;
  if (!personaCopy)
  {
    __assert_rtn("[MBServiceAccount initWithPersona:error:]", "MBServiceAccount.m", 220, "persona");
  }

  v8 = [MBPersona personaWithUMPersona:personaCopy error:error];
  v9 = v8;
  if (v8)
  {
    personaIdentifier = [v8 personaIdentifier];
    v11 = +[ACAccountStore defaultStore];
    if ([v9 isPersonalPersona])
    {
      aa_primaryAppleAccount = [v11 aa_primaryAppleAccount];
    }

    else
    {
      if (![v9 isEnterprisePersona])
      {
        v22 = MBGetDefaultLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v28 = personaIdentifier;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Found an unexpected persona type for persona %{public}@", buf, 0xCu);
          _MBLog(@"E ", "Found an unexpected persona type for persona %{public}@", personaIdentifier);
        }

        selfCopy = 0;
        goto LABEL_24;
      }

      aa_primaryAppleAccount = [v11 mb_accountForPersonaIdentifier:personaIdentifier];
    }

    v14 = aa_primaryAppleAccount;
    if (aa_primaryAppleAccount)
    {
      personaIdentifier2 = [(MBServiceAccount *)aa_primaryAppleAccount personaIdentifier];
      if (personaIdentifier2 && (v16 = personaIdentifier2, -[MBServiceAccount personaIdentifier](v14, "personaIdentifier"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 isEqualToString:personaIdentifier], v17, v16, (v18 & 1) == 0))
      {
        v23 = MBGetDefaultLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          personaIdentifier3 = [(MBServiceAccount *)v14 personaIdentifier];
          *buf = 138543618;
          v28 = personaIdentifier3;
          v29 = 2114;
          v30 = personaIdentifier;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Persona identifier mismatch: %{public}@ != %{public}@", buf, 0x16u);

          personaIdentifier4 = [(MBServiceAccount *)v14 personaIdentifier];
          _MBLog(@"E ", "Persona identifier mismatch: %{public}@ != %{public}@", personaIdentifier4, personaIdentifier);
        }

        *error = [MBError errorWithCode:1 format:@"Persona identifier mismatch"];

        selfCopy = 0;
        self = v14;
      }

      else
      {
        volumeMountPoint = [v9 volumeMountPoint];
        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v28 = personaIdentifier;
          v29 = 2048;
          v30 = 0;
          v31 = 2112;
          v32 = volumeMountPoint;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Found personaIdentifier:%@, options:0x%lx, volumeMountPoint:%@", buf, 0x20u);
          _MBLog(@"I ", "Found personaIdentifier:%@, options:0x%lx, volumeMountPoint:%@", personaIdentifier, 0, volumeMountPoint);
        }

        self = [(MBServiceAccount *)self initWithPersona:v9 account:v14 options:0];
        selfCopy = self;
      }
    }

    else
    {
      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v28 = personaIdentifier;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to find the account for persona %{public}@", buf, 0xCu);
        _MBLog(@"E ", "Failed to find the account for persona %{public}@", personaIdentifier);
      }

      [MBError errorWithCode:210 format:@"No account found"];
      *error = selfCopy = 0;
    }

LABEL_24:

    goto LABEL_25;
  }

  selfCopy = 0;
LABEL_25:

  return selfCopy;
}

+ (unint64_t)_optionsFromACAccount:(id)account currentOptions:(unint64_t)options
{
  v5 = kAccountDataclassBackup;
  accountCopy = account;
  if ([accountCopy isEnabledForDataclass:v5])
  {
    v7 = +[MBManagedPolicy sharedPolicy];
    v8 = [v7 checkIfCloudBackupIsAllowed:0];

    if (v8)
    {
      v9 = options | 0x11;
    }

    else
    {
      v9 = options & 0xFFFFFFFFFFFFFFEELL | 0x10;
    }
  }

  else
  {
    v9 = options & 0xFFFFFFFFFFFFFFEELL | 0x10;
  }

  aa_isPrimaryEmailVerified = [accountCopy aa_isPrimaryEmailVerified];
  v11 = 2;
  if (!aa_isPrimaryEmailVerified)
  {
    v11 = 0;
  }

  v12 = v11 | v9 & 0xFFFFFFFFFFFFFE51;
  if ([accountCopy isEnabledForDataclass:kAccountDataclassCloudPhotos])
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  aa_isManagedAppleID = [accountCopy aa_isManagedAppleID];
  v15 = 8;
  if (!aa_isManagedAppleID)
  {
    v15 = 0;
  }

  v16 = v12 | v15 | v13;
  credential = [accountCopy credential];
  token = [credential token];
  v19 = token != 0;

  v20 = v16 | (32 * v19);
  if ([accountCopy aa_isAccountClass:AAAccountClassPrimary])
  {
    v21 = 128;
  }

  else
  {
    v21 = 0;
  }

  v22 = [accountCopy aa_useCellularForDataclass:v5];

  v23 = 256;
  if (!v22)
  {
    v23 = 0;
  }

  return v20 | v21 | v23;
}

- (MBServiceAccount)initWithPersona:(id)persona account:(id)account options:(unint64_t)options
{
  personaCopy = persona;
  accountCopy = account;
  if (!personaCopy)
  {
    __assert_rtn("[MBServiceAccount initWithPersona:account:options:]", "MBServiceAccount.m", 303, "persona");
  }

  v10 = accountCopy;
  v11 = [MBServiceAccount _optionsFromACAccount:accountCopy currentOptions:options];
  selfCopy = self;
  v12 = [v10 propertiesForDataclass:kAccountDataclassBackup];
  v13 = [v12 objectForKeyedSubscript:@"url"];
  v14 = [NSURL URLWithString:v13];

  username = [v10 username];
  v16 = [v14 _URLByInsertingUser:username];

  v17 = [v10 propertiesForDataclass:kAccountDataclassContent];
  v18 = [v17 objectForKeyedSubscript:@"url"];
  v19 = [NSURL URLWithString:v18];

  username2 = [v10 username];
  v21 = [v19 _URLByInsertingUser:username2];

  identifier = [v10 identifier];
  aa_personID = [v10 aa_personID];
  aa_altDSID = [v10 aa_altDSID];
  v25 = [(MBServiceAccount *)selfCopy initWithPersona:personaCopy accountIdentifier:identifier dsid:aa_personID altDSID:aa_altDSID serviceURL:v16 chunkStoreURL:v21 options:v11];

  return v25;
}

- (MBServiceAccount)initWithPersona:(id)persona accountIdentifier:(id)identifier dsid:(id)dsid altDSID:(id)d serviceURL:(id)l chunkStoreURL:(id)rL options:(unint64_t)options
{
  personaCopy = persona;
  identifierCopy = identifier;
  dsidCopy = dsid;
  dCopy = d;
  lCopy = l;
  rLCopy = rL;
  if (!personaCopy)
  {
    __assert_rtn("[MBServiceAccount initWithPersona:accountIdentifier:dsid:altDSID:serviceURL:chunkStoreURL:options:]", "MBServiceAccount.m", 317, "persona");
  }

  v21 = rLCopy;
  v46.receiver = self;
  v46.super_class = MBServiceAccount;
  v22 = [(MBServiceAccount *)&v46 init];
  if (v22)
  {
    v23 = [[_MBImmutableServiceAccountProperties alloc] _initWithPersona:personaCopy accountIdentifier:identifierCopy dsid:dsidCopy altDSID:dCopy serviceURL:lCopy chunkStoreURL:v21 options:options];
    properties = v22->_properties;
    v22->_properties = v23;

    v25 = MBGetDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      personaIdentifier = [personaCopy personaIdentifier];
      isEnabled = [(MBServiceAccount *)v22 isEnabled];
      isEnabledForBackup = [(MBServiceAccount *)v22 isEnabledForBackup];
      isEmailVerified = [(MBServiceAccount *)v22 isEmailVerified];
      isAuthenticated = [(MBServiceAccount *)v22 isAuthenticated];
      v45 = dCopy;
      options = [(_MBImmutableServiceAccountProperties *)v22->_properties options];
      [personaCopy volumeMountPoint];
      v29 = v44 = lCopy;
      isBackupOnCellularEnabled = [(MBServiceAccount *)v22 isBackupOnCellularEnabled];
      *buf = 138545666;
      v48 = identifierCopy;
      v49 = 2114;
      v50 = personaIdentifier;
      v51 = 2112;
      v52 = dsidCopy;
      v53 = 1024;
      v54 = isEnabled;
      v55 = 1024;
      v56 = isEnabledForBackup;
      v57 = 1024;
      v58 = isEmailVerified;
      v59 = 1024;
      v60 = isAuthenticated;
      v61 = 2048;
      v62 = options;
      v63 = 2114;
      v64 = v29;
      v65 = 1024;
      v66 = isBackupOnCellularEnabled;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Loaded properties for account %{public}@, persona:%{public}@, dsid:%@, enabled:%d, enabledForBackup:%d, emailVerified:%d, authenticated:%d, options:0x%lx, volume:%{public}@, isBackupOnCellularEnabled:%d", buf, 0x52u);

      personaIdentifier2 = [personaCopy personaIdentifier];
      isEnabled2 = [(MBServiceAccount *)v22 isEnabled];
      isEnabledForBackup2 = [(MBServiceAccount *)v22 isEnabledForBackup];
      isEmailVerified2 = [(MBServiceAccount *)v22 isEmailVerified];
      isAuthenticated2 = [(MBServiceAccount *)v22 isAuthenticated];
      v33 = v21;
      options2 = [(_MBImmutableServiceAccountProperties *)v22->_properties options];
      volumeMountPoint = [personaCopy volumeMountPoint];
      v37 = options2;
      v21 = v33;
      _MBLog(@"I ", "Loaded properties for account %{public}@, persona:%{public}@, dsid:%@, enabled:%d, enabledForBackup:%d, emailVerified:%d, authenticated:%d, options:0x%lx, volume:%{public}@, isBackupOnCellularEnabled:%d", identifierCopy, personaIdentifier2, dsidCopy, isEnabled2, isEnabledForBackup2, isEmailVerified2, isAuthenticated2, v37, volumeMountPoint, [(MBServiceAccount *)v22 isBackupOnCellularEnabled]);

      lCopy = v44;
      dCopy = v45;
    }
  }

  return v22;
}

- (void)_reloadAccountPropertiesFromACAccount:(id)account
{
  accountCopy = account;
  properties = [(MBServiceAccount *)self properties];
  v6 = [properties _deriveNewAccountPropertiesFromACAccount:accountCopy];

  [(MBServiceAccount *)self setProperties:v6];
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    accountIdentifier = [v6 accountIdentifier];
    dsid = [v6 dsid];
    *buf = 138545154;
    v13 = accountIdentifier;
    v14 = 2112;
    v15 = dsid;
    v16 = 1024;
    isEnabled = [(MBServiceAccount *)self isEnabled];
    v18 = 1024;
    isEnabledForBackup = [(MBServiceAccount *)self isEnabledForBackup];
    v20 = 1024;
    isEmailVerified = [(MBServiceAccount *)self isEmailVerified];
    v22 = 1024;
    isAuthenticated = [(MBServiceAccount *)self isAuthenticated];
    v24 = 2048;
    options = [v6 options];
    v26 = 1024;
    isBackupOnCellularEnabled = [(MBServiceAccount *)self isBackupOnCellularEnabled];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Reloaded properties for account %{public}@, dsid:%@, enabled:%d, enabledForBackup:%d, emailVerified:%d, authenticated:%d, options:0x%lx, isBackupOnCellularEnabled:%d", buf, 0x3Eu);

    accountIdentifier2 = [v6 accountIdentifier];
    dsid2 = [v6 dsid];
    _MBLog(@"I ", "Reloaded properties for account %{public}@, dsid:%@, enabled:%d, enabledForBackup:%d, emailVerified:%d, authenticated:%d, options:0x%lx, isBackupOnCellularEnabled:%d", accountIdentifier2, dsid2, -[MBServiceAccount isEnabled](self, "isEnabled"), -[MBServiceAccount isEnabledForBackup](self, "isEnabledForBackup"), -[MBServiceAccount isEmailVerified](self, "isEmailVerified"), -[MBServiceAccount isAuthenticated](self, "isAuthenticated"), [v6 options], -[MBServiceAccount isBackupOnCellularEnabled](self, "isBackupOnCellularEnabled"));
  }
}

- (NSString)dsid
{
  properties = [(MBServiceAccount *)self properties];
  dsid = [properties dsid];

  return dsid;
}

- (NSString)altDSID
{
  properties = [(MBServiceAccount *)self properties];
  altDSID = [properties altDSID];

  return altDSID;
}

- (NSString)accountIdentifier
{
  properties = [(MBServiceAccount *)self properties];
  accountIdentifier = [properties accountIdentifier];

  return accountIdentifier;
}

- (MBPersona)persona
{
  properties = [(MBServiceAccount *)self properties];
  persona = [properties persona];

  return persona;
}

- (NSURL)serviceURL
{
  properties = [(MBServiceAccount *)self properties];
  serviceURL = [properties serviceURL];

  return serviceURL;
}

- (NSURL)chunkStoreURL
{
  properties = [(MBServiceAccount *)self properties];
  chunkStoreURL = [properties chunkStoreURL];

  return chunkStoreURL;
}

- (BOOL)isEnabledForBackup
{
  if ([(MBServiceAccount *)self isEnabled])
  {
    properties = [(MBServiceAccount *)self properties];
    v4 = [properties options] & 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)isEnabled
{
  properties = [(MBServiceAccount *)self properties];
  v3 = ~[properties options];

  return (v3 & 3) == 0;
}

- (BOOL)isCloudPhotosEnabled
{
  properties = [(MBServiceAccount *)self properties];
  v3 = ([properties options] >> 2) & 1;

  return v3;
}

- (BOOL)isAuthenticated
{
  properties = [(MBServiceAccount *)self properties];
  v3 = ([properties options] >> 5) & 1;

  return v3;
}

- (BOOL)isManagedAppleID
{
  properties = [(MBServiceAccount *)self properties];
  v3 = ([properties options] >> 3) & 1;

  return v3;
}

- (BOOL)isBackupOnCellularEnabled
{
  properties = [(MBServiceAccount *)self properties];
  v3 = ~[properties options];

  return (v3 & 0x300) == 0;
}

- (BOOL)isBeneficiaryAccount
{
  altDSID = [(MBServiceAccount *)self altDSID];
  if (altDSID)
  {
    v3 = +[AKAccountManager sharedInstance];
    v4 = [v3 authKitAccountWithAltDSID:altDSID];

    v5 = +[AKAccountManager sharedInstance];
    v6 = [v5 isBeneficiaryForAccount:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasAppleAccount
{
  properties = [(MBServiceAccount *)self properties];
  v3 = ([properties options] >> 4) & 1;

  return v3;
}

- (BOOL)isEmailVerified
{
  properties = [(MBServiceAccount *)self properties];
  v3 = ([properties options] >> 1) & 1;

  return v3;
}

- (BOOL)isPrimaryAccount
{
  properties = [(MBServiceAccount *)self properties];
  v3 = ([properties options] >> 7) & 1;

  return v3;
}

- (void)_reloadAccounts
{
  accountsQueue = [objc_opt_class() accountsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F5D78;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  dispatch_sync(accountsQueue, block);
}

+ (void)_setBackupEnabled:(BOOL)enabled account:(id)account completion:(id)completion
{
  enabledCopy = enabled;
  accountCopy = account;
  completionCopy = completion;
  if (!accountCopy)
  {
    __assert_rtn("+[MBServiceAccount _setBackupEnabled:account:completion:]", "MBServiceAccount.m", 431, "account");
  }

  v9 = completionCopy;
  if (!completionCopy)
  {
    __assert_rtn("+[MBServiceAccount _setBackupEnabled:account:completion:]", "MBServiceAccount.m", 432, "completion");
  }

  identifier = [accountCopy identifier];
  v11 = kAccountDataclassBackup;
  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    if (enabledCopy)
    {
      v13 = "Enabling";
    }

    else
    {
      v13 = "Disabling";
    }

    v27 = v13;
    v28 = 2114;
    v29 = v11;
    v30 = 2114;
    v31 = identifier;
    v32 = 1024;
    v33 = enabledCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s %{public}@ on account %{public}@ : %d", buf, 0x26u);
    _MBLog(@"Df", "%s %{public}@ on account %{public}@ : %d", v13, v11, identifier, enabledCopy);
  }

  v14 = +[MBManagedPolicy sharedPolicy];
  v25 = 0;
  v15 = [v14 checkIfCloudBackupIsAllowed:&v25];
  v16 = v25;

  if (v15)
  {
    if (qword_100421A48 != -1)
    {
      dispatch_once(&qword_100421A48, &stru_1003C15D8);
    }

    v17 = qword_100421A40;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001F61FC;
    block[3] = &unk_1003C1628;
    v24 = enabledCopy;
    v20 = accountCopy;
    v21 = v11;
    v22 = identifier;
    v23 = v9;
    dispatch_async(v17, block);
  }

  else
  {
    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v27 = identifier;
      v28 = 2114;
      v29 = v11;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Not changing the %{public}@ state on account %{public}@: %@", buf, 0x20u);
      _MBLog(@"Df", "Not changing the %{public}@ state on account %{public}@: %@", identifier, v11, v16);
    }

    v9[2](v9, 0);
  }
}

+ (void)setBackupEnabled:(BOOL)enabled completion:(id)completion
{
  enabledCopy = enabled;
  completionCopy = completion;
  if (!completionCopy)
  {
    __assert_rtn("+[MBServiceAccount setBackupEnabled:completion:]", "MBServiceAccount.m", 474, "completion");
  }

  v7 = completionCopy;
  v8 = +[ACAccountStore defaultStore];
  aa_primaryAppleAccount = [v8 aa_primaryAppleAccount];

  if (aa_primaryAppleAccount)
  {
    [self _setBackupEnabled:enabledCopy account:aa_primaryAppleAccount completion:v7];
  }

  else
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to fetch the primary account", v12, 2u);
      _MBLog(@"E ", "Failed to fetch the primary account");
    }

    v11 = [MBError errorWithCode:210 format:@"Failed to fetch the primary account"];
    (v7)[2](v7, v11);
  }
}

- (void)setBackupEnabled:(BOOL)enabled completion:(id)completion
{
  enabledCopy = enabled;
  completionCopy = completion;
  if (!completionCopy)
  {
    __assert_rtn("[MBServiceAccount setBackupEnabled:completion:]", "MBServiceAccount.m", 487, "completion");
  }

  v7 = completionCopy;
  accountIdentifier = [(MBServiceAccount *)self accountIdentifier];
  if (!accountIdentifier)
  {
    __assert_rtn("[MBServiceAccount setBackupEnabled:completion:]", "MBServiceAccount.m", 489, "accountIdentifier");
  }

  v9 = accountIdentifier;
  v10 = +[ACAccountStore defaultStore];
  v14 = 0;
  v11 = [v10 accountWithIdentifier:v9 error:&v14];
  v12 = v14;

  if (v11)
  {
    [objc_opt_class() _setBackupEnabled:enabledCopy account:v11 completion:v7];
  }

  else
  {
    v13 = [MBError errorWithCode:210 error:v12 format:@"Failed to fetch the account"];

    v7[2](v7, v13);
    v12 = v13;
  }
}

+ (void)enableBackupInPreferences
{
  CFPreferencesSetAppValue(@"IsEnabled", &__kCFBooleanTrue, @"com.apple.MobileBackup");
  CFPreferencesAppSynchronize(@"com.apple.MobileBackup");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotificationWithOptions(DarwinNotifyCenter, ACAccountStoreDidChangeNotification, 0, 0, 4uLL);
}

+ (id)_stringForAccountCredentialRenewResult:(int64_t)result
{
  if (result > 2)
  {
    return @"failed to renew with unknown result";
  }

  else
  {
    return off_1003C16E0[result];
  }
}

- (void)renewCredentials
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Renewing account credentials", buf, 2u);
    _MBLog(@"Df", "Renewing account credentials");
  }

  if ([(MBServiceAccount *)self hasAppleAccount])
  {
    accountsQueue = [objc_opt_class() accountsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001F6994;
    block[3] = &unk_1003BC0B0;
    block[4] = self;
    dispatch_sync(accountsQueue, block);
  }
}

- (id)description
{
  properties = [(MBServiceAccount *)self properties];
  persona = [properties persona];
  v5 = objc_opt_class();
  accountIdentifier = [properties accountIdentifier];
  personaIdentifier = [persona personaIdentifier];
  dsid = [properties dsid];
  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@: %p id=(%@,%@,%@), persona=%@ isPrimary=%d, isEnabled=%d, isEnabledForBackup=%d, options=0x%lx>", v5, self, accountIdentifier, personaIdentifier, dsid, persona, -[MBServiceAccount isPrimaryAccount](self, "isPrimaryAccount"), -[MBServiceAccount isEnabled](self, "isEnabled"), -[MBServiceAccount isEnabledForBackup](self, "isEnabledForBackup"), [properties options]);;

  return v9;
}

- (void)_updateAppleAccount:(id)account
{
  accountCopy = account;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Updating Apple Account", buf, 2u);
    _MBLog(@"Db", "Updating Apple Account");
  }

  if ([(MBServiceAccount *)self hasAppleAccount])
  {
    accountsQueue = [objc_opt_class() accountsQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001F6DEC;
    v7[3] = &unk_1003BD478;
    v7[4] = self;
    v8 = accountCopy;
    dispatch_sync(accountsQueue, v7);
  }

  else if (accountCopy)
  {
    (*(accountCopy + 2))(accountCopy, 0);
  }
}

- (id)updateAppleAccountSync
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1001F72CC;
  v14 = sub_1001F72DC;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001F72E4;
  v6[3] = &unk_1003C1670;
  v8 = &v10;
  v9 = v16;
  v3 = dispatch_semaphore_create(0);
  v7 = v3;
  [(MBServiceAccount *)self _updateAppleAccount:v6];
  MBSemaphoreWaitForever();
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(v16, 8);

  return v4;
}

- (NSString)appleID
{
  if ([(MBServiceAccount *)self hasAppleAccount])
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = sub_1001F72CC;
    v11 = sub_1001F72DC;
    v12 = 0;
    accountsQueue = [objc_opt_class() accountsQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001F7484;
    v6[3] = &unk_1003BC088;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(accountsQueue, v6);

    v4 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateApplePassword:(id)password completionHandler:(id)handler
{
  passwordCopy = password;
  handlerCopy = handler;
  if ([(MBServiceAccount *)self hasAppleAccount])
  {
    accountsQueue = [objc_opt_class() accountsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001F764C;
    block[3] = &unk_1003BD9B0;
    block[4] = self;
    v11 = handlerCopy;
    v10 = passwordCopy;
    dispatch_sync(accountsQueue, block);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (id)_updateApplePasswordSync:(id)sync
{
  syncCopy = sync;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1001F72CC;
  v16 = sub_1001F72DC;
  v17 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001F7BA0;
  v8[3] = &unk_1003C1670;
  v10 = &v12;
  v11 = v18;
  v5 = dispatch_semaphore_create(0);
  v9 = v5;
  [(MBServiceAccount *)self _updateApplePassword:syncCopy completionHandler:v8];
  MBSemaphoreWaitForever();
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v18, 8);

  return v6;
}

- (BOOL)verifyAppleAccountCredentialsWithContext:(BOOL)context
{
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Verifying account credentials", buf, 2u);
    _MBLog(@"Df", "Verifying account credentials");
  }

  v5 = objc_opt_new();
  appleID = [(MBServiceAccount *)self appleID];
  [v5 setUsername:appleID];

  [v5 setIsUsernameEditable:0];
  [v5 setServiceType:1];
  [v5 _setProxyingForApp:1];
  [v5 _setProxiedAppBundleID:@"com.apple.purplebuddy"];
  v7 = MBLocalizedStringFromTable();
  [v5 setReason:v7];

  v8 = objc_opt_new();
  *buf = 0;
  v31 = buf;
  v32 = 0x3032000000;
  v33 = sub_1001F72CC;
  v34 = sub_1001F72DC;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1001F72CC;
  v28 = sub_1001F72DC;
  v29 = 0;
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_1001F8064;
  v20 = &unk_1003C16C0;
  v22 = buf;
  v23 = &v24;
  v9 = dispatch_semaphore_create(0);
  v21 = v9;
  [v8 authenticateWithContext:v5 completion:&v17];
  MBSemaphoreWaitForever();
  if (!*(v31 + 5))
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = v25[5];
      *v36 = 138412290;
      v37 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Account credential verification failed to get password: %@", v36, 0xCu);
      _MBLog(@"E ", "Account credential verification failed to get password: %@", v25[5], v17, v18, v19, v20);
    }

    goto LABEL_9;
  }

  v10 = [(MBServiceAccount *)self _updateApplePasswordSync:?];
  v11 = v25[5];
  v25[5] = v10;

  if (v25[5])
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = v25[5];
      *v36 = 138412290;
      v37 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Account credential verification failed: %@", v36, 0xCu);
      _MBLog(@"E ", "Account credential verification failed: %@", v25[5], v17, v18, v19, v20);
    }

LABEL_9:
    v15 = 0;
    goto LABEL_13;
  }

  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Account credential verification succeeded", v36, 2u);
    _MBLog(@"Df", "Account credential verification succeeded");
  }

  v15 = 1;
LABEL_13:

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(buf, 8);

  return v15;
}

@end