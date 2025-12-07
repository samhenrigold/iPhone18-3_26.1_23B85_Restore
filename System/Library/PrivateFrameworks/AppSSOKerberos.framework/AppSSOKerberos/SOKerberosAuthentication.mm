@interface SOKerberosAuthentication
+ (void)savePacValues:(id)values atLogin:(BOOL)login;
+ (void)saveValuesForPlugins:(id)plugins;
- (BOOL)changePasswordWithContext:(id)context withError:(id *)error;
- (BOOL)refreshPacValuesWithContext:(id)context atLogin:(BOOL)login error:(id *)error;
- (BOOL)refreshPacValuesWithContext:(id)context credential:(gss_cred_id_t_desc_struct *)credential atLogin:(BOOL)login;
- (SOKerberosAuthentication)initWithRealm:(id)realm;
- (id)retrieveCachedSiteCodeFromCacheForBundleIdentifier:(id)identifier networkFingerprint:(id)fingerprint;
- (unint64_t)attemptKerberosWithContext:(id)context returningToken:(id *)token orError:(id *)error;
- (unint64_t)createNewCredentialUsingContext:(id)context returningCredential:(gss_cred_id_t_desc_struct *)credential orError:(id *)error;
- (unint64_t)findExistingCredentialUsingContext:(id)context returningCredential:(gss_cred_id_t_desc_struct *)credential orError:(id *)error;
- (unint64_t)mapErrorToKnownError:(id)error;
- (void)_determineSiteCodeUsingDispatchGroup:(id)group bundleIdentifier:(id)identifier auditTokenData:(id)data networkFingerprint:(id)fingerprint requireTLSForLDAP:(BOOL)p;
- (void)determineSiteCodeUsingContext:(id)context;
- (void)setSiteCodeUsingContext:(id)context;
- (void)triggerVPNIfNeededUsingRealm:(id)realm bundleIdentifier:(id)identifier auditToken:(id)token;
@end

@implementation SOKerberosAuthentication

- (SOKerberosAuthentication)initWithRealm:(id)realm
{
  realmCopy = realm;
  v15.receiver = self;
  v15.super_class = SOKerberosAuthentication;
  v6 = [(SOKerberosAuthentication *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_realm, realm);
    if (initWithRealm__onceToken != -1)
    {
      [SOKerberosAuthentication initWithRealm:];
    }

    v7->_siteDiscoveryInProgress = 0;
    v8 = objc_alloc_init(SOKerberosHelper);
    kerberosHelper = v7->_kerberosHelper;
    v7->_kerberosHelper = v8;

    v10 = objc_alloc_init(SOKeychainHelper);
    keychainHelper = v7->_keychainHelper;
    v7->_keychainHelper = v10;

    v12 = [[SOADSiteDiscovery alloc] initWithRealm:v7->_realm];
    siteDiscovery = v7->_siteDiscovery;
    v7->_siteDiscovery = v12;
  }

  return v7;
}

uint64_t __42__SOKerberosAuthentication_initWithRealm___block_invoke(uint64_t a1, uint64_t a2)
{
  _lock = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (unint64_t)attemptKerberosWithContext:(id)context returningToken:(id *)token orError:(id *)error
{
  contextCopy = context;
  v9 = SO_LOG_SOKerberosAuthentication(contextCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosAuthentication attemptKerberosWithContext:returningToken:orError:];
  }

  cred_handle = 0;
  minor_status = 0;
  realm = [contextCopy realm];
  callerBundleIdentifier = [contextCopy callerBundleIdentifier];
  auditToken = [contextCopy auditToken];
  [(SOKerberosAuthentication *)self triggerVPNIfNeededUsingRealm:realm bundleIdentifier:callerBundleIdentifier auditToken:auditToken];

  credentialUUID = [contextCopy credentialUUID];
  if (credentialUUID)
  {
    v14 = credentialUUID;
    refreshCredential = [contextCopy refreshCredential];

    if ((refreshCredential & 1) == 0)
    {
      v16 = _lock;
      objc_sync_enter(v16);
      impersonationBundleIdentifier = [contextCopy impersonationBundleIdentifier];

      if (impersonationBundleIdentifier)
      {
        [contextCopy impersonationBundleIdentifier];
      }

      else
      {
        [contextCopy callerBundleIdentifier];
      }
      v18 = ;
      HeimCredSetImpersonateBundle();

      kerberosHelper = [(SOKerberosAuthentication *)self kerberosHelper];
      credentialUUID2 = [contextCopy credentialUUID];
      cred_handle = [kerberosHelper acquireCredentialForUUID:credentialUUID2];

      HeimCredSetImpersonateBundle();
      objc_sync_exit(v16);

      if (cred_handle)
      {
        v22 = SO_LOG_SOKerberosAuthentication(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [SOKerberosAuthentication attemptKerberosWithContext:contextCopy returningToken:? orError:?];
        }
      }
    }
  }

  extensionData = [contextCopy extensionData];
  useSiteAutoDiscovery = [extensionData useSiteAutoDiscovery];

  if (useSiteAutoDiscovery)
  {
    networkIdentity = [contextCopy networkIdentity];
    [networkIdentity determineNetworkFingerprint];

    callerBundleIdentifier2 = [contextCopy callerBundleIdentifier];
    networkIdentity2 = [contextCopy networkIdentity];
    networkFingerprint = [networkIdentity2 networkFingerprint];
    v29 = [(SOKerberosAuthentication *)self retrieveCachedSiteCodeFromCacheForBundleIdentifier:callerBundleIdentifier2 networkFingerprint:networkFingerprint];

    if (!v29)
    {
      goto LABEL_18;
    }

    v31 = SO_LOG_SOKerberosAuthentication(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosAuthentication attemptKerberosWithContext:returningToken:orError:];
    }

    v30 = [contextCopy setSiteCode:v29];
    if (!cred_handle || (v30 = [v29 age], v32 > 86400.0))
    {
LABEL_18:
      v33 = SO_LOG_SOKerberosAuthentication(v30);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        [SOKerberosAuthentication attemptKerberosWithContext:returningToken:orError:];
      }

      [(SOKerberosAuthentication *)self determineSiteCodeUsingContext:contextCopy];
    }
  }

  userPrincipalName = [contextCopy userPrincipalName];
  if (!userPrincipalName || (v35 = userPrincipalName, [contextCopy userPrincipalName], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "isEqualToString:", &stru_285206D08), v36, v35, (v37 & 1) != 0))
  {
    v38 = 2;
    goto LABEL_25;
  }

  if (!cred_handle)
  {
    if ([contextCopy refreshCredential])
    {
      v40 = 0;
      v38 = 0;
      goto LABEL_46;
    }

    v41 = [(SOKerberosAuthentication *)self findExistingCredentialUsingContext:contextCopy returningCredential:&cred_handle orError:error];
    v38 = v41;
    if (v41 == 2)
    {
      v45 = SO_LOG_SOKerberosAuthentication(2);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        [SOKerberosAuthentication attemptKerberosWithContext:returningToken:orError:];
      }

      v40 = 0;
    }

    else
    {
      if (v41 != 4)
      {
        v40 = 0;
        goto LABEL_46;
      }

      v42 = SO_LOG_SOKerberosAuthentication(4);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        [SOKerberosAuthentication attemptKerberosWithContext:returningToken:orError:];
      }

      v43 = GSSCredentialCopyUUID(cred_handle);
      if (v43)
      {
        v44 = v43;
        v45 = CFUUIDCreateString(0, v43);
        CFRelease(v44);
        v46 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v45];
        [contextCopy setCredentialUUID:v46];
      }

      else
      {
        v45 = SO_LOG_SOKerberosAuthentication(0);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          [SOKerberosAuthentication attemptKerberosWithContext:contextCopy returningToken:? orError:?];
        }
      }

      v40 = 1;
    }

LABEL_46:
    if (!cred_handle)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v38 = 0;
  v40 = 0;
LABEL_47:
  if (![contextCopy refreshCredential])
  {
    goto LABEL_79;
  }

LABEL_48:
  extensionData2 = [contextCopy extensionData];
  usePlatformSSOTGT = [extensionData2 usePlatformSSOTGT];

  if (usePlatformSSOTGT)
  {
    if (([contextCopy returnCredentialOnly] & 1) == 0)
    {
      if (!error)
      {
LABEL_86:
        v38 = 7;
        goto LABEL_25;
      }

      invalidKerberosOperation = [MEMORY[0x277CCA9B8] invalidKerberosOperation];
LABEL_85:
      *error = invalidKerberosOperation;
      goto LABEL_86;
    }

    if ([contextCopy returnCredentialOnly])
    {
      extensionData3 = [contextCopy extensionData];
      usePlatformSSOTGT = [extensionData3 allowPlatformSSOAuthFallback];

      if ((usePlatformSSOTGT & 1) == 0)
      {
        if (!error)
        {
          goto LABEL_86;
        }

        goto LABEL_84;
      }
    }
  }

  password = [contextCopy password];
  if (password)
  {
    usePlatformSSOTGT = [contextCopy password];
    if (([usePlatformSSOTGT isEqualToString:&stru_285206D08] & 1) == 0)
    {

      goto LABEL_66;
    }
  }

  errorCopy = error;
  tokenCopy = token;
  extensionData4 = [contextCopy extensionData];
  certificateUUID = [extensionData4 certificateUUID];
  if (!certificateUUID || ([contextCopy extensionData], token = objc_claimAutoreleasedReturnValue(), objc_msgSend(token, "certificateUUID"), error = objc_claimAutoreleasedReturnValue(), objc_msgSend(error, "isEqualToString:", &stru_285206D08)))
  {
    pkinitPersistentRef = [contextCopy pkinitPersistentRef];
    v53 = [pkinitPersistentRef length] == 0;

    if (!certificateUUID)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v53 = 0;
  }

LABEL_62:
  if (password)
  {
  }

  error = errorCopy;
  token = tokenCopy;
  if (v53)
  {
    v38 = 1;
    goto LABEL_25;
  }

LABEL_66:
  extensionData5 = [contextCopy extensionData];
  if ([extensionData5 requireUserPresence])
  {
    extensionData6 = [contextCopy extensionData];
    certificateUUID2 = [extensionData6 certificateUUID];
    if (certificateUUID2)
    {
      v59 = certificateUUID2;
      keychainLAContext = [contextCopy keychainLAContext];

      if (!keychainLAContext)
      {
        v62 = SO_LOG_SOKerberosAuthentication(v61);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          [SOKerberosAuthentication attemptKerberosWithContext:returningToken:orError:];
        }

        v38 = 18;
        goto LABEL_25;
      }

      goto LABEL_74;
    }
  }

LABEL_74:
  [(SOKerberosAuthentication *)self setSiteCodeUsingContext:contextCopy];
  v38 = [(SOKerberosAuthentication *)self createNewCredentialUsingContext:contextCopy returningCredential:&cred_handle orError:error];
  v63 = SO_LOG_SOKerberosAuthentication(v38);
  v64 = os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG);
  if (v38 != 4)
  {
    if (v64)
    {
      [SOKerberosAuthentication attemptKerberosWithContext:returningToken:orError:];
    }

    if (*error)
    {
      v74 = SO_LOG_SOKerberosAuthentication(v73);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        [SOKerberosAuthentication attemptKerberosWithContext:returningToken:orError:];
      }
    }

    goto LABEL_25;
  }

  if (v64)
  {
    [SOKerberosAuthentication attemptKerberosWithContext:returningToken:orError:];
  }

  v65 = GSSCredentialCopyUUID(cred_handle);
  if (!v65)
  {
    v110 = SO_LOG_SOKerberosAuthentication(0);
    if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosAuthentication attemptKerberosWithContext:contextCopy returningToken:? orError:?];
    }

    if (!error)
    {
      goto LABEL_86;
    }

    invalidKerberosOperation = [MEMORY[0x277CCA9B8] sourceAppNotAllowed];
    goto LABEL_85;
  }

  v66 = v65;
  v67 = CFUUIDCreateString(0, v65);
  CFRelease(v66);
  v68 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v67];
  [contextCopy setCredentialUUID:v68];

  v40 = 1;
  v38 = 4;
LABEL_79:
  if (!cred_handle)
  {
    if (!error)
    {
      v38 = 7;
      goto LABEL_27;
    }

LABEL_84:
    invalidKerberosOperation = [MEMORY[0x277CCA9B8] credentialMissing];
    goto LABEL_85;
  }

  extensionData7 = [contextCopy extensionData];
  tokenCopy2 = token;
  if ([extensionData7 usePlatformSSOTGT])
  {
    currentSettings = [contextCopy currentSettings];
    dateExpirationChecked = [currentSettings dateExpirationChecked];
    if (dateExpirationChecked)
    {
      v72 = 0;
    }

    else
    {
      extensionData8 = [contextCopy extensionData];
      v72 = [extensionData8 performKerberosOnly] ^ 1;
    }
  }

  else
  {
    v72 = 0;
  }

  v77 = SO_LOG_SOKerberosAuthentication(v76);
  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosAuthentication attemptKerberosWithContext:contextCopy returningToken:? orError:?];
  }

  if (((v40 | v72) & 1) != 0 || ([contextCopy refreshCredential] & 1) != 0 || (objc_msgSend(contextCopy, "currentSettings"), v78 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v78, "dateNextPacRefresh"), v79 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v79, "timeIntervalSinceNow"), v81 = v80, v79, v78, v81 < 0.0))
  {
    v82 = _lock;
    objc_sync_enter(v82);
    impersonationBundleIdentifier2 = [contextCopy impersonationBundleIdentifier];

    if (impersonationBundleIdentifier2)
    {
      [contextCopy impersonationBundleIdentifier];
    }

    else
    {
      [contextCopy callerBundleIdentifier];
    }
    v84 = ;
    HeimCredSetImpersonateBundle();

    [(SOKerberosAuthentication *)self refreshPacValuesWithContext:contextCopy credential:cred_handle atLogin:v40 | v72];
    HeimCredSetImpersonateBundle();
    objc_sync_exit(v82);
  }

  [SOKerberosAuthentication saveValuesForPlugins:contextCopy];
  credentialUUID3 = [contextCopy credentialUUID];
  currentSettings2 = [contextCopy currentSettings];
  [currentSettings2 setCredentialUUID:credentialUUID3];

  userPrincipalName2 = [contextCopy userPrincipalName];
  currentSettings3 = [contextCopy currentSettings];
  [currentSettings3 setUserPrincipalName:userPrincipalName2];

  currentSettings4 = [contextCopy currentSettings];
  [currentSettings4 setUserCancelledLogin:0];

  currentSettings5 = [contextCopy currentSettings];
  [currentSettings5 setDateLoginCancelled:0];

  loginTimeStamp = [contextCopy loginTimeStamp];

  if (loginTimeStamp)
  {
    loginTimeStamp2 = [contextCopy loginTimeStamp];
    currentSettings6 = [contextCopy currentSettings];
    [currentSettings6 setDateLastLogin:loginTimeStamp2];
  }

  v95 = SO_LOG_SOKerberosAuthentication(v92);
  if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosAuthentication attemptKerberosWithContext:contextCopy returningToken:v95 orError:?];
  }

  extensionData9 = [contextCopy extensionData];
  if ([extensionData9 performKerberosOnly])
  {
    goto LABEL_115;
  }

  currentSettings7 = [contextCopy currentSettings];
  dateExpirationChecked2 = [currentSettings7 dateExpirationChecked];
  if (!dateExpirationChecked2)
  {

LABEL_115:
    goto LABEL_116;
  }

  v99 = dateExpirationChecked2;
  currentSettings8 = [contextCopy currentSettings];
  datePasswordLastChangedAtLogin = [currentSettings8 datePasswordLastChangedAtLogin];
  [contextCopy currentSettings];
  v102 = v118 = error;
  datePasswordLastChanged = [v102 datePasswordLastChanged];
  v116 = [datePasswordLastChangedAtLogin isEqualToDate:datePasswordLastChanged];

  error = v118;
  if ((v116 & 1) == 0)
  {
    [contextCopy setRefreshCredential:1];
    v38 = 16;
    goto LABEL_25;
  }

LABEL_116:
  returnCredentialOnly = [contextCopy returnCredentialOnly];
  if ((returnCredentialOnly & 1) == 0)
  {
    v105 = SO_LOG_SOKerberosAuthentication(returnCredentialOnly);
    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosAuthentication attemptKerberosWithContext:returningToken:orError:];
    }

    servicePrincipalName = [contextCopy servicePrincipalName];

    if (servicePrincipalName)
    {
      v107 = _lock;
      objc_sync_enter(v107);
      impersonationBundleIdentifier3 = [contextCopy impersonationBundleIdentifier];

      if (impersonationBundleIdentifier3)
      {
        [contextCopy impersonationBundleIdentifier];
      }

      else
      {
        [contextCopy callerBundleIdentifier];
      }
      v109 = ;
      HeimCredSetImpersonateBundle();

      kerberosHelper2 = [(SOKerberosAuthentication *)self kerberosHelper];
      v112 = cred_handle;
      servicePrincipalName2 = [contextCopy servicePrincipalName];
      LODWORD(v112) = [kerberosHelper2 authenticate:v112 toServer:servicePrincipalName2 returningToken:tokenCopy2 andError:error];

      HeimCredSetImpersonateBundle();
      HeimCredSetImpersonateAuditToken();
      objc_sync_exit(v107);

      if (v112 && *tokenCopy2)
      {
        v115 = SO_LOG_SOKerberosAuthentication(v114);
        if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
        {
          [SOKerberosAuthentication attemptKerberosWithContext:tokenCopy2 returningToken:? orError:?];
        }

        v38 = 0;
      }

      else if (*error)
      {
        v38 = [(SOKerberosAuthentication *)self mapErrorToKnownError:?];
      }

      goto LABEL_25;
    }

    if (!error)
    {
      goto LABEL_86;
    }

    invalidKerberosOperation = [MEMORY[0x277CCA9B8] servicePrincipalNameMissing];
    goto LABEL_85;
  }

  v38 = 4;
LABEL_25:
  if (cred_handle)
  {
    gss_release_cred(&minor_status, &cred_handle);
  }

LABEL_27:

  return v38;
}

+ (void)saveValuesForPlugins:(id)plugins
{
  pluginsCopy = plugins;
  v4 = SO_LOG_SOKerberosAuthentication(pluginsCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[SOKerberosAuthentication saveValuesForPlugins:];
  }

  v5 = [SOKerberosHeimdalPluginSettings alloc];
  realm = [pluginsCopy realm];
  v7 = [(SOKerberosHeimdalPluginSettings *)v5 initWithRealm:realm];

  siteCode = [pluginsCopy siteCode];
  code = [siteCode code];
  [(SOKerberosHeimdalPluginSettings *)v7 setSiteCode:code];

  credentialUUID = [pluginsCopy credentialUUID];

  [(SOKerberosHeimdalPluginSettings *)v7 setCurrentCredential:credentialUUID];
}

+ (void)savePacValues:(id)values atLogin:(BOOL)login
{
  loginCopy = login;
  valuesCopy = values;
  currentSettings = [valuesCopy currentSettings];
  v7 = currentSettings;
  if (loginCopy)
  {
    [currentSettings setDateExpirationChecked:0];
    [v7 setPasswordNeverExpires:0];
    [v7 setDatePasswordExpires:0];
    [v7 setDatePasswordLastChanged:0];
    [v7 setDateADPasswordCanChange:0];
    [v7 setDatePasswordLastChangedAtLogin:0];
  }

  pacData = [valuesCopy pacData];
  if (pacData)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [v7 setDateExpirationChecked:date];

    [v7 setPasswordNeverExpires:{objc_msgSend(pacData, "passwordNeverExpires")}];
    passwordMustChange = [pacData passwordMustChange];
    [v7 setDatePasswordExpires:passwordMustChange];

    passwordLastSet = [pacData passwordLastSet];
    [v7 setDatePasswordLastChanged:passwordLastSet];

    passwordCanChange = [pacData passwordCanChange];
    [v7 setDateADPasswordCanChange:passwordCanChange];

    homeDirectory = [pacData homeDirectory];
    [v7 setNetworkHomeDirectory:homeDirectory];

    if (loginCopy)
    {
      datePasswordLastChanged = [v7 datePasswordLastChanged];
      [v7 setDatePasswordLastChangedAtLogin:datePasswordLastChanged];
    }

    datePasswordExpires = [v7 datePasswordExpires];
    [datePasswordExpires timeIntervalSinceNow];
    if (v16 >= 0.0 && v16 >= 86400.0)
    {
      if (v16 >= 259200.0)
      {
        v18 = MEMORY[0x277CBEAA8];
        if (v16 >= 604800.0)
        {
          v19 = 10800.0;
        }

        else
        {
          v19 = 3600.0;
        }
      }

      else
      {
        v18 = MEMORY[0x277CBEAA8];
        v19 = 900.0;
      }

      date2 = [v18 dateWithTimeIntervalSinceNow:v19];
    }

    else
    {
      date2 = [MEMORY[0x277CBEAA8] date];
    }

    v20 = date2;
    [v7 setDateNextPacRefresh:date2];

    v22 = SO_LOG_SOKerberosAuthentication(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosAuthentication savePacValues:v7 atLogin:?];
    }
  }
}

- (void)setSiteCodeUsingContext:(id)context
{
  contextCopy = context;
  v5 = SO_LOG_SOKerberosAuthentication(contextCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosAuthentication setSiteCodeUsingContext:];
  }

  extensionData = [contextCopy extensionData];
  useSiteAutoDiscovery = [extensionData useSiteAutoDiscovery];

  if (useSiteAutoDiscovery)
  {
    siteCodeGroup = [contextCopy siteCodeGroup];
    v9 = dispatch_time(0, 15000000000);
    v10 = dispatch_group_wait(siteCodeGroup, v9);

    if (v10 >= 1)
    {
      v12 = SO_LOG_SOKerberosAuthentication(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [SOKerberosExtensionProcess handleGetSiteCode:];
      }
    }

    callerBundleIdentifier = [contextCopy callerBundleIdentifier];
    networkIdentity = [contextCopy networkIdentity];
    networkFingerprint = [networkIdentity networkFingerprint];
    v16 = [(SOKerberosAuthentication *)self retrieveCachedSiteCodeFromCacheForBundleIdentifier:callerBundleIdentifier networkFingerprint:networkFingerprint];

    v18 = SO_LOG_SOKerberosAuthentication(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosAuthentication attemptKerberosWithContext:returningToken:orError:];
    }

    [contextCopy setSiteCode:v16];
  }
}

- (id)retrieveCachedSiteCodeFromCacheForBundleIdentifier:(id)identifier networkFingerprint:(id)fingerprint
{
  fingerprintCopy = fingerprint;
  v6 = [SOKerberosRealmSettings alloc];
  realm = [(SOKerberosAuthentication *)self realm];
  v8 = [(SOKerberosRealmSettings *)v6 initWithRealm:realm];

  v10 = SO_LOG_SOKerberosAuthentication(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosAuthentication retrieveCachedSiteCodeFromCacheForBundleIdentifier:networkFingerprint:];
  }

  v11 = [(SOKerberosRealmSettings *)v8 siteCodeForNetworkFingerprint:fingerprintCopy];

  v13 = SO_LOG_SOKerberosAuthentication(v12);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
  if (v11)
  {
    if (v14)
    {
      [SOKerberosAuthentication retrieveCachedSiteCodeFromCacheForBundleIdentifier:v11 networkFingerprint:?];
    }

    v15 = v11;
  }

  else
  {
    if (v14)
    {
      [SOKerberosAuthentication retrieveCachedSiteCodeFromCacheForBundleIdentifier:networkFingerprint:];
    }
  }

  return v11;
}

- (void)determineSiteCodeUsingContext:(id)context
{
  contextCopy = context;
  siteCodeGroup = [contextCopy siteCodeGroup];
  callerBundleIdentifier = [contextCopy callerBundleIdentifier];
  auditToken = [contextCopy auditToken];
  networkIdentity = [contextCopy networkIdentity];
  networkFingerprint = [networkIdentity networkFingerprint];
  extensionData = [contextCopy extensionData];

  -[SOKerberosAuthentication _determineSiteCodeUsingDispatchGroup:bundleIdentifier:auditTokenData:networkFingerprint:requireTLSForLDAP:](self, "_determineSiteCodeUsingDispatchGroup:bundleIdentifier:auditTokenData:networkFingerprint:requireTLSForLDAP:", siteCodeGroup, callerBundleIdentifier, auditToken, networkFingerprint, [extensionData requireTLSForLDAP]);
}

- (void)_determineSiteCodeUsingDispatchGroup:(id)group bundleIdentifier:(id)identifier auditTokenData:(id)data networkFingerprint:(id)fingerprint requireTLSForLDAP:(BOOL)p
{
  groupCopy = group;
  identifierCopy = identifier;
  dataCopy = data;
  fingerprintCopy = fingerprint;
  v16 = [SOKerberosRealmSettings alloc];
  realm = [(SOKerberosAuthentication *)self realm];
  v18 = [(SOKerberosRealmSettings *)v16 initWithRealm:realm];

  if (![(SOKerberosAuthentication *)self siteDiscoveryInProgress])
  {
    [(SOKerberosAuthentication *)self setSiteDiscoveryInProgress:1];
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__0;
    v32 = __Block_byref_object_dispose__0;
    v33 = groupCopy;
    dispatch_group_enter(v29[5]);
    v19 = v29[5];
    v20 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __134__SOKerberosAuthentication__determineSiteCodeUsingDispatchGroup_bundleIdentifier_auditTokenData_networkFingerprint_requireTLSForLDAP___block_invoke;
    block[3] = &unk_278C93268;
    block[4] = self;
    v22 = identifierCopy;
    v23 = dataCopy;
    pCopy = p;
    v24 = fingerprintCopy;
    v25 = v18;
    v26 = &v28;
    dispatch_group_async(v19, v20, block);

    _Block_object_dispose(&v28, 8);
  }
}

void __134__SOKerberosAuthentication__determineSiteCodeUsingDispatchGroup_bundleIdentifier_auditTokenData_networkFingerprint_requireTLSForLDAP___block_invoke(uint64_t a1)
{
  v2 = SO_LOG_SOKerberosAuthentication(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __134__SOKerberosAuthentication__determineSiteCodeUsingDispatchGroup_bundleIdentifier_auditTokenData_networkFingerprint_requireTLSForLDAP___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) siteDiscovery];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 80);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __134__SOKerberosAuthentication__determineSiteCodeUsingDispatchGroup_bundleIdentifier_auditTokenData_networkFingerprint_requireTLSForLDAP___block_invoke_11;
  v9[3] = &unk_278C93240;
  v10 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  v13 = *(a1 + 72);
  [v3 performLDAPPingUsingSite:0 bundleIdentifier:v4 auditTokenData:v5 requireTLSForLDAP:v6 inBackground:0 completion:v9];
}

void __134__SOKerberosAuthentication__determineSiteCodeUsingDispatchGroup_bundleIdentifier_auditTokenData_networkFingerprint_requireTLSForLDAP___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SO_LOG_SOKerberosAuthentication(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __134__SOKerberosAuthentication__determineSiteCodeUsingDispatchGroup_bundleIdentifier_auditTokenData_networkFingerprint_requireTLSForLDAP___block_invoke_11_cold_1();
  }

  if (*(a1 + 32))
  {
    if (v3)
    {
      v6 = [(__CFString *)v3 isEqualToString:&stru_285206D08];
      v7 = [SOSiteCode alloc];
      if (v6)
      {
        v8 = @"no site code";
        v9 = *(a1 + 32);
      }

      else
      {
        v9 = *(a1 + 32);
        v8 = v3;
      }

      v10 = [(SOSiteCode *)v7 initWithSiteCode:v8 forNetworkFingerprint:v9];
      [*(a1 + 40) cacheSiteCode:v10];
    }

    v11 = SO_LOG_SOKerberosAuthentication(v5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __134__SOKerberosAuthentication__determineSiteCodeUsingDispatchGroup_bundleIdentifier_auditTokenData_networkFingerprint_requireTLSForLDAP___block_invoke_11_cold_2();
    }
  }

  [*(a1 + 48) setSiteDiscoveryInProgress:0];
  dispatch_group_leave(*(*(*(a1 + 56) + 8) + 40));
}

- (unint64_t)createNewCredentialUsingContext:(id)context returningCredential:(gss_cred_id_t_desc_struct *)credential orError:(id *)error
{
  v101[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v9 = SO_LOG_SOKerberosAuthentication(contextCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosAuthentication createNewCredentialUsingContext:returningCredential:orError:];
  }

  v11 = SO_LOG_SOKerberosAuthentication(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosAuthentication createNewCredentialUsingContext:contextCopy returningCredential:? orError:?];
  }

  v12 = [MEMORY[0x277CBEC10] mutableCopy];
  extensionData = [contextCopy extensionData];
  certificateUUID = [extensionData certificateUUID];
  if (certificateUUID)
  {
    v15 = certificateUUID;
    useKerberosPasswordInsteadOfMDMIdentity = [contextCopy useKerberosPasswordInsteadOfMDMIdentity];

    if ((useKerberosPasswordInsteadOfMDMIdentity & 1) == 0)
    {
      v18 = SO_LOG_SOKerberosAuthentication(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [SOKerberosAuthentication createNewCredentialUsingContext:returningCredential:orError:];
      }

      keychainHelper = [(SOKerberosAuthentication *)self keychainHelper];
      extensionData2 = [contextCopy extensionData];
      certificateUUID2 = [extensionData2 certificateUUID];
      v22 = [keychainHelper identityForUUIDString:certificateUUID2];

      array = SO_LOG_SOKerberosAuthentication(v23);
      v25 = os_log_type_enabled(array, OS_LOG_TYPE_DEBUG);
      if (!v22)
      {
        if (v25)
        {
          [SOKerberosAuthentication createNewCredentialUsingContext:contextCopy returningCredential:? orError:?];
        }

        v40 = 15;
        goto LABEL_80;
      }

      if (v25)
      {
        [SOKerberosAuthentication createNewCredentialUsingContext:v22 returningCredential:contextCopy orError:?];
      }

      [v12 setObject:v22 forKeyedSubscript:@"kGSSICCertificate"];
      goto LABEL_38;
    }
  }

  else
  {
  }

  pkinitPersistentRef = [contextCopy pkinitPersistentRef];
  v27 = [pkinitPersistentRef length];

  if (v27)
  {
    pkinitPersistentRef2 = [contextCopy pkinitPersistentRef];
    certificateTokenID = [contextCopy certificateTokenID];
    array = [SOSmartcard searchForCachedIdentityPersistentRef:pkinitPersistentRef2 tokenID:certificateTokenID];

    if ([array count])
    {
      v30 = [array objectForKeyedSubscript:*MEMORY[0x277CDBEC0]];

      if (v30)
      {
        smartCardLAContext = [contextCopy smartCardLAContext];

        if (!smartCardLAContext)
        {
          v32 = objc_alloc_init(MEMORY[0x277CD4790]);
          [contextCopy setSmartCardLAContext:v32];

          smartCardLAContext2 = [contextCopy smartCardLAContext];
          [smartCardLAContext2 setOptionCallerName:@"Kerberos"];
        }

        smartCardLAContext3 = [contextCopy smartCardLAContext];
        v22 = [SOSmartcard getLocalAuthIdentityForCert:array withLAContext:smartCardLAContext3];

        if (!v22)
        {
          goto LABEL_69;
        }

        goto LABEL_31;
      }

      v41 = *MEMORY[0x277CDC5F0];
      v42 = [array objectForKeyedSubscript:*MEMORY[0x277CDC5F0]];

      if (!v42)
      {
LABEL_69:
        v39 = SO_LOG_SOKerberosAuthentication(v35);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          [SOKerberosAuthentication createNewCredentialUsingContext:contextCopy returningCredential:? orError:?];
        }

        v40 = 6;
        goto LABEL_72;
      }

      keychainHelper2 = [(SOKerberosAuthentication *)self keychainHelper];
      v44 = [array objectForKeyedSubscript:v41];
      v22 = [keychainHelper2 identityForPersistentRef:v44];

      if (v22)
      {
LABEL_31:
        v45 = SO_LOG_SOKerberosAuthentication(v35);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          [SOKerberosAuthentication createNewCredentialUsingContext:v22 returningCredential:contextCopy orError:?];
        }

        [v12 setObject:v22 forKeyedSubscript:@"kGSSICCertificate"];
        smartCardLAContext4 = [contextCopy smartCardLAContext];

        if (smartCardLAContext4)
        {
          v48 = SO_LOG_SOKerberosAuthentication(v47);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            [SOKerberosAuthentication createNewCredentialUsingContext:contextCopy returningCredential:? orError:?];
          }

          smartCardLAContext5 = [contextCopy smartCardLAContext];
          [v12 setObject:smartCardLAContext5 forKeyedSubscript:@"kGSSICAuthenticationContext"];
        }

        goto LABEL_38;
      }

      v39 = SO_LOG_SOKerberosAuthentication(v35);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [SOKerberosAuthentication createNewCredentialUsingContext:returningCredential:orError:];
      }
    }

    else
    {
      v39 = SO_LOG_SOKerberosAuthentication(0);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        [SOKerberosAuthentication createNewCredentialUsingContext:contextCopy returningCredential:? orError:?];
      }
    }

    v40 = 3;
LABEL_72:

    goto LABEL_80;
  }

  password = [contextCopy password];

  if (!password)
  {
    array = SO_LOG_SOKerberosAuthentication(v37);
    if (os_log_type_enabled(array, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosAuthentication createNewCredentialUsingContext:returningCredential:orError:];
    }

    v40 = 1;
    goto LABEL_80;
  }

  password2 = [contextCopy password];
  [v12 setObject:password2 forKeyedSubscript:@"kGSSICPassword"];

  v22 = 0;
LABEL_38:
  cacheName = [contextCopy cacheName];

  if (cacheName)
  {
    v51 = MEMORY[0x277CCACA8];
    cacheName2 = [contextCopy cacheName];
    v53 = [v51 stringWithFormat:@"API:%@", cacheName2];
    [v12 setObject:v53 forKeyedSubscript:@"kGSSICKerberosCacheName"];

    v55 = SO_LOG_SOKerberosAuthentication(v54);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosAuthentication createNewCredentialUsingContext:v12 returningCredential:? orError:?];
    }
  }

  cf = v22;
  credentialCopy = credential;
  selfCopy = self;
  siteCode = [contextCopy siteCode];
  code = [siteCode code];
  if (!code)
  {
    goto LABEL_46;
  }

  v60 = code;
  siteCode2 = [contextCopy siteCode];
  [siteCode2 code];
  v63 = v62 = error;
  v64 = [v63 isEqualToString:@"no site code"];

  error = v62;
  if ((v64 & 1) == 0)
  {
    siteCode3 = [contextCopy siteCode];
    code2 = [siteCode3 code];
    [v12 setObject:code2 forKeyedSubscript:@"kGSSICSiteName"];

    siteCode = SO_LOG_SOKerberosAuthentication(v67);
    if (os_log_type_enabled(siteCode, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosAuthentication createNewCredentialUsingContext:v12 returningCredential:? orError:?];
    }

LABEL_46:
  }

  extensionData3 = [contextCopy extensionData];
  credentialBundleIdACL = [extensionData3 credentialBundleIdACL];
  if (credentialBundleIdACL || ([contextCopy extensionData], credentialBundleIdACL = objc_claimAutoreleasedReturnValue(), (objc_msgSend(credentialBundleIdACL, "includeManagedAppsInBundleIdACL") & 1) != 0))
  {
  }

  else
  {
    extensionData4 = [contextCopy extensionData];
    includeKerberosAppsInBundleIdACL = [extensionData4 includeKerberosAppsInBundleIdACL];

    if ((includeKerberosAppsInBundleIdACL & 1) == 0)
    {
      array = &unk_28520B988;
      goto LABEL_54;
    }
  }

  array = [MEMORY[0x277CBEB18] array];
  extensionData5 = [contextCopy extensionData];
  credentialBundleIdACL2 = [extensionData5 credentialBundleIdACL];
  v72 = [credentialBundleIdACL2 count];

  if (v72)
  {
    extensionData6 = [contextCopy extensionData];
    credentialBundleIdACL3 = [extensionData6 credentialBundleIdACL];
    [array addObjectsFromArray:credentialBundleIdACL3];
  }

  extensionData7 = [contextCopy extensionData];
  includeManagedAppsInBundleIdACL = [extensionData7 includeManagedAppsInBundleIdACL];

  if (includeManagedAppsInBundleIdACL)
  {
    [array addObject:@"com.apple.private.gssapi.allowmanagedapps"];
  }

LABEL_54:
  v77 = SO_LOG_SOKerberosAuthentication([v12 setObject:array forKeyedSubscript:@"kGSSICAppIdentifierACL"]);
  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosAuthentication createNewCredentialUsingContext:returningCredential:orError:];
  }

  impersonationBundleIdentifier = [contextCopy impersonationBundleIdentifier];

  if (impersonationBundleIdentifier)
  {
    v100 = @"kGSSICAppleSourceAppSigningIdentity";
    impersonationBundleIdentifier2 = [contextCopy impersonationBundleIdentifier];
    v101[0] = impersonationBundleIdentifier2;
    v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:&v100 count:1];
    [v12 setObject:v80 forKeyedSubscript:@"kGSSICAppleSourceApp"];

    v82 = SO_LOG_SOKerberosAuthentication(v81);
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosAuthentication createNewCredentialUsingContext:v12 returningCredential:? orError:?];
    }

LABEL_62:

    goto LABEL_63;
  }

  callerBundleIdentifier = [contextCopy callerBundleIdentifier];

  if (callerBundleIdentifier)
  {
    v98 = @"kGSSICAppleSourceAppSigningIdentity";
    callerBundleIdentifier2 = [contextCopy callerBundleIdentifier];
    v99 = callerBundleIdentifier2;
    v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
    [v12 setObject:v85 forKeyedSubscript:@"kGSSICAppleSourceApp"];

    v82 = SO_LOG_SOKerberosAuthentication(v86);
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosAuthentication createNewCredentialUsingContext:v12 returningCredential:? orError:?];
    }

    goto LABEL_62;
  }

LABEL_63:
  kerberosHelper = [(SOKerberosAuthentication *)selfCopy kerberosHelper];
  userPrincipalName = [contextCopy userPrincipalName];
  *credentialCopy = [kerberosHelper createCredential:userPrincipalName withOptions:v12 andError:error];

  if (*credentialCopy)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [contextCopy setLoginTimeStamp:date];

    minor_status = 0;
    input_name = GSSCredentialCopyName(*credentialCopy);
    DisplayString = GSSNameCreateDisplayString(input_name);
    gss_release_name(&minor_status, &input_name);
    [contextCopy setUserPrincipalNameAfterAuth:DisplayString];

    v40 = 4;
    v91 = cf;
    if (!cf)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  v91 = cf;
  if (*error)
  {
    v40 = [(SOKerberosAuthentication *)selfCopy mapErrorToKnownError:?];
    if (!cf)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  v40 = 5;
  if (cf)
  {
LABEL_79:
    CFRelease(v91);
  }

LABEL_80:

  return v40;
}

- (unint64_t)findExistingCredentialUsingContext:(id)context returningCredential:(gss_cred_id_t_desc_struct *)credential orError:(id *)error
{
  contextCopy = context;
  v8 = SO_LOG_SOKerberosAuthentication(contextCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosAuthentication findExistingCredentialUsingContext:returningCredential:orError:];
  }

  v10 = SO_LOG_SOKerberosAuthentication(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosAuthentication findExistingCredentialUsingContext:contextCopy returningCredential:? orError:?];
  }

  v11 = _lock;
  objc_sync_enter(v11);
  impersonationBundleIdentifier = [contextCopy impersonationBundleIdentifier];

  if (impersonationBundleIdentifier)
  {
    [contextCopy impersonationBundleIdentifier];
  }

  else
  {
    [contextCopy callerBundleIdentifier];
  }
  v13 = ;
  HeimCredSetImpersonateBundle();

  kerberosHelper = [(SOKerberosAuthentication *)self kerberosHelper];
  userPrincipalName = [contextCopy userPrincipalName];
  *credential = [kerberosHelper acquireCredentialForUPN:userPrincipalName];

  HeimCredSetImpersonateBundle();
  objc_sync_exit(v11);

  if (*credential)
  {
    v16 = 4;
  }

  else
  {
    v16 = 5;
  }

  return v16;
}

- (BOOL)changePasswordWithContext:(id)context withError:(id *)error
{
  contextCopy = context;
  v7 = SO_LOG_SOKerberosAuthentication(contextCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosAuthentication changePasswordWithContext:contextCopy withError:?];
  }

  realm = [contextCopy realm];
  callerBundleIdentifier = [contextCopy callerBundleIdentifier];
  auditToken = [contextCopy auditToken];
  [(SOKerberosAuthentication *)self triggerVPNIfNeededUsingRealm:realm bundleIdentifier:callerBundleIdentifier auditToken:auditToken];

  v11 = _lock;
  objc_sync_enter(v11);
  impersonationBundleIdentifier = [contextCopy impersonationBundleIdentifier];

  if (impersonationBundleIdentifier)
  {
    [contextCopy impersonationBundleIdentifier];
  }

  else
  {
    [contextCopy callerBundleIdentifier];
  }
  v13 = ;
  HeimCredSetImpersonateBundle();

  kerberosHelper = [(SOKerberosAuthentication *)self kerberosHelper];
  userPrincipalName = [contextCopy userPrincipalName];
  realm2 = [contextCopy realm];
  password = [contextCopy password];
  changedPassword = [contextCopy changedPassword];
  v19 = [kerberosHelper changePasswordForUPN:userPrincipalName realm:realm2 withOldPassword:password withNewPassword:changedPassword withError:error];

  HeimCredSetImpersonateBundle();
  HeimCredSetImpersonateAuditToken();
  objc_sync_exit(v11);

  v21 = SO_LOG_SOKerberosAuthentication(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosAuthentication changePasswordWithContext:withError:];
  }

  if (*error)
  {
    v23 = SO_LOG_SOKerberosAuthentication(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosAuthentication changePasswordWithContext:error withError:?];
    }
  }

  return v19;
}

- (BOOL)refreshPacValuesWithContext:(id)context atLogin:(BOOL)login error:(id *)error
{
  loginCopy = login;
  contextCopy = context;
  v9 = SO_LOG_SOKerberosAuthentication(contextCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosAuthentication refreshPacValuesWithContext:atLogin:error:];
  }

  cred_handle = 0;
  minor_status = 0;
  credentialUUID = [contextCopy credentialUUID];

  if (!credentialUUID || (-[SOKerberosAuthentication kerberosHelper](self, "kerberosHelper"), v11 = objc_claimAutoreleasedReturnValue(), [contextCopy credentialUUID], v12 = objc_claimAutoreleasedReturnValue(), cred_handle = objc_msgSend(v11, "acquireCredentialForUUID:", v12), v12, v11, !cred_handle))
  {
    v13 = [(SOKerberosAuthentication *)self createNewCredentialUsingContext:contextCopy returningCredential:&cred_handle orError:error];
    if (v13 != 4)
    {
      if (*error)
      {
        v14 = SO_LOG_SOKerberosAuthentication(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [SOKerberosAuthentication refreshPacValuesWithContext:atLogin:error:];
        }
      }
    }
  }

  v15 = [(SOKerberosAuthentication *)self refreshPacValuesWithContext:contextCopy credential:cred_handle atLogin:loginCopy];
  if (cred_handle)
  {
    gss_release_cred(&minor_status, &cred_handle);
  }

  return v15;
}

- (BOOL)refreshPacValuesWithContext:(id)context credential:(gss_cred_id_t_desc_struct *)credential atLogin:(BOOL)login
{
  loginCopy = login;
  contextCopy = context;
  v9 = SO_LOG_SOKerberosAuthentication(contextCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosAuthentication refreshPacValuesWithContext:loginCopy credential:self atLogin:v9];
  }

  extensionData = [contextCopy extensionData];
  performKerberosOnly = [extensionData performKerberosOnly];

  if (performKerberosOnly)
  {
    currentSettings = [contextCopy currentSettings];
    [currentSettings setDateExpirationChecked:0];
    [currentSettings setPasswordNeverExpires:0];
    [currentSettings setDatePasswordExpires:0];
    [currentSettings setDatePasswordLastChanged:0];
    [currentSettings setDateADPasswordCanChange:0];
    [currentSettings setDatePasswordLastChangedAtLogin:0];
    [currentSettings setNetworkHomeDirectory:0];
LABEL_9:
    v18 = 1;
    goto LABEL_13;
  }

  kerberosHelper = [(SOKerberosAuthentication *)self kerberosHelper];
  v23 = 0;
  v14 = [kerberosHelper getPACForCred:credential pac:&v23];
  currentSettings = v23;

  v16 = SO_LOG_SOKerberosAuthentication(v15);
  v17 = v16;
  if (v14)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosAuthentication refreshPacValuesWithContext:credential:atLogin:];
    }

    [contextCopy setPacData:currentSettings];
    [SOKerberosAuthentication savePacValues:contextCopy atLogin:loginCopy];
    goto LABEL_9;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [SOKerberosAuthentication refreshPacValuesWithContext:credential:atLogin:];
  }

  v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
  currentSettings2 = [contextCopy currentSettings];
  [currentSettings2 setDatePasswordLastChanged:v19];

  currentSettings3 = [contextCopy currentSettings];
  [currentSettings3 setDateExpirationChecked:0];

  v18 = 0;
LABEL_13:

  return v18;
}

- (unint64_t)mapErrorToKnownError:(id)error
{
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"kGSSMinorErrorCode"];

  v6 = [MEMORY[0x277CCABB0] numberWithLong:-1765328361];
  v7 = [v5 isEqualToNumber:v6];

  if (v7)
  {
    v8 = 8;
  }

  else
  {
    v9 = [MEMORY[0x277CCABB0] numberWithLong:-1765328360];
    v10 = [v5 isEqualToNumber:v9];

    if (v10)
    {
      v8 = 10;
    }

    else
    {
      v11 = [MEMORY[0x277CCABB0] numberWithLong:-1765328378];
      v12 = [v5 isEqualToNumber:v11];

      if (v12)
      {
        v8 = 11;
      }

      else
      {
        v13 = [MEMORY[0x277CCABB0] numberWithLong:-1765328366];
        v14 = [v5 isEqualToNumber:v13];

        if (v14)
        {
          v8 = 9;
        }

        else
        {
          v15 = [MEMORY[0x277CCABB0] numberWithLong:-1765328228];
          v16 = [v5 isEqualToNumber:v15];

          if (v16)
          {
            v8 = 12;
          }

          else
          {
            v17 = [MEMORY[0x277CCABB0] numberWithLong:-1765328165];
            v18 = [v5 isEqualToNumber:v17];

            if (v18)
            {
              v8 = 13;
            }

            else
            {
              v19 = [MEMORY[0x277CCABB0] numberWithLong:-1765328370];
              v20 = [v5 isEqualToNumber:v19];

              if (v20)
              {
                v8 = 14;
              }

              else
              {
                v21 = [MEMORY[0x277CCABB0] numberWithLong:-1765328377];
                v22 = [v5 isEqualToNumber:v21];

                if (v22)
                {
                  v8 = 17;
                }

                else
                {
                  userInfo2 = [errorCopy userInfo];
                  v24 = [userInfo2 objectForKeyedSubscript:@"kGSSMechanism"];

                  if ([v5 isEqualToNumber:&unk_28520B9D0] && objc_msgSend(errorCopy, "code") == 0x10000 && (objc_msgSend(v24, "isEqualToString:", @"SPNEGO") & 1) != 0)
                  {
                    v8 = 17;
                  }

                  else
                  {
                    v8 = 7;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v8;
}

- (void)triggerVPNIfNeededUsingRealm:(id)realm bundleIdentifier:(id)identifier auditToken:(id)token
{
  v47 = *MEMORY[0x277D85DE8];
  realmCopy = realm;
  identifierCopy = identifier;
  tokenCopy = token;
  v9 = SO_LOG_SOKerberosAuthentication(tokenCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosAuthentication triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:];
  }

  v10 = realmCopy;
  [realmCopy UTF8String];
  srv = nw_endpoint_create_srv();
  v12 = MEMORY[0x245CB78B0]();
  xarray = xpc_array_create(0, 0);
  xpc_array_set_string(xarray, 0xFFFFFFFFFFFFFFFFLL, "NetworkExtension");
  v13 = xpc_array_create(0, 0);
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "VPN");
  v14 = nw_parameters_set_required_netagent_classes();
  if (identifierCopy)
  {
    v15 = SO_LOG_SOKerberosAuthentication(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosAuthentication triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:];
    }

    v16 = identifierCopy;
    [identifierCopy UTF8String];
    nw_parameters_set_source_application_by_bundle_id();
    v41 = 0u;
    v42 = 0u;
    if (tokenCopy)
    {
      v17 = [MEMORY[0x277CEBF10] auditTokenFromData:tokenCopy auditToken:&v41];
      if (v17)
      {
        v18 = SO_LOG_SOKerberosAuthentication(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [SOKerberosAuthentication triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:];
        }

        v37 = v41;
        v38 = v42;
        nw_parameters_set_source_application();
      }
    }
  }

  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  v20 = nw_path_evaluator_copy_path();
  v21 = SO_LOG_SOKerberosAuthentication(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosAuthentication triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:];
  }

  v45 = 0;
  v46 = 0;
  vpn_config_id = nw_path_get_vpn_config_id();
  if (vpn_config_id)
  {
    is_per_app_vpn = nw_path_is_per_app_vpn();
    v24 = is_per_app_vpn;
    v25 = SO_LOG_SOKerberosAuthentication(is_per_app_vpn);
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
    if (v24)
    {
      if (v26)
      {
        [SOKerberosAuthentication triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:];
      }
    }

    else if (v26)
    {
      [SOKerberosAuthentication triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:];
    }

    ne_session_create();
    *&v41 = 0;
    *(&v41 + 1) = &v41;
    *&v42 = 0x3032000000;
    *(&v42 + 1) = __Block_byref_object_copy__0;
    v43 = __Block_byref_object_dispose__0;
    v44 = dispatch_semaphore_create(0);
    *&v37 = 0;
    *(&v37 + 1) = &v37;
    *&v38 = 0x3032000000;
    *(&v38 + 1) = __Block_byref_object_copy__0;
    v39 = __Block_byref_object_dispose__0;
    v40 = dispatch_semaphore_create(0);
    v28 = dispatch_get_global_queue(0, 0);
    ne_session_set_event_handler();

    v30 = SO_LOG_SOKerberosAuthentication(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosAuthentication triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:];
    }

    ne_session_start();
    v31 = *(*(&v41 + 1) + 40);
    v32 = dispatch_time(0, 120000000000);
    dispatch_semaphore_wait(v31, v32);
    ne_session_cancel();
    v33 = *(*(&v37 + 1) + 40);
    v34 = dispatch_time(0, 2000000000);
    dispatch_semaphore_wait(v33, v34);
    ne_session_release();
    _Block_object_dispose(&v37, 8);

    _Block_object_dispose(&v41, 8);
  }

  else
  {
    v27 = SO_LOG_SOKerberosAuthentication(vpn_config_id);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosAuthentication triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:];
    }
  }
}

void __85__SOKerberosAuthentication_triggerVPNIfNeededUsingRealm_bundleIdentifier_auditToken___block_invoke(void *a1, int a2)
{
  if (a2 == 1)
  {
    v2 = dispatch_get_global_queue(0, 0);
    ne_session_get_status();
  }

  else
  {
    v3 = *(*(a1[5] + 8) + 40);

    dispatch_semaphore_signal(v3);
  }
}

void __85__SOKerberosAuthentication_triggerVPNIfNeededUsingRealm_bundleIdentifier_auditToken___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = ne_session_status_to_string();
  v5 = SO_LOG_SOKerberosAuthentication(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __85__SOKerberosAuthentication_triggerVPNIfNeededUsingRealm_bundleIdentifier_auditToken___block_invoke_2_cold_1(v4);
  }

  if ((v2 & 0xFFFFFFFD) == 1)
  {
    v7 = SO_LOG_SOKerberosAuthentication(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __85__SOKerberosAuthentication_triggerVPNIfNeededUsingRealm_bundleIdentifier_auditToken___block_invoke_2_cold_2();
    }

    dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  }
}

- (void)attemptKerberosWithContext:returningToken:orError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)attemptKerberosWithContext:(void *)a1 returningToken:orError:.cold.2(void *a1)
{
  v1 = [a1 credentialUUID];
  v2 = [v1 UUIDString];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8(&dword_24006C000, v3, v4, "using credential from cache: %@", v5, v6, v7, v8);
}

- (void)attemptKerberosWithContext:returningToken:orError:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)attemptKerberosWithContext:returningToken:orError:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)attemptKerberosWithContext:returningToken:orError:.cold.6()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)attemptKerberosWithContext:(void *)a1 returningToken:orError:.cold.7(void *a1)
{
  v1 = [a1 callerBundleIdentifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0(&dword_24006C000, v2, v3, "UUID nil after find credential for calling app: %{public}@", v4, v5, v6, v7);
}

- (void)attemptKerberosWithContext:returningToken:orError:.cold.8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)attemptKerberosWithContext:returningToken:orError:.cold.9()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)attemptKerberosWithContext:returningToken:orError:.cold.10()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_24006C000, v0, OS_LOG_TYPE_ERROR, "error for new credential: %{public}@", v1, 0xCu);
}

- (void)attemptKerberosWithContext:returningToken:orError:.cold.11()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)attemptKerberosWithContext:(void *)a1 returningToken:orError:.cold.12(void *a1)
{
  v1 = [a1 currentSettings];
  v2 = [v1 dateNextPacRefresh];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8(&dword_24006C000, v3, v4, "Next pac refresh: %@", v5, v6, v7, v8);
}

- (void)attemptKerberosWithContext:(void *)a1 returningToken:(NSObject *)a2 orError:.cold.13(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [a1 currentSettings];
  v5 = [v4 datePasswordLastChanged];
  v6 = [a1 currentSettings];
  v7 = [v6 datePasswordLastChangedAtLogin];
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(&dword_24006C000, a2, OS_LOG_TYPE_DEBUG, "password last changed: %@, at login: %@", v8, 0x16u);
}

- (void)attemptKerberosWithContext:returningToken:orError:.cold.14()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)attemptKerberosWithContext:(id *)a1 returningToken:orError:.cold.15(id *a1)
{
  [*a1 length];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)attemptKerberosWithContext:(void *)a1 returningToken:orError:.cold.16(void *a1)
{
  v1 = [a1 callerBundleIdentifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0(&dword_24006C000, v2, v3, "UUID nil after authentication for calling app: %{public}@", v4, v5, v6, v7);
}

+ (void)saveValuesForPlugins:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)savePacValues:(void *)a1 atLogin:.cold.1(void *a1)
{
  v1 = [a1 dateNextPacRefresh];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)setSiteCodeUsingContext:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)retrieveCachedSiteCodeFromCacheForBundleIdentifier:networkFingerprint:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)retrieveCachedSiteCodeFromCacheForBundleIdentifier:(void *)a1 networkFingerprint:.cold.2(void *a1)
{
  v1 = [a1 code];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)retrieveCachedSiteCodeFromCacheForBundleIdentifier:networkFingerprint:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __134__SOKerberosAuthentication__determineSiteCodeUsingDispatchGroup_bundleIdentifier_auditTokenData_networkFingerprint_requireTLSForLDAP___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __134__SOKerberosAuthentication__determineSiteCodeUsingDispatchGroup_bundleIdentifier_auditTokenData_networkFingerprint_requireTLSForLDAP___block_invoke_11_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __134__SOKerberosAuthentication__determineSiteCodeUsingDispatchGroup_bundleIdentifier_auditTokenData_networkFingerprint_requireTLSForLDAP___block_invoke_11_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createNewCredentialUsingContext:returningCredential:orError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createNewCredentialUsingContext:(void *)a1 returningCredential:orError:.cold.2(void *a1)
{
  v1 = [a1 userPrincipalName];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)createNewCredentialUsingContext:returningCredential:orError:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createNewCredentialUsingContext:(uint64_t)a1 returningCredential:(void *)a2 orError:.cold.4(uint64_t a1, void *a2)
{
  v2 = [a2 extensionData];
  v3 = [v2 certificateUUID];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)createNewCredentialUsingContext:(void *)a1 returningCredential:orError:.cold.5(void *a1)
{
  v1 = [a1 extensionData];
  v2 = [v1 certificateUUID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)createNewCredentialUsingContext:(uint64_t)a1 returningCredential:(void *)a2 orError:.cold.6(uint64_t a1, void *a2)
{
  v2 = [a2 certificateTokenID];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)createNewCredentialUsingContext:(void *)a1 returningCredential:orError:.cold.7(void *a1)
{
  v1 = [a1 smartCardLAContext];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)createNewCredentialUsingContext:(void *)a1 returningCredential:orError:.cold.9(void *a1)
{
  v1 = [a1 certificateTokenID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)createNewCredentialUsingContext:(void *)a1 returningCredential:orError:.cold.10(void *a1)
{
  v1 = [a1 certificateTokenID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)createNewCredentialUsingContext:(void *)a1 returningCredential:orError:.cold.11(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"kGSSICKerberosCacheName"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)createNewCredentialUsingContext:(void *)a1 returningCredential:orError:.cold.12(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"kGSSICSiteName"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)createNewCredentialUsingContext:returningCredential:orError:.cold.13()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)createNewCredentialUsingContext:(void *)a1 returningCredential:orError:.cold.14(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"kGSSICAppleSourceApp"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)createNewCredentialUsingContext:(void *)a1 returningCredential:orError:.cold.15(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"kGSSICAppleSourceApp"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)createNewCredentialUsingContext:returningCredential:orError:.cold.16()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)findExistingCredentialUsingContext:returningCredential:orError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)findExistingCredentialUsingContext:(void *)a1 returningCredential:orError:.cold.2(void *a1)
{
  v1 = [a1 userPrincipalName];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)changePasswordWithContext:(void *)a1 withError:.cold.1(void *a1)
{
  v6 = [a1 userPrincipalName];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

- (void)changePasswordWithContext:withError:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)changePasswordWithContext:(id *)a1 withError:.cold.3(id *a1)
{
  v1 = [*a1 localizedDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0(&dword_24006C000, v2, v3, "error during changePasswordForUPN: %{public}@", v4, v5, v6, v7);
}

- (void)refreshPacValuesWithContext:atLogin:error:.cold.2()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  v3 = 134218242;
  v4 = v0;
  v5 = 2112;
  v6 = v1;
  _os_log_error_impl(&dword_24006C000, v2, OS_LOG_TYPE_ERROR, "Error retrieving new TGT after password change: %lu, %@", &v3, 0x16u);
}

- (void)refreshPacValuesWithContext:(char)a1 credential:(uint64_t)a2 atLogin:(os_log_t)log .cold.1(char a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = "[SOKerberosAuthentication refreshPacValuesWithContext:credential:atLogin:]";
  v5 = 1024;
  v6 = a1 & 1;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_24006C000, log, OS_LOG_TYPE_DEBUG, "%s login: %d on %@", &v3, 0x1Cu);
}

- (void)refreshPacValuesWithContext:credential:atLogin:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:.cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:.cold.6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:.cold.7()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)triggerVPNIfNeededUsingRealm:bundleIdentifier:auditToken:.cold.8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __85__SOKerberosAuthentication_triggerVPNIfNeededUsingRealm_bundleIdentifier_auditToken___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [MEMORY[0x277CCACA8] stringWithCString:a1 encoding:4];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __85__SOKerberosAuthentication_triggerVPNIfNeededUsingRealm_bundleIdentifier_auditToken___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end