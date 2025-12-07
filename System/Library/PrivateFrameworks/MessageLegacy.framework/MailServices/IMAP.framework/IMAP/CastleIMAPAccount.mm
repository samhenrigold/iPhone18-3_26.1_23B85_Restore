@interface CastleIMAPAccount
+ (id)newChildAccountWithParentAccount:(id)account error:(id *)error;
- (ACAccount)appleAccount;
- (ACAccountStore)accountStore;
- (BOOL)_updateEmailAddressAndAliases;
- (BOOL)canAttemptPushRegistration;
- (BOOL)canReceiveNewMailNotifications;
- (BOOL)deliveryUsesSSL;
- (BOOL)isEnabledForDataclass:(id)dataclass;
- (BOOL)isEquivalentTo:(id)to hostname:(id)hostname username:(id)username;
- (BOOL)shouldRegisterForPush;
- (BOOL)updateEmailAliases;
- (BOOL)usesSSL;
- (CastleIMAPAccount)initWithLibrary:(id)library persistentAccount:(id)account;
- (NSString)clientInfo;
- (NSString)personID;
- (NSURL)aliasLookupURL;
- (id)_aliasAuthorizationHeader;
- (id)_aliasUserAgent;
- (id)_aliasesFromData:(id)data;
- (id)_aliasesFromOldData:(id)data;
- (id)_defaultEmailAddressFromData:(id)data;
- (id)_deliveryAccountCreateIfNeeded:(BOOL)needed;
- (id)_emailsFromData:(id)data;
- (id)_fromEmailAddressesIncludingDisabled:(BOOL)disabled;
- (id)_headerStringFromDate:(id)date;
- (id)_mailPropertyFromAppleAccountForKey:(id)key;
- (id)_prepareAliasData;
- (id)anisetteDataWithError:(id *)error;
- (id)authTokenWithError:(id *)error;
- (id)displayName;
- (id)emailAddresses;
- (id)emailAddressesAndAliasesList;
- (id)firstEmailAddress;
- (id)hostname;
- (id)passwordFromKeychain;
- (id)username;
- (uint64_t)_updateEmailAddressAndAliases;
- (unint64_t)credentialAccessibility;
- (unsigned)deliveryPortNumber;
- (unsigned)portNumber;
- (void)_resetAppleAccount;
- (void)_updateEmailAddressAndAliases;
- (void)appleAccount;
- (void)dealloc;
- (void)handleAlertResponse:(id)response;
- (void)handleOverQuotaResponse:(id)response;
- (void)persistentAccountDidChange:(id)change previousAccount:(id)account;
- (void)pushUpdateForAliasData;
- (void)setDefaultEmailAddress:(id)address;
- (void)setEnabled:(BOOL)enabled forEmailAddress:(id)address;
- (void)setLocalDefaultEmailAddress:(id)address;
- (void)setLocallyEnabled:(BOOL)enabled forEmailAddress:(id)address;
- (void)setUsername:(id)username;
- (void)startListeningForNotifications;
@end

@implementation CastleIMAPAccount

- (CastleIMAPAccount)initWithLibrary:(id)library persistentAccount:(id)account
{
  v9.receiver = self;
  v9.super_class = CastleIMAPAccount;
  v4 = [(IMAPAccount *)&v9 initWithLibrary:library persistentAccount:account];
  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = objc_opt_class();
    v4->_appleAccountLock = [objc_alloc(MEMORY[0x277D24F28]) initWithName:objc_msgSend(v5 andDelegate:{"stringWithFormat:", @"%@-%p", NSStringFromClass(v6), v4), 0}];
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4->_aliasUpdateQueue = dispatch_queue_create("com.apple.message.icloud.alias-update", v7);
  }

  return v4;
}

- (void)dealloc
{
  [(CastleIMAPAccount *)self _resetAppleAccount];

  aliasUpdateQueue = self->_aliasUpdateQueue;
  if (aliasUpdateQueue)
  {
    dispatch_release(aliasUpdateQueue);
  }

  v4.receiver = self;
  v4.super_class = CastleIMAPAccount;
  [(IMAPAccount *)&v4 dealloc];
}

- (BOOL)isEquivalentTo:(id)to hostname:(id)hostname username:(id)username
{
  hostname = [(MailAccount *)self isAccountClassEquivalentTo:to, hostname];
  if (hostname)
  {

    LOBYTE(hostname) = [(MailAccount *)self isUsernameEquivalentTo:username];
  }

  return hostname;
}

- (BOOL)shouldRegisterForPush
{
  if ((*(self + 424) & 1) == 0)
  {
    return 0;
  }

  v3.receiver = self;
  v3.super_class = CastleIMAPAccount;
  return [(IMAPAccount *)&v3 shouldRegisterForPush];
}

- (BOOL)canAttemptPushRegistration
{
  v3.receiver = self;
  v3.super_class = CastleIMAPAccount;
  return [(IMAPAccount *)&v3 canAttemptPushRegistration];
}

- (BOOL)canReceiveNewMailNotifications
{
  v3.receiver = self;
  v3.super_class = CastleIMAPAccount;
  return [(IMAPAccount *)&v3 canReceiveNewMailNotifications];
}

- (void)startListeningForNotifications
{
  *(self + 424) &= ~1u;
  [(IMAPAccount *)self separatorChar];
  *(self + 424) |= 1u;
  v3.receiver = self;
  v3.super_class = CastleIMAPAccount;
  [(IMAPAccount *)&v3 startListeningForNotifications];
}

- (ACAccount)appleAccount
{
  appleAccountLock = self->_appleAccountLock;
  if (!appleAccountLock)
  {
    [(CastleIMAPAccount *)a2 appleAccount:&self->_appleAccountLock];
    appleAccountLock = v8;
  }

  [(MFLock *)appleAccountLock lock];
  appleAccount = self->_appleAccount;
  if (!appleAccount)
  {
    self->_appleAccount = [(ACAccount *)[(MFAccount *)self persistentAccount] parentAccount];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__accountsChanged_ name:*MEMORY[0x277CB8B78] object:{-[CastleIMAPAccount accountStore](self, "accountStore")}];
    appleAccount = self->_appleAccount;
  }

  v6 = appleAccount;
  [(MFLock *)self->_appleAccountLock unlock];

  return v6;
}

- (void)_resetAppleAccount
{
  [(MFLock *)self->_appleAccountLock lock];
  if (self->_appleAccount)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277CB8B78] object:{-[CastleIMAPAccount accountStore](self, "accountStore")}];

    self->_appleAccount = 0;
  }

  appleAccountLock = self->_appleAccountLock;

  [(MFLock *)appleAccountLock unlock];
}

- (ACAccountStore)accountStore
{
  mEMORY[0x277D283F0] = [MEMORY[0x277D283F0] sharedAccountStore];

  return [mEMORY[0x277D283F0] persistentStore];
}

- (id)_mailPropertyFromAppleAccountForKey:(id)key
{
  appleAccount = [(CastleIMAPAccount *)self appleAccount];
  v5 = [(ACAccount *)appleAccount propertiesForDataclass:*MEMORY[0x277CB9150]];

  return [v5 objectForKey:key];
}

+ (id)newChildAccountWithParentAccount:(id)account error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  if (!account)
  {
    return 0;
  }

  v6 = *MEMORY[0x277CB9150];
  v7 = [account propertiesForDataclass:*MEMORY[0x277CB9150]];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (([account isProvisionedForDataclass:v6] & 1) == 0)
  {
    v9 = [MEMORY[0x277D28410] errorWithDomain:@"CastleIMAPErrorDomain" code:2 localizedDescription:0];
    if (v9)
    {
      goto LABEL_31;
    }
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  childAccounts = [account childAccounts];
  v11 = [childAccounts countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    v14 = *MEMORY[0x277CB8C68];
LABEL_6:
    v15 = 0;
    while (1)
    {
      if (*v29 != v13)
      {
        objc_enumerationMutation(childAccounts);
      }

      if ([objc_msgSend(objc_msgSend(*(*(&v28 + 1) + 8 * v15) "accountType")])
      {
        break;
      }

      if (v12 == ++v15)
      {
        v12 = [childAccounts countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v12)
        {
          goto LABEL_6;
        }

        goto LABEL_14;
      }
    }

    v9 = [MEMORY[0x277D28410] errorWithDomain:@"CastleIMAPErrorDomain" code:1032 localizedDescription:0];
    if (v9)
    {
      goto LABEL_31;
    }
  }

LABEL_14:
  v16 = [v7 objectForKey:@"Username"];
  if (!v16)
  {
    v9 = [MEMORY[0x277D28410] errorWithDomain:@"CastleIMAPErrorDomain" code:3 localizedDescription:0];
    if (!v9)
    {
      goto LABEL_16;
    }

LABEL_31:
    if (error)
    {
      v25 = 0;
      *error = v9;
      return v25;
    }

    return 0;
  }

  [dictionary setObject:v16 forKey:*MEMORY[0x277D282F0]];
LABEL_16:
  username = [account username];
  mf_addressDomain = [username mf_addressDomain];
  v19 = [objc_msgSend(v7 objectForKey:{@"dotMacMailSupported", "BOOLValue"}];
  if (username && v19 && mf_addressDomain && ([&unk_2869EBDE0 containsObject:mf_addressDomain] & 1) != 0)
  {
    goto LABEL_22;
  }

  v20 = [v7 objectForKey:@"EmailAddress"];
  if (v20)
  {
    username = v20;
LABEL_22:
    v32 = username;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    [dictionary setValue:v21 forKey:*MEMORY[0x277D28358]];
    goto LABEL_23;
  }

  v9 = [MEMORY[0x277D28410] errorWithDomain:@"CastleIMAPErrorDomain" code:4 localizedDescription:0];
  if (v9)
  {
    goto LABEL_31;
  }

LABEL_23:
  v22 = [v7 objectForKey:@"FullUserName"];
  if (v22)
  {
    v23 = v22;
LABEL_28:
    [dictionary setObject:v23 forKey:*MEMORY[0x277D28360]];
    goto LABEL_29;
  }

  v24 = objc_alloc_init(MEMORY[0x277CCAC00]);
  [v24 setGivenName:{objc_msgSend(account, "aa_firstName")}];
  [v24 setFamilyName:{objc_msgSend(account, "aa_lastName")}];
  v23 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v24 style:3 options:0];

  if (v23)
  {
    goto LABEL_28;
  }

LABEL_29:
  v25 = [objc_opt_class() accountWithProperties:dictionary];
  [v25 setPath:{objc_msgSend(objc_opt_class(), "defaultPathForAccountWithHostname:username:", 0, objc_msgSend(v25, "username"))}];
  [v25 setUsesSSL:1];
  persistentAccount = [v25 persistentAccount];
  [persistentAccount setParentAccount:account];
  [persistentAccount setAuthenticationType:*MEMORY[0x277CB90B8]];
  return v25;
}

- (void)persistentAccountDidChange:(id)change previousAccount:(id)account
{
  v5.receiver = self;
  v5.super_class = CastleIMAPAccount;
  [(MailAccount *)&v5 persistentAccountDidChange:change previousAccount:account];
  [(CastleIMAPAccount *)self _resetAppleAccount];
}

- (id)hostname
{
  v3 = [(CastleIMAPAccount *)self _mailPropertyFromAppleAccountForKey:@"imapHostname"];
  [(MailAccount *)self setLastKnownHostname:v3];
  return v3;
}

- (unsigned)portNumber
{
  v2 = [(CastleIMAPAccount *)self _mailPropertyFromAppleAccountForKey:@"imapPort"];

  return [v2 unsignedIntValue];
}

- (BOOL)usesSSL
{
  v2 = [(CastleIMAPAccount *)self _mailPropertyFromAppleAccountForKey:@"imapRequiresSSL"];

  return [v2 BOOLValue];
}

- (void)setUsername:(id)username
{
  v4 = [objc_opt_class() accountPropertiesValueForKey:*MEMORY[0x277D282F0] value:username];
  v5.receiver = self;
  v5.super_class = CastleIMAPAccount;
  [(MailAccount *)&v5 setUsername:v4];
}

- (id)username
{
  result = [(CastleIMAPAccount *)self _mailPropertyFromAppleAccountForKey:@"Username"];
  if (!result)
  {
    if ([(CastleIMAPAccount *)self appleAccount])
    {
      return 0;
    }

    else
    {
      v4.receiver = self;
      v4.super_class = CastleIMAPAccount;
      return [(MFAccount *)&v4 username];
    }
  }

  return result;
}

- (NSString)personID
{
  appleAccount = [(CastleIMAPAccount *)self appleAccount];

  return [(ACAccount *)appleAccount aa_personID];
}

- (id)authTokenWithError:(id *)error
{
  v8 = 0;
  v5 = [(ACAccount *)[(CastleIMAPAccount *)self appleAccount] aa_authTokenWithError:&v8];
  if (!v5 && v8)
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CastleIMAPAccount *)self authTokenWithError:?];
      if (!error)
      {
        return v5;
      }

      goto LABEL_5;
    }

    if (error)
    {
LABEL_5:
      *error = v8;
    }
  }

  return v5;
}

- (id)anisetteDataWithError:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  if (anisetteDataWithError__onceToken != -1)
  {
    [CastleIMAPAccount anisetteDataWithError:];
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __43__CastleIMAPAccount_anisetteDataWithError___block_invoke_78;
  v13[3] = &unk_2798B12C8;
  v13[4] = &v20;
  v13[5] = &v14;
  v4 = mach_absolute_time();
  __43__CastleIMAPAccount_anisetteDataWithError___block_invoke_78(v13);
  v5 = mach_absolute_time();
  if (EFGetElapsedTimeSinceAbsoluteTime_onceToken != -1)
  {
    [CastleIMAPAccount anisetteDataWithError:];
  }

  v6 = ((v5 - v4) * EFGetElapsedTimeSinceAbsoluteTime_sTimebaseInfo / *algn_281549D04) / 1000000000.0;
  if (v15[5])
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = v15[5];
      *buf = 138412546;
      v27 = v8;
      v28 = 2048;
      v29 = v6 / 1000000000.0;
      _os_log_impl(&dword_258B7A000, v7, OS_LOG_TYPE_INFO, "anisetteDataWithError failure: %@ (%.3f sec)", buf, 0x16u);
    }

    if (error)
    {
      *error = v15[5];
    }
  }

  else
  {
    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = v21[5];
      *buf = 138412546;
      v27 = v10;
      v28 = 2048;
      v29 = v6 / 1000000000.0;
      _os_log_impl(&dword_258B7A000, v9, OS_LOG_TYPE_INFO, "anisetteDataWithError success: %@ (%.3f sec)", buf, 0x16u);
    }
  }

  v11 = v21[5];
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  return v11;
}

id __43__CastleIMAPAccount_anisetteDataWithError___block_invoke()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy_;
  v0 = getAKAnisetteProvisioningControllerClass_softClass;
  v7 = __Block_byref_object_dispose_;
  v8 = getAKAnisetteProvisioningControllerClass_softClass;
  if (!getAKAnisetteProvisioningControllerClass_softClass)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getAKAnisetteProvisioningControllerClass_block_invoke;
    v2[3] = &unk_2798B1338;
    v2[4] = &v3;
    __getAKAnisetteProvisioningControllerClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  result = objc_alloc_init(v0);
  anisetteDataWithError__anisetteProvisioningController = result;
  return result;
}

void *__43__CastleIMAPAccount_anisetteDataWithError___block_invoke_78(uint64_t a1)
{
  result = [anisetteDataWithError__anisetteProvisioningController anisetteDataWithError:*(*(a1 + 40) + 8) + 40];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

- (NSString)clientInfo
{
  v2 = objc_alloc_init(MEMORY[0x277CEC7B8]);
  v3 = [objc_msgSend(v2 "clientInfoHeader")];

  return v3;
}

- (unint64_t)credentialAccessibility
{
  v4 = 0;
  v2 = [-[CastleIMAPAccount authTokenWithError:](self authTokenWithError:{&v4), "length"}];
  result = 0;
  if (!v2)
  {
    if ([v4 mf_isInaccessibleAccountCredentialError])
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (id)firstEmailAddress
{
  result = [(MailAccount *)self defaultEmailAddress];
  if (!result)
  {
    v4.receiver = self;
    v4.super_class = CastleIMAPAccount;
    return [(MailAccount *)&v4 firstEmailAddress];
  }

  return result;
}

- (id)emailAddresses
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = CastleIMAPAccount;
  emailAddresses = [(MailAccount *)&v6 emailAddresses];
  if (![emailAddresses count])
  {
    v4 = [(CastleIMAPAccount *)self _mailPropertyFromAppleAccountForKey:@"EmailAddress"];
    if (v4)
    {
      v7[0] = v4;
      return [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    }
  }

  return emailAddresses;
}

- (id)emailAddressesAndAliasesList
{
  emailAddressesAndAliases = [(MailAccount *)self emailAddressesAndAliases];

  return [emailAddressesAndAliases allKeys];
}

- (id)_fromEmailAddressesIncludingDisabled:(BOOL)disabled
{
  v29 = *MEMORY[0x277D85DE8];
  emailAddressesDictionary = [(MailAccount *)self emailAddressesDictionary];
  receiveEmailAliasAddresses = [(MailAccount *)self receiveEmailAliasAddresses];
  array = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [emailAddressesDictionary countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(emailAddressesDictionary);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        if (disabled || [objc_msgSend(emailAddressesDictionary valueForKey:{*(*(&v23 + 1) + 8 * v11)), "BOOLValue"}])
        {
          [array addObject:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [emailAddressesDictionary countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = [receiveEmailAliasAddresses countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(receiveEmailAliasAddresses);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        if (disabled || [objc_msgSend(receiveEmailAliasAddresses valueForKey:{*(*(&v19 + 1) + 8 * v16)), "BOOLValue"}])
        {
          [array addObject:v17];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [receiveEmailAliasAddresses countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  return array;
}

- (id)passwordFromKeychain
{
  appleAccount = [(CastleIMAPAccount *)self appleAccount];

  return [(ACAccount *)appleAccount aa_password];
}

- (void)handleAlertResponse:(id)response
{
  if ([@"Mailbox is over quota" isEqualToString:?])
  {

    [(CastleIMAPAccount *)self handleOverQuotaResponse:response];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CastleIMAPAccount;
    [(IMAPAccount *)&v5 handleAlertResponse:response];
  }
}

- (void)handleOverQuotaResponse:(id)response
{
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(CastleIMAPAccount *)response handleOverQuotaResponse:v4];
  }

  v5 = objc_alloc(MEMORY[0x277CEC830]);
  [objc_msgSend(v5 initForDataclass:{*MEMORY[0x277CB9150]), "showWithHandler:", 0}];
}

- (unsigned)deliveryPortNumber
{
  v2 = [(CastleIMAPAccount *)self _mailPropertyFromAppleAccountForKey:@"smtpPort"];

  return [v2 unsignedIntValue];
}

- (BOOL)deliveryUsesSSL
{
  v2 = [(CastleIMAPAccount *)self _mailPropertyFromAppleAccountForKey:@"smtpRequiresSSL"];

  return [v2 BOOLValue];
}

- (id)_deliveryAccountCreateIfNeeded:(BOOL)needed
{
  deliveryAccount = self->_deliveryAccount;
  if (deliveryAccount)
  {
    v4 = 1;
  }

  else
  {
    v4 = !needed;
  }

  if (!v4)
  {
    deliveryAccount = objc_alloc_init(MFNewcastleSMTPAccount);
    [(MFAccount *)deliveryAccount setDisplayName:[(CastleIMAPAccount *)self displayName]];
    [(MFAccount *)deliveryAccount setHostname:[(CastleIMAPAccount *)self deliveryHostname]];
    [(MFAccount *)deliveryAccount setPortNumber:[(CastleIMAPAccount *)self deliveryPortNumber]];
    [(MFAccount *)deliveryAccount setUsesSSL:[(CastleIMAPAccount *)self deliveryUsesSSL]];
    -[SMTPAccount setPreferredAuthScheme:](deliveryAccount, "setPreferredAuthScheme:", [MEMORY[0x277D28408] schemeWithName:@"ATOKEN"]);
    [(MFNewcastleSMTPAccount *)deliveryAccount setCastleAccount:self];
    self->_deliveryAccount = &deliveryAccount->super.super;
  }

  return deliveryAccount;
}

- (NSURL)aliasLookupURL
{
  result = [(CastleIMAPAccount *)self _mailPropertyFromAppleAccountForKey:@"sendFromAddressJSONURL"];
  if (result)
  {
    v3 = result;
    v4 = MEMORY[0x277CBEBC0];

    return [v4 URLWithString:v3];
  }

  return result;
}

- (id)_aliasUserAgent
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = EFProductName();
  v4 = [v2 initWithFormat:@"%@ (%@)", v3, EFSystemBuildVersion()];

  return v4;
}

- (id)_aliasAuthorizationHeader
{
  appleAccount = [(CastleIMAPAccount *)self appleAccount];
  [objc_msgSend(objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", -[ACAccount aa_personID](appleAccount, "aa_personID"), -[ACAccount aa_authToken](appleAccount, "aa_authToken")), "dataUsingEncoding:", 1), "mf_encodeBase64WithoutLineBreaks"];
  v3 = MFCreateStringWithData();
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"X-MobileMe-AuthToken %@", v3];

  return v4;
}

- (id)_aliasesFromData:(id)data
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAAA0] JSONObjectWithData:data options:0 error:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = [v3 objectForKey:@"aliases"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (!v19)
  {
    return 0;
  }

  obj = v4;
  dictionary = 0;
  v18 = *v26;
  do
  {
    v6 = 0;
    do
    {
      if (*v26 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v25 + 1) + 8 * v6);
      objc_opt_class();
      v20 = v6;
      if (objc_opt_isKindOfClass())
      {
        v8 = [v7 objectForKey:@"fullName"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v7 objectForKey:@"emails"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = 0u;
            v24 = 0u;
            v21 = 0u;
            v22 = 0u;
            v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v10)
            {
              v11 = v10;
              v12 = *v22;
              do
              {
                for (i = 0; i != v11; ++i)
                {
                  if (*v22 != v12)
                  {
                    objc_enumerationMutation(v9);
                  }

                  v14 = *(*(&v21 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v15 = [MEMORY[0x277CCACA8] mf_formattedAddressWithName:v8 email:objc_msgSend(v14 useQuotes:{"objectForKeyedSubscript:", @"address", 1}];
                    if (!dictionary)
                    {
                      dictionary = [MEMORY[0x277CBEB38] dictionary];
                    }

                    [dictionary setValue:objc_msgSend(v14 forKey:{"objectForKeyedSubscript:", @"canSendFrom", obj), v15}];
                  }
                }

                v11 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
              }

              while (v11);
            }
          }
        }
      }

      v6 = v20 + 1;
    }

    while (v20 + 1 != v19);
    v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  }

  while (v19);
  return dictionary;
}

- (id)_aliasesFromOldData:(id)data
{
  v21 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:data options:0 error:0];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 objectForKey:@"name"];
        v12 = [v10 objectForKey:@"email"];
        v13 = v12;
        if (v11)
        {
          v14 = v12 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          v13 = [MEMORY[0x277CCACA8] mf_formattedAddressWithName:v11 email:v12 useQuotes:1];
        }

        if (v13)
        {
          [dictionary setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", 1), v13}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return dictionary;
}

- (id)_emailsFromData:(id)data
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAAA0] JSONObjectWithData:data options:0 error:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = [v3 objectForKey:@"account"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [v4 objectForKey:@"emails"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  dictionary = 0;
  v9 = *v14;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v13 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!dictionary)
        {
          dictionary = [MEMORY[0x277CBEB38] dictionary];
        }

        [dictionary setValue:objc_msgSend(v11 forKey:{"objectForKeyedSubscript:", @"canSendFrom", objc_msgSend(v11, "objectForKeyedSubscript:", @"address"}];
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v7);
  return dictionary;
}

- (id)_defaultEmailAddressFromData:(id)data
{
  v3 = [MEMORY[0x277CCAAA0] JSONObjectWithData:data options:0 error:0];
  v4 = [v3 objectForKey:*MEMORY[0x277D28298]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (void)setLocalDefaultEmailAddress:(id)address
{
  v3.receiver = self;
  v3.super_class = CastleIMAPAccount;
  [(MailAccount *)&v3 setDefaultEmailAddress:address];
}

- (void)setDefaultEmailAddress:(id)address
{
  [(CastleIMAPAccount *)self setLocalDefaultEmailAddress:?];
  updatedDefaultEmail = self->_updatedDefaultEmail;
  if (updatedDefaultEmail != address)
  {

    self->_updatedDefaultEmail = address;
  }
}

- (void)setLocallyEnabled:(BOOL)enabled forEmailAddress:(id)address
{
  enabledCopy = enabled;
  v7 = [-[MailAccount emailAddressesDictionary](self "emailAddressesDictionary")];
  v9 = [-[MailAccount receiveEmailAliasAddresses](self "receiveEmailAliasAddresses")];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  if ([v7 valueForKey:address])
  {
    [v7 setValue:v8 forKey:address];
    [(MailAccount *)self setEmailAddresses:v7];
  }

  else
  {
    [v9 setValue:v8 forKey:address];
    [(MailAccount *)self setReceiveEmailAliasAddresses:v9];
  }
}

- (void)setEnabled:(BOOL)enabled forEmailAddress:(id)address
{
  enabledCopy = enabled;
  [CastleIMAPAccount setLocallyEnabled:"setLocallyEnabled:forEmailAddress:" forEmailAddress:?];
  aliasChanges = self->_aliasChanges;
  if (!aliasChanges)
  {
    aliasChanges = objc_alloc_init(MEMORY[0x277CBEB38]);
    self->_aliasChanges = aliasChanges;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];

  [(NSMutableDictionary *)aliasChanges setValue:v8 forKey:address];
}

- (id)_headerStringFromDate:(id)date
{
  v4 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  v5 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v5 setLocale:v4];
  [v5 setDateFormat:@"EEE, dd MMM yyyy HH:mm:ss zzz"];
  v6 = [v5 stringFromDate:date];

  return v6;
}

- (BOOL)updateEmailAliases
{
  aliasUpdateQueue = self->_aliasUpdateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__CastleIMAPAccount_updateEmailAliases__block_invoke;
  block[3] = &unk_2798B12F0;
  block[4] = self;
  dispatch_async(aliasUpdateQueue, block);
  return 0;
}

- (BOOL)_updateEmailAddressAndAliases
{
  v38 = *MEMORY[0x277D85DE8];
  aliasLookupURL = [(CastleIMAPAccount *)self aliasLookupURL];
  v5 = [objc_msgSend(MEMORY[0x277D28480] "sharedInstance")];
  if (pthread_main_np())
  {
    [(CastleIMAPAccount *)a2 _updateEmailAddressAndAliases];
  }

  if (((aliasLookupURL != 0) & v5) == 1)
  {
    v6 = [MEMORY[0x277CBAB50] requestWithURL:aliasLookupURL];
    [v6 setHTTPMethod:@"GET"];
    [v6 setValue:-[CastleIMAPAccount _aliasAuthorizationHeader](self forHTTPHeaderField:{"_aliasAuthorizationHeader"), @"Authorization"}];
    _aliasUserAgent = [(CastleIMAPAccount *)self _aliasUserAgent];
    [v6 setValue:_aliasUserAgent forHTTPHeaderField:*MEMORY[0x277D07040]];
    [v6 ak_addDeviceUDIDHeader];
    [v6 ak_addClientInfoHeader];
    v31 = 0;
    v8 = [(CastleIMAPAccount *)self anisetteDataWithError:&v31];
    if (v8)
    {
      v9 = v8;
      [v6 setValue:objc_msgSend(v8 forHTTPHeaderField:{"machineID"), @"X-Apple-I-MD-M"}];
      [v6 setValue:objc_msgSend(v9 forHTTPHeaderField:{"oneTimePassword"), @"X-Apple-I-MD"}];
      [v6 setValue:objc_msgSend(MEMORY[0x277CCACA8] forHTTPHeaderField:{"stringWithFormat:", @"%llu", objc_msgSend(v9, "routingInfo")), @"X-Apple-I-MD-RINFO"}];
    }

    else
    {
      v11 = MFLogGeneral();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        ef_publicDescription = [(MFAccount *)self ef_publicDescription];
        ef_publicDescription2 = [v31 ef_publicDescription];
        *buf = 138543618;
        selfCopy = ef_publicDescription;
        v34 = 2114;
        v35 = ef_publicDescription2;
        _os_log_impl(&dword_258B7A000, v11, OS_LOG_TYPE_DEFAULT, "#Warning #CloudSync AnisetteData not found for account: %{public}@ error: %{public}@", buf, 0x16u);
      }
    }

    lastEmailAliasesSyncDate = [(MailAccount *)self lastEmailAliasesSyncDate];
    if (lastEmailAliasesSyncDate)
    {
      [v6 setValue:-[CastleIMAPAccount _headerStringFromDate:](self forHTTPHeaderField:{"_headerStringFromDate:", lastEmailAliasesSyncDate), @"If-Modified-Since"}];
    }

    v15 = MFLogGeneral();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_258B7A000, v15, OS_LOG_TYPE_INFO, "#CloudSync Starting request for aliases for account %@.", buf, 0xCu);
    }

    v16 = MFCopyResponseDataForURLRequest();
    statusCode = [0 statusCode];
    v18 = MFLogGeneral();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy = aliasLookupURL;
      v34 = 2048;
      v35 = statusCode;
      v36 = 2112;
      v37 = v16;
      _os_log_impl(&dword_258B7A000, v18, OS_LOG_TYPE_INFO, "#CloudSync Response from new alias %@. Status Code: %lu\nData: %@", buf, 0x20u);
    }

    if (statusCode != 200 || !v16)
    {
      if ((statusCode & 0xFFFFFFFFFFFFFFFELL) == 0x194 || !v16)
      {
        v27 = MFLogGeneral();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [(CastleIMAPAccount *)aliasLookupURL _updateEmailAddressAndAliases];
        }

        if ([(NSString *)[(NSURL *)aliasLookupURL host] hasPrefix:@"p99-"])
        {
          v28 = MFLogGeneral();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            [(CastleIMAPAccount *)aliasLookupURL _updateEmailAddressAndAliases];
          }

          [-[ACAccount accountStore](-[CastleIMAPAccount appleAccount](self "appleAccount")];
        }
      }

      v10 = 0;
      goto LABEL_45;
    }

    v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v16 encoding:4];
    v20 = MFLogGeneral();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy = v19;
      _os_log_impl(&dword_258B7A000, v20, OS_LOG_TYPE_INFO, "#CloudSync Alias Data: %@", buf, 0xCu);
    }

    v21 = [(CastleIMAPAccount *)self _aliasesFromData:v16];
    v22 = [(CastleIMAPAccount *)self _emailsFromData:v16];
    v23 = [(CastleIMAPAccount *)self _defaultEmailAddressFromData:v16];
    if (v21)
    {
      v24 = [v21 isEqualToDictionary:{-[MailAccount receiveEmailAliasAddresses](self, "receiveEmailAliasAddresses")}] ^ 1;
      [(MailAccount *)self setReceiveEmailAliasAddresses:v21];
      if (!v22)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v24 = 0;
      if (!v22)
      {
LABEL_22:
        defaultEmailAddress = [(MailAccount *)self defaultEmailAddress];
        if (v23)
        {
          v26 = v24 | [v23 isEqualToString:defaultEmailAddress] ^ 1;
          [(CastleIMAPAccount *)self setDefaultEmailAddress:v23];
          if (v26)
          {
            goto LABEL_43;
          }
        }

        else
        {
          if (!defaultEmailAddress)
          {
            if ([-[CastleIMAPAccount fromEmailAddresses](self "fromEmailAddresses")])
            {
              v29 = [-[CastleIMAPAccount fromEmailAddresses](self "fromEmailAddresses")];
            }

            else
            {
              v29 = [-[CastleIMAPAccount emailAddresses](self "emailAddresses")];
              [(CastleIMAPAccount *)self setLocallyEnabled:1 forEmailAddress:v29];
            }

            [(CastleIMAPAccount *)self setLocalDefaultEmailAddress:v29];
            goto LABEL_43;
          }

          if (v24)
          {
LABEL_43:
            [(MFAccount *)self savePersistentAccount];
            v10 = 1;
            goto LABEL_44;
          }
        }

        v10 = 0;
LABEL_44:
        -[MailAccount setLastEmailAliasesSyncDate:](self, "setLastEmailAliasesSyncDate:", [MEMORY[0x277CBEAA8] date]);
LABEL_45:

        return v10;
      }
    }

    v24 |= [v22 isEqualToDictionary:{-[MailAccount emailAddressesDictionary](self, "emailAddressesDictionary")}] ^ 1;
    [(MailAccount *)self setEmailAddresses:v22];
    goto LABEL_22;
  }

  return 0;
}

- (id)_prepareAliasData
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"2.0", @"jsonrpc", @"update", @"method", 0}];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  aliasChanges = self->_aliasChanges;
  if (aliasChanges)
  {
    v14 = dictionary;
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableDictionary count](aliasChanges, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = self->_aliasChanges;
    v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(obj);
          }

          [v6 addObject:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", objc_msgSend(*(*(&v16 + 1) + 8 * i), "mf_uncommentedAddress"), @"address", -[NSMutableDictionary valueForKey:](self->_aliasChanges, "valueForKey:", *(*(&v16 + 1) + 8 * i)), @"canSendFrom", 0)}];
        }

        v8 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    dictionary = v14;
    [v14 setValue:v6 forKey:@"email"];
  }

  updatedDefaultEmail = self->_updatedDefaultEmail;
  if (updatedDefaultEmail)
  {
    mf_uncommentedAddress = [(NSString *)updatedDefaultEmail mf_uncommentedAddress];
    [dictionary setValue:mf_uncommentedAddress forKey:*MEMORY[0x277D28298]];
  }

  [v3 setValue:dictionary forKey:@"params"];
  return v3;
}

- (void)pushUpdateForAliasData
{
  v31 = *MEMORY[0x277D85DE8];
  aliasLookupURL = [(CastleIMAPAccount *)self aliasLookupURL];
  v4 = aliasLookupURL;
  if (self->_aliasChanges)
  {
    if (!aliasLookupURL)
    {
      return;
    }
  }

  else
  {
    if (self->_updatedDefaultEmail)
    {
      v5 = aliasLookupURL == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      return;
    }
  }

  v6 = [MEMORY[0x277CBAB50] requestWithURL:aliasLookupURL];
  [v6 setHTTPMethod:@"POST"];
  [v6 setValue:-[CastleIMAPAccount _aliasAuthorizationHeader](self forHTTPHeaderField:{"_aliasAuthorizationHeader"), @"Authorization"}];
  _aliasUserAgent = [(CastleIMAPAccount *)self _aliasUserAgent];
  [v6 setValue:_aliasUserAgent forHTTPHeaderField:*MEMORY[0x277D07040]];
  [v6 setValue:@"application/json-rpc; charset=UTF-8" forHTTPHeaderField:*MEMORY[0x277D06F88]];
  [v6 ak_addDeviceUDIDHeader];
  [v6 ak_addClientInfoHeader];
  v22 = 0;
  v8 = [(CastleIMAPAccount *)self anisetteDataWithError:&v22];
  if (v8)
  {
    v9 = v8;
    [v6 setValue:objc_msgSend(v8 forHTTPHeaderField:{"machineID"), @"X-Apple-I-MD-M"}];
    [v6 setValue:objc_msgSend(v9 forHTTPHeaderField:{"oneTimePassword"), @"X-Apple-I-MD"}];
    [v6 setValue:objc_msgSend(MEMORY[0x277CCACA8] forHTTPHeaderField:{"stringWithFormat:", @"%llu", objc_msgSend(v9, "routingInfo")), @"X-Apple-I-MD-RINFO"}];
  }

  else
  {
    v10 = MFLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      ef_publicDescription = [(MFAccount *)self ef_publicDescription];
      ef_publicDescription2 = [v22 ef_publicDescription];
      *buf = 138543618;
      p_isa = ef_publicDescription;
      v25 = 2114;
      v26 = ef_publicDescription2;
      _os_log_impl(&dword_258B7A000, v10, OS_LOG_TYPE_DEFAULT, "#Warning #CloudSync AnisetteData not found for account: %{public}@ error: %{public}@", buf, 0x16u);
    }
  }

  v13 = [MEMORY[0x277CCAAA0] dataWithJSONObject:-[CastleIMAPAccount _prepareAliasData](self options:"_prepareAliasData") error:{0, 0}];
  [v6 setHTTPBody:v13];
  v14 = MFCopyResponseDataForURLRequest();
  statusCode = [0 statusCode];
  v16 = MFLogGeneral();
  v17 = v16;
  if (statusCode == 200 && v14)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v14 encoding:4];
      v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v13 encoding:4];
      *buf = 138412546;
      p_isa = v18;
      v25 = 2112;
      v26 = v19;
      _os_log_impl(&dword_258B7A000, v17, OS_LOG_TYPE_INFO, "#CloudSync response: %@.\nJSON: %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    ef_publicDescription3 = [0 ef_publicDescription];
    v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v13 encoding:4];
    *buf = 138413058;
    p_isa = &v4->super.isa;
    v25 = 2048;
    v26 = statusCode;
    v27 = 2114;
    v28 = ef_publicDescription3;
    v29 = 2112;
    v30 = v21;
    _os_log_error_impl(&dword_258B7A000, v17, OS_LOG_TYPE_ERROR, "#CloudSync Unable to push new alias data to server %@. Received response code %lu, with error %{public}@.\nJSON:%@", buf, 0x2Au);
  }

  self->_aliasChanges = 0;
  self->_updatedDefaultEmail = 0;
}

- (BOOL)isEnabledForDataclass:(id)dataclass
{
  appleAccount = [(CastleIMAPAccount *)self appleAccount];

  return [(ACAccount *)appleAccount isEnabledForDataclass:dataclass];
}

- (id)displayName
{
  appleAccount = [(CastleIMAPAccount *)self appleAccount];

  return [(ACAccount *)appleAccount accountDescription];
}

- (void)appleAccount
{
  result = [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  *a4 = *a3;
  return result;
}

- (void)authTokenWithError:(void *)a1 .cold.1(void *a1, id *a2)
{
  v4 = objc_opt_class();
  NSStringFromClass(v4);
  [a1 identifier];
  [*a2 ef_publicDescription];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

- (void)handleOverQuotaResponse:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_258B7A000, a2, OS_LOG_TYPE_ERROR, "Over quota error message: %@", &v2, 0xCu);
}

- (uint64_t)_updateEmailAddressAndAliases
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];

  return [currentHandler handleFailureInMethod:self object:a2 file:@"CastleIMAPAccount.m" lineNumber:805 description:@"Current thread is main"];
}

- (void)_updateEmailAddressAndAliases
{
  [self host];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

@end