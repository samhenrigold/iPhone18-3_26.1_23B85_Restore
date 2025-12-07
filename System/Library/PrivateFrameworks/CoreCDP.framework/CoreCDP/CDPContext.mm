@interface CDPContext
+ (BOOL)_isKeychainSyncAllowedByMDM;
+ (CDPContext)contextWithAuthenticationResults:(id)results;
+ (id)contextForAccountWithAltDSID:(id)d;
+ (id)contextForAccountWithAppleID:(id)d;
+ (id)contextForAccountWithDSID:(id)d;
+ (id)contextForPrimaryAccount;
+ (id)preflightContext:(id)context;
+ (void)contextForPrimaryAccount;
- (BOOL)_isLocalSecretCachedAcknowledgingInMemoryValue;
- (BOOL)desiresAllRecords;
- (BOOL)is2FAFAUserFromNetwork;
- (BOOL)isBeneficiaryFlow;
- (BOOL)isICDPEnabledFromNetwork;
- (BOOL)isLocalSecretCached;
- (BOOL)isPiggybackingRecovery;
- (BOOL)isPrimaryAccount;
- (BOOL)isTTSURecovery;
- (BOOL)isiCDPEligibleWithError:(id *)error;
- (BOOL)keychainSyncAllowedByServer;
- (CDPContext)init;
- (CDPContext)initWithAccount:(id)account;
- (CDPContext)initWithAuthenticationResults:(id)results;
- (CDPContext)initWithCoder:(id)coder;
- (NSNumber)adpCohort;
- (NSString)telemetryDeviceSessionID;
- (id)cliqueConfiguration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initNeedingPreflight:(BOOL)preflight;
- (int64_t)numberOfTrustedDevices;
- (void)_fakeSOSFlagsWithUserDefaults;
- (void)_isLocalSecretCachedAcknowledgingInMemoryValue;
- (void)adpCohort;
- (void)akTrustedDeviceListChanged:(id)changed;
- (void)augmentWithCredentialsFromContext:(id)context;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)init;
- (void)isPrimaryAccount;
- (void)keychainSyncAllowedByServer;
- (void)purgeResumeData;
- (void)setIsPrimaryAccount:(BOOL)account;
- (void)setKeychainSyncAllowedByServer:(BOOL)server;
- (void)setNewPassword:(id)password oldPassword:(id)oldPassword;
- (void)setPassword:(id)password;
- (void)startObservingTrustedDeviceList;
- (void)stoptObservingTrustedDeviceList;
- (void)updateDemoAttributesWithAccount:(id)account;
- (void)updateWithAuthenticationResults:(id)results;
@end

@implementation CDPContext

+ (id)contextForPrimaryAccount
{
  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  primaryAuthKitAccount = [mEMORY[0x1E698DC80] primaryAuthKitAccount];

  if (primaryAuthKitAccount)
  {
    v5 = [[CDPContext alloc] initWithAccount:primaryAuthKitAccount];
  }

  else
  {
    v6 = _CDPLogSystem(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CDPContext contextForPrimaryAccount];
    }

    v5 = 0;
  }

  return v5;
}

+ (BOOL)_isKeychainSyncAllowedByMDM
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [mEMORY[0x1E69ADFB8] isBoolSettingLockedDownByRestrictions:*MEMORY[0x1E69ADE30]];

  return v3 ^ 1;
}

- (void)_fakeSOSFlagsWithUserDefaults
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)contextForPrimaryAccount
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)cliqueConfiguration
{
  v3 = objc_alloc_init(MEMORY[0x1E697AA88]);
  [v3 setContext:*MEMORY[0x1E697AAD0]];
  dsid = [(CDPContext *)self dsid];
  stringValue = [dsid stringValue];
  [v3 setDsid:stringValue];

  altDSID = [(CDPContext *)self altDSID];
  [v3 setAltDSID:altDSID];

  if (objc_opt_respondsToSelector())
  {
    telemetryFlowID = [(CDPContext *)self telemetryFlowID];
    [v3 setFlowID:telemetryFlowID];
  }

  if (objc_opt_respondsToSelector())
  {
    telemetryDeviceSessionID = [(CDPContext *)self telemetryDeviceSessionID];
    [v3 setDeviceSessionID:telemetryDeviceSessionID];
  }

  return v3;
}

- (NSString)telemetryDeviceSessionID
{
  telemetryDeviceSessionID = self->_telemetryDeviceSessionID;
  if (!telemetryDeviceSessionID)
  {
    mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
    v5 = [mEMORY[0x1E698DC80] authKitAccountWithAltDSID:self->_altDSID];
    if (objc_opt_respondsToSelector())
    {
      v6 = [mEMORY[0x1E698DC80] telemetryDeviceSessionIDForAccount:v5];
      v7 = self->_telemetryDeviceSessionID;
      self->_telemetryDeviceSessionID = v6;
    }

    telemetryDeviceSessionID = self->_telemetryDeviceSessionID;
  }

  return telemetryDeviceSessionID;
}

- (void)dealloc
{
  [(CDPContext *)self stoptObservingTrustedDeviceList];
  v3.receiver = self;
  v3.super_class = CDPContext;
  [(CDPContext *)&v3 dealloc];
}

- (void)stoptObservingTrustedDeviceList
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];
}

- (void)setPassword:(id)password
{
  passwordCopy = password;
  v5 = _CDPLogSystem(passwordCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CDPContext setPassword:];
  }

  password = self->_password;
  self->_password = passwordCopy;
}

- (void)setNewPassword:(id)password oldPassword:(id)oldPassword
{
  passwordCopy = password;
  oldPasswordCopy = oldPassword;
  if (passwordCopy && [passwordCopy length])
  {
    objc_storeStrong(&self->_password, password);
  }

  if (oldPasswordCopy && [oldPasswordCopy length])
  {
    objc_storeStrong(&self->_oldPassword, oldPassword);
  }
}

+ (id)contextForAccountWithAppleID:(id)d
{
  dCopy = d;
  v4 = _CDPLogSystem(dCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[CDPContext contextForAccountWithAppleID:];
  }

  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  v6 = [mEMORY[0x1E698DC80] authKitAccountWithAppleID:dCopy];

  if (v6)
  {
    v8 = [[CDPContext alloc] initWithAccount:v6];
  }

  else
  {
    v9 = _CDPLogSystem(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CDPContext contextForAccountWithAppleID:];
    }

    v8 = 0;
  }

  return v8;
}

+ (id)contextForAccountWithAltDSID:(id)d
{
  dCopy = d;
  v4 = _CDPLogSystem(dCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[CDPContext contextForAccountWithAltDSID:];
  }

  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  v6 = [mEMORY[0x1E698DC80] authKitAccountWithAltDSID:dCopy];

  if (v6)
  {
    v8 = [[CDPContext alloc] initWithAccount:v6];
  }

  else
  {
    v9 = _CDPLogSystem(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CDPContext contextForAccountWithAltDSID:];
    }

    v8 = 0;
  }

  return v8;
}

+ (id)contextForAccountWithDSID:(id)d
{
  dCopy = d;
  v4 = _CDPLogSystem(dCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[CDPContext contextForAccountWithDSID:];
  }

  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  v6 = [mEMORY[0x1E698DC80] authKitAccountWithDSID:dCopy];

  if (v6)
  {
    v8 = [[CDPContext alloc] initWithAccount:v6];
  }

  else
  {
    v9 = _CDPLogSystem(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CDPContext contextForAccountWithDSID:];
    }

    v8 = 0;
  }

  return v8;
}

+ (CDPContext)contextWithAuthenticationResults:(id)results
{
  resultsCopy = results;
  v4 = [[CDPContext alloc] initWithAuthenticationResults:resultsCopy];

  return v4;
}

- (id)initNeedingPreflight:(BOOL)preflight
{
  v12.receiver = self;
  v12.super_class = CDPContext;
  v4 = [(CDPContext *)&v12 init];
  if (v4)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    bundleID = v4->_bundleID;
    v4->_bundleID = bundleIdentifier;

    UMUserManagerClass = UserManagementLibraryCore(0);
    if (UMUserManagerClass)
    {
      UMUserManagerClass = getUMUserManagerClass();
    }

    uMUserManagerClass = [UMUserManagerClass sharedManager];
    v4->_isSharediPad = [uMUserManagerClass isSharedIPad];

    v4->_cachedPassphraseMissing = 0;
    v4->_needsPreflight = preflight;
    v4->_managedAccountsAllowedInCDP = _os_feature_enabled_impl();
    v4->_multiUserManateeAllowed = +[CDPUtilities canEnableMultiUserManatee];
    v4->_keychainSyncSystem = 0;
    v4->_keychainSyncAllowedByMDM = [objc_opt_class() _isKeychainSyncAllowedByMDM];
    v10 = v4;
  }

  return v4;
}

- (CDPContext)init
{
  v3 = _CDPLogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CDPContext init];
  }

  return [(CDPContext *)self initNeedingPreflight:1];
}

- (CDPContext)initWithAccount:(id)account
{
  accountCopy = account;
  v5 = [(CDPContext *)self initNeedingPreflight:0];
  v6 = v5;
  if (!v5)
  {
    mEMORY[0x1E698DC80] = _CDPLogSystem(0);
    if (os_log_type_enabled(mEMORY[0x1E698DC80], OS_LOG_TYPE_ERROR))
    {
      [CDPContext initWithAccount:];
    }

    goto LABEL_24;
  }

  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  username = [accountCopy username];
  if (!username)
  {
    v21 = _CDPLogSystem(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [CDPContext initWithAccount:];
    }

    goto LABEL_23;
  }

  v9 = username;
  objc_storeStrong(v6 + 9, username);

  v10 = [accountCopy objectForKeyedSubscript:*MEMORY[0x1E698DC48]];
  if (!v10)
  {
    v10 = [accountCopy objectForKeyedSubscript:*MEMORY[0x1E698DC40]];
    if (!v10)
    {
      v10 = [mEMORY[0x1E698DC80] DSIDForAccount:accountCopy];
      if (!v10)
      {
        v21 = _CDPLogSystem(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [CDPContext initWithAccount:];
        }

        goto LABEL_23;
      }
    }
  }

  v11 = v10;
  objc_storeStrong(v6 + 13, v10);

  v12 = [mEMORY[0x1E698DC80] altDSIDForAccount:accountCopy];
  if (!v12)
  {
    v21 = _CDPLogSystem(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [CDPContext initWithAccount:];
    }

LABEL_23:

LABEL_24:
    v20 = 0;
    goto LABEL_25;
  }

  v13 = v12;
  objc_storeStrong(v6 + 14, v12);

  v14 = [mEMORY[0x1E698DC80] securityLevelForAccount:accountCopy];
  *(v6 + 29) = v14;
  if (!v14)
  {
    v15 = _CDPLogSystem(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CDPContext initWithAccount:];
    }

    v14 = *(v6 + 29);
  }

  *(v6 + 32) = v14 == 4;
  *(v6 + 40) = v14 == 5;
  *(v6 + 33) = [mEMORY[0x1E698DC80] authenticationModeForAccount:accountCopy]== 2;
  *(v6 + 34) = [mEMORY[0x1E698DC80] isBeneficiaryForAccount:accountCopy];
  *(v6 + 36) = 0;
  v16 = [mEMORY[0x1E698DC80] hasSOSActiveDeviceForAccount:accountCopy];
  bOOLValue = [v16 BOOLValue];

  if (bOOLValue)
  {
    *(v6 + 36) |= 1uLL;
  }

  if (objc_opt_respondsToSelector())
  {
    v18 = [mEMORY[0x1E698DC80] isSOSNeededForAccount:accountCopy];
    bOOLValue2 = [v18 BOOLValue];

    if (bOOLValue2)
    {
      *(v6 + 36) |= 2uLL;
    }
  }

  [v6 _fakeSOSFlagsWithUserDefaults];
  [v6 updateDemoAttributesWithAccount:accountCopy];
  v20 = v6;
LABEL_25:

  return v20;
}

- (CDPContext)initWithAuthenticationResults:(id)results
{
  v63 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v5 = resultsCopy;
  if (resultsCopy && (resultsCopy = [resultsCopy count]) != 0)
  {
    v6 = _CDPLogSystem(resultsCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      ak_redactedCopy = [v5 ak_redactedCopy];
      v61 = 138412290;
      v62 = ak_redactedCopy;
      _os_log_impl(&dword_1DED99000, v6, OS_LOG_TYPE_DEFAULT, "Starting with auth results:\n%@", &v61, 0xCu);
    }

    v8 = [(CDPContext *)self initNeedingPreflight:0];
    v9 = v8;
    if (v8)
    {
      v10 = v8[29];
      *(v8 + 32) = v10 == 4;
      *(v8 + 40) = v10 == 5;
      v11 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBF0]];
      v12 = v9[9];
      v9[9] = v11;

      v13 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBD0]];
      v14 = v9[10];
      v9[10] = v13;

      v15 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBC8]];
      v16 = v9[12];
      v9[12] = v15;

      v17 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DB68]];
      v18 = v9[13];
      v9[13] = v17;

      v19 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DB48]];
      *(v9 + 33) = [v19 unsignedIntegerValue] == 2;

      v20 = *MEMORY[0x1E698DBA0];
      v21 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBA0]];
      *(v9 + 34) = v21 != 0;

      v22 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DB80]];
      *(v9 + 35) = [v22 BOOLValue];

      v23 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DB88]];
      v24 = v9[21];
      v9[21] = v23;

      v25 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DB50]];
      v26 = v9[22];
      v9[22] = v25;

      v27 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DB40]];
      v28 = v9[14];
      v9[14] = v27;

      v29 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBD8]];
      v9[29] = [v29 unsignedIntegerValue];

      v31 = v9[29];
      if (!v31)
      {
        v32 = _CDPLogSystem(v30);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [CDPContext initWithAccount:];
        }

        v31 = v9[29];
      }

      *(v9 + 32) = v31 == 4;
      *(v9 + 40) = v31 == 5;
      objc_opt_class();
      v33 = [v5 objectForKeyedSubscript:@"AKNewAccountCreated"];
      if (objc_opt_isKindOfClass())
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      *(v9 + 38) = [v34 unsignedIntegerValue] == 1;
      v36 = objc_alloc(MEMORY[0x1E696AFB0]);
      v37 = [v5 objectForKeyedSubscript:v20];
      v38 = [v36 initWithUUIDString:v37];
      v39 = v9[19];
      v9[19] = v38;

      v9[23] = -1;
      v40 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBB0]];
      v41 = [v40 copy];

      if (v41)
      {
        aaf_toBase64DecodedData = [v41 aaf_toBase64DecodedData];
        v43 = v9[33];
        v9[33] = aaf_toBase64DecodedData;
      }

      v44 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBE0]];
      v45 = v9[38];
      v9[38] = v44;

      v9[36] = 0;
      v46 = [v5 objectForKeyedSubscript:@"SOSCompatibilityOptInNeeded"];
      if ([v46 BOOLValue])
      {
      }

      else
      {
        v47 = [v5 objectForKeyedSubscript:@"hasSOSActiveDevice"];
        bOOLValue = [v47 BOOLValue];

        if (!bOOLValue)
        {
LABEL_22:
          v49 = [v5 objectForKeyedSubscript:@"SOSNeeded"];
          bOOLValue2 = [v49 BOOLValue];

          if (bOOLValue2)
          {
            v9[36] |= 2uLL;
          }

          [v9 _fakeSOSFlagsWithUserDefaults];
          v51 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DC18]];
          bOOLValue3 = [v51 BOOLValue];

          if (bOOLValue3)
          {
            [v9 setType:11];
          }

          mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
          v54 = [mEMORY[0x1E698DC80] authKitAccountWithAltDSID:v9[14]];

          [v9 updateDemoAttributesWithAccount:v54];
          v55 = [v5 objectForKeyedSubscript:@"adpCh"];
          v56 = v9[40];
          v9[40] = v55;

          if (*(v9 + 38) == 1)
          {
            v58 = _CDPLogSystem(v57);
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
            {
              [CDPContext initWithAuthenticationResults:];
            }

            v9[15] = 12;
          }

          goto LABEL_31;
        }
      }

      v9[36] |= 1uLL;
      goto LABEL_22;
    }
  }

  else
  {
    v35 = _CDPLogSystem(resultsCopy);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      [CDPContext initWithAuthenticationResults:];
    }

    v9 = [(CDPContext *)self initNeedingPreflight:1];
  }

LABEL_31:
  v59 = v9;

  return v59;
}

- (void)updateDemoAttributesWithAccount:(id)account
{
  v4 = MEMORY[0x1E698DC80];
  accountCopy = account;
  sharedInstance = [v4 sharedInstance];
  v7 = [sharedInstance demoAccountForAccount:accountCopy];

  if (v7)
  {

    [(CDPContext *)self setAccountType:@"Demo"];
  }
}

- (NSNumber)adpCohort
{
  v19 = *MEMORY[0x1E69E9840];
  adpCohort = self->_adpCohort;
  if (adpCohort)
  {
LABEL_6:
    v12 = adpCohort;
    goto LABEL_7;
  }

  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  v5 = [mEMORY[0x1E698DC80] authKitAccountWithAltDSID:self->_altDSID];
  v6 = objc_opt_respondsToSelector();
  if (v6)
  {
    v7 = [mEMORY[0x1E698DC80] adpCohortForAccount:v5];
    v8 = self->_adpCohort;
    self->_adpCohort = v7;

    v10 = _CDPLogSystem(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_adpCohort;
      v15 = 136315394;
      v16 = "[CDPContext adpCohort]";
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_1DED99000, v10, OS_LOG_TYPE_DEFAULT, "%s: ADP Cohort type is %@", &v15, 0x16u);
    }

    adpCohort = self->_adpCohort;
    goto LABEL_6;
  }

  v14 = _CDPLogSystem(v6);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    [(CDPContext *)mEMORY[0x1E698DC80] adpCohort];
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (void)startObservingTrustedDeviceList
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)akTrustedDeviceListChanged:(id)changed
{
  v4 = _CDPLogSystem(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CDPContext akTrustedDeviceListChanged:];
  }

  self->_numberOfTrustedDevices = [(CDPContext *)self getNumberOfTrustedDevices];
}

- (int64_t)numberOfTrustedDevices
{
  p_numberOfTrustedDevices = &self->_numberOfTrustedDevices;
  if (!self->_numberOfTrustedDevices)
  {
    selfCopy = self;
    self = [(CDPContext *)self getNumberOfTrustedDevices];
    selfCopy->_numberOfTrustedDevices = self;
  }

  v4 = _CDPLogSystem(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CDPContext numberOfTrustedDevices];
  }

  return *p_numberOfTrustedDevices;
}

- (BOOL)isPrimaryAccount
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = self->_isPrimaryAccountInternal;
  objc_sync_enter(v3);
  isPrimaryAccountInternal = self->_isPrimaryAccountInternal;
  if (!isPrimaryAccountInternal)
  {
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    altDSID = [(CDPContext *)self altDSID];
    v7 = [defaultStore aa_appleAccountWithAltDSID:altDSID];

    if (v7)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "aa_isAccountClass:", *MEMORY[0x1E698B760])}];
      v10 = self->_isPrimaryAccountInternal;
      self->_isPrimaryAccountInternal = v9;

      p_super = _CDPLogSystem(v11);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        altDSID2 = [(CDPContext *)self altDSID];
        bOOLValue = [(NSNumber *)self->_isPrimaryAccountInternal BOOLValue];
        v19 = 141558530;
        v20 = 1752392040;
        v21 = 2112;
        v22 = altDSID2;
        v23 = 1024;
        v24 = bOOLValue;
        _os_log_impl(&dword_1DED99000, p_super, OS_LOG_TYPE_DEFAULT, "isPrimaryAccount: Account for %{mask.hash}@ account primary: %{BOOL}d", &v19, 0x1Cu);
      }
    }

    else
    {
      v15 = _CDPLogSystem(v8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        altDSID3 = [(CDPContext *)self altDSID];
        [(CDPContext *)altDSID3 isPrimaryAccount];
      }

      p_super = &self->_isPrimaryAccountInternal->super.super;
      self->_isPrimaryAccountInternal = MEMORY[0x1E695E110];
    }

    isPrimaryAccountInternal = self->_isPrimaryAccountInternal;
  }

  bOOLValue2 = [(NSNumber *)isPrimaryAccountInternal BOOLValue];
  objc_sync_exit(v3);

  return bOOLValue2;
}

- (void)setIsPrimaryAccount:(BOOL)account
{
  accountCopy = account;
  obj = self->_isPrimaryAccountInternal;
  objc_sync_enter(obj);
  v5 = [MEMORY[0x1E696AD98] numberWithBool:accountCopy];
  isPrimaryAccountInternal = self->_isPrimaryAccountInternal;
  self->_isPrimaryAccountInternal = v5;

  objc_sync_exit(obj);
}

- (BOOL)keychainSyncAllowedByServer
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = self->_keychainSyncAllowedByServerInternal;
  objc_sync_enter(v3);
  keychainSyncAllowedByServerInternal = self->_keychainSyncAllowedByServerInternal;
  if (!keychainSyncAllowedByServerInternal)
  {
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    altDSID = [(CDPContext *)self altDSID];
    v7 = [defaultStore aa_appleAccountWithAltDSID:altDSID];

    if (v7)
    {
      v9 = *MEMORY[0x1E6959690];
      if (([v7 isProvisionedForDataclass:*MEMORY[0x1E6959690]] & 1) != 0 || (v10 = -[CDPContext isManagedAccount](self, "isManagedAccount"), !v10))
      {
        v12 = 1;
      }

      else
      {
        v11 = _CDPLogSystem(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [CDPContext keychainSyncAllowedByServer];
        }

        v12 = 0;
      }

      v13 = [v7 aa_serverDisabledDataclass:v9];
      if (v13)
      {
        v14 = _CDPLogSystem(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [CDPContext keychainSyncAllowedByServer];
        }

        v12 = 0;
      }

      v15 = [MEMORY[0x1E696AD98] numberWithBool:v12];
      v16 = self->_keychainSyncAllowedByServerInternal;
      self->_keychainSyncAllowedByServerInternal = v15;

      p_super = _CDPLogSystem(v17);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        altDSID2 = [(CDPContext *)self altDSID];
        v24 = 141558530;
        v25 = 1752392040;
        v26 = 2112;
        v27 = altDSID2;
        v28 = 1024;
        v29 = v12;
        _os_log_impl(&dword_1DED99000, p_super, OS_LOG_TYPE_DEFAULT, "keychainSyncAllowedByServer: Account for %{mask.hash}@ account primary: %{BOOL}d", &v24, 0x1Cu);
      }
    }

    else
    {
      v20 = _CDPLogSystem(v8);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        altDSID3 = [(CDPContext *)self altDSID];
        [(CDPContext *)altDSID3 keychainSyncAllowedByServer];
      }

      p_super = &self->_keychainSyncAllowedByServerInternal->super.super;
      self->_keychainSyncAllowedByServerInternal = MEMORY[0x1E695E110];
    }

    keychainSyncAllowedByServerInternal = self->_keychainSyncAllowedByServerInternal;
  }

  bOOLValue = [(NSNumber *)keychainSyncAllowedByServerInternal BOOLValue];
  objc_sync_exit(v3);

  return bOOLValue;
}

- (void)setKeychainSyncAllowedByServer:(BOOL)server
{
  serverCopy = server;
  obj = self->_keychainSyncAllowedByServerInternal;
  objc_sync_enter(obj);
  v5 = [MEMORY[0x1E696AD98] numberWithBool:serverCopy];
  keychainSyncAllowedByServerInternal = self->_keychainSyncAllowedByServerInternal;
  self->_keychainSyncAllowedByServerInternal = v5;

  objc_sync_exit(obj);
}

- (void)purgeResumeData
{
  resumeContext = self->_resumeContext;
  self->_resumeContext = 0;

  duplexSession = self->_duplexSession;
  self->_duplexSession = 0;

  sharingChannel = self->_sharingChannel;
  self->_sharingChannel = 0;
}

- (BOOL)desiresAllRecords
{
  if ([(CDPContext *)self idmsRecovery])
  {
    return 1;
  }

  findMyiPhoneUUID = [(CDPContext *)self findMyiPhoneUUID];
  v3 = findMyiPhoneUUID != 0;

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  appleID = self->_appleID;
  coderCopy = coder;
  [coderCopy encodeObject:appleID forKey:@"_appleID"];
  [coderCopy encodeObject:self->_password forKey:@"_password"];
  [coderCopy encodeObject:self->_passwordEquivToken forKey:@"_passwordEquivToken"];
  [coderCopy encodeObject:self->_dsid forKey:@"_dsid"];
  [coderCopy encodeBool:self->_isHSA2Account forKey:@"_isHSA2Account"];
  [coderCopy encodeBool:self->_isManagedAccount forKey:@"_isManagedAccount"];
  [coderCopy encodeBool:self->_didUseSMSVerification forKey:@"_didUseSMSVerification"];
  [coderCopy encodeObject:self->_cachedLocalSecret forKey:@"_cachedLocalSecret"];
  [coderCopy encodeInteger:self->_cachedLocalSecretType forKey:@"_cachedLocalSecretType"];
  [coderCopy encodeBool:self->__alwaysCreateEscrowRecord forKey:@"__alwaysCreateEscrowRecord"];
  [coderCopy encodeBool:self->__skipEscrowFetches forKey:@"__skipEscrowFetches"];
  [coderCopy encodeBool:self->_guestMode forKey:@"_guestMode"];
  [coderCopy encodeBool:self->_idmsRecovery forKey:@"_idmsRecovery"];
  [coderCopy encodeBool:self->_idmsMasterKeyRecovery forKey:@"_idmsMasterKeyRecovery"];
  [coderCopy encodeObject:self->_duplexSession forKey:@"_duplexSession"];
  [coderCopy encodeObject:self->_resumeContext forKey:@"_resumeContext"];
  [coderCopy encodeObject:self->_sharingChannel forKey:@"_sharingChannel"];
  [coderCopy encodeInteger:self->_type forKey:@"_type"];
  [coderCopy encodeBool:self->_isAttemptingBackupRestore forKey:@"_isAttemptingBackupRestore"];
  [coderCopy encodeObject:self->_findMyiPhoneUUID forKey:@"_findMyiPhoneUUID"];
  [coderCopy encodeObject:self->_altDSID forKey:@"_altDSID"];
  [coderCopy encodeBool:self->_isFederatedAccount forKey:@"_isFederatedAccount"];
  [coderCopy encodeBool:self->_isBeneficiaryAccount forKey:@"_isBeneficiaryAccount"];
  [coderCopy encodeBool:self->__ignoreLockAssertErrors forKey:@"__ignoreLockAssertErrors"];
  [coderCopy encodeObject:self->_custodianRecoveryInfo forKey:@"_custodianRecoveryInfo"];
  [coderCopy encodeObject:self->_beneficiaryIdentifier forKey:@"_beneficiaryAccount"];
  [coderCopy encodeObject:self->_beneficiaryWrappedKeyData forKey:@"_beneficiaryWrappedKeyData"];
  [coderCopy encodeBool:self->__supportsCustodianRecovery forKey:@"__supportsCustodianRecovery"];
  [coderCopy encodeObject:self->_bundleID forKey:@"_bundleID"];
  [coderCopy encodeBool:self->__disableAsyncSecureBackupEnrollment forKey:@"__disableAsyncSecureBackupEnrollment"];
  [coderCopy encodeBool:self->_mandatesRecoveryKey forKey:@"_mandatesRecoveryKey"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_walrusStatus];
  [coderCopy encodeObject:v5 forKey:@"_walrusStatus"];

  [coderCopy encodeBool:self->__forceManateeReset forKey:@"__forceManateeReset"];
  [coderCopy encodeBool:self->__recoveryMethodAvailable forKey:@"__recoveryMethodAvailable"];
  [coderCopy encodeBool:self->_isSOSCFUFlow forKey:@"_isSOSCFUFlow"];
  [coderCopy encodeInteger:self->_sosCompatibilityType forKey:@"_sosCompatibilityType"];
  [coderCopy encodeInteger:self->_keychainSyncSystem forKey:@"_keychainSyncSystem"];
  [coderCopy encodeObject:self->_telemetryFlowID forKey:@"_telemetryFlowID"];
  [coderCopy encodeObject:self->_telemetryDeviceSessionID forKey:@"_telemetryDeviceSessionID"];
  [coderCopy encodeBool:self->_needsPreflight forKey:@"_needsPreflight"];
  [coderCopy encodeBool:self->_isSharediPad forKey:@"_isSharediPad"];
  [coderCopy encodeInteger:self->_securityLevel forKey:@"_securityLevel"];
  [coderCopy encodeObject:self->_followUpType forKey:@"_followUpType"];
  [coderCopy encodeBool:self->__useSecureBackupCachedPassphrase forKey:@"__useSecureBackupCachedPassphrase"];
  [coderCopy encodeBool:self->_cachedPassphraseMissing forKey:@"_cachedPassphraseMissing"];
  [coderCopy encodeObject:self->_adpCohort forKey:@"_adpCohort"];
  [coderCopy encodeBool:self->_newAccountCreated forKey:@"_newAccountCreated"];
  [coderCopy encodeBool:self->_willAttemptAsyncSecureBackupEnablement forKey:@"_willAttemptAsyncSecureBackupEnablement"];
  [coderCopy encodeBool:self->_didAttemptSecureBackupEnablement forKey:@"_didAttemptSecureBackupEnablement"];
  [coderCopy encodeBool:self->_secureBackupEnablementNotRequired forKey:@"_secureBackupEnablementNotRequired"];
}

- (CDPContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[CDPContext initNeedingPreflight:](self, "initNeedingPreflight:", [coderCopy decodeBoolForKey:@"_needsPreflight"]);
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_appleID"];
    appleID = v5->_appleID;
    v5->_appleID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_password"];
    password = v5->_password;
    v5->_password = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_passwordEquivToken"];
    passwordEquivToken = v5->_passwordEquivToken;
    v5->_passwordEquivToken = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_dsid"];
    dsid = v5->_dsid;
    v5->_dsid = v12;

    v5->_isHSA2Account = [coderCopy decodeBoolForKey:@"_isHSA2Account"];
    v5->_isManagedAccount = [coderCopy decodeBoolForKey:@"_isManagedAccount"];
    v5->_didUseSMSVerification = [coderCopy decodeBoolForKey:@"_didUseSMSVerification"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_cachedLocalSecret"];
    cachedLocalSecret = v5->_cachedLocalSecret;
    v5->_cachedLocalSecret = v14;

    v5->_cachedLocalSecretType = [coderCopy decodeIntegerForKey:@"_cachedLocalSecretType"];
    v5->__alwaysCreateEscrowRecord = [coderCopy decodeBoolForKey:@"__alwaysCreateEscrowRecord"];
    v5->__skipEscrowFetches = [coderCopy decodeBoolForKey:@"__skipEscrowFetches"];
    v5->_guestMode = [coderCopy decodeBoolForKey:@"_guestMode"];
    v5->_idmsRecovery = [coderCopy decodeBoolForKey:@"_idmsRecovery"];
    v5->_idmsMasterKeyRecovery = [coderCopy decodeBoolForKey:@"_idmsMasterKeyRecovery"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_duplexSession"];
    duplexSession = v5->_duplexSession;
    v5->_duplexSession = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_resumeContext"];
    resumeContext = v5->_resumeContext;
    v5->_resumeContext = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sharingChannel"];
    sharingChannel = v5->_sharingChannel;
    v5->_sharingChannel = v20;

    v5->_type = [coderCopy decodeIntegerForKey:@"_type"];
    v5->_isAttemptingBackupRestore = [coderCopy decodeBoolForKey:@"_isAttemptingBackupRestore"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_findMyiPhoneUUID"];
    findMyiPhoneUUID = v5->_findMyiPhoneUUID;
    v5->_findMyiPhoneUUID = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v24;

    v5->_isFederatedAccount = [coderCopy decodeBoolForKey:@"_isFederatedAccount"];
    v5->_isBeneficiaryAccount = [coderCopy decodeBoolForKey:@"_isBeneficiaryAccount"];
    v5->__ignoreLockAssertErrors = [coderCopy decodeBoolForKey:@"__ignoreLockAssertErrors"];
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_custodianRecoveryInfo"];
    custodianRecoveryInfo = v5->_custodianRecoveryInfo;
    v5->_custodianRecoveryInfo = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_beneficiaryAccount"];
    beneficiaryIdentifier = v5->_beneficiaryIdentifier;
    v5->_beneficiaryIdentifier = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_beneficiaryWrappedKeyData"];
    beneficiaryWrappedKeyData = v5->_beneficiaryWrappedKeyData;
    v5->_beneficiaryWrappedKeyData = v30;

    v5->__supportsCustodianRecovery = [coderCopy decodeBoolForKey:@"__supportsCustodianRecovery"];
    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v32;

    v5->__disableAsyncSecureBackupEnrollment = [coderCopy decodeBoolForKey:@"__disableAsyncSecureBackupEnrollment"];
    v5->_mandatesRecoveryKey = [coderCopy decodeBoolForKey:@"_mandatesRecoveryKey"];
    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_walrusStatus"];
    v5->_walrusStatus = [v34 unsignedIntValue];

    v5->__forceManateeReset = [coderCopy decodeBoolForKey:@"__forceManateeReset"];
    v5->__recoveryMethodAvailable = [coderCopy decodeBoolForKey:@"__recoveryMethodAvailable"];
    v5->_isSOSCFUFlow = [coderCopy decodeBoolForKey:@"_isSOSCFUFlow"];
    v5->_sosCompatibilityType = [coderCopy decodeIntForKey:@"_sosCompatibilityType"];
    v5->_keychainSyncSystem = [coderCopy decodeIntegerForKey:@"_keychainSyncSystem"];
    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_telemetryFlowID"];
    telemetryFlowID = v5->_telemetryFlowID;
    v5->_telemetryFlowID = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_telemetryDeviceSessionID"];
    telemetryDeviceSessionID = v5->_telemetryDeviceSessionID;
    v5->_telemetryDeviceSessionID = v37;

    v5->_isSharediPad = [coderCopy decodeBoolForKey:@"_isSharediPad"];
    v5->_securityLevel = [coderCopy decodeIntegerForKey:@"_securityLevel"];
    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_followUpType"];
    followUpType = v5->_followUpType;
    v5->_followUpType = v39;

    v5->__useSecureBackupCachedPassphrase = [coderCopy decodeBoolForKey:@"__useSecureBackupCachedPassphrase"];
    v5->_cachedPassphraseMissing = [coderCopy decodeBoolForKey:@"_cachedPassphraseMissing"];
    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_adpCohort"];
    adpCohort = v5->_adpCohort;
    v5->_adpCohort = v41;

    v5->_newAccountCreated = [coderCopy decodeBoolForKey:@"_newAccountCreated"];
    v5->_willAttemptAsyncSecureBackupEnablement = [coderCopy decodeBoolForKey:@"_willAttemptAsyncSecureBackupEnablement"];
    v5->_didAttemptSecureBackupEnablement = [coderCopy decodeBoolForKey:@"_didAttemptSecureBackupEnablement"];
    v5->_secureBackupEnablementNotRequired = [coderCopy decodeBoolForKey:@"_secureBackupEnablementNotRequired"];
  }

  return v5;
}

- (void)updateWithAuthenticationResults:(id)results
{
  v4 = *MEMORY[0x1E698DBC8];
  resultsCopy = results;
  v6 = [resultsCopy objectForKeyedSubscript:v4];
  passwordEquivToken = self->_passwordEquivToken;
  self->_passwordEquivToken = v6;

  v8 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DBD0]];
  password = self->_password;
  self->_password = v8;

  v10 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DB68]];
  dsid = self->_dsid;
  self->_dsid = v10;

  v12 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DB48]];
  self->_isFederatedAccount = [v12 unsignedIntegerValue] == 2;

  v13 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DBA0]];
  self->_isBeneficiaryAccount = [v13 BOOLValue];

  v14 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DB40]];
  altDSID = self->_altDSID;
  self->_altDSID = v14;

  v16 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DBD8]];

  self->_securityLevel = [v16 unsignedIntegerValue];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CDPContext);
  v5 = [(NSString *)self->_appleID copy];
  appleID = v4->_appleID;
  v4->_appleID = v5;

  v7 = [(NSString *)self->_password copy];
  password = v4->_password;
  v4->_password = v7;

  v9 = [(NSString *)self->_passwordEquivToken copy];
  passwordEquivToken = v4->_passwordEquivToken;
  v4->_passwordEquivToken = v9;

  v11 = [(NSNumber *)self->_dsid copy];
  dsid = v4->_dsid;
  v4->_dsid = v11;

  v4->_isHSA2Account = self->_isHSA2Account;
  v4->_isManagedAccount = self->_isManagedAccount;
  objc_storeStrong(&v4->_isPrimaryAccountInternal, self->_isPrimaryAccountInternal);
  v4->_didUseSMSVerification = self->_didUseSMSVerification;
  v13 = [(NSString *)self->_cachedLocalSecret copy];
  cachedLocalSecret = v4->_cachedLocalSecret;
  v4->_cachedLocalSecret = v13;

  v4->_cachedLocalSecretType = self->_cachedLocalSecretType;
  v4->__alwaysCreateEscrowRecord = self->__alwaysCreateEscrowRecord;
  v4->__skipEscrowFetches = self->__skipEscrowFetches;
  v4->_guestMode = self->_guestMode;
  v4->_idmsRecovery = self->_idmsRecovery;
  v4->_idmsMasterKeyRecovery = self->_idmsMasterKeyRecovery;
  v4->_type = self->_type;
  v4->_isAttemptingBackupRestore = self->_isAttemptingBackupRestore;
  objc_storeStrong(&v4->_findMyiPhoneUUID, self->_findMyiPhoneUUID);
  objc_storeStrong(&v4->_altDSID, self->_altDSID);
  objc_storeStrong(&v4->_sharingChannel, self->_sharingChannel);
  v4->_isFederatedAccount = self->_isFederatedAccount;
  v4->_isBeneficiaryAccount = self->_isBeneficiaryAccount;
  v15 = [(CDPCustodianRecoveryInfo *)self->_custodianRecoveryInfo copy];
  custodianRecoveryInfo = v4->_custodianRecoveryInfo;
  v4->_custodianRecoveryInfo = v15;

  v17 = [(NSUUID *)self->_beneficiaryIdentifier copy];
  beneficiaryIdentifier = v4->_beneficiaryIdentifier;
  v4->_beneficiaryIdentifier = v17;

  v19 = [(NSData *)self->_beneficiaryWrappedKeyData copy];
  beneficiaryWrappedKeyData = v4->_beneficiaryWrappedKeyData;
  v4->_beneficiaryWrappedKeyData = v19;

  v4->__supportsCustodianRecovery = self->__supportsCustodianRecovery;
  objc_storeStrong(&v4->_bundleID, self->_bundleID);
  v4->__disableAsyncSecureBackupEnrollment = self->__disableAsyncSecureBackupEnrollment;
  v4->_mandatesRecoveryKey = self->_mandatesRecoveryKey;
  v4->_walrusStatus = self->_walrusStatus;
  v4->__forceManateeReset = self->__forceManateeReset;
  v4->__recoveryMethodAvailable = self->__recoveryMethodAvailable;
  v4->_isSOSCFUFlow = self->_isSOSCFUFlow;
  v4->_sosCompatibilityType = self->_sosCompatibilityType;
  v4->_keychainSyncSystem = self->_keychainSyncSystem;
  objc_storeStrong(&v4->_telemetryFlowID, self->_telemetryFlowID);
  objc_storeStrong(&v4->_telemetryDeviceSessionID, self->_telemetryDeviceSessionID);
  v4->_isSharediPad = self->_isSharediPad;
  v4->_securityLevel = self->_securityLevel;
  objc_storeStrong(&v4->_followUpType, self->_followUpType);
  v4->__useSecureBackupCachedPassphrase = self->__useSecureBackupCachedPassphrase;
  v4->_cachedPassphraseMissing = self->_cachedPassphraseMissing;
  objc_storeStrong(&v4->_adpCohort, self->_adpCohort);
  v4->_willAttemptAsyncSecureBackupEnablement = self->_willAttemptAsyncSecureBackupEnablement;
  v4->_didAttemptSecureBackupEnablement = self->_didAttemptSecureBackupEnablement;
  v4->_secureBackupEnablementNotRequired = self->_secureBackupEnablementNotRequired;
  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendString:@"CDPContext: \n"];
  [v3 appendFormat:@"\taltDSID: %@\n", self->_altDSID];
  [v3 appendFormat:@"\tdsid: %@\n", self->_dsid];
  [v3 appendFormat:@"\tisHSA2Account: %d\n", self->_isHSA2Account];
  [v3 appendFormat:@"\tisManagedAccount: %d\n", self->_isManagedAccount];
  [v3 appendFormat:@"\tisPrimaryAccountInternal: %@\n", self->_isPrimaryAccountInternal];
  [v3 appendFormat:@"\tdidUseSMSVerification: %d\n", self->_didUseSMSVerification];
  [v3 appendFormat:@"\tisPrimaryAccountInternal: %@\n", self->_isPrimaryAccountInternal];
  [v3 appendFormat:@"\tisSOSCFUFlow: %d\n", self->_isSOSCFUFlow];
  [v3 appendFormat:@"\tsosCompatibilityType: %lu\n", self->_sosCompatibilityType];
  if (self->_keychainSyncSystem)
  {
    v4 = @"SOS";
  }

  else
  {
    v4 = @"Octagon";
  }

  [v3 appendFormat:@"\tkeychainSyncSystem: %@\n", v4];
  [v3 appendFormat:@"\tisTTSURecovery: %d\n", -[CDPContext isTTSURecovery](self, "isTTSURecovery")];
  [v3 appendFormat:@"\tisSharediPad: %d\n", -[CDPContext isSharediPad](self, "isSharediPad")];
  [v3 appendFormat:@"\tnewAccountCreated: %d\n", -[CDPContext newAccountCreated](self, "newAccountCreated")];
  [v3 appendFormat:@"\tcontextType: %ld\n", -[CDPContext type](self, "type")];

  return v3;
}

- (void)augmentWithCredentialsFromContext:(id)context
{
  contextCopy = context;
  if (!self->_appleID)
  {
    appleID = [contextCopy appleID];
    appleID = self->_appleID;
    self->_appleID = appleID;
  }

  if (!self->_password)
  {
    password = [contextCopy password];
    password = self->_password;
    self->_password = password;
  }

  if (!self->_oldPassword)
  {
    oldPassword = [contextCopy oldPassword];
    oldPassword = self->_oldPassword;
    self->_oldPassword = oldPassword;
  }

  if (!self->_passwordEquivToken)
  {
    passwordEquivToken = [contextCopy passwordEquivToken];
    passwordEquivToken = self->_passwordEquivToken;
    self->_passwordEquivToken = passwordEquivToken;
  }

  if (!self->_dsid)
  {
    dsid = [contextCopy dsid];
    dsid = self->_dsid;
    self->_dsid = dsid;
  }

  if (!self->_altDSID)
  {
    altDSID = [contextCopy altDSID];
    altDSID = self->_altDSID;
    self->_altDSID = altDSID;
  }

  if (!self->_telemetryDeviceSessionID)
  {
    telemetryDeviceSessionID = [contextCopy telemetryDeviceSessionID];
    telemetryDeviceSessionID = self->_telemetryDeviceSessionID;
    self->_telemetryDeviceSessionID = telemetryDeviceSessionID;
  }

  if (!self->_telemetryFlowID)
  {
    telemetryFlowID = [contextCopy telemetryFlowID];
    telemetryFlowID = self->_telemetryFlowID;
    self->_telemetryFlowID = telemetryFlowID;
  }

  if (!self->_securityLevel)
  {
    self->_securityLevel = [contextCopy securityLevel];
  }
}

- (BOOL)isPiggybackingRecovery
{
  duplexSession = [(CDPContext *)self duplexSession];
  if (duplexSession)
  {
    resumeContext = [(CDPContext *)self resumeContext];
    v5 = resumeContext != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isTTSURecovery
{
  sharingChannel = [(CDPContext *)self sharingChannel];
  v3 = sharingChannel != 0;

  return v3;
}

- (BOOL)isiCDPEligibleWithError:(id *)error
{
  isSharediPad = [(CDPContext *)self isSharediPad];
  if (isSharediPad)
  {
    v6 = _CDPLogSystem(isSharediPad);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v6, OS_LOG_TYPE_DEFAULT, "isiCDPEligible: managed accounts on shared iPad is not manatee eligible, returning NO", buf, 2u);
    }

    if (error)
    {
      v7 = -5004;
LABEL_33:
      v22 = _CDPStateError(v7, 0);
      v23 = v22;
      result = 0;
      *error = v22;
      return result;
    }

    return 0;
  }

  if ([(CDPContext *)self isHSA2Account])
  {
    isPrimaryAccount = [(CDPContext *)self isPrimaryAccount];
    if (isPrimaryAccount & 1) != 0 || (isPrimaryAccount = [(CDPContext *)self multiUserManateeAllowed], (isPrimaryAccount))
    {
      v9 = _CDPLogSystem(isPrimaryAccount);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 0;
        _os_log_impl(&dword_1DED99000, v9, OS_LOG_TYPE_DEFAULT, "isiCDPEligible: Account is HSA2 and primary: returning YES", v28, 2u);
      }

      return 1;
    }

    v15 = _CDPLogSystem(isPrimaryAccount);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 0;
      v20 = "isiCDPEligible: Account is HSA2 and non-primary, and multi-user is not allowed: returning NO";
      v21 = &v29;
LABEL_30:
      _os_log_impl(&dword_1DED99000, v15, OS_LOG_TYPE_DEFAULT, v20, v21, 2u);
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  isManagedAccount = [(CDPContext *)self isManagedAccount];
  if (!isManagedAccount)
  {
    v17 = _CDPLogSystem(isManagedAccount);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v24 = 0;
    v18 = "isiCDPEligible: Account is not HSA or Managed, returning NO";
    v19 = &v24;
    goto LABEL_25;
  }

  managedAccountsAllowedInCDP = [(CDPContext *)self managedAccountsAllowedInCDP];
  if (managedAccountsAllowedInCDP)
  {
    isPrimaryAccount2 = [(CDPContext *)self isPrimaryAccount];
    v14 = isPrimaryAccount2;
    v15 = _CDPLogSystem(isPrimaryAccount2);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        *v26 = 0;
        _os_log_impl(&dword_1DED99000, v15, OS_LOG_TYPE_DEFAULT, "isiCDPEligible: Account is managed and primary: returning YES", v26, 2u);
      }

      return 1;
    }

    if (v16)
    {
      *v25 = 0;
      v20 = "isiCDPEligible: Account is managed but non-primary: returning NO";
      v21 = v25;
      goto LABEL_30;
    }

LABEL_31:

    if (error)
    {
      v7 = -5111;
      goto LABEL_33;
    }

    return 0;
  }

  v17 = _CDPLogSystem(managedAccountsAllowedInCDP);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    v18 = "isiCDPEligible: Account is managed, but managed accounts are not allowed in CDP: returning NO";
    v19 = v27;
LABEL_25:
    _os_log_impl(&dword_1DED99000, v17, OS_LOG_TYPE_DEFAULT, v18, v19, 2u);
  }

LABEL_26:

  if (error)
  {
    v7 = -5110;
    goto LABEL_33;
  }

  return 0;
}

- (BOOL)isBeneficiaryFlow
{
  beneficiaryIdentifier = [(CDPContext *)self beneficiaryIdentifier];
  uUIDString = [beneficiaryIdentifier UUIDString];
  if ([uUIDString length])
  {
    isBeneficiaryAccount = 1;
  }

  else
  {
    isBeneficiaryAccount = [(CDPContext *)self isBeneficiaryAccount];
  }

  return isBeneficiaryAccount;
}

- (BOOL)is2FAFAUserFromNetwork
{
  isHSA2Account = [(CDPContext *)self isHSA2Account];
  if (isHSA2Account)
  {
    LOBYTE(isHSA2Account) = ![(CDPContext *)self isICDPEnabledFromNetwork];
  }

  return isHSA2Account;
}

- (BOOL)isICDPEnabledFromNetwork
{
  dsid = [(CDPContext *)self dsid];
  stringValue = [dsid stringValue];
  v4 = [CDPAccount isICDPEnabledForDSID:stringValue checkWithServer:1];

  return v4;
}

- (BOOL)isLocalSecretCached
{
  if (+[CDPUtilities useCDPContextSecretInsteadOfSBDSecretFeatureEnabled])
  {

    return [(CDPContext *)self _isLocalSecretCachedAcknowledgingInMemoryValue];
  }

  else
  {
    if ([(CDPContext *)self cachedPassphraseMissing])
    {
      return 0;
    }

    cachedLocalSecret = [(CDPContext *)self cachedLocalSecret];
    if (cachedLocalSecret)
    {
      _useSecureBackupCachedPassphrase = 1;
    }

    else
    {
      _useSecureBackupCachedPassphrase = [(CDPContext *)self _useSecureBackupCachedPassphrase];
    }

    return _useSecureBackupCachedPassphrase;
  }
}

- (BOOL)_isLocalSecretCachedAcknowledgingInMemoryValue
{
  cachedLocalSecret = [(CDPContext *)self cachedLocalSecret];

  if (cachedLocalSecret)
  {
    cachedLocalSecret2 = [(CDPContext *)self cachedLocalSecret];
    if (cachedLocalSecret2)
    {
      v5 = cachedLocalSecret2;
      cachedLocalSecret3 = [(CDPContext *)self cachedLocalSecret];
      v7 = [cachedLocalSecret3 length];

      if (!v7)
      {
        v9 = _CDPLogSystem(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          [(CDPContext *)v9 _isLocalSecretCachedAcknowledgingInMemoryValue];
        }
      }
    }

    LOBYTE(_useSecureBackupCachedPassphrase) = 1;
  }

  else
  {
    _useSecureBackupCachedPassphrase = [(CDPContext *)self _useSecureBackupCachedPassphrase];
    if (_useSecureBackupCachedPassphrase)
    {
      LOBYTE(_useSecureBackupCachedPassphrase) = ![(CDPContext *)self cachedPassphraseMissing];
    }
  }

  return _useSecureBackupCachedPassphrase;
}

+ (id)preflightContext:(id)context
{
  v43 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v4 = contextCopy;
  if (!contextCopy)
  {
    v16 = _CDPLogSystem(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      +[CDPContext(Account) preflightContext:];
    }

    v17 = +[CDPContext contextForPrimaryAccount];
    goto LABEL_16;
  }

  needsPreflight = [contextCopy needsPreflight];
  if ((needsPreflight & 1) == 0)
  {
    v18 = _CDPLogSystem(needsPreflight);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      +[CDPContext(Account) preflightContext:];
    }

    v17 = v4;
LABEL_16:
    v19 = v17;
    goto LABEL_42;
  }

  altDSID = [v4 altDSID];

  if (altDSID)
  {
    v8 = _CDPLogSystem(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      altDSID2 = [v4 altDSID];
      v39 = 141558274;
      v40 = 1752392040;
      v41 = 2112;
      v42 = altDSID2;
      _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "preflightContext: Attempting to backfill context for altDSID %{mask.hash}@ . Please use +[CDPContext contextForAccountWithAltDSID:] to do this in the future.", &v39, 0x16u);
    }

    mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
    altDSID3 = [v4 altDSID];
    primaryAuthKitAccount = [mEMORY[0x1E698DC80] authKitAccountWithAltDSID:altDSID3];

    if (primaryAuthKitAccount)
    {
      goto LABEL_34;
    }

    v14 = _CDPLogSystem(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CDPContext(Account) preflightContext:v4];
    }

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  dsid = [v4 dsid];

  if (dsid)
  {
    v22 = _CDPLogSystem(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      dsid2 = [v4 dsid];
      v39 = 141558274;
      v40 = 1752392040;
      v41 = 2112;
      v42 = dsid2;
      _os_log_impl(&dword_1DED99000, v22, OS_LOG_TYPE_DEFAULT, "preflightContext: Attempting to find account for dsid %{mask.hash}@ . Please use +[CDPContext contextForAccountWithAltDSID:] to do this in the future.", &v39, 0x16u);
    }

    mEMORY[0x1E698DC80]2 = [MEMORY[0x1E698DC80] sharedInstance];
    dsid3 = [v4 dsid];
    primaryAuthKitAccount = [mEMORY[0x1E698DC80]2 authKitAccountWithDSID:dsid3];

    if (primaryAuthKitAccount)
    {
      goto LABEL_34;
    }

    v26 = _CDPLogSystem(v13);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [CDPContext(Account) preflightContext:v4];
    }

    v15 = 1;
  }

  appleID = [v4 appleID];

  if (appleID)
  {
    v28 = _CDPLogSystem(v13);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      appleID2 = [v4 appleID];
      v39 = 141558274;
      v40 = 1752392040;
      v41 = 2112;
      v42 = appleID2;
      _os_log_impl(&dword_1DED99000, v28, OS_LOG_TYPE_DEFAULT, "preflightContext: Attempting to find account for appleID %{mask.hash}@ . Please use +[CDPContext contextForAccountWithAppleID:] to do this in the future.", &v39, 0x16u);
    }

    mEMORY[0x1E698DC80]3 = [MEMORY[0x1E698DC80] sharedInstance];
    appleID3 = [v4 appleID];
    primaryAuthKitAccount = [mEMORY[0x1E698DC80]3 authKitAccountWithAppleID:appleID3];

    if (primaryAuthKitAccount)
    {
      goto LABEL_34;
    }

    v32 = _CDPLogSystem(v13);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [CDPContext(Account) preflightContext:v4];
    }
  }

  else if (!v15)
  {
    v38 = _CDPLogSystem(v13);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      +[CDPContext(Account) preflightContext:];
    }

    mEMORY[0x1E698DC80]4 = [MEMORY[0x1E698DC80] sharedInstance];
    primaryAuthKitAccount = [mEMORY[0x1E698DC80]4 primaryAuthKitAccount];
    goto LABEL_36;
  }

  primaryAuthKitAccount = 0;
LABEL_34:
  mEMORY[0x1E698DC80]4 = _CDPLogSystem(v13);
  if (os_log_type_enabled(mEMORY[0x1E698DC80]4, OS_LOG_TYPE_DEBUG))
  {
    +[CDPContext(Account) preflightContext:];
  }

LABEL_36:

  if (primaryAuthKitAccount)
  {
    v35 = [v4 initWithAccount:primaryAuthKitAccount];
  }

  else
  {
    v36 = _CDPLogSystem(v34);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      +[CDPContext(Account) preflightContext:];
    }

    v35 = v4;
  }

  v19 = v35;

LABEL_42:

  return v19;
}

- (void)setPassword:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)contextForAccountWithAppleID:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)contextForAccountWithAppleID:.cold.2()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)contextForAccountWithAltDSID:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)contextForAccountWithAltDSID:.cold.2()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)contextForAccountWithDSID:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)contextForAccountWithDSID:.cold.2()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)init
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithAccount:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_6_0();
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)initWithAccount:.cold.2()
{
  OUTLINED_FUNCTION_8();
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_6_0();
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)initWithAccount:.cold.3()
{
  OUTLINED_FUNCTION_8();
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_6_0();
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)initWithAccount:.cold.4()
{
  OUTLINED_FUNCTION_8();
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_6_0();
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)initWithAccount:.cold.5()
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_6_0();
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)adpCohort
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "[CDPContext adpCohort]";
  v4 = 2112;
  selfCopy = self;
  _os_log_fault_impl(&dword_1DED99000, a2, OS_LOG_TYPE_FAULT, "%s: Unable to obtain the adpCohortForAccount because AKAccountManager (%@) doesn't respond to selector.", &v2, 0x16u);
}

- (void)akTrustedDeviceListChanged:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)isPrimaryAccount
{
  OUTLINED_FUNCTION_5_1(self, a2, 7.2225e-34);
  _os_log_error_impl(&dword_1DED99000, v3, OS_LOG_TYPE_ERROR, "isPrimaryAccount: Did not find account for %{mask.hash}@ we can't determine if the account is primary!", v4, 0x16u);
}

- (void)keychainSyncAllowedByServer
{
  OUTLINED_FUNCTION_5_1(self, a2, 7.2225e-34);
  _os_log_error_impl(&dword_1DED99000, v3, OS_LOG_TYPE_ERROR, "keychainSyncAllowedByServer: Did not find account for %{mask.hash}@ we can't determine if the account can use keychain!", v4, 0x16u);
}

- (void)_isLocalSecretCachedAcknowledgingInMemoryValue
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[CDPContext _isLocalSecretCachedAcknowledgingInMemoryValue]";
  _os_log_fault_impl(&dword_1DED99000, log, OS_LOG_TYPE_FAULT, "%s: Found a cached secret that was just an empty string.", &v1, 0xCu);
}

@end