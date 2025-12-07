@interface IMAccount
+ (id)_groupSummaryFromGroupList:(id)list;
+ (id)allBuddyListIMHandles;
+ (id)arrayOfAllIMHandles;
+ (id)nameOfLoginStatus:(unint64_t)status;
+ (id)passwordForAccount:(id)account forServiceName:(id)name;
+ (id)temporaryPasswordForAccount:(id)account forAuthID:(id)d forServiceName:(id)name;
+ (void)removePasswordForAccount:(id)account forServiceName:(id)name;
+ (void)removeTemporaryPasswordForAccount:(id)account forServiceName:(id)name;
+ (void)setPassword:(id)password forAccount:(id)account forAuthID:(id)d forServiceName:(id)name;
+ (void)setTemporaryPassword:(id)password forAccount:(id)account forAuthID:(id)d forServiceName:(id)name;
- (BOOL)BOOLForKey:(id)key;
- (BOOL)BOOLForPreferenceKey:(id)key;
- (BOOL)_aliasIsVisible:(id)visible;
- (BOOL)_hasSuppressionForCapability:(id)capability;
- (BOOL)_isUsableForSending;
- (BOOL)_updateDisplayName:(id)name;
- (BOOL)addAlias:(id)alias;
- (BOOL)addAlias:(id)alias type:(int64_t)type;
- (BOOL)addAliases:(id)aliases;
- (BOOL)addIMHandle:(id)handle toGroups:(id)groups atLocation:(int64_t)location;
- (BOOL)addPeople:(id)people toGroups:(id)groups atLocation:(int64_t)location;
- (BOOL)allowsVCRelay;
- (BOOL)authenticateAccount;
- (BOOL)canActivate;
- (BOOL)canSendMessages;
- (BOOL)emailAddressIsID:(id)d;
- (BOOL)equalID:(id)d andID:(id)iD;
- (BOOL)handlesChatInvites;
- (BOOL)hasAlias:(id)alias;
- (BOOL)hasCustomDescription;
- (BOOL)hasTargetGroupStateBeenMet;
- (BOOL)isApprovedForRelay;
- (BOOL)isConnecting;
- (BOOL)isMakoAccount;
- (BOOL)isOperational;
- (BOOL)registerAccount;
- (BOOL)removeAlias:(id)alias;
- (BOOL)removeAliases:(id)aliases;
- (BOOL)removeIMHandle:(id)handle fromGroups:(id)groups;
- (BOOL)removePeople:(id)people fromGroups:(id)groups;
- (BOOL)removeProfileValueForKey:(id)key;
- (BOOL)setProfileString:(id)string forKey:(id)key;
- (BOOL)setProfileValue:(id)value forKey:(id)key;
- (BOOL)supportsAuthorization;
- (BOOL)supportsCapability:(id)capability forAlias:(id)alias simID:(id)d;
- (BOOL)supportsRegistration;
- (BOOL)unregisterAccount;
- (BOOL)unvalidateAlias:(id)alias;
- (BOOL)unvalidateAliases:(id)aliases;
- (BOOL)updateAuthorizationCredentials:(id)credentials token:(id)token;
- (BOOL)validLogin;
- (BOOL)validPort;
- (BOOL)validServer;
- (BOOL)validateAlias:(id)alias;
- (BOOL)validateAliases:(id)aliases;
- (BOOL)validateProfile;
- (IMAccount)initWithUniqueID:(id)d service:(id)service;
- (IMServiceImpl)service;
- (NSArray)aliases;
- (NSArray)aliasesToRegister;
- (NSArray)allowList;
- (NSArray)arrayOfAllIMHandles;
- (NSArray)blockList;
- (NSArray)emailDomains;
- (NSArray)groupList;
- (NSArray)vettedAliases;
- (NSDictionary)accountPreferences;
- (NSDictionary)dictionary;
- (NSDictionary)profileInfo;
- (NSString)accountDescription;
- (NSString)authorizationID;
- (NSString)authorizationToken;
- (NSString)countryCode;
- (NSString)displayName;
- (NSString)internalName;
- (NSString)loginStatusMessage;
- (NSString)name;
- (NSString)password;
- (NSString)server;
- (NSString)serviceName;
- (NSString)shortName;
- (NSString)temporaryPassword;
- (NSString)uniqueID;
- (_FZChatRoomValidity)validityOfChatRoomName:(id)name;
- (id)_aliasInfoForAlias:(id)alias;
- (id)_imHandleWithID:(id)d alreadyCanonical:(BOOL)canonical originalID:(id)iD countryCode:(id)code;
- (id)_persistentPropertyForKey:(id)key;
- (id)_serverWithSSL:(BOOL)l;
- (id)_statuses;
- (id)aliasesForType:(int64_t)type;
- (id)canonicalFormOfID:(id)d countryCode:(id)code;
- (id)chatIDForRoomName:(id)name;
- (id)defaultChatSuffix;
- (id)description;
- (id)existingIMHandleWithID:(id)d alreadyCanonical:(BOOL)canonical;
- (id)existingIMHandleWithID:(id)d countryCode:(id)code;
- (id)existingIMHandleWithInfo:(id)info;
- (id)existingIMHandleWithInfo:(id)info alreadyCanonical:(BOOL)canonical;
- (id)groupMembers:(id)members;
- (id)handlesForCNContact:(id)contact;
- (id)imHandleWithID:(id)d countryCode:(id)code;
- (id)imHandleWithInfo:(id)info;
- (id)imHandleWithInfo:(id)info alreadyCanonical:(BOOL)canonical;
- (id)objectForKey:(id)key;
- (id)objectForPreferenceKey:(id)key;
- (id)profileStringForKey:(id)key;
- (id)profileValueForKey:(id)key;
- (id)propertiesForGroup:(id)group;
- (id)stringForKey:(id)key;
- (id)stringForPreferenceKey:(id)key;
- (int)integerForPreferenceKey:(id)key;
- (int64_t)accountType;
- (int64_t)compareAccountNames:(id)names;
- (int64_t)compareIDs:(id)ds;
- (int64_t)compareLoginStatus:(id)status;
- (int64_t)compareNames:(id)names;
- (int64_t)compareServices:(id)services;
- (int64_t)compareStatus:(id)status;
- (int64_t)integerForKey:(id)key;
- (int64_t)invalidSettings;
- (int64_t)port;
- (int64_t)profileValidationErrorReason;
- (int64_t)profileValidationStatus;
- (int64_t)registrationFailureReason;
- (int64_t)registrationStatus;
- (int64_t)typeForAlias:(id)alias;
- (int64_t)validationErrorReasonForAlias:(id)alias;
- (int64_t)validationStatusForAlias:(id)alias;
- (unint64_t)defaultHandleCapabilities;
- (unint64_t)sortOrderForIMHandle:(id)handle inGroup:(id)group;
- (void)_applyChangesToTemporaryCache:(id)cache;
- (void)_clearImageCache;
- (void)_ensureGroupsExists:(id)exists;
- (void)_loadFromDictionary:(id)dictionary force:(BOOL)force;
- (void)_loginWithAutoLogin:(BOOL)login;
- (void)_notJustLoggedIn;
- (void)_refreshLoginIMHandle;
- (void)_registrationStatusChanged:(id)changed;
- (void)_resumeBuddyUpdatesNow;
- (void)_setBool:(BOOL)bool forKey:(id)key;
- (void)_setInteger:(int64_t)integer forKey:(id)key;
- (void)_setLocalCachedObject:(id)object forKey:(id)key;
- (void)_setObject:(id)object forKey:(id)key;
- (void)_setPersistentPropertyObject:(id)object forKey:(id)key;
- (void)_updateLogin:(id)login;
- (void)_updateMyStatus:(unint64_t)status message:(id)message;
- (void)_updateProfileInfo:(id)info;
- (void)_updateRegistrationStatus:(int)status error:(int)error info:(id)info;
- (void)_watchBuddiesIfNecessary;
- (void)accountDidBecomeActive;
- (void)accountDidDeactivate;
- (void)accountWillBeRemoved;
- (void)addBuddyToBuddyList:(id)list;
- (void)beginChanges;
- (void)blockMessages:(BOOL)messages fromID:(id)d;
- (void)buddyPictureChanged:(id)changed imageData:(id)data imageHash:(id)hash;
- (void)buddyPropertiesChanged:(id)changed;
- (void)changeBuddyList:(id)list add:(BOOL)add groups:(id)groups atLocation:(int64_t)location;
- (void)clearServiceCaches;
- (void)clearTargetState;
- (void)dealloc;
- (void)deregisterAsIDSIDQueryControllerDelegate;
- (void)disconnectAllIMHandles;
- (void)endChanges;
- (void)enrollDeviceInSMSRelay:(id)relay;
- (void)enrollSelfDeviceInSMSRelay;
- (void)forgetAllWatches;
- (void)groupsChanged:(id)changed error:(id)error;
- (void)handleSubscriptionRequestFrom:(id)from withMessage:(id)message;
- (void)holdBuddyUpdates;
- (void)hookupToDaemon;
- (void)idsKTVerifierResultsUpdatedForDestinations:(id)destinations service:(id)service;
- (void)imHandle:(id)handle buddyStatusChanged:(BOOL)changed;
- (void)loginIfActiveRegistered;
- (void)loginStatusChanged:(unint64_t)changed message:(id)message reason:(int)reason properties:(id)properties;
- (void)logoutAccount;
- (void)nowLoggedOut;
- (void)registerAsIDSIDQueryControllerDelegate;
- (void)registerIMHandle:(id)handle;
- (void)removePassword;
- (void)removeTemporaryPassword;
- (void)renameGroup:(id)group to:(id)to;
- (void)reorderGroup:(id)group order:(id)order;
- (void)reorderGroups:(id)groups;
- (void)requestBuddyListAuthorizationFromIMHandle:(id)handle;
- (void)requestProperty:(id)property ofIMHandle:(id)handle;
- (void)resetToDefaults;
- (void)setAccountDescription:(id)description;
- (void)setAllowList:(id)list;
- (void)setBlockIdleStatus:(BOOL)status;
- (void)setBlockList:(id)list;
- (void)setBlockOtherAddresses:(BOOL)addresses;
- (void)setBlockingMode:(unsigned int)mode;
- (void)setBool:(BOOL)bool forKey:(id)key;
- (void)setBool:(BOOL)bool forPreferenceKey:(id)key;
- (void)setBuddyListAuthorization:(BOOL)authorization forIMHandle:(id)handle;
- (void)setBuddyProperties:(id)properties buddyPictures:(id)pictures;
- (void)setCachedAllowList:(id)list;
- (void)setCachedBlockIdleStatus:(BOOL)status;
- (void)setCachedBlockList:(id)list;
- (void)setCachedBlockingMode:(unsigned int)mode;
- (void)setCurrentAccountStatus:(id)status;
- (void)setDisplayName:(id)name;
- (void)setIMAccountLoginStatus:(unint64_t)status errorMessage:(id)message reason:(int)reason;
- (void)setInteger:(int)integer forPreferenceKey:(id)key;
- (void)setInteger:(int64_t)integer forKey:(id)key;
- (void)setInvisible:(BOOL)invisible;
- (void)setIsActive:(BOOL)active;
- (void)setLogin:(id)login;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObject:(id)object forPreferenceKey:(id)key;
- (void)setPassword:(id)password;
- (void)setTargetGroupsState:(id)state;
- (void)setTemporaryPassword:(id)password;
- (void)setUniqueID:(id)d;
- (void)setValue:(id)value ofExtraProperty:(id)property ofIMHandle:(id)handle;
- (void)setWaitForTargetState;
- (void)startWatchingIMHandle:(id)handle;
- (void)stopWatchingIMHandle:(id)handle;
- (void)targetGroupStateTimeout;
- (void)unEnrollDeviceInSMSRelay:(id)relay;
- (void)unregisterIMHandleWithID:(id)d;
- (void)updateCapabilities:(unint64_t)capabilities;
- (void)watchBuddiesIfNecessary;
- (void)writeSettings;
@end

@implementation IMAccount

- (IMServiceImpl)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (NSString)uniqueID
{
  uniqueID = self->_uniqueID;
  if (!uniqueID)
  {
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    v5 = self->_uniqueID;
    self->_uniqueID = stringGUID;

    uniqueID = self->_uniqueID;
  }

  return uniqueID;
}

- (int64_t)registrationFailureReason
{
  if ([(IMAccount *)self supportsRegistration])
  {
    return self->_registrationFailureReason;
  }

  else
  {
    return -1;
  }
}

- (BOOL)supportsRegistration
{
  WeakRetained = objc_loadWeakRetained(&self->_service);
  supportsRegistration = [WeakRetained supportsRegistration];

  return supportsRegistration;
}

- (NSString)authorizationID
{
  if ([(IMAccount *)self supportsAuthorization])
  {
    v3 = [(IMAccount *)self objectForKey:*MEMORY[0x1E69A63F0]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)supportsAuthorization
{
  WeakRetained = objc_loadWeakRetained(&self->_service);
  supportsAuthorization = [WeakRetained supportsAuthorization];

  return supportsAuthorization;
}

- (NSArray)vettedAliases
{
  v22 = *MEMORY[0x1E69E9840];
  vettedAliases = self->_vettedAliases;
  if (vettedAliases)
  {
    v3 = vettedAliases;
  }

  else
  {
    v5 = [(IMAccount *)self objectForKey:*MEMORY[0x1E69A6528]];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          if ([(IMAccount *)self _aliasIsVisible:v12, v17])
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v13 = _IDSCopyOrderedAliasStrings();
    array = [v13 array];
    v15 = self->_vettedAliases;
    self->_vettedAliases = array;

    v3 = self->_vettedAliases;
  }

  return v3;
}

- (void)_refreshLoginIMHandle
{
  login = [(IMAccount *)self login];
  loginIMHandle = self->_loginIMHandle;
  v20 = login;
  if (login)
  {
    if (loginIMHandle)
    {
      v5 = [loginIMHandle ID];
      v6 = [v5 isEqualToIgnoringCase:v20];

      if (v6)
      {
        goto LABEL_14;
      }

      loginIMHandle = self->_loginIMHandle;
    }
  }

  else if (!loginIMHandle)
  {
    goto LABEL_14;
  }

  v7 = loginIMHandle;
  v8 = self->_loginIMHandle;
  self->_loginIMHandle = 0;

  if (v7)
  {
    v9 = +[IMMe me];
    [v9 removeLoginIMHandle:v7];

    [(IMHandle *)v7 resetCNContact];
  }

  if (v20)
  {
    v10 = [(IMAccount *)self imHandleWithID:v20];
    v11 = self->_loginIMHandle;
    self->_loginIMHandle = v10;

    v12 = +[IMMe me];
    v13 = [v12 addLoginIMHandle:self->_loginIMHandle];

    if (v13)
    {
      v14 = +[IMMe me];
      cnContact = [v14 cnContact];

      v16 = [self->_loginIMHandle cnContactWithKeys:MEMORY[0x1E695E0F0]];
      if (cnContact != v16)
      {
        v17 = +[IMHandleRegistrar sharedInstance];
        v18 = self->_loginIMHandle;
        identifier = [v16 identifier];
        [v17 removeHandleFromCNIDMap:v18 withCNID:identifier];

        [self->_loginIMHandle updateCNContact:cnContact];
      }
    }
  }

LABEL_14:
}

- (int64_t)profileValidationStatus
{
  if ([(IMAccount *)self accountType]== 2)
  {
    return 3;
  }

  else
  {
    return self->_profileStatus;
  }
}

- (int64_t)profileValidationErrorReason
{
  v2 = [(IMAccount *)self profileValueForKey:*MEMORY[0x1E69A6470]];
  intValue = [v2 intValue];

  return intValue;
}

- (void)registerAsIDSIDQueryControllerDelegate
{
  v16 = *MEMORY[0x1E69E9840];
  service = [(IMAccount *)self service];
  v4 = sub_1A824D260(service);

  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    uniqueID = [(IMAccount *)self uniqueID];
    v7 = [v5 stringWithFormat:@"IMAccount+KeyTransparency-%@", uniqueID];
    [(IMAccount *)self setKeyTransparencyIDQueryListenerID:v7];

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        keyTransparencyIDQueryListenerID = [(IMAccount *)self keyTransparencyIDQueryListenerID];
        *buf = 138412546;
        v13 = keyTransparencyIDQueryListenerID;
        v14 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Adding IDSIDQueryControllerDelegate with listenerID %@ for %@", buf, 0x16u);
      }
    }

    mEMORY[0x1E69A4878] = [MEMORY[0x1E69A4878] sharedInstance];
    keyTransparencyIDQueryListenerID2 = [(IMAccount *)self keyTransparencyIDQueryListenerID];
    [mEMORY[0x1E69A4878] addDelegate:self forService:v4 listenerID:keyTransparencyIDQueryListenerID2 queue:MEMORY[0x1E69E96A0]];
  }
}

- (NSArray)aliases
{
  v27 = *MEMORY[0x1E69E9840];
  aliases = self->_aliases;
  if (aliases)
  {
    v3 = aliases;
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = [(IMAccount *)self _aliases];
    v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v23;
      v8 = *MEMORY[0x1E69A5568];
      v9 = *MEMORY[0x1E69A63C0];
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          if (!v6)
          {
            v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v12 = [v11 objectForKey:v8];
          v13 = [v11 objectForKey:v9];
          lowercaseString = [v13 lowercaseString];
          trimmedString = [lowercaseString trimmedString];

          if (trimmedString && (!v12 || [v12 BOOLValue]) && -[IMAccount _aliasIsVisible:](self, "_aliasIsVisible:", trimmedString))
          {
            [v6 addObject:trimmedString];
          }
        }

        v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    v16 = _IDSCopyOrderedAliasStrings();
    array = [v16 array];
    v18 = self->_aliases;
    self->_aliases = array;

    v3 = self->_aliases;
  }

  return v3;
}

- (int64_t)accountType
{
  result = self->_accountType;
  if (result < 0)
  {
    login = [(IMAccount *)self login];
    v5 = [login rangeOfString:@"P:"];

    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      service = [(IMAccount *)self service];
      supportsAuthorization = [service supportsAuthorization];

      result = supportsAuthorization;
    }

    else
    {
      result = 2;
    }

    self->_accountType = result;
  }

  return result;
}

- (void)clearServiceCaches
{
  IMLogBacktrace();
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0x10000 valueOptions:5 capacity:0];
  imHandles = self->_imHandles;
  self->_imHandles = v3;

  [(NSRecursiveLock *)self->_lock unlock];
  loginStatus = self->_loginStatus;
  if (loginStatus)
  {
    self->_loginStatus = 0;
    WeakRetained = objc_loadWeakRetained(&self->_service);
    [WeakRetained statusChangedForAccount:self from:loginStatus to:self->_loginStatus];
  }

  sortOrders = self->_sortOrders;
  self->_sortOrders = 0;
}

- (void)accountDidBecomeActive
{
  [(IMAccount *)self loginIfActiveRegistered];

  MEMORY[0x1EEE66B58](self, sel_hookupToDaemon);
}

- (void)loginIfActiveRegistered
{
  if (![(IMAccount *)self loginStatus]&& [(IMAccount *)self registrationStatus]== 5 && [(IMAccount *)self isActive])
  {

    MEMORY[0x1EEE66B58](self, sel_setIMAccountLoginStatus_errorMessage_);
  }
}

- (int64_t)registrationStatus
{
  if (![(IMAccount *)self supportsRegistration])
  {
    return 0;
  }

  isActive = [(IMAccount *)self isActive];
  if (self->_registrationStatus < 5 || isActive)
  {
    return self->_registrationStatus;
  }

  else
  {
    return 1;
  }
}

- (void)hookupToDaemon
{
  [(IMAccount *)self _refreshLoginIMHandle];
  self->_syncedWithRemoteBuddyList = 0;
  [(IMAccount *)self requestGroups];

  [(IMAccount *)self syncWithRemoteBuddies];
}

- (BOOL)isOperational
{
  v3 = MEMORY[0x1E69A7E70];
  v4 = +[IMAccountController sharedInstance];
  accounts = [v4 accounts];
  LOBYTE(self) = [v3 isAccountOperationalWithAllAccounts:accounts account:self];

  return self;
}

- (unint64_t)defaultHandleCapabilities
{
  if (!self->_hasCheckedDefaultHandleCapabilities)
  {
    self->_hasCheckedDefaultHandleCapabilities = 1;
    service = [(IMAccount *)self service];
    serviceProperties = [service serviceProperties];
    v5 = [serviceProperties objectForKey:*MEMORY[0x1E69A5E58]];

    service2 = [(IMAccount *)self service];
    serviceProperties2 = [service2 serviceProperties];
    v8 = [serviceProperties2 objectForKey:*MEMORY[0x1E69A5E50]];

    if ([v5 intValue] || objc_msgSend(v8, "intValue"))
    {
      unsignedLongLongValue = [v5 unsignedLongLongValue];
      v10 = [v8 unsignedLongLongValue] | unsignedLongLongValue;
    }

    else
    {
      v10 = 0;
    }

    self->_defaultHandleCapabilities = v10;
  }

  return self->_defaultHandleCapabilities;
}

- (NSString)serviceName
{
  WeakRetained = objc_loadWeakRetained(&self->_service);
  name = [WeakRetained name];

  return name;
}

- (NSString)countryCode
{
  countryCode = self->_countryCode;
  if (countryCode)
  {
    goto LABEL_20;
  }

  accountType = [(IMAccount *)self accountType];
  if (accountType == 1)
  {
    if (IMSharedHelperDeviceIsAltAccount())
    {
      mEMORY[0x1E69A7F68] = [MEMORY[0x1E69A7F68] sharedInstance];
      ctPhoneNumber = [mEMORY[0x1E69A7F68] ctPhoneNumber];
    }

    else
    {
      if (qword_1ED767678 != -1)
      {
        sub_1A8255A2C();
      }

      mEMORY[0x1E69A7F68] = [qword_1ED767680 sharedInstance];
      if (![mEMORY[0x1E69A7F68] isTelephonyDevice])
      {
        displayName = 0;
LABEL_14:

        if (![displayName length])
        {
          v8 = [(IMAccount *)self profileValueForKey:@"Number"];

          displayName = v8;
        }

        goto LABEL_16;
      }

      ctPhoneNumber = [mEMORY[0x1E69A7F68] telephoneNumber];
    }

    displayName = ctPhoneNumber;
    goto LABEL_14;
  }

  if (accountType == 2)
  {
    displayName = [(IMAccount *)self displayName];
  }

  else
  {
    displayName = 0;
  }

LABEL_16:
  if ([displayName length] && (IMCountryCodeForNumber(), v9 = objc_claimAutoreleasedReturnValue(), v10 = self->_countryCode, self->_countryCode = v9, v10, !-[NSString length](self->_countryCode, "length")))
  {
    v11 = [(IMAccount *)self profileValueForKey:@"Number"];

    if ([v11 length])
    {
      v19 = IMCountryCodeForNumber();
      v20 = self->_countryCode;
      self->_countryCode = v19;
    }
  }

  else
  {
    v11 = displayName;
  }

  countryCode = self->_countryCode;
LABEL_20:
  if (![(NSString *)countryCode length])
  {
    v12 = self->_countryCode;
    self->_countryCode = 0;
  }

  if (self->_countryCode || (IMCountryCodeForIncomingTextMessage(), v13 = objc_claimAutoreleasedReturnValue(), v14 = self->_countryCode, self->_countryCode = v13, v14, self->_countryCode))
  {
    service = [(IMAccount *)self service];
    [service setCountryCode:self->_countryCode];

    v16 = self->_countryCode;
  }

  else
  {
    autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    v16 = [autoupdatingCurrentLocale objectForKey:*MEMORY[0x1E695D978]];
  }

  return v16;
}

- (BOOL)_isUsableForSending
{
  v3 = MEMORY[0x1E69A7E70];
  v4 = +[IMAccountController sharedInstance];
  accounts = [v4 accounts];
  LOBYTE(self) = [v3 isAccountUsableForSendingWithAllAccounts:accounts account:self];

  return self;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  uniqueID = [(IMAccount *)self uniqueID];
  service = [(IMAccount *)self service];
  login = [(IMAccount *)self login];
  if ([(IMAccount *)self isActive])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  loginStatusMessage = [(IMAccount *)self loginStatusMessage];
  v9 = [v3 stringWithFormat:@"IMAccount: %p [ID: %@ Service: %@ Login: %@ Active: %@ LoginStatus: %@]", self, uniqueID, service, login, v7, loginStatusMessage];

  return v9;
}

- (NSString)loginStatusMessage
{
  v3 = objc_opt_class();
  loginStatus = self->_loginStatus;

  return [v3 nameOfLoginStatus:loginStatus];
}

- (void)dealloc
{
  v3 = +[IMHandleRegistrar sharedInstance];
  [v3 _dumpOutAllIMHandlesForAccount:self];

  [(IMAccount *)self deregisterAsIDSIDQueryControllerDelegate];
  mEMORY[0x1E69A6160] = [MEMORY[0x1E69A6160] sharedInstance];
  [mEMORY[0x1E69A6160] removeListener:self];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:0 object:0];

  [(NSRecursiveLock *)self->_lock lock];
  imHandles = self->_imHandles;
  self->_imHandles = 0;

  data = self->_data;
  self->_data = 0;

  [(NSRecursiveLock *)self->_lock unlock];
  v8.receiver = self;
  v8.super_class = IMAccount;
  [(IMAccount *)&v8 dealloc];
}

- (IMAccount)initWithUniqueID:(id)d service:(id)service
{
  dCopy = d;
  serviceCopy = service;
  v32.receiver = self;
  v32.super_class = IMAccount;
  v9 = [(IMAccount *)&v32 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E696AE68]);
    lock = v9->_lock;
    v9->_lock = v10;

    v12 = objc_alloc_init(IMPeople);
    buddyList = v9->_buddyList;
    v9->_buddyList = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    accountPreferences = v9->_accountPreferences;
    v9->_accountPreferences = v14;

    objc_storeStrong(&v9->_uniqueID, d);
    objc_storeWeak(&v9->_service, serviceCopy);
    serviceProperties = [serviceCopy serviceProperties];
    v17 = [serviceProperties objectForKey:*MEMORY[0x1E69A5EB8]];
    v9->_useMeCardName = [v17 intValue] != 0;

    v18 = objc_alloc_init(MEMORY[0x1E696AAB0]);
    myProfile = v9->_myProfile;
    v9->_myProfile = v18;

    [(IMAccount *)v9 clearServiceCaches];
    [(IMAccount *)v9 syncWithRemoteBuddies];
    mEMORY[0x1E69A6160] = [MEMORY[0x1E69A6160] sharedInstance];
    [mEMORY[0x1E69A6160] addListener:v9];

    service = [(IMAccount *)v9 service];

    if (service)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      service2 = [(IMAccount *)v9 service];
      [defaultCenter addObserver:v9 selector:sel__serviceDidConnect_ name:@"__k_IMServiceDidConnectNotification" object:service2];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      service3 = [(IMAccount *)v9 service];
      [defaultCenter2 addObserver:v9 selector:sel__serviceDidReconnect_ name:@"ServiceDidReconnect" object:service3];

      defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
      service4 = [(IMAccount *)v9 service];
      [defaultCenter3 addObserver:v9 selector:sel__serviceDidDisconnect_ name:@"ServiceDidDisconnect" object:service4];
    }

    [(IMAccount *)v9 registerAsIDSIDQueryControllerDelegate];
    if (qword_1ED767980 != -1)
    {
      sub_1A84DF2FC();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A828966C;
    block[3] = &unk_1E780FCB0;
    v31 = v9;
    v28 = dispatch_block_create_with_qos_class(0, QOS_CLASS_UTILITY, 0, block);
    dispatch_async(qword_1ED767988, v28);
  }

  return v9;
}

- (void)_loginWithAutoLogin:(BOOL)login
{
  loginCopy = login;
  v5 = +[IMDaemonController sharedController];
  capabilities = [v5 capabilities];
  v7 = *MEMORY[0x1E69A6278] & capabilities;

  if (v7)
  {
    loginStatus = [(IMAccount *)self loginStatus];
    if ([(IMAccount *)self isActive])
    {
      if (loginStatus <= 3)
      {
        v11 = +[IMDaemonController sharedController];
        remoteDaemon = [v11 remoteDaemon];
        uniqueID = [(IMAccount *)self uniqueID];
        if (loginCopy)
        {
          [remoteDaemon autoLoginAccount:uniqueID];
        }

        else
        {
          [remoteDaemon loginAccount:uniqueID];
        }
      }
    }
  }
}

- (void)logoutAccount
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = +[IMDaemonController sharedController];
  capabilities = [v3 capabilities];
  v5 = *MEMORY[0x1E69A6278] & capabilities;

  if (v5)
  {
    v6 = +[IMDaemonController sharedController];
    remoteDaemon = [v6 remoteDaemon];
    uniqueID = [(IMAccount *)self uniqueID];
    [remoteDaemon logoutAccount:uniqueID];

    service = [(IMAccount *)self service];
    LOBYTE(remoteDaemon) = [service supportsOfflineTransfers];

    if ((remoteDaemon & 1) == 0)
    {
      v10 = +[IMFileTransferCenter sharedInstance];
      v11 = [v10 transfersForAccount:self];

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v21;
        do
        {
          v16 = 0;
          do
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v20 + 1) + 8 * v16);
            v18 = +[IMFileTransferCenter sharedInstance];
            guid = [v17 guid];
            [v18 stopTransfer:guid];

            ++v16;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v14);
      }
    }

    if ([(IMAccount *)self loginStatus]>= 3)
    {
      [(IMAccount *)self setIMAccountLoginStatus:0];
    }
  }
}

- (void)loginStatusChanged:(unint64_t)changed message:(id)message reason:(int)reason properties:(id)properties
{
  [(IMAccount *)self setIMAccountLoginStatus:changed errorMessage:message reason:*&reason, properties];

  [(IMAccount *)self setIMAccountLoginStatus:changed];
}

- (void)_updateLogin:(id)login
{
  loginCopy = login;
  if (self->_loginID != loginCopy)
  {
    self->_accountType = -1;
    objc_storeStrong(&self->_loginID, login);
    _stripFZIDPrefix = [(NSString *)self->_loginID _stripFZIDPrefix];
    strippedLogin = self->_strippedLogin;
    self->_strippedLogin = _stripFZIDPrefix;
  }

  [(IMAccount *)self _refreshLoginIMHandle];
}

- (void)setLogin:(id)login
{
  loginCopy = login;
  if ([(IMAccount *)self accountType]!= 2)
  {
    service = [(IMAccount *)self service];
    supportsAuthorization = [service supportsAuthorization];

    if (supportsAuthorization)
    {
      v6 = MEMORY[0x1AC56C3F0](loginCopy);

      loginCopy = IMGenerateLoginID();
    }

    [(IMAccount *)self _setString:loginCopy forKey:*MEMORY[0x1E69A6448]];
    [(IMAccount *)self _updateLogin:loginCopy];
  }
}

- (void)_updateMyStatus:(unint64_t)status message:(id)message
{
  messageCopy = message;
  v8 = messageCopy;
  if (!messageCopy || [messageCopy isEqualToString:self->_myStatusMessage])
  {
    p_myStatus = &self->_myStatus;
    if (self->_myStatus == status)
    {
      goto LABEL_12;
    }

    v10 = 0;
    goto LABEL_7;
  }

  objc_storeStrong(&self->_myStatusMessage, message);
  p_myStatus = &self->_myStatus;
  v10 = 1;
  if (self->_myStatus != status)
  {
LABEL_7:
    v11 = v10;
    *p_myStatus = status;
    LOBYTE(v10) = 0;
    goto LABEL_8;
  }

  v11 = 1;
LABEL_8:
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kIMMeStatusChangedNotification" object:self];

  if ((v10 & 1) == 0)
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 __mainThreadPostNotificationName:@"__kIMAccountStatusChangedNotification" object:self];
  }

  if (v11)
  {
    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 __mainThreadPostNotificationName:@"__kIMAccountStatusMessageChangedNotification" object:self];
  }

LABEL_12:
}

- (void)setCurrentAccountStatus:(id)status
{
  statusCopy = status;
  myStatusDictionary = [(IMAccount *)self myStatusDictionary];

  if (myStatusDictionary != statusCopy)
  {
    v6 = [statusCopy objectForKey:*MEMORY[0x1E69A6378]];
    v7 = IMPersonStatusFromFZPersonStatus([v6 intValue]);

    v8 = [statusCopy objectForKey:*MEMORY[0x1E69A6380]];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = &stru_1F1B76F98;
    }

    [(IMAccount *)self _updateMyStatus:v7 message:v9];
    v10 = [statusCopy objectForKey:*MEMORY[0x1E69A6368]];
    if (v10 != self->_myProfile)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&self->_myProfile, v10);
      }
    }

    v11 = [statusCopy objectForKey:*MEMORY[0x1E69A6358]];
    if (([(NSData *)v11 isNull]& 1) != 0 || ![(NSData *)v11 length])
    {

      v11 = 0;
    }

    if (v11 != self->_myPictureData && ![(NSData *)v11 isEqualToData:?])
    {
      objc_storeStrong(&self->_myPictureData, v11);
    }

    v12 = [statusCopy objectForKey:*MEMORY[0x1E69A62D8]];
    if (v12 != self->_myIdleSince)
    {
      objc_storeStrong(&self->_myIdleSince, v12);
    }

    v13 = [statusCopy objectForKey:*MEMORY[0x1E69A6340]];
    myNowPlaying = self->_myNowPlaying;
    if (v13 != myNowPlaying && ![(NSDictionary *)myNowPlaying isEqualToDictionary:v13])
    {
      objc_storeStrong(&self->_myNowPlaying, v13);
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter __mainThreadPostNotificationName:@"__kIMMeNowPlayingInfoChangedNotification" object:self];
    }

    myStatusDictionary2 = [(IMAccount *)self myStatusDictionary];
    v17 = myStatusDictionary2;
    if (statusCopy && myStatusDictionary2)
    {
      myStatusDictionary3 = [(IMAccount *)self myStatusDictionary];
      v19 = [myStatusDictionary3 isEqualToDictionary:statusCopy];

      v20 = [statusCopy mutableCopy];
      [(IMAccount *)self setMyStatusDictionary:v20];

      if (v19)
      {
        goto LABEL_25;
      }
    }

    else
    {

      v21 = [statusCopy mutableCopy];
      [(IMAccount *)self setMyStatusDictionary:v21];
    }

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 __mainThreadPostNotificationName:@"__kIMAccountStatusInfoChangedNotification" object:self];

LABEL_25:
  }
}

- (void)setUniqueID:(id)d
{
  dCopy = d;
  uniqueID = self->_uniqueID;
  p_uniqueID = &self->_uniqueID;
  if (uniqueID != dCopy)
  {
    v8 = dCopy;
    objc_storeStrong(p_uniqueID, d);
    dCopy = v8;
  }
}

- (NSString)shortName
{
  WeakRetained = objc_loadWeakRetained(&self->_service);
  shortName = [WeakRetained shortName];

  return shortName;
}

- (NSString)internalName
{
  WeakRetained = objc_loadWeakRetained(&self->_service);
  internalName = [WeakRetained internalName];

  return internalName;
}

- (NSString)name
{
  if (self->_useMeCardName)
  {
    v2 = +[IMMe me];
    fullName = [v2 fullName];
  }

  else
  {
    fullName = [(IMAccount *)self accountDescription];
  }

  return fullName;
}

- (id)canonicalFormOfID:(id)d countryCode:(id)code
{
  dCopy = d;
  codeCopy = code;
  if (![dCopy _appearsToBePhoneNumber])
  {
    goto LABEL_9;
  }

  service = [(IMAccount *)self service];
  _wantsInternationizedNumbers = [service _wantsInternationizedNumbers];

  if (!_wantsInternationizedNumbers)
  {
    goto LABEL_9;
  }

  if (![codeCopy length])
  {
    countryCode = [(IMAccount *)self countryCode];

    codeCopy = countryCode;
  }

  v11 = IMPhoneNumberRefCopyForPhoneNumber();
  lowercaseString = IMNormalizedPhoneNumberForCFPhoneNumberRef();
  if (v11)
  {
    CFRelease(v11);
  }

  if (![lowercaseString length])
  {

LABEL_9:
    lowercaseString = [dCopy lowercaseString];
  }

  return lowercaseString;
}

- (BOOL)equalID:(id)d andID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_service);
  v9 = [WeakRetained equalID:dCopy andID:iDCopy];

  return v9;
}

- (void)writeSettings
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = +[IMAccountController sharedInstance];
  uniqueID = [(IMAccount *)self uniqueID];
  v5 = [v3 accountForUniqueID:uniqueID];

  if (!v5)
  {
    v6 = +[IMAccountController sharedInstance];
    [v6 addAccount:self];
  }

  if ([(NSMutableDictionary *)self->_profileChanges count])
  {
    profileInfo = [(IMAccount *)self profileInfo];
    [(IMAccount *)self _setObject:profileInfo forKey:*MEMORY[0x1E69A6468]];
  }

  if ([(NSMutableDictionary *)self->_accountPreferencesChanges count])
  {
    accountPreferences = [(IMAccount *)self accountPreferences];
    [(IMAccount *)self _setObject:accountPreferences forKey:@"AccountPrefs"];
  }

  dictionary = [(IMAccount *)self dictionary];
  if ([(NSMutableDictionary *)self->_dataChanges count])
  {
    v10 = +[IMDaemonController sharedController];
    remoteDaemon = [v10 remoteDaemon];
    uniqueID2 = [(IMAccount *)self uniqueID];
    [remoteDaemon writeAccount:uniqueID2 defaults:self->_dataChanges];
  }

  profileChanges = self->_profileChanges;
  self->_profileChanges = 0;

  countryCode = self->_countryCode;
  self->_countryCode = 0;

  accountPreferencesChanges = self->_accountPreferencesChanges;
  self->_accountPreferencesChanges = 0;

  localCache = self->_localCache;
  self->_localCache = 0;

  dataChanges = self->_dataChanges;
  self->_dataChanges = 0;

  data = self->_data;
  self->_data = dictionary;
  v19 = dictionary;

  [(IMAccount *)self _loadFromDictionary:v19 force:1];
  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)resetToDefaults
{
  [(IMAccount *)self setAutoLogin:1];
  WeakRetained = objc_loadWeakRetained(&self->_service);
  defaultAccountSettings = [WeakRetained defaultAccountSettings];

  localCache = self->_localCache;
  self->_localCache = 0;

  if ([defaultAccountSettings count])
  {
    dataChanges = self->_dataChanges;
    if (dataChanges)
    {
      [(NSMutableDictionary *)dataChanges addEntriesFromDictionary:defaultAccountSettings];
    }

    else
    {
      v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:defaultAccountSettings];
      v7 = self->_dataChanges;
      self->_dataChanges = v6;
    }
  }

  [(IMAccount *)self _invalidateCachedAliases];
}

- (BOOL)emailAddressIsID:(id)d
{
  dCopy = d;
  emailDomains = [(IMAccount *)self emailDomains];
  v6 = [IMService isEmailAddress:dCopy inDomains:emailDomains];

  return v6;
}

- (int64_t)compareLoginStatus:(id)status
{
  statusCopy = status;
  loginStatus = [(IMAccount *)self loginStatus];
  loginStatus2 = [statusCopy loginStatus];
  if (loginStatus == loginStatus2)
  {
    v7 = [(IMAccount *)self compareAccountNames:statusCopy];
  }

  else if (loginStatus > loginStatus2)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (int64_t)compareAccountNames:(id)names
{
  namesCopy = names;
  accountDescription = [(IMAccount *)self accountDescription];
  accountDescription2 = [namesCopy accountDescription];
  v7 = [accountDescription localizedCaseInsensitiveCompare:accountDescription2];
  if (!v7)
  {
    v7 = [(IMAccount *)self compareIDs:namesCopy];
  }

  return v7;
}

- (int64_t)compareStatus:(id)status
{
  statusCopy = status;
  v5 = IMComparePersonStatus(-[IMAccount myStatus](self, "myStatus"), [statusCopy myStatus]);
  if (v5 == NSOrderedSame)
  {
    v5 = [(IMAccount *)self compareAccountNames:statusCopy];
  }

  return v5;
}

- (int64_t)compareIDs:(id)ds
{
  dsCopy = ds;
  login = [(IMAccount *)self login];
  login2 = [(IMAccount *)dsCopy login];
  v7 = [login localizedCaseInsensitiveCompare:login2];

  v8 = self > dsCopy;
  if (v7)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

- (int64_t)compareServices:(id)services
{
  servicesCopy = services;
  service = [(IMAccount *)self service];
  shortName = [service shortName];
  service2 = [servicesCopy service];

  shortName2 = [service2 shortName];
  v9 = [shortName localizedCaseInsensitiveCompare:shortName2];

  return v9;
}

- (void)updateCapabilities:(unint64_t)capabilities
{
  if (self->_capabilities != capabilities)
  {
    v5 = MEMORY[0x1E695DF20];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:capabilities];
    v8 = [v5 dictionaryWithObjectsAndKeys:{v6, @"__kkOldValueKey", v7, @"__kkNewValueKey", 0}];

    self->_capabilities = capabilities;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMAccountCapabilitiesChangedNotification" object:self userInfo:v8];
  }
}

- (BOOL)supportsCapability:(id)capability forAlias:(id)alias simID:(id)d
{
  capabilityCopy = capability;
  aliasCopy = alias;
  dCopy = d;
  service = [(IMAccount *)self service];
  v12 = [service supportsCapability:capabilityCopy];

  if (v12)
  {
    if ([(IMAccount *)self _hasSuppressionForCapability:capabilityCopy])
    {
      v13 = MEMORY[0x1E695DFD8];
      v14 = [(IMAccount *)self objectForKey:*MEMORY[0x1E69A7A78]];
      v15 = [v14 objectForKeyedSubscript:capabilityCopy];
      v16 = [v13 setWithArray:v15];

      v17 = MEMORY[0x1E695DFD8];
      v18 = [(IMAccount *)self objectForKey:*MEMORY[0x1E69A7A80]];
      v19 = [v18 objectForKeyedSubscript:capabilityCopy];
      v20 = [v17 setWithArray:v19];

      v21 = MEMORY[0x1E695DFD8];
      aliases = [(IMAccount *)self aliases];
      v23 = [v21 setWithArray:aliases];

      v24 = ([v23 isSubsetOfSet:v16] & 1) == 0 && (!aliasCopy || (objc_msgSend(v16, "containsObject:", aliasCopy) & 1) == 0) && (!dCopy || (objc_msgSend(v20, "containsObject:", dCopy) & 1) == 0);
    }

    else
    {
      v24 = 1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (BOOL)_hasSuppressionForCapability:(id)capability
{
  v4 = *MEMORY[0x1E69A7A78];
  capabilityCopy = capability;
  v6 = [(IMAccount *)self objectForKey:v4];
  v7 = [v6 objectForKeyedSubscript:capabilityCopy];

  v8 = [(IMAccount *)self objectForKey:*MEMORY[0x1E69A7A80]];
  v9 = [v8 objectForKeyedSubscript:capabilityCopy];

  if ([v7 count])
  {
    v10 = 1;
  }

  else
  {
    v10 = [v9 count] != 0;
  }

  return v10;
}

- (BOOL)handlesChatInvites
{
  WeakRetained = objc_loadWeakRetained(&self->_service);
  handlesChatInvites = [WeakRetained handlesChatInvites];

  return handlesChatInvites;
}

- (NSString)password
{
  v3 = objc_opt_class();
  login = [(IMAccount *)self login];
  v5 = [(IMAccount *)self canonicalFormOfID:login];
  internalName = [(IMAccount *)self internalName];
  v7 = [v3 passwordForAccount:v5 forServiceName:internalName];

  return v7;
}

- (void)setPassword:(id)password
{
  v17 = *MEMORY[0x1E69E9840];
  passwordCopy = password;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [(IMAccount *)self uniqueID];
    v15 = 138412290;
    v16 = uniqueID;
    _os_log_impl(&dword_1A823F000, registration, OS_LOG_TYPE_DEFAULT, "Client request to set password for account: %@", &v15, 0xCu);
  }

  if ([passwordCopy length])
  {
    v7 = objc_opt_class();
    login = [(IMAccount *)self login];
    v9 = [(IMAccount *)self canonicalFormOfID:login];
    authorizationID = [(IMAccount *)self authorizationID];
    internalName = [(IMAccount *)self internalName];
    [v7 setPassword:passwordCopy forAccount:v9 forAuthID:authorizationID forServiceName:internalName];

    v12 = +[IMDaemonController sharedController];
    remoteDaemon = [v12 remoteDaemon];
    uniqueID2 = [(IMAccount *)self uniqueID];
    [remoteDaemon passwordUpdatedAccount:uniqueID2];
  }

  else
  {
    [(IMAccount *)self removePassword];
  }
}

+ (id)passwordForAccount:(id)account forServiceName:(id)name
{
  accountCopy = account;
  nameCopy = name;
  if ([accountCopy length])
  {
    IMGetKeychainPassword();
    v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)setPassword:(id)password forAccount:(id)account forAuthID:(id)d forServiceName:(id)name
{
  passwordCopy = password;
  accountCopy = account;
  dCopy = d;
  nameCopy = name;
  if ([accountCopy length] && objc_msgSend(passwordCopy, "length"))
  {
    IMSetKeychainPassword();
    v13 = dispatch_semaphore_create(0);
    mEMORY[0x1E699BE98] = [MEMORY[0x1E699BE98] sharedInstance];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1A828B818;
    v16[3] = &unk_1E7810880;
    v17 = v13;
    v15 = v13;
    [mEMORY[0x1E699BE98] setPasswordForProfileID:dCopy username:accountCopy service:nameCopy password:passwordCopy outRequestID:0 completionBlock:v16];

    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (void)removePassword
{
  v11 = *MEMORY[0x1E69E9840];
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [(IMAccount *)self uniqueID];
    v9 = 138412290;
    v10 = uniqueID;
    _os_log_impl(&dword_1A823F000, registration, OS_LOG_TYPE_DEFAULT, "Client request to remove password for account: %@", &v9, 0xCu);
  }

  v5 = objc_opt_class();
  login = [(IMAccount *)self login];
  v7 = [(IMAccount *)self canonicalFormOfID:login];
  internalName = [(IMAccount *)self internalName];
  [v5 removePasswordForAccount:v7 forServiceName:internalName];
}

+ (void)removePasswordForAccount:(id)account forServiceName:(id)name
{
  accountCopy = account;
  nameCopy = name;
  if ([accountCopy length])
  {
    IMRemoveKeychainPassword();
  }
}

- (NSString)temporaryPassword
{
  v3 = objc_opt_class();
  login = [(IMAccount *)self login];
  v5 = [(IMAccount *)self canonicalFormOfID:login];
  authorizationID = [(IMAccount *)self authorizationID];
  internalName = [(IMAccount *)self internalName];
  v8 = [v3 temporaryPasswordForAccount:v5 forAuthID:authorizationID forServiceName:internalName];

  return v8;
}

- (void)setTemporaryPassword:(id)password
{
  v17 = *MEMORY[0x1E69E9840];
  passwordCopy = password;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [(IMAccount *)self uniqueID];
    v15 = 138412290;
    v16 = uniqueID;
    _os_log_impl(&dword_1A823F000, registration, OS_LOG_TYPE_DEFAULT, "Client request to set temporary password for account: %@", &v15, 0xCu);
  }

  if ([passwordCopy length])
  {
    v7 = objc_opt_class();
    login = [(IMAccount *)self login];
    v9 = [(IMAccount *)self canonicalFormOfID:login];
    authorizationID = [(IMAccount *)self authorizationID];
    internalName = [(IMAccount *)self internalName];
    [v7 setTemporaryPassword:passwordCopy forAccount:v9 forAuthID:authorizationID forServiceName:internalName];

    v12 = +[IMDaemonController sharedController];
    remoteDaemon = [v12 remoteDaemon];
    uniqueID2 = [(IMAccount *)self uniqueID];
    [remoteDaemon passwordUpdatedAccount:uniqueID2];
  }

  else
  {
    [(IMAccount *)self removeTemporaryPassword];
  }
}

+ (id)temporaryPasswordForAccount:(id)account forAuthID:(id)d forServiceName:(id)name
{
  accountCopy = account;
  dCopy = d;
  nameCopy = name;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1A8259AE0;
  v22 = sub_1A825AE9C;
  v23 = 0;
  if ([accountCopy length])
  {
    v10 = dispatch_semaphore_create(0);
    mEMORY[0x1E699BE98] = [MEMORY[0x1E699BE98] sharedInstance];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1A828BED8;
    v15[3] = &unk_1E78108A8;
    v12 = v10;
    v16 = v12;
    v17 = &v18;
    [mEMORY[0x1E699BE98] fetchPasswordForProfileID:dCopy username:accountCopy service:nameCopy outRequestID:0 completionBlock:v15];

    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  }

  v13 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v13;
}

+ (void)setTemporaryPassword:(id)password forAccount:(id)account forAuthID:(id)d forServiceName:(id)name
{
  passwordCopy = password;
  accountCopy = account;
  dCopy = d;
  nameCopy = name;
  if ([accountCopy length])
  {
    v13 = dispatch_semaphore_create(0);
    mEMORY[0x1E699BE98] = [MEMORY[0x1E699BE98] sharedInstance];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1A828C120;
    v16[3] = &unk_1E7810880;
    v17 = v13;
    v15 = v13;
    [mEMORY[0x1E699BE98] setPasswordForProfileID:dCopy username:accountCopy service:nameCopy password:passwordCopy outRequestID:0 completionBlock:v16];

    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (void)removeTemporaryPassword
{
  v3 = objc_opt_class();
  login = [(IMAccount *)self login];
  v4 = [(IMAccount *)self canonicalFormOfID:login];
  internalName = [(IMAccount *)self internalName];
  [v3 removeTemporaryPasswordForAccount:v4 forServiceName:internalName];
}

+ (void)removeTemporaryPasswordForAccount:(id)account forServiceName:(id)name
{
  accountCopy = account;
  nameCopy = name;
  if ([accountCopy length])
  {
    IMRemoveTemporaryKeychainPassword();
  }
}

- (void)setInvisible:(BOOL)invisible
{
  invisibleCopy = invisible;
  if ([(IMAccount *)self isInvisible]!= invisible)
  {
    capabilities = [(IMAccount *)self capabilities];
    [(IMAccount *)self _setBool:(capabilities >> 38) & invisibleCopy forKey:*MEMORY[0x1E69A6248]];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMAccountInvisibilityChangedNotification" object:self];
  }
}

- (NSString)accountDescription
{
  service = [(IMAccount *)self service];
  isPersistent = [service isPersistent];

  if (isPersistent)
  {
    service2 = [(IMAccount *)self service];
    shortName = [service2 shortName];
LABEL_3:
    v7 = shortName;

    goto LABEL_9;
  }

  v8 = *MEMORY[0x1E69A6420];
  v9 = [(IMAccount *)self stringForKey:*MEMORY[0x1E69A6420]];
  v10 = [v9 length];

  if (v10)
  {
    login2 = [(IMAccount *)self stringForKey:v8];
  }

  else
  {
    login = [(IMAccount *)self login];
    v13 = [login length];

    if (!v13)
    {
      service2 = [(IMAccount *)self objectForKey:*MEMORY[0x1E69A5E40]];
      if ([service2 length])
      {
        shortName = service2;
      }

      else
      {
        shortName = [(IMAccount *)self uniqueID];
      }

      goto LABEL_3;
    }

    login2 = [(IMAccount *)self login];
  }

  v7 = login2;
LABEL_9:

  return v7;
}

- (void)setAccountDescription:(id)description
{
  descriptionCopy = description;
  login = [(IMAccount *)self login];
  if ([descriptionCopy isEqualToString:login])
  {

    v5 = 0;
  }

  else
  {
    v6 = [descriptionCopy length];

    if (v6)
    {
      v5 = descriptionCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  [(IMAccount *)self _setString:v5 forKey:*MEMORY[0x1E69A6420]];
}

- (BOOL)hasCustomDescription
{
  v2 = [(IMAccount *)self stringForKey:*MEMORY[0x1E69A6420]];
  v3 = [v2 length] != 0;

  return v3;
}

- (id)_serverWithSSL:(BOOL)l
{
  v4 = MEMORY[0x1E69A64E0];
  if (!l)
  {
    v4 = MEMORY[0x1E69A64D0];
  }

  v5 = [(IMAccount *)self stringForKey:*v4];
  if ([v5 length])
  {
    v6 = v5;
    goto LABEL_11;
  }

  login = [(IMAccount *)self login];
  v8 = [login length];

  if (v8)
  {
    login2 = [(IMAccount *)self login];
    v10 = [login2 rangeOfString:@"@"];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v10 + 1;
      if (v10 + 1 < [login2 length])
      {
        v6 = [login2 substringFromIndex:v11];

        goto LABEL_11;
      }
    }
  }

  v6 = 0;
LABEL_11:

  return v6;
}

- (NSString)server
{
  [(IMAccount *)self useSSL];

  return MEMORY[0x1EEE66B58](self, sel__serverWithSSL_);
}

- (int64_t)port
{
  useSSL = [(IMAccount *)self useSSL];
  v4 = MEMORY[0x1E69A64E8];
  if (!useSSL)
  {
    v4 = MEMORY[0x1E69A64D8];
  }

  v5 = *v4;

  return [(IMAccount *)self integerForKey:v5];
}

- (BOOL)allowsVCRelay
{
  v3 = *MEMORY[0x1E69A6438];
  v4 = [(IMAccount *)self objectForKey:*MEMORY[0x1E69A6438]];

  if (!v4)
  {
    [(IMAccount *)self _setBool:1 forKey:v3];
  }

  return [(IMAccount *)self BOOLForKey:v3];
}

- (BOOL)canActivate
{
  service = [(IMAccount *)self service];
  v4 = ([service isDiscontinued] & 1) == 0 && -[IMAccount invalidSettings](self, "invalidSettings") == 0;

  return v4;
}

- (BOOL)validLogin
{
  service = [(IMAccount *)self service];
  serviceProperties = [service serviceProperties];
  v5 = [serviceProperties objectForKey:*MEMORY[0x1E69A5E98]];
  intValue = [v5 intValue];

  if (intValue)
  {
    login = [(IMAccount *)self login];
    v8 = [(IMAccount *)self canonicalFormOfID:login];

    service2 = [(IMAccount *)self service];
    serviceProperties2 = [service2 serviceProperties];
    v11 = [serviceProperties2 objectForKey:*MEMORY[0x1E69A5EA0]];
    if ([v11 intValue])
    {
      if ([v8 rangeOfString:@"@"] == 0x7FFFFFFFFFFFFFFFLL)
      {

LABEL_9:
        v12 = 0;
        goto LABEL_10;
      }

      v13 = [v8 rangeOfString:@"@"];

      if (!v13)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v12 = [v8 length] != 0;
LABEL_10:

    return v12;
  }

  return 1;
}

- (BOOL)validPort
{
  service = [(IMAccount *)self service];
  serviceProperties = [service serviceProperties];
  v5 = [serviceProperties objectForKey:*MEMORY[0x1E69A5EC8]];

  if ([(IMAccount *)self port]< 1 || [(IMAccount *)self port]>= 0xFFFF)
  {
    v6 = [v5 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (BOOL)validServer
{
  service = [(IMAccount *)self service];
  serviceProperties = [service serviceProperties];
  v5 = [serviceProperties objectForKey:*MEMORY[0x1E69A5EC0]];

  server = [(IMAccount *)self server];
  if ([server length] > 2 || -[IMAccount BOOLForKey:](self, "BOOLForKey:", *MEMORY[0x1E69A63F8]))
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v7 = [v5 BOOLValue] ^ 1;
  }

  return v7;
}

- (int64_t)invalidSettings
{
  if (![(IMAccount *)self validLogin])
  {
    return 1;
  }

  if ([(IMAccount *)self BOOLForKey:*MEMORY[0x1E69A63F8]])
  {
    return 0;
  }

  if (![(IMAccount *)self validServer])
  {
    return 2;
  }

  if ([(IMAccount *)self validPort])
  {
    return 0;
  }

  return 3;
}

- (void)requestProperty:(id)property ofIMHandle:(id)handle
{
  handleCopy = handle;
  propertyCopy = property;
  v9 = +[IMDaemonController sharedController];
  remoteDaemon = [v9 remoteDaemon];
  [remoteDaemon requestProperty:propertyCopy ofPerson:handleCopy account:self->_uniqueID];
}

- (void)setValue:(id)value ofExtraProperty:(id)property ofIMHandle:(id)handle
{
  handleCopy = handle;
  propertyCopy = property;
  valueCopy = value;
  v12 = +[IMDaemonController sharedController];
  remoteDaemon = [v12 remoteDaemon];
  [remoteDaemon setValue:valueCopy ofProperty:propertyCopy ofPerson:handleCopy account:self->_uniqueID];
}

- (void)_loadFromDictionary:(id)dictionary force:(BOOL)force
{
  dictionaryCopy = dictionary;
  [(NSRecursiveLock *)self->_lock lock];
  if (!force && dictionaryCopy && (data = self->_data) != 0 && [(NSDictionary *)data isEqualToDictionary:dictionaryCopy])
  {
    [(NSRecursiveLock *)self->_lock unlock];
  }

  else
  {
    isInvisible = [(IMAccount *)self isInvisible];
    authorizationID = [(IMAccount *)self authorizationID];
    aliases = [(IMAccount *)self aliases];
    vettedAliases = [(IMAccount *)self vettedAliases];
    _aliases = [(IMAccount *)self _aliases];
    objc_storeStrong(&self->_data, dictionary);
    localCache = self->_localCache;
    self->_localCache = 0;

    dataChanges = self->_dataChanges;
    self->_dataChanges = 0;

    v9 = [dictionaryCopy objectForKey:@"AccountPrefs"];
    accountPreferences = self->_accountPreferences;
    self->_accountPreferences = v9;

    vettedAliases = self->_vettedAliases;
    self->_vettedAliases = 0;

    [(IMAccount *)self _invalidateCachedAliases];
    v12 = [dictionaryCopy objectForKey:*MEMORY[0x1E69A6448]];
    [(IMAccount *)self _updateLogin:v12];

    v13 = [dictionaryCopy objectForKey:*MEMORY[0x1E69A6468]];
    [(IMAccount *)self _updateProfileInfo:v13];

    v66 = [dictionaryCopy objectForKey:*MEMORY[0x1E69A64B0]];
    v14 = [v66 objectForKey:*MEMORY[0x1E69A64B8]];
    intValue = [v14 intValue];
    v16 = [v66 objectForKey:*MEMORY[0x1E69A64A8]];
    intValue2 = [v16 intValue];
    v18 = [v66 objectForKey:*MEMORY[0x1E69A64A0]];
    [(IMAccount *)self _updateRegistrationStatus:intValue error:intValue2 info:v18];

    if (!self->_accountPreferences)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v20 = self->_accountPreferences;
      self->_accountPreferences = v19;
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMAccountSettingsChangedNotification" object:self];

    authorizationID2 = [(IMAccount *)self authorizationID];
    v23 = authorizationID2;
    if (authorizationID2 == authorizationID)
    {
    }

    else
    {
      authorizationID3 = [(IMAccount *)self authorizationID];
      v25 = [authorizationID3 isEqualToString:authorizationID];

      if ((v25 & 1) == 0)
      {
        defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter2 __mainThreadPostNotificationName:@"__kIMAccountAuthorizationIDChangedNotification" object:self];
      }
    }

    aliases2 = [(IMAccount *)self aliases];
    if (aliases != aliases2 && ([aliases2 isEqualToArray:aliases] & 1) == 0)
    {
      v28 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:aliases];
      v29 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:aliases2];
      v30 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:aliases];
      [v30 minusSet:v29];
      [v29 minusSet:v28];
      v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
      if ([v29 count])
      {
        allObjects = [v29 allObjects];
        [v31 setObject:allObjects forKey:@"__kIMAccountAliasesAddedKey"];
      }

      if ([v30 count])
      {
        allObjects2 = [v30 allObjects];
        [v31 setObject:allObjects2 forKey:@"__kIMAccountAliasesRemovedKey"];
      }

      if ([v31 count])
      {
        defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter3 __mainThreadPostNotificationName:@"__kIMAccountAliasesChangedNotification" object:self userInfo:v31];
      }
    }

    _aliases2 = [(IMAccount *)self _aliases];
    v67 = [dictionaryCopy objectForKey:*MEMORY[0x1E69A63D0]];
    if ((v67 || _aliases2 != _aliases && ([_aliases2 isEqualToArray:_aliases] & 1) == 0) && objc_msgSend(_aliases2, "count"))
    {
      v36 = 0;
      v37 = *MEMORY[0x1E69A63C0];
      v69 = *MEMORY[0x1E69A63C8];
      do
      {
        v38 = [_aliases2 objectAtIndex:v36];
        v39 = [v38 objectForKey:v37];

        if ([v39 length])
        {
          if (v36 >= [_aliases count])
          {
            v43 = 0;
          }

          else
          {
            v40 = [_aliases objectAtIndex:v36];
            v41 = [v40 objectForKey:v69];
            intValue3 = [v41 intValue];

            v43 = intValue3;
          }

          if (v36 >= [_aliases2 count])
          {
            v47 = 0;
          }

          else
          {
            v44 = [_aliases2 objectAtIndex:v36];
            v45 = [v44 objectForKey:v69];
            intValue4 = [v45 intValue];

            v47 = intValue4;
          }

          v48 = [(IMAccount *)self validationErrorReasonForAlias:v39];
          if (v47 != v43)
          {
            v49 = v48;
            v50 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v51 = v39;
            if (v51)
            {
              CFDictionarySetValue(v50, @"__kIMAccountAliasChangedKey", v51);
            }

            v52 = [MEMORY[0x1E696AD98] numberWithInteger:v47];
            if (v52)
            {
              CFDictionarySetValue(v50, @"__kIMAccountNewStatusKey", v52);
            }

            v53 = [MEMORY[0x1E696AD98] numberWithInteger:v43];
            if (v53)
            {
              CFDictionarySetValue(v50, @"__kIMAccountOldStatusKey", v53);
            }

            if (v47 == -1 && v49 != -1)
            {
              v54 = [MEMORY[0x1E696AD98] numberWithInteger:v49];
              if (v54)
              {
                CFDictionarySetValue(v50, @"__kIMAccountAliasValidationStatusFailedReasonKey", v54);
              }

              if ([v67 count])
              {
                [(__CFDictionary *)v50 addEntriesFromDictionary:v67];
              }
            }

            defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
            [defaultCenter4 __mainThreadPostNotificationName:@"__kIMAccountAliasValidationStatusChangedNotification" object:self userInfo:v50];
          }
        }

        ++v36;
      }

      while (v36 < [_aliases2 count]);
    }

    if (isInvisible != [(IMAccount *)self isInvisible])
    {
      defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter5 __mainThreadPostNotificationName:@"__kIMAccountInvisibilityChangedNotification" object:self];
    }

    vettedAliases2 = [(IMAccount *)self vettedAliases];
    v58 = vettedAliases2;
    if (vettedAliases2 != vettedAliases && ([vettedAliases2 isEqualToArray:vettedAliases] & 1) == 0)
    {
      defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter6 __mainThreadPostNotificationName:@"__kIMAccountVettedAliasesChangedNotification" object:self];
    }

    v60 = [dictionaryCopy objectForKey:*MEMORY[0x1E69A6428]];
    [(IMAccount *)self _updateDisplayName:v60];

    [(NSRecursiveLock *)self->_lock unlock];
  }
}

- (NSDictionary)dictionary
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSDictionary *)self->_data mutableCopy];
  [(NSRecursiveLock *)self->_lock unlock];
  if (!v3)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  if ([(NSMutableDictionary *)self->_dataChanges count])
  {
    [v3 addEntriesFromDictionary:self->_dataChanges];
  }

  accountPreferences = [(IMAccount *)self accountPreferences];
  [v3 setObject:accountPreferences forKey:@"AccountPrefs"];

  profileInfo = [(IMAccount *)self profileInfo];
  [v3 setObject:profileInfo forKey:*MEMORY[0x1E69A6468]];

  return v3;
}

- (NSArray)emailDomains
{
  WeakRetained = objc_loadWeakRetained(&self->_service);
  emailDomains = [WeakRetained emailDomains];

  return emailDomains;
}

- (void)setCachedAllowList:(id)list
{
  v17 = *MEMORY[0x1E69E9840];
  listCopy = list;
  if (([(NSArray *)self->_cachedAllowList count]|| [(NSArray *)listCopy count]) && self->_cachedAllowList != listCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = listCopy;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [(IMAccount *)self canonicalFormOfID:*(*(&v12 + 1) + 8 * i), v12];
          [v5 addObject:v10];
        }

        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    objc_storeStrong(&self->_cachedAllowList, v5);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMAccountPrivacySettingsChangedNotification" object:self];
  }
}

- (void)setCachedBlockList:(id)list
{
  v17 = *MEMORY[0x1E69E9840];
  listCopy = list;
  if (([(NSArray *)self->_cachedBlockList count]|| [(NSArray *)listCopy count]) && self->_cachedBlockList != listCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = listCopy;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [(IMAccount *)self canonicalFormOfID:*(*(&v12 + 1) + 8 * i), v12];
          [v5 addObject:v10];
        }

        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    objc_storeStrong(&self->_cachedBlockList, v5);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMAccountPrivacySettingsChangedNotification" object:self];
  }
}

- (void)setCachedBlockingMode:(unsigned int)mode
{
  if (self->_cachedBlockingMode != mode)
  {
    self->_cachedBlockingMode = mode;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMAccountPrivacySettingsChangedNotification" object:self];
  }
}

- (void)setCachedBlockIdleStatus:(BOOL)status
{
  if (self->_blockIdleStatus != status)
  {
    self->_blockIdleStatus = status;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMAccountPrivacySettingsChangedNotification" object:self];
  }
}

- (void)blockMessages:(BOOL)messages fromID:(id)d
{
  messagesCopy = messages;
  v15 = [(IMAccount *)self canonicalFormOfID:d];
  blockingMode = [(IMAccount *)self blockingMode];
  blockList = [(IMAccount *)self blockList];
  allowList = [(IMAccount *)self allowList];
  array = allowList;
  if (messagesCopy)
  {
    if (blockingMode <= 1)
    {
      if (([blockList containsObject:v15] & 1) == 0)
      {
        if (!blockList)
        {
          blockList = [MEMORY[0x1E695DEC8] array];
        }

        v10 = [blockList arrayByAddingObject:v15];
        [(IMAccount *)self setBlockList:v10];
      }

      selfCopy2 = self;
      v12 = 3;
LABEL_8:
      [(IMAccount *)selfCopy2 setBlockingMode:v12];
      goto LABEL_30;
    }

    if (blockingMode != 3)
    {
      if (blockingMode == 2 && [allowList containsObject:v15])
      {
        v13 = [array mutableCopy];
        [v13 removeObject:v15];
LABEL_21:
        [(IMAccount *)self setAllowList:v13];
LABEL_29:

        goto LABEL_30;
      }

      goto LABEL_30;
    }

    if ([blockList containsObject:v15])
    {
      goto LABEL_30;
    }

    if (!blockList)
    {
      blockList = [MEMORY[0x1E695DEC8] array];
    }

    v13 = [blockList arrayByAddingObject:v15];
LABEL_28:
    [(IMAccount *)self setBlockList:v13];
    goto LABEL_29;
  }

  if (blockingMode < 2)
  {
    goto LABEL_30;
  }

  if (blockingMode == 4)
  {
    if (([allowList containsObject:v15] & 1) == 0)
    {
      v14 = IMSingleObjectArray();
      [(IMAccount *)self setAllowList:v14];
    }

    selfCopy2 = self;
    v12 = 2;
    goto LABEL_8;
  }

  if (blockingMode == 3)
  {
    if (![blockList containsObject:v15])
    {
      goto LABEL_30;
    }

    v13 = [blockList mutableCopy];
    [v13 removeObject:v15];
    goto LABEL_28;
  }

  if (blockingMode == 2 && ([allowList containsObject:v15] & 1) == 0)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DEC8] array];
    }

    v13 = [array arrayByAddingObject:v15];
    goto LABEL_21;
  }

LABEL_30:
}

- (void)setBlockList:(id)list
{
  listCopy = list;
  v4 = +[IMDaemonController sharedController];
  remoteDaemon = [v4 remoteDaemon];
  [remoteDaemon setBlockList:listCopy account:self->_uniqueID];

  [(IMAccount *)self setCachedBlockList:listCopy];
}

- (NSArray)blockList
{
  cachedBlockList = self->_cachedBlockList;
  if (cachedBlockList)
  {
    array = cachedBlockList;
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  return array;
}

- (void)setAllowList:(id)list
{
  listCopy = list;
  v4 = +[IMDaemonController sharedController];
  remoteDaemon = [v4 remoteDaemon];
  [remoteDaemon setAllowList:listCopy account:self->_uniqueID];

  [(IMAccount *)self setCachedAllowList:listCopy];
}

- (NSArray)allowList
{
  cachedAllowList = self->_cachedAllowList;
  if (cachedAllowList)
  {
    array = cachedAllowList;
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  return array;
}

- (void)setBlockingMode:(unsigned int)mode
{
  v3 = *&mode;
  v5 = +[IMDaemonController sharedController];
  remoteDaemon = [v5 remoteDaemon];
  [remoteDaemon setBlockingMode:v3 account:self->_uniqueID];

  MEMORY[0x1EEE66B58](self, sel_setCachedBlockingMode_);
}

- (void)setBlockIdleStatus:(BOOL)status
{
  statusCopy = status;
  v5 = +[IMDaemonController sharedController];
  remoteDaemon = [v5 remoteDaemon];
  [remoteDaemon setBlockIdleStatus:statusCopy account:self->_uniqueID];

  MEMORY[0x1EEE66B58](self, sel_setCachedBlockIdleStatus_);
}

- (void)setBlockOtherAddresses:(BOOL)addresses
{
  [(IMAccount *)self _setBool:addresses forKey:*MEMORY[0x1E69A6408]];

  [(IMAccount *)self writeSettings];
}

- (void)clearTargetState
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_targetGroupStateTimeout object:0];
  targetGroupState = self->_targetGroupState;
  self->_targetGroupState = 0;
}

+ (id)_groupSummaryFromGroupList:(id)list
{
  v23 = *MEMORY[0x1E69E9840];
  listCopy = list;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = listCopy;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    v8 = *MEMORY[0x1E69A6228];
    v9 = *MEMORY[0x1E69A6220];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 objectForKey:v8];
        v13 = [v11 objectForKey:v9];
        v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v15 = v14;
        if (v12)
        {
          [v14 setObject:v12 forKey:v8];
        }

        if ([v13 count])
        {
          [v15 setObject:v13 forKey:v9];
        }

        [v4 addObject:v15];
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  return v4;
}

- (BOOL)hasTargetGroupStateBeenMet
{
  v3 = [IMAccount _groupSummaryFromGroupList:self->_lastReceivedGroupState];
  v4 = [IMAccount _groupSummaryFromGroupList:self->_targetGroupState];
  v5 = [v3 isEqualToArray:v4];

  return v5;
}

- (void)targetGroupStateTimeout
{
  hasTargetGroupStateBeenMet = [(IMAccount *)self hasTargetGroupStateBeenMet];
  [(IMAccount *)self clearTargetState];
  if (!hasTargetGroupStateBeenMet)
  {
    lastReceivedGroupState = self->_lastReceivedGroupState;

    [(IMAccount *)self groupsChanged:lastReceivedGroupState error:0];
  }
}

- (void)setWaitForTargetState
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_targetGroupStateTimeout object:0];

  [(IMAccount *)self performSelector:sel_targetGroupStateTimeout withObject:0 afterDelay:120.0];
}

- (void)setTargetGroupsState:(id)state
{
  stateCopy = state;
  if (self->_targetGroupState != stateCopy)
  {
    v6 = stateCopy;
    objc_storeStrong(&self->_targetGroupState, state);
    if (self->_targetGroupState)
    {
      [(IMAccount *)self setWaitForTargetState];
    }

    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_updateWithTargetGroups object:0];
    [(IMAccount *)self performSelector:sel_updateWithTargetGroups withObject:0 afterDelay:0.0];
    stateCopy = v6;
  }
}

- (void)_applyChangesToTemporaryCache:(id)cache
{
  v198 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  targetGroupState = self->_targetGroupState;
  if (!targetGroupState)
  {
    targetGroupState = self->_groups;
  }

  v6 = [(NSArray *)targetGroupState mutableCopy];
  v7 = [cacheCopy objectForKey:*MEMORY[0x1E69A6230]];
  selfCopy = self;
  [(IMAccount *)self clearTargetState];
  v114 = cacheCopy;
  v119 = v7;
  if ([v7 count])
  {
    v143 = [v6 mutableCopy];
    v185 = 0u;
    v186 = 0u;
    v187 = 0u;
    v188 = 0u;
    obj = [v7 allKeys];
    v8 = [obj countByEnumeratingWithState:&v185 objects:v197 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v186;
      v11 = *MEMORY[0x1E69A6228];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v186 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v185 + 1) + 8 * i);
          if ([v6 count])
          {
            v14 = 0;
            while (1)
            {
              v15 = [v6 objectAtIndex:v14];
              v16 = [v15 objectForKey:v11];
              v17 = [v16 isEqualToString:v13];

              if (v17)
              {
                break;
              }

              if (++v14 >= [v6 count])
              {
                goto LABEL_15;
              }
            }

            v18 = [v15 mutableCopy];
            v19 = [v119 objectForKey:v13];
            [v18 setObject:v19 forKey:v11];

            [v143 replaceObjectAtIndex:v14 withObject:v18];
          }

LABEL_15:
          ;
        }

        v9 = [obj countByEnumeratingWithState:&v185 objects:v197 count:16];
      }

      while (v9);
    }

    if (v143 != v6)
    {
      v20 = v143;

      v6 = v20;
    }

    cacheCopy = v114;

    v7 = v119;
  }

  v121 = *MEMORY[0x1E69A61B0];
  v117 = [cacheCopy objectForKey:?];
  v123 = [v117 count];
  if (!v123)
  {
    goto LABEL_58;
  }

  if ([v6 count])
  {
    v21 = [v6 mutableCopy];
  }

  else
  {
    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v22 = v21;

  v23 = 0;
  v24 = *MEMORY[0x1E69A6228];
  v128 = *MEMORY[0x1E69A6220];
  v138 = v6;
  do
  {
    v25 = [v117 objectAtIndex:v23];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
      obja = 0;
    }

    else
    {
      v26 = [v25 objectForKey:v24];
      obja = [v25 objectForKey:v128];
    }

    v144 = v25;
    if (![v6 count])
    {
      if (!v26)
      {
        v27 = 0;
        goto LABEL_52;
      }

LABEL_39:
      v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v22 addObject:v27];
LABEL_40:
      v133 = v23;
      [v27 setObject:v26 forKey:v24];
      v33 = [v27 objectForKey:v128];
      v34 = [v33 mutableCopy];

      if (!v34)
      {
        v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      [v27 setObject:v34 forKey:v128];
      v183 = 0u;
      v184 = 0u;
      v181 = 0u;
      v182 = 0u;
      v35 = obja;
      v36 = [v35 countByEnumeratingWithState:&v181 objects:v196 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v182;
        do
        {
          for (j = 0; j != v37; ++j)
          {
            if (*v182 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = *(*(&v181 + 1) + 8 * j);
            if (([v34 containsObject:v40] & 1) == 0)
            {
              [v34 addObject:v40];
            }
          }

          v37 = [v35 countByEnumeratingWithState:&v181 objects:v196 count:16];
        }

        while (v37);
      }

      v23 = v133;
      v6 = v138;
      goto LABEL_52;
    }

    v27 = 0;
    v28 = 0;
    do
    {
      v29 = [v6 objectAtIndex:v28];
      v30 = [v29 objectForKey:v24];
      v31 = [v30 isEqualToString:v26];

      if (v31)
      {
        if (v27 != v29)
        {
          v32 = [v29 mutableCopy];

          v27 = v32;
        }

        [v22 replaceObjectAtIndex:v28 withObject:v27];
      }

      ++v28;
    }

    while (v28 < [v6 count]);
    if (v26)
    {
      if (!v27)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    }

LABEL_52:

    ++v23;
    v7 = v119;
  }

  while (v23 != v123);
  if (v22 != v6)
  {
    v41 = v22;

    v6 = v41;
  }

  cacheCopy = v114;
LABEL_58:
  v120 = *MEMORY[0x1E69A63B0];
  v42 = [cacheCopy objectForKey:?];
  v113 = v42;
  if ([v42 count])
  {
    v139 = v6;
    v43 = [v6 mutableCopy];
    nonRetainingArray = [MEMORY[0x1E695DF70] nonRetainingArray];
    v177 = 0u;
    v178 = 0u;
    v179 = 0u;
    v180 = 0u;
    v124 = v42;
    v145 = [v124 countByEnumeratingWithState:&v177 objects:v195 count:16];
    if (v145)
    {
      v129 = *v178;
      v45 = *MEMORY[0x1E69A6228];
      v134 = v43;
      do
      {
        v46 = 0;
        do
        {
          if (*v178 != v129)
          {
            objc_enumerationMutation(v124);
          }

          objb = v46;
          v47 = *(*(&v177 + 1) + 8 * v46);
          v173 = 0u;
          v174 = 0u;
          v175 = 0u;
          v176 = 0u;
          v48 = v43;
          v49 = [v48 countByEnumeratingWithState:&v173 objects:v194 count:16];
          if (v49)
          {
            v50 = v49;
            v51 = *v174;
            do
            {
              for (k = 0; k != v50; ++k)
              {
                if (*v174 != v51)
                {
                  objc_enumerationMutation(v48);
                }

                v53 = *(*(&v173 + 1) + 8 * k);
                v54 = [v53 objectForKey:v45];
                v55 = [v54 isEqualToString:v47];

                if (v55)
                {
                  [nonRetainingArray addObject:v53];
                }
              }

              v50 = [v48 countByEnumeratingWithState:&v173 objects:v194 count:16];
            }

            while (v50);
          }

          v46 = objb + 1;
          v43 = v134;
        }

        while (objb + 1 != v145);
        v145 = [v124 countByEnumeratingWithState:&v177 objects:v195 count:16];
      }

      while (v145);
    }

    v6 = v139;
    if (v139 != v43)
    {
      v56 = v43;

      v6 = v56;
    }

    v42 = v113;
    cacheCopy = v114;
    v7 = v119;
  }

  v112 = [cacheCopy objectForKey:*MEMORY[0x1E69A63B8]];
  v57 = [v112 objectForKey:*MEMORY[0x1E69A61C0]];
  v146 = v57;
  if ([v57 count])
  {
    v130 = [v6 mutableCopy];
    v58 = [v130 count];
    v169 = 0u;
    v170 = 0u;
    v171 = 0u;
    v172 = 0u;
    allKeys = [v57 allKeys];
    objc = [allKeys countByEnumeratingWithState:&v169 objects:v193 count:16];
    if (objc)
    {
      v140 = *v170;
      v59 = *MEMORY[0x1E69A6228];
      v125 = *MEMORY[0x1E69A6220];
      do
      {
        for (m = 0; m != objc; m = m + 1)
        {
          if (*v170 != v140)
          {
            objc_enumerationMutation(allKeys);
          }

          v61 = *(*(&v169 + 1) + 8 * m);
          v62 = [v57 objectForKey:v61];
          if (v62)
          {
            v63 = v58 == 0;
          }

          else
          {
            v63 = 1;
          }

          if (!v63)
          {
            v64 = 0;
            while (1)
            {
              v65 = [v6 objectAtIndex:v64];
              v66 = [v65 objectForKey:v59];
              v67 = [v61 isEqualToString:v66];

              if (v67)
              {
                break;
              }

              if (v58 == ++v64)
              {
                goto LABEL_94;
              }
            }

            if (v64 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v68 = [v130 objectAtIndex:v64];
              v69 = [v68 mutableCopy];

              v70 = [v146 objectForKey:v61];
              [v69 setObject:v70 forKey:v125];

              [v130 replaceObjectAtIndex:v64 withObject:v69];
            }
          }

LABEL_94:

          v57 = v146;
        }

        objc = [allKeys countByEnumeratingWithState:&v169 objects:v193 count:16];
      }

      while (objc);
    }

    if (v6 != v130)
    {
      v71 = v130;

      v6 = v71;
    }

    v42 = v113;
    cacheCopy = v114;
    v7 = v119;
  }

  v116 = [cacheCopy objectForKey:*MEMORY[0x1E69A61C8]];
  v115 = [v116 count];
  if (v115)
  {
    v72 = [v6 mutableCopy];
    v73 = 0;
    v74 = *MEMORY[0x1E69A6228];
    v141 = *MEMORY[0x1E69A6220];
    v126 = *MEMORY[0x1E69A6228];
    v131 = v72;
    do
    {
      v118 = v73;
      objd = [v116 objectAtIndex:?];
      v75 = [objd objectForKey:v74];
      if ([v6 count])
      {
        v76 = 0;
        v136 = v75;
        do
        {
          v77 = [v72 objectAtIndex:v76];
          v78 = [v77 objectForKey:v74];
          v79 = [v75 isEqualToString:v78];

          if (v79)
          {
            v80 = [v77 mutableCopy];
            v81 = [v80 objectForKey:v141];
            v82 = [v81 mutableCopy];

            if (!v82)
            {
              v82 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            v83 = v6;
            v167 = 0u;
            v168 = 0u;
            v165 = 0u;
            v166 = 0u;
            v84 = [objd objectForKey:v121];
            v85 = [v84 countByEnumeratingWithState:&v165 objects:v192 count:16];
            if (v85)
            {
              v86 = v85;
              v87 = *v166;
              do
              {
                for (n = 0; n != v86; ++n)
                {
                  if (*v166 != v87)
                  {
                    objc_enumerationMutation(v84);
                  }

                  v89 = *(*(&v165 + 1) + 8 * n);
                  if (([v82 containsObject:v89] & 1) == 0)
                  {
                    [v82 addObject:v89];
                  }
                }

                v86 = [v84 countByEnumeratingWithState:&v165 objects:v192 count:16];
              }

              while (v86);
            }

            v163 = 0u;
            v164 = 0u;
            v161 = 0u;
            v162 = 0u;
            v90 = [objd objectForKey:v120];
            v91 = [v90 countByEnumeratingWithState:&v161 objects:v191 count:16];
            if (v91)
            {
              v92 = v91;
              v93 = *v162;
              do
              {
                for (ii = 0; ii != v92; ++ii)
                {
                  if (*v162 != v93)
                  {
                    objc_enumerationMutation(v90);
                  }

                  v95 = *(*(&v161 + 1) + 8 * ii);
                  if ([v82 containsObject:v95])
                  {
                    [v82 removeObject:v95];
                  }
                }

                v92 = [v90 countByEnumeratingWithState:&v161 objects:v191 count:16];
              }

              while (v92);
            }

            [v80 setObject:v82 forKey:v141];
            v72 = v131;
            [v131 replaceObjectAtIndex:v76 withObject:v80];

            v6 = v83;
            v74 = v126;
            v75 = v136;
          }

          ++v76;
        }

        while (v76 < [v6 count]);
      }

      v73 = v118 + 1;
    }

    while (v118 + 1 != v115);
    if (v6 != v72)
    {
      v96 = v72;

      v6 = v96;
      v72 = v131;
    }

    v7 = v119;
    v42 = v113;
    v57 = v146;

    cacheCopy = v114;
  }

  v97 = [v112 objectForKey:*MEMORY[0x1E69A6240]];
  if ([v97 count])
  {
    v98 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v122 = v97;
    v127 = v97;
    v137 = [v127 countByEnumeratingWithState:&v157 objects:v190 count:16];
    if (v137)
    {
      v132 = *v158;
      v99 = *MEMORY[0x1E69A6228];
      v142 = v6;
      do
      {
        v100 = 0;
        do
        {
          if (*v158 != v132)
          {
            objc_enumerationMutation(v127);
          }

          obje = v100;
          v101 = *(*(&v157 + 1) + 8 * v100);
          v153 = 0u;
          v154 = 0u;
          v155 = 0u;
          v156 = 0u;
          v102 = v6;
          v103 = [v102 countByEnumeratingWithState:&v153 objects:v189 count:16];
          if (v103)
          {
            v104 = v103;
            v105 = *v154;
            do
            {
              for (jj = 0; jj != v104; ++jj)
              {
                if (*v154 != v105)
                {
                  objc_enumerationMutation(v102);
                }

                v107 = *(*(&v153 + 1) + 8 * jj);
                v108 = [v107 objectForKey:v99];
                v109 = [v108 isEqualToString:v101];

                if (v109)
                {
                  [v98 addObject:v107];
                }
              }

              v104 = [v102 countByEnumeratingWithState:&v153 objects:v189 count:16];
            }

            while (v104);
          }

          v100 = obje + 1;
          v6 = v142;
        }

        while (obje + 1 != v137);
        v137 = [v127 countByEnumeratingWithState:&v157 objects:v190 count:16];
      }

      while (v137);
    }

    if (v6 != v98)
    {
      v110 = v98;

      v6 = v110;
    }

    v42 = v113;
    cacheCopy = v114;
    v7 = v119;
    v57 = v146;
    v97 = v122;
  }

  [(IMAccount *)selfCopy setTargetGroupsState:v6];
}

- (void)beginChanges
{
  if (![(IMAccount *)self makingChanges])
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    coalescedChanges = self->_coalescedChanges;
    self->_coalescedChanges = v3;
  }

  ++self->_coalesceCount;
}

- (void)_ensureGroupsExists:(id)exists
{
  v18 = *MEMORY[0x1E69E9840];
  existsCopy = exists;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [existsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(existsCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        groupList = [(IMAccount *)self groupList];
        v11 = [groupList containsObject:v9];

        if ((v11 & 1) == 0)
        {
          v12 = [MEMORY[0x1E695DFD8] setWithObject:v9];
          [(IMAccount *)self changeBuddyList:0 add:1 groups:v12 atLocation:-1];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [existsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (BOOL)addPeople:(id)people toGroups:(id)groups atLocation:(int64_t)location
{
  v28 = *MEMORY[0x1E69E9840];
  peopleCopy = people;
  groupsCopy = groups;
  [(IMAccount *)self _ensureGroupsExists:groupsCopy];
  if ((location & 0x8000000000000000) == 0)
  {
    goto LABEL_2;
  }

  v12 = [(IMAccount *)self hasCapability:0x10000000];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = peopleCopy;
  v13 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v13)
  {
    goto LABEL_3;
  }

  v14 = v13;
  locationCopy = location;
  v22 = peopleCopy;
  v15 = *v24;
  v16 = 1;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v24 != v15)
      {
        objc_enumerationMutation(v10);
      }

      v18 = *(*(&v23 + 1) + 8 * i);
      if (v12 && [*(*(&v23 + 1) + 8 * i) authRequestStatus])
      {
        [(IMAccount *)self requestBuddyListAuthorizationFromIMHandle:v18];
      }

      if ([v18 isBuddy])
      {
        groups = [v18 groups];
        v20 = [groupsCopy isSubsetOfSet:groups];

        v16 &= v20;
      }

      else
      {
        v16 = 0;
      }
    }

    v14 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v14);

  LODWORD(location) = locationCopy;
  peopleCopy = v22;
  if ((v16 & 1) == 0)
  {
LABEL_2:
    v10 = [peopleCopy arrayByApplyingSelector:"ID"];
    [(IMAccount *)self changeBuddyList:v10 add:1 groups:groupsCopy atLocation:location];
LABEL_3:
  }

  return 1;
}

- (BOOL)removePeople:(id)people fromGroups:(id)groups
{
  groupsCopy = groups;
  v7 = [people arrayByApplyingSelector:"ID"];
  [(IMAccount *)self changeBuddyList:v7 add:0 groups:groupsCopy atLocation:0];

  return 1;
}

- (BOOL)addIMHandle:(id)handle toGroups:(id)groups atLocation:(int64_t)location
{
  groupsCopy = groups;
  v8 = IMSingleObjectArray();
  LOBYTE(location) = [(IMAccount *)self addPeople:v8 toGroups:groupsCopy atLocation:location];

  return location;
}

- (BOOL)removeIMHandle:(id)handle fromGroups:(id)groups
{
  groupsCopy = groups;
  v7 = [handle ID];
  v8 = IMSingleObjectArray();
  [(IMAccount *)self changeBuddyList:v8 add:0 groups:groupsCopy atLocation:0];

  return 1;
}

- (void)addBuddyToBuddyList:(id)list
{
  listCopy = list;
  groupList = [(IMAccount *)self groupList];
  if (groupList)
  {
    v5 = groupList;
    groupList2 = [(IMAccount *)self groupList];
    v7 = [groupList2 count];

    if (v7)
    {
      v8 = IMSingleObjectArray();
      v9 = MEMORY[0x1E695DFD8];
      groupList3 = [(IMAccount *)self groupList];
      __imFirstObject = [groupList3 __imFirstObject];
      v12 = [v9 setWithObject:__imFirstObject];
      [(IMAccount *)self addPeople:v8 toGroups:v12 atLocation:0];
    }
  }
}

- (void)changeBuddyList:(id)list add:(BOOL)add groups:(id)groups atLocation:(int64_t)location
{
  addCopy = add;
  v114 = *MEMORY[0x1E69E9840];
  listCopy = list;
  groupsCopy = groups;
  [(IMAccount *)self beginChanges];
  allObjects = [groupsCopy allObjects];
  v85 = allObjects;
  if ([listCopy count])
  {
    v80 = groupsCopy;
    v94 = [allObjects count];
    v88 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
    v13 = location >= 0 && addCopy;
    v92 = v13;
    v93 = addCopy;
    if (v13)
    {
      v14 = *MEMORY[0x1E69A63B8];
      dictionary = [(NSMutableDictionary *)self->_coalescedChanges objectForKey:*MEMORY[0x1E69A63B8]];
      if (!dictionary)
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        [(NSMutableDictionary *)self->_coalescedChanges setObject:dictionary forKey:v14];
      }
    }

    else
    {
      dictionary = 0;
    }

    v84 = dictionary;
    v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(listCopy, "count")}];
    v31 = [listCopy count];
    if (v31 >= 1)
    {
      for (i = 0; i != v31; ++i)
      {
        service = [(IMAccount *)self service];
        v34 = [listCopy objectAtIndex:i];
        v35 = [service canonicalFormOfID:v34];
        [v30 addObject:v35];
      }
    }

    v95 = v30;
    v83 = [MEMORY[0x1E695DFD8] setWithArray:v30];
    v36 = v84;
    allObjects = v85;
    if (v94)
    {
      v37 = 0;
      v97 = *MEMORY[0x1E69A6228];
      v91 = *MEMORY[0x1E69A6220];
      v38 = MEMORY[0x1E69A61B0];
      if (!v93)
      {
        v38 = MEMORY[0x1E69A63B0];
      }

      v86 = *MEMORY[0x1E69A61C0];
      v87 = *v38;
      selfCopy = self;
      do
      {
        v96 = v37;
        v98 = [allObjects objectAtIndex:?];
        v39 = [(NSArray *)self->_groups count];
        if (v39)
        {
          v40 = v39;
          v41 = 0;
          while (1)
          {
            v42 = [(NSArray *)self->_groups objectAtIndex:v41];
            v43 = [v42 objectForKey:v97];
            v44 = [v43 isEqualToString:v98];

            if (v44)
            {
              break;
            }

            if (v40 == ++v41)
            {
              goto LABEL_38;
            }
          }
        }

        else
        {
LABEL_38:
          v42 = 0;
        }

        v45 = [v42 objectForKey:v91];
        if (v45)
        {
          v46 = [MEMORY[0x1E695DFD8] setWithArray:v45];
        }

        else
        {
          v46 = 0;
        }

        v47 = v98;
        if (!v93 || ([v83 isSubsetOfSet:v46] & 1) == 0)
        {
          [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v98, v97, v95, v87, 0}];
          v49 = v48 = v46;
          [v88 addObject:v49];

          v46 = v48;
        }

        if (v92)
        {
          v90 = v45;
          if (v42)
          {
            [MEMORY[0x1E695DF70] arrayWithArray:v45];
          }

          else
          {
            [MEMORY[0x1E695DF70] array];
          }
          v50 = ;
          v89 = v46;
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          v51 = v95;
          v52 = [v51 countByEnumeratingWithState:&v107 objects:v113 count:16];
          if (v52)
          {
            v53 = v52;
            v54 = *v108;
            do
            {
              for (j = 0; j != v53; ++j)
              {
                if (*v108 != v54)
                {
                  objc_enumerationMutation(v51);
                }

                v56 = *(*(&v107 + 1) + 8 * j);
                v57 = [v50 indexOfObject:v56];
                if (v57 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v58 = v57;
                  [v50 removeObjectAtIndex:v57];
                  location = (__PAIR128__(location, v58) - location) >> 64;
                }

                if (location > [v50 count])
                {
                  location = [v50 count];
                }

                [v50 insertObject:v56 atIndex:location++];
              }

              v53 = [v51 countByEnumeratingWithState:&v107 objects:v113 count:16];
            }

            while (v53);
          }

          v36 = v84;
          dictionary2 = [v84 objectForKey:v86];
          if (!dictionary2)
          {
            dictionary2 = [MEMORY[0x1E695DF90] dictionary];
            [v84 setObject:dictionary2 forKey:v86];
          }

          v47 = v98;
          [dictionary2 setObject:v50 forKey:v98];

          self = selfCopy;
          allObjects = v85;
          v46 = v89;
          v45 = v90;
        }

        v37 = v96 + 1;
      }

      while (v96 + 1 != v94);
    }

    v22 = v95;
    if ([v88 count])
    {
      v60 = *MEMORY[0x1E69A61C8];
      v61 = [(NSMutableDictionary *)self->_coalescedChanges objectForKey:*MEMORY[0x1E69A61C8]];
      if (!v61)
      {
        v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [(NSMutableDictionary *)self->_coalescedChanges setObject:v61 forKey:v60];
      }

      [v61 addObjectsFromArray:v88];
    }

    groupsCopy = v80;
    goto LABEL_89;
  }

  if ([groupsCopy count])
  {
    v81 = groupsCopy;
    v16 = MEMORY[0x1E69A61B0];
    if (!addCopy)
    {
      v16 = MEMORY[0x1E69A63B0];
    }

    v88 = *v16;
    v17 = [(NSMutableDictionary *)self->_coalescedChanges objectForKey:?];
    v18 = addCopy;
    if (!v17)
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(NSMutableDictionary *)self->_coalescedChanges setObject:v17 forKey:v88];
    }

    [v17 addObjectsFromArray:allObjects];
    groupList = [(IMAccount *)self groupList];
    v20 = [groupList mutableCopy];

    v21 = v17;
    v22 = v20;
    if (!v18)
    {
      [v20 removeObjectsInArray:allObjects];
      goto LABEL_86;
    }

    v23 = [v20 count];
    if ((location & 0x8000000000000000) == 0)
    {
      if (v23 <= location)
      {
        goto LABEL_86;
      }

      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v24 = v81;
      v25 = [v24 countByEnumeratingWithState:&v103 objects:v112 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v104;
        do
        {
          for (k = 0; k != v26; ++k)
          {
            if (*v104 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v103 + 1) + 8 * k);
            if ([v22 containsObject:v29])
            {
              [v22 insertObject:v29 atIndex:location];
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v103 objects:v112 count:16];
        }

        while (v26);
      }

      goto LABEL_85;
    }

    if (!v23)
    {
      goto LABEL_76;
    }

    v62 = 0;
    v63 = *MEMORY[0x1E69A6238];
    while (1)
    {
      v64 = [v22 objectAtIndex:v62];
      v65 = [(IMAccount *)self propertiesForGroup:v64];
      v66 = [v65 objectForKey:v63];
      if (v66)
      {
        v67 = v66;
        if (![v66 intValue])
        {

          if ((v62 & 0x80000000) == 0 && [v22 count] > (v62 & 0x7FFFFFFF))
          {
            allObjects = v85;
            if ([v85 count])
            {
              v75 = 0;
              v76 = v62;
              do
              {
                v77 = [v85 objectAtIndex:v75];
                v78 = [v22 containsObject:v77];

                if ((v78 & 1) == 0)
                {
                  v79 = [v85 objectAtIndex:v75];
                  [v22 insertObject:v79 atIndex:v76];

                  ++v76;
                }

                ++v75;
              }

              while (v75 < [v85 count]);
            }

LABEL_86:
            groupList2 = [(IMAccount *)self groupList];
            v74 = [v22 isEqualToArray:groupList2];

            if ((v74 & 1) == 0)
            {
              [(IMAccount *)self reorderGroups:v22];
            }

            groupsCopy = v81;
            v36 = v21;
LABEL_89:

            break;
          }

LABEL_76:
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v24 = v85;
          v68 = [v24 countByEnumeratingWithState:&v99 objects:v111 count:16];
          if (v68)
          {
            v69 = v68;
            v70 = *v100;
            do
            {
              for (m = 0; m != v69; ++m)
              {
                if (*v100 != v70)
                {
                  objc_enumerationMutation(v24);
                }

                v72 = *(*(&v99 + 1) + 8 * m);
                if (([v22 containsObject:v72] & 1) == 0)
                {
                  [v22 addObject:v72];
                }
              }

              v69 = [v24 countByEnumeratingWithState:&v99 objects:v111 count:16];
            }

            while (v69);
          }

LABEL_85:

          allObjects = v85;
          goto LABEL_86;
        }
      }

      if (++v62 >= [v22 count])
      {
        goto LABEL_76;
      }
    }
  }

  [(IMAccount *)self endChanges];
}

- (void)renameGroup:(id)group to:(id)to
{
  groupCopy = group;
  toCopy = to;
  groupList = [(IMAccount *)self groupList];
  v8 = [groupList containsObject:groupCopy];

  if (v8)
  {
    [(IMAccount *)self beginChanges];
    groupList2 = [(IMAccount *)self groupList];
    v10 = [groupList2 mutableCopy];

    v11 = +[IMDaemonController sharedController];
    remoteDaemon = [v11 remoteDaemon];
    [remoteDaemon renameGroup:groupCopy to:toCopy account:self->_uniqueID];

    v13 = *MEMORY[0x1E69A6230];
    dictionary = [(NSMutableDictionary *)self->_coalescedChanges objectForKey:*MEMORY[0x1E69A6230]];
    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [(NSMutableDictionary *)self->_coalescedChanges setObject:dictionary forKey:v13];
    }

    [dictionary setObject:toCopy forKey:groupCopy];
    v15 = [v10 indexOfObject:groupCopy];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v10 replaceObjectAtIndex:v15 withObject:toCopy];
      [(IMAccount *)self reorderGroups:v10];
    }

    [(IMAccount *)self endChanges];
  }
}

- (void)reorderGroup:(id)group order:(id)order
{
  groupCopy = group;
  orderCopy = order;
  groupList = [(IMAccount *)self groupList];
  v8 = [groupList containsObject:groupCopy];

  if (v8)
  {
    [(IMAccount *)self beginChanges];
    v9 = *MEMORY[0x1E69A63B8];
    dictionary = [(NSMutableDictionary *)self->_coalescedChanges objectForKey:*MEMORY[0x1E69A63B8]];
    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [(NSMutableDictionary *)self->_coalescedChanges setObject:dictionary forKey:v9];
    }

    v11 = *MEMORY[0x1E69A61C0];
    dictionary2 = [dictionary objectForKey:*MEMORY[0x1E69A61C0]];
    if (!dictionary2)
    {
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:dictionary2 forKey:v11];
    }

    [dictionary2 setObject:orderCopy forKey:groupCopy];
    [(IMAccount *)self endChanges];
  }
}

- (void)reorderGroups:(id)groups
{
  groupsCopy = groups;
  if (groupsCopy)
  {
    v9 = groupsCopy;
    groupList = [(IMAccount *)self groupList];
    v6 = [v9 isEqualToArray:groupList];

    groupsCopy = v9;
    if ((v6 & 1) == 0)
    {
      [(IMAccount *)self beginChanges];
      v7 = *MEMORY[0x1E69A63B8];
      dictionary = [(NSMutableDictionary *)self->_coalescedChanges objectForKey:*MEMORY[0x1E69A63B8]];
      if (!dictionary)
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        [(NSMutableDictionary *)self->_coalescedChanges setObject:dictionary forKey:v7];
      }

      [dictionary setObject:v9 forKey:*MEMORY[0x1E69A6240]];
      [(IMAccount *)self endChanges];

      groupsCopy = v9;
    }
  }
}

- (id)propertiesForGroup:(id)group
{
  groupCopy = group;
  v5 = [(NSArray *)self->_groups count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *MEMORY[0x1E69A6228];
    while (1)
    {
      v9 = [(NSArray *)self->_groups objectAtIndex:v7];
      v10 = [v9 objectForKey:v8];
      if ([v10 length])
      {
        if ([v10 isEqualToString:groupCopy])
        {
          break;
        }
      }

      if (v6 == ++v7)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v9 = 0;
  }

  return v9;
}

- (id)groupMembers:(id)members
{
  v3 = [(IMAccount *)self propertiesForGroup:members];
  v4 = [v3 objectForKey:*MEMORY[0x1E69A6220]];

  return v4;
}

- (NSArray)groupList
{
  v3 = [(NSArray *)self->_groups count];
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:v3];
    v6 = 0;
    v7 = *MEMORY[0x1E69A6228];
    do
    {
      v8 = [(NSArray *)self->_groups objectAtIndex:v6];
      v9 = [v8 objectForKey:v7];
      if ([v9 length])
      {
        [v5 addObject:v9];
      }

      ++v6;
    }

    while (v4 != v6);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)endChanges
{
  coalesceCount = self->_coalesceCount;
  if (coalesceCount <= 0)
  {
    sub_1A84DF360();
    coalesceCount = v7;
  }

  self->_coalesceCount = coalesceCount - 1;
  if (![(IMAccount *)self makingChanges])
  {
    if ([(NSMutableDictionary *)self->_coalescedChanges count])
    {
      [(IMAccount *)self _applyChangesToTemporaryCache:self->_coalescedChanges];
      v4 = +[IMDaemonController sharedController];
      remoteDaemon = [v4 remoteDaemon];
      [remoteDaemon changeGroups:self->_coalescedChanges account:self->_uniqueID];
    }

    coalescedChanges = self->_coalescedChanges;
    self->_coalescedChanges = 0;
  }
}

- (void)holdBuddyUpdates
{
  [(IMAccount *)self beginChanges];
  numHolding = self->_numHolding;
  if (!numHolding)
  {
    v4 = +[IMDaemonController sharedController];
    remoteDaemon = [v4 remoteDaemon];
    uniqueID = [(IMAccount *)self uniqueID];
    [remoteDaemon holdBuddyUpdatesAccount:uniqueID];

    numHolding = self->_numHolding;
  }

  self->_numHolding = numHolding + 1;
}

- (void)_resumeBuddyUpdatesNow
{
  numHolding = self->_numHolding;
  if (numHolding <= 0)
  {
    sub_1A84DF3DC();
    numHolding = v7;
  }

  self->_numHolding = numHolding - 1;
  [(IMAccount *)self endChanges];
  if (!self->_numHolding)
  {
    v6 = +[IMDaemonController sharedController];
    remoteDaemon = [v6 remoteDaemon];
    uniqueID = [(IMAccount *)self uniqueID];
    [remoteDaemon resumeBuddyUpdatesAccount:uniqueID];
  }
}

- (void)buddyPropertiesChanged:(id)changed
{
  v14 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [changedCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(changedCopy);
        }

        [(IMAccount *)self existingIMHandleWithInfo:*(*(&v9 + 1) + 8 * v8)];

        ++v8;
      }

      while (v6 != v8);
      v6 = [changedCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)buddyPictureChanged:(id)changed imageData:(id)data imageHash:(id)hash
{
  dataCopy = data;
  hashCopy = hash;
  v9 = [(IMAccount *)self existingIMHandleWithID:changed];
  if ([dataCopy length])
  {
    v10 = dataCopy;
  }

  else
  {

    v10 = 0;
  }

  v12 = v10;
  [v9 setCustomPictureData:v10 key:hashCopy];
}

- (void)setBuddyProperties:(id)properties buddyPictures:(id)pictures
{
  v48 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  picturesCopy = pictures;
  if (!self->_hasReceivedSync)
  {
    v32 = picturesCopy;
    self->_syncedWithRemoteBuddyList = 1;
    [(IMAccount *)self _markHasSyncedWithRemoteBuddies];
    [(IMPeople *)self->_buddyList setShouldHidePeople:0];
    context = objc_autoreleasePoolPush();
    selfCopy = self;
    arrayOfAllIMHandles = [(IMAccount *)self arrayOfAllIMHandles];
    v8 = [arrayOfAllIMHandles copy];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v9)
    {
      v10 = *v42;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v42 != v10)
          {
            objc_enumerationMutation(obj);
          }

          [*(*(&v41 + 1) + 8 * i) beginNotificationQueue];
        }

        v9 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v9);
    }

    allKeys = [propertiesCopy allKeys];
    if ([allKeys count])
    {
      allValues = [propertiesCopy allValues];
      [(IMAccount *)selfCopy buddyPropertiesChanged:allValues];
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    allKeys2 = [v32 allKeys];
    v14 = [allKeys2 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v14)
    {
      v15 = *v38;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v38 != v15)
          {
            objc_enumerationMutation(allKeys2);
          }

          v17 = *(*(&v37 + 1) + 8 * j);
          v18 = [v32 objectForKey:v17];
          v19 = [v18 objectForKey:@"data"];
          v20 = [v18 objectForKey:@"key"];
          v21 = [(IMAccount *)selfCopy existingIMHandleWithID:v17];
          [v21 setCustomPictureData:v19 key:v20];
        }

        v14 = [allKeys2 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v14);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v22 = obj;
    v23 = [v22 countByEnumeratingWithState:&v33 objects:v45 count:16];
    if (v23)
    {
      v24 = *v34;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v34 != v24)
          {
            objc_enumerationMutation(v22);
          }

          [*(*(&v33 + 1) + 8 * k) releaseNotificationQueue];
        }

        v23 = [v22 countByEnumeratingWithState:&v33 objects:v45 count:16];
      }

      while (v23);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMAccountPropertiesAndPicturesLoadedNotification" object:selfCopy];

    objc_autoreleasePoolPop(context);
    picturesCopy = v32;
  }
}

- (void)_registrationStatusChanged:(id)changed
{
  countryCode = self->_countryCode;
  self->_countryCode = 0;

  [(IMAccount *)self loginIfActiveRegistered];
}

- (void)accountWillBeRemoved
{
  if (!self->_hasBeenRemoved)
  {
    self->_hasBeenRemoved = 1;
    loginIMHandle = self->_loginIMHandle;
    if (loginIMHandle)
    {
      [loginIMHandle _stopRetainingAccount:self];
      v4 = +[IMMe me];
      [v4 removeLoginIMHandle:self->_loginIMHandle];
    }
  }
}

- (void)accountDidDeactivate
{
  if ([(IMAccount *)self loginStatus]>= 2)
  {

    MEMORY[0x1EEE66B58](self, sel_setIMAccountLoginStatus_errorMessage_);
  }
}

- (BOOL)isApprovedForRelay
{
  v2 = +[IMAccountController sharedInstance];
  hasRelayApprovedAccount = [v2 hasRelayApprovedAccount];

  return hasRelayApprovedAccount;
}

- (BOOL)canSendMessages
{
  v26 = *MEMORY[0x1E69E9840];
  _aliases = [(IMAccount *)self _aliases];
  if ([_aliases count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = _aliases;
    v3 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v3)
    {
      v4 = v3;
      v18 = _aliases;
      v5 = *v22;
      v6 = *MEMORY[0x1E69A5568];
      v7 = *MEMORY[0x1E69A63C0];
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v22 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v21 + 1) + 8 * i);
          v10 = [v9 objectForKey:v6];
          v11 = v10;
          if (v10 && ([v10 BOOLValue] & 1) == 0)
          {
          }

          else
          {
            v12 = [v9 objectForKey:v7];
            lowercaseString = [v12 lowercaseString];
            trimmedString = [lowercaseString trimmedString];
            v15 = [(IMAccount *)self _aliasIsVisible:trimmedString];

            if (v15)
            {
              v16 = 1;
              goto LABEL_16;
            }
          }
        }

        v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v4);
      v16 = 0;
LABEL_16:
      _aliases = v18;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (void)_updateRegistrationStatus:(int)status error:(int)error info:(id)info
{
  v6 = *&error;
  v24 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v10 = infoCopy;
  if (*&self->_registrationStatus == __PAIR128__(v6, status) && (![(NSDictionary *)infoCopy count]|| self->_registrationAlertInfo))
  {
    if (v10)
    {
      if (!self->_registrationAlertInfo || [(NSDictionary *)v10 isEqualToDictionary:?])
      {
        goto LABEL_26;
      }
    }

    else if (![(NSDictionary *)self->_registrationAlertInfo count])
    {
      goto LABEL_26;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_registrationFailureReason];
      v13 = [MEMORY[0x1E696AD98] numberWithInt:v6];
      v20 = 138412546;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Registration failure reason updated from:%@ to:%@", &v20, 0x16u);
    }
  }

  self->_registrationStatus = status;
  self->_registrationFailureReason = v6;
  if (self->_registrationAlertInfo != v10)
  {
    objc_storeStrong(&self->_registrationAlertInfo, info);
  }

  WeakRetained = objc_loadWeakRetained(&self->_service);
  v15 = [WeakRetained supportsCapability:*MEMORY[0x1E69A79A0]];

  if (v15)
  {
    IMSetUserRegistrationFailureIntent();
  }

  v16 = 0;
  registrationStatus = self->_registrationStatus;
  if (v6 != -1 && registrationStatus == -1)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:self->_registrationFailureReason];
    [v16 setObject:v18 forKey:@"__kIMAccountRegistrationFailedReasonKey"];

    registrationStatus = self->_registrationStatus;
  }

  if (registrationStatus == -1 && [(NSDictionary *)self->_registrationAlertInfo count])
  {
    if (!v16)
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v16 addEntriesFromDictionary:self->_registrationAlertInfo];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kIMAccountRegistrationStatusChangedNotification" object:self userInfo:v16];

LABEL_26:
}

- (BOOL)registerAccount
{
  supportsRegistration = [(IMAccount *)self supportsRegistration];
  if (supportsRegistration)
  {
    v4 = +[IMDaemonController sharedController];
    remoteDaemon = [v4 remoteDaemon];
    uniqueID = [(IMAccount *)self uniqueID];
    [remoteDaemon registerAccount:uniqueID];
  }

  return supportsRegistration;
}

- (BOOL)unregisterAccount
{
  supportsRegistration = [(IMAccount *)self supportsRegistration];
  if (supportsRegistration)
  {
    v4 = +[IMDaemonController sharedController];
    remoteDaemon = [v4 remoteDaemon];
    uniqueID = [(IMAccount *)self uniqueID];
    [remoteDaemon unregisterAccount:uniqueID];
  }

  return supportsRegistration;
}

+ (id)nameOfLoginStatus:(unint64_t)status
{
  if (!qword_1ED767990[0])
  {
    qword_1ED767990[0] = @"Offline";

    v4 = qword_1ED767998;
    qword_1ED767998 = @"Disconnected";

    v5 = qword_1ED7679A0;
    qword_1ED7679A0 = @"Disconnecting...";

    v6 = qword_1ED7679A8;
    qword_1ED7679A8 = @"Connecting...";

    v7 = qword_1ED7679B0;
    qword_1ED7679B0 = @"Connected";
  }

  v8 = qword_1ED767990[status];

  return v8;
}

- (void)_notJustLoggedIn
{
  self->_justLoggedIn = 0;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kIMAccountNoLongerJustLoggedInNotification" object:self];
}

- (BOOL)isConnecting
{
  isActive = [(IMAccount *)self isActive];
  if (isActive)
  {
    LOBYTE(isActive) = [(IMAccount *)self loginStatus]>= 2 && [(IMAccount *)self loginStatus]< 4;
  }

  return isActive;
}

- (void)setIsActive:(BOOL)active
{
  self->_isActive = active;
  if (active)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMAccountActivatedNotification" object:self];
  }

  else
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMAccountDeactivatedNotification" object:self];
  }
}

- (void)setIMAccountLoginStatus:(unint64_t)status errorMessage:(id)message reason:(int)reason
{
  messageCopy = message;
  IMLogBacktrace();
  isActive = [(IMAccount *)self isActive];
  loginStatus = self->_loginStatus;
  v12 = status == 3 && loginStatus == 4;
  if (loginStatus != status && !v12)
  {
    v13 = isActive;
    self->_loginStatus = status;
    self->_justLoggedIn = status == 4;
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__notJustLoggedIn object:0];
    if (v13)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v15 = MEMORY[0x1E695DF20];
      v16 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
      v17 = [v15 dictionaryWithObjectsAndKeys:{v16, @"__kIMAccountLoginStatusChangedReasonKey", messageCopy, @"__kIMAccountLoginStatusChangedErrorMessageKey", 0}];
      [defaultCenter __mainThreadPostNotificationName:@"__kIMAccountLoginStatusChangedNotification" object:self userInfo:v17];
    }

    if (status > 1)
    {
      self->_hasPostedOfflineNotification = 0;
      if (status == 4)
      {
        [(IMAccount *)self _refreshLoginIMHandle];
        [(IMAccount *)self nowLoggedIn];
        defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
        v20 = MEMORY[0x1E695DF20];
        v21 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
        v22 = [v20 dictionaryWithObjectsAndKeys:{v21, @"__kIMAccountLoginStatusChangedReasonKey", messageCopy, @"__kIMAccountLoginStatusChangedErrorMessageKey", 0}];
        [defaultCenter2 __mainThreadPostNotificationName:@"__kIMAccountLoggedInNotification" object:self userInfo:v22];
      }
    }

    else
    {
      [(IMAccount *)self clearTargetState];
      [(IMAccount *)self forgetAllWatches];
      if (!self->_hasPostedOfflineNotification)
      {
        defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter3 __mainThreadPostNotificationName:@"__kIMAccountLoggedOutNotification" object:self];

        self->_hasPostedOfflineNotification = 1;
      }

      [(IMAccount *)self nowLoggedOut];
    }
  }

  if (loginStatus != status)
  {
    WeakRetained = objc_loadWeakRetained(&self->_service);
    [WeakRetained statusChangedForAccount:self from:loginStatus to:status];
  }
}

- (void)groupsChanged:(id)changed error:(id)error
{
  v81 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  errorCopy = error;
  if (!errorCopy)
  {
    if (!changedCopy)
    {
      goto LABEL_86;
    }

LABEL_6:
    if (self->_targetGroupState != changedCopy)
    {
      if (self->_lastReceivedGroupState != changedCopy)
      {
        objc_storeStrong(&self->_lastReceivedGroupState, changed);
      }

      if ([(IMAccount *)self isAwaitingTargetGroupState])
      {
        if (![(IMAccount *)self hasTargetGroupStateBeenMet])
        {
          goto LABEL_86;
        }

        [(IMAccount *)self clearTargetState];
      }
    }

    v50 = errorCopy;
    context = objc_autoreleasePoolPush();
    if (self->_groups == changedCopy || [(NSArray *)changedCopy isEqualToArray:?])
    {
LABEL_85:
      [(IMAccount *)self watchBuddiesIfNecessary];
      objc_autoreleasePoolPop(context);
      errorCopy = v50;
      goto LABEL_86;
    }

    v49 = changedCopy;
    buddyList = [(IMAccount *)self buddyList];
    [buddyList beginCoalescedChanges];

    objc_storeStrong(&self->_groups, changed);
    v52 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v53 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v55 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSArray count](self->_groups, "count")}];
    v58 = [(NSArray *)self->_groups count];
    if (v58)
    {
      v10 = 0;
      obj = *MEMORY[0x1E69A6228];
      v54 = *MEMORY[0x1E69A6220];
      do
      {
        v60 = v10;
        v62 = [(NSArray *)self->_groups objectAtIndex:?];
        v11 = v62;
        if (!v62 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v12 = [v62 objectForKey:obj];
          v13 = [v62 objectForKey:v54];
          if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v14 = [v13 count];
            v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v64 = v14;
            if (v14)
            {
              for (i = 0; v64 != i; ++i)
              {
                v17 = [v13 objectAtIndex:i];
                v18 = [v55 objectForKey:v17];
                if (v18)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    goto LABEL_26;
                  }
                }

                v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
                [v55 setObject:v18 forKey:v17];
LABEL_26:
                v19 = [(IMAccount *)self imHandleWithID:v17];
                v20 = [(NSMutableDictionary *)self->_sortOrders objectForKey:v12];
                if (v19)
                {
                  [v15 addObject:v19];
                  v21 = [v15 indexOfObjectIdenticalTo:v19];
                  if (v21 != [v20 indexOfObjectIdenticalTo:v19])
                  {
                    [v53 addObject:v19];
                  }
                }

                if (([v18 containsObject:v12] & 1) == 0)
                {
                  [v18 addObject:v12];
                }
              }
            }

            [v52 setObject:v15 forKey:v12];
          }

          v11 = v62;
        }

        v10 = v60 + 1;
      }

      while (v60 + 1 != v58);
    }

    v22 = self->_members;
    v65 = [v55 mutableCopy];
    objc_storeStrong(&self->_members, v55);
    v23 = v22;
    if (v22)
    {
      objc_opt_class();
      v24 = v65;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v23 = 0;
      }

      if (!v65)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v24 = v65;
      if (!v65)
      {
        goto LABEL_43;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_44:
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v61 = v23;
      obja = [(NSDictionary *)v23 allKeys];
      v63 = [obja countByEnumeratingWithState:&v74 objects:v80 count:16];
      if (v63)
      {
        v59 = *v75;
        do
        {
          for (j = 0; j != v63; ++j)
          {
            if (*v75 != v59)
            {
              objc_enumerationMutation(obja);
            }

            v26 = *(*(&v74 + 1) + 8 * j);
            v27 = MEMORY[0x1E695DFD8];
            v28 = [(NSDictionary *)v61 objectForKey:v26];
            v29 = [v27 setWithArray:v28];

            v30 = MEMORY[0x1E695DFD8];
            v31 = [v65 objectForKey:v26];
            v32 = [v30 setWithArray:v31];

            if (!v32)
            {
              v32 = [MEMORY[0x1E695DFD8] set];
            }

            v33 = [v29 count];
            v34 = [v32 count];
            v35 = [(IMAccount *)self imHandleWithID:v26];
            if ((v33 != 0) == (v34 == 0))
            {
              if (v33)
              {
                v36 = v34 == 0;
              }

              else
              {
                v36 = 0;
              }

              v37 = !v36;
              [(IMAccount *)self imHandle:v35 buddyStatusChanged:v37];
            }

            if (([v29 isEqualToSet:v32] & 1) == 0 && self->_syncedWithRemoteBuddyList && self->_hasReceivedSync)
            {
              [v35 postNotificationName:@"__kIMHandleGroupsChangedNotification"];
            }

            [v65 removeObjectForKey:v26];
          }

          v63 = [obja countByEnumeratingWithState:&v74 objects:v80 count:16];
        }

        while (v63);
      }

      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      allKeys = [v65 allKeys];
      v39 = [allKeys countByEnumeratingWithState:&v70 objects:v79 count:16];
      if (v39)
      {
        v40 = *v71;
        do
        {
          for (k = 0; k != v39; ++k)
          {
            if (*v71 != v40)
            {
              objc_enumerationMutation(allKeys);
            }

            v42 = [(IMAccount *)self imHandleWithID:*(*(&v70 + 1) + 8 * k)];
            [(IMAccount *)self imHandle:v42 buddyStatusChanged:1];
            if (self->_syncedWithRemoteBuddyList && self->_hasReceivedSync)
            {
              [v42 postNotificationName:@"__kIMHandleGroupsChangedNotification"];
            }
          }

          v39 = [allKeys countByEnumeratingWithState:&v70 objects:v79 count:16];
        }

        while (v39);
      }

      objc_storeStrong(&self->_sortOrders, v52);
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v43 = v53;
      v44 = [v43 countByEnumeratingWithState:&v66 objects:v78 count:16];
      if (v44)
      {
        v45 = *v67;
        do
        {
          for (m = 0; m != v44; ++m)
          {
            if (*v67 != v45)
            {
              objc_enumerationMutation(v43);
            }

            [*(*(&v66 + 1) + 8 * m) postNotificationName:@"__kIMHandleSortOrderChangedNotification"];
          }

          v44 = [v43 countByEnumeratingWithState:&v66 objects:v78 count:16];
        }

        while (v44);
      }

      if (!self->_syncedWithRemoteBuddyList)
      {
        [(IMAccount *)self _syncWithRemoteBuddies];
      }

      buddyList2 = [(IMAccount *)self buddyList];
      [buddyList2 endCoalescedChanges];

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter __mainThreadPostNotificationName:@"__kIMAccountGroupsChangedNotification" object:self];

      changedCopy = v49;
      goto LABEL_85;
    }

LABEL_43:
    v65 = 0;
    goto LABEL_44;
  }

  [(IMAccount *)self clearTargetState];
  if (changedCopy)
  {
    goto LABEL_6;
  }

  if ([(IMAccount *)self isAwaitingTargetGroupState])
  {
    [(IMAccount *)self clearTargetState];
    [(IMAccount *)self groupsChanged:self->_lastReceivedGroupState error:0];
  }

LABEL_86:
}

- (int64_t)compareNames:(id)names
{
  namesCopy = names;
  serviceName = [(IMAccount *)self serviceName];
  serviceName2 = [namesCopy serviceName];

  v7 = [serviceName localizedCompareToString:serviceName2];
  return v7;
}

- (void)_clearImageCache
{
  smallImage = self->_smallImage;
  self->_smallImage = 0;

  accountImage = self->_accountImage;
  self->_accountImage = 0;
}

- (NSArray)arrayOfAllIMHandles
{
  v17 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)self->_lock lock];
  if ([(NSMapTable *)self->_imHandles count])
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMapTable count](self->_imHandles, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = self->_imHandles;
    v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [(NSMapTable *)self->_imHandles objectForKey:*(*(&v12 + 1) + 8 * i), v12];
          [v3 addObject:v9];
        }

        v6 = [(NSMapTable *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    v10 = [v3 copy];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  [(NSRecursiveLock *)self->_lock unlock];

  return v10;
}

- (id)imHandleWithInfo:(id)info
{
  infoCopy = info;
  v5 = [infoCopy objectForKey:*MEMORY[0x1E69A6310]];
  if (v5)
  {
    v6 = [(IMAccount *)self imHandleWithID:v5];
    v7 = v6;
    if (v6)
    {
      [v6 propertiesChanged:infoCopy];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)existingIMHandleWithInfo:(id)info
{
  infoCopy = info;
  v5 = [infoCopy objectForKey:*MEMORY[0x1E69A6310]];
  if (v5)
  {
    v6 = [(IMAccount *)self existingIMHandleWithID:v5];
    v7 = v6;
    if (v6)
    {
      [v6 propertiesChanged:infoCopy];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)imHandleWithInfo:(id)info alreadyCanonical:(BOOL)canonical
{
  canonicalCopy = canonical;
  infoCopy = info;
  v7 = [infoCopy objectForKey:*MEMORY[0x1E69A6310]];
  if (v7)
  {
    v8 = [(IMAccount *)self imHandleWithID:v7 alreadyCanonical:canonicalCopy];
    v9 = v8;
    if (v8)
    {
      [v8 propertiesChanged:infoCopy];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)existingIMHandleWithInfo:(id)info alreadyCanonical:(BOOL)canonical
{
  canonicalCopy = canonical;
  infoCopy = info;
  v7 = [infoCopy objectForKey:*MEMORY[0x1E69A6310]];
  if (v7)
  {
    v8 = [(IMAccount *)self existingIMHandleWithID:v7 alreadyCanonical:canonicalCopy];
    v9 = v8;
    if (v8)
    {
      [v8 propertiesChanged:infoCopy];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)existingIMHandleWithID:(id)d alreadyCanonical:(BOOL)canonical
{
  dCopy = d;
  if (dCopy)
  {
    v7 = dCopy;
    if (canonical)
    {
      v8 = 0;
    }

    else
    {
      v10 = [(IMAccount *)self canonicalFormOfID:dCopy];
      if ([v7 isEqualToString:v10])
      {
        v8 = 0;
      }

      else
      {
        v8 = IMCleanupPhoneNumber();
      }

      v7 = v10;
    }

    [(NSRecursiveLock *)self->_lock lock];
    v9 = [(NSMapTable *)self->_imHandles objectForKey:v7];
    [(NSRecursiveLock *)self->_lock unlock];
    if (v8)
    {
      originalID = [v9 originalID];
      v12 = [originalID isEqualToString:v8];

      if ((v12 & 1) == 0)
      {
        trimmedString = [v8 trimmedString];
        if ([trimmedString length] < 4)
        {
        }

        else
        {
          v14 = [v8 hasPrefix:@"+"];

          if ((v14 & 1) == 0)
          {
            [v9 _updateOriginalID:v8];
            [v9 _setOriginalID:v8];
          }
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_imHandleWithID:(id)d alreadyCanonical:(BOOL)canonical originalID:(id)iD countryCode:(id)code
{
  dCopy = d;
  iDCopy = iD;
  codeCopy = code;
  if (!dCopy || ([MEMORY[0x1E695DFB0] null], v13 = objc_claimAutoreleasedReturnValue(), v13, v13 == dCopy))
  {
    v15 = 0;
  }

  else
  {
    if (canonical)
    {
      v14 = 0;
    }

    else
    {
      v16 = [(IMAccount *)self canonicalFormOfID:dCopy];
      if ([dCopy isEqualToString:v16])
      {
        v14 = 0;
      }

      else
      {
        v14 = IMCleanupPhoneNumber();
      }

      dCopy = v16;
    }

    v15 = [(IMAccount *)self existingIMHandleWithID:dCopy alreadyCanonical:1];
    if (!v15)
    {
      v15 = [[IMHandle alloc] initWithAccount:self ID:dCopy alreadyCanonical:1];
      defaultHandleCapabilities = [(IMAccount *)self defaultHandleCapabilities];
      if (defaultHandleCapabilities)
      {
        [(IMHandle *)v15 _setCapabilities:defaultHandleCapabilities];
      }
    }

    if (v14)
    {
      originalID = [(IMHandle *)v15 originalID];
      v19 = [originalID isEqualToString:v14];

      if ((v19 & 1) == 0)
      {
        trimmedString = [v14 trimmedString];
        if ([trimmedString length] < 4)
        {
        }

        else
        {
          v21 = [v14 hasPrefix:@"+"];

          if ((v21 & 1) == 0)
          {
            [(IMHandle *)v15 _updateOriginalID:v14];
            [(IMHandle *)v15 _setOriginalID:v14];
          }
        }
      }
    }
  }

  return v15;
}

- (id)imHandleWithID:(id)d countryCode:(id)code
{
  dCopy = d;
  codeCopy = code;
  if (dCopy)
  {
    if ([dCopy length] == 1 && (objc_msgSend(dCopy, "isEqualToString:", @"+") & 1) != 0)
    {
      v8 = 0;
      v9 = dCopy;
    }

    else
    {
      v10 = [(IMAccount *)self canonicalFormOfID:dCopy countryCode:codeCopy];
      if ([dCopy isEqualToString:v10])
      {
        v11 = 0;
      }

      else
      {
        v11 = IMCleanupPhoneNumber();
      }

      v9 = v10;

      v8 = [(IMAccount *)self existingIMHandleWithID:v9 alreadyCanonical:1];
      if (!v8)
      {
        v8 = [[IMHandle alloc] initWithAccount:self ID:v9 alreadyCanonical:1];
        defaultHandleCapabilities = [(IMAccount *)self defaultHandleCapabilities];
        if (defaultHandleCapabilities)
        {
          [(IMHandle *)v8 _setCapabilities:defaultHandleCapabilities];
        }
      }

      if (v11)
      {
        originalID = [(IMHandle *)v8 originalID];
        v14 = [originalID isEqualToString:v11];

        if ((v14 & 1) == 0)
        {
          trimmedString = [v11 trimmedString];
          if ([trimmedString length] < 4)
          {
          }

          else
          {
            v16 = [v11 hasPrefix:@"+"];

            if ((v16 & 1) == 0)
            {
              [(IMHandle *)v8 _updateOriginalID:v11];
              [(IMHandle *)v8 _setOriginalID:v11];
            }
          }
        }
      }
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  return v8;
}

- (id)existingIMHandleWithID:(id)d countryCode:(id)code
{
  dCopy = d;
  codeCopy = code;
  if (dCopy && ([dCopy isEqualToString:@"+"] & 1) == 0)
  {
    v9 = [(IMAccount *)self canonicalFormOfID:dCopy countryCode:codeCopy];
    if ([dCopy isEqualToString:v9])
    {
      v10 = 0;
    }

    else
    {
      v10 = IMCleanupPhoneNumber();
    }

    [(NSRecursiveLock *)self->_lock lock];
    imHandles = self->_imHandles;
    v12 = [(IMAccount *)self canonicalFormOfID:dCopy countryCode:codeCopy];
    v8 = [(NSMapTable *)imHandles objectForKey:v12];

    [(NSRecursiveLock *)self->_lock unlock];
    if (v10)
    {
      originalID = [v8 originalID];
      v14 = [originalID isEqualToString:v10];

      if ((v14 & 1) == 0)
      {
        trimmedString = [v10 trimmedString];
        if ([trimmedString length] < 4)
        {
        }

        else
        {
          v16 = [v10 hasPrefix:@"+"];

          if ((v16 & 1) == 0)
          {
            [v8 _updateOriginalID:v10];
            [v8 _setOriginalID:v10];
          }
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)sortOrderForIMHandle:(id)handle inGroup:(id)group
{
  sortOrders = self->_sortOrders;
  handleCopy = handle;
  v7 = [(NSMutableDictionary *)sortOrders objectForKey:group];
  v8 = [v7 indexOfObjectIdenticalTo:handleCopy];

  return v8;
}

- (void)setBuddyListAuthorization:(BOOL)authorization forIMHandle:(id)handle
{
  authorizationCopy = authorization;
  handleCopy = handle;
  v9 = +[IMDaemonController sharedController];
  remoteDaemon = [v9 remoteDaemon];
  v8 = [handleCopy ID];

  [remoteDaemon acceptSubscriptionRequest:authorizationCopy from:v8 account:self->_uniqueID];
}

- (void)requestBuddyListAuthorizationFromIMHandle:(id)handle
{
  handleCopy = handle;
  v7 = +[IMDaemonController sharedController];
  remoteDaemon = [v7 remoteDaemon];
  v6 = [handleCopy ID];

  [remoteDaemon requestSubscriptionTo:v6 account:self->_uniqueID];
}

- (id)handlesForCNContact:(id)contact
{
  contactCopy = contact;
  v4 = +[IMHandleRegistrar sharedInstance];
  identifier = [contactCopy identifier];

  v6 = [v4 handlesForCNIdentifier:identifier];
  allObjects = [v6 allObjects];

  return allObjects;
}

- (void)_watchBuddiesIfNecessary
{
  v16 = *MEMORY[0x1E69E9840];
  arrayOfAllIMHandles = [(IMAccount *)self arrayOfAllIMHandles];
  v4 = [arrayOfAllIMHandles copy];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (([v10 watchingIMHandle] & 1) == 0)
        {
          [(IMAccount *)self startWatchingIMHandle:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  self->_needToCheckForWatchedIMHandles = 0;
}

- (void)watchBuddiesIfNecessary
{
  if ([(IMAccount *)self hasCapability:0x200000000]&& !self->_needToCheckForWatchedIMHandles)
  {
    self->_needToCheckForWatchedIMHandles = 1;

    [(IMAccount *)self performSelector:sel__watchBuddiesIfNecessary withObject:0 afterDelay:1.0];
  }
}

- (void)startWatchingIMHandle:(id)handle
{
  handleCopy = handle;
  if ([(IMAccount *)self hasCapability:0x200000000]&& ![(IMHandle *)handleCopy watchingIMHandle]&& self->_loginIMHandle != handleCopy)
  {
    [(IMHandle *)handleCopy setHasTemporaryWatch:1];
    v4 = +[IMDaemonController sharedController];
    remoteDaemon = [v4 remoteDaemon];
    v6 = [(IMHandle *)handleCopy ID];
    [remoteDaemon startWatchingBuddy:v6 account:self->_uniqueID];
  }
}

- (void)stopWatchingIMHandle:(id)handle
{
  handleCopy = handle;
  if ([(IMHandle *)handleCopy watchingIMHandle]&& self->_loginIMHandle != handleCopy)
  {
    [(IMHandle *)handleCopy setHasTemporaryWatch:0];
    v4 = +[IMDaemonController sharedController];
    remoteDaemon = [v4 remoteDaemon];
    v6 = [(IMHandle *)handleCopy ID];
    [remoteDaemon stopWatchingBuddy:v6 account:self->_uniqueID];
  }
}

- (void)forgetAllWatches
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(IMAccount *)self hasCapability:0x200000000])
  {
    arrayOfAllIMHandles = [(IMAccount *)self arrayOfAllIMHandles];
    v4 = [arrayOfAllIMHandles copy];

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9++) setHasTemporaryWatch:{0, v10}];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)registerIMHandle:(id)handle
{
  handleCopy = handle;
  [(NSRecursiveLock *)self->_lock lock];
  v4 = [handleCopy ID];
  if (v4)
  {
    v5 = [(NSMapTable *)self->_imHandles objectForKey:v4];

    if (!v5)
    {
      [(NSMapTable *)self->_imHandles setObject:handleCopy forKey:v4];
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)unregisterIMHandleWithID:(id)d
{
  lock = self->_lock;
  dCopy = d;
  [(NSRecursiveLock *)lock lock];
  [(NSMapTable *)self->_imHandles removeObjectForKey:dCopy];

  v6 = self->_lock;

  [(NSRecursiveLock *)v6 unlock];
}

+ (id)arrayOfAllIMHandles
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = +[IMAccountController sharedInstance];
  accounts = [v3 accounts];

  v5 = [accounts countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(accounts);
        }

        arrayOfAllIMHandles = [*(*(&v11 + 1) + 8 * i) arrayOfAllIMHandles];
        if ([arrayOfAllIMHandles count])
        {
          [v2 addObjectsFromArray:arrayOfAllIMHandles];
        }
      }

      v6 = [accounts countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v2;
}

+ (id)allBuddyListIMHandles
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = +[IMAccountController sharedInstance];
  accounts = [v3 accounts];

  v5 = [accounts countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(accounts);
        }

        buddyList = [*(*(&v12 + 1) + 8 * i) buddyList];
        people = [buddyList people];
        [v2 addObjectsFromArray:people];
      }

      v6 = [accounts countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v2;
}

- (void)disconnectAllIMHandles
{
  v23 = *MEMORY[0x1E69E9840];
  login = [(IMAccount *)self login];
  v4 = [(IMAccount *)self imHandleWithID:login];
  [v4 statusChanged:1 message:&stru_1F1B76F98];

  groups = self->_groups;
  self->_groups = 0;

  members = self->_members;
  self->_members = 0;

  sortOrders = self->_sortOrders;
  self->_sortOrders = 0;

  arrayOfAllIMHandles = [(IMAccount *)self arrayOfAllIMHandles];
  v9 = [arrayOfAllIMHandles copy];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        v16 = +[IMHandleRegistrar sharedInstance];
        [v16 clearSiblingCacheForIMHandle:v15];

        buddyList = [(IMAccount *)self buddyList];
        [buddyList removeIMHandle:v15];

        [v15 statusChanged:0 message:&stru_1F1B76F98];
        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }
}

- (void)imHandle:(id)handle buddyStatusChanged:(BOOL)changed
{
  changedCopy = changed;
  handleCopy = handle;
  account = [handleCopy account];

  if (account == self)
  {
    buddyList = [(IMAccount *)self buddyList];
    if (([handleCopy isLoginIMHandle] & 1) == 0)
    {
      if (changedCopy)
      {
        [handleCopy setHasTemporaryWatch:0];
        if ([buddyList addIMHandle:handleCopy] && !objc_msgSend(handleCopy, "status") && self->_hasReceivedSync)
        {
          [handleCopy statusChanged:1];
        }
      }

      else
      {
        [buddyList removeIMHandle:handleCopy];
      }

      [handleCopy postNotificationName:@"__kIMHandleIsBuddyStatusChangedNotification"];
    }
  }
}

- (void)handleSubscriptionRequestFrom:(id)from withMessage:(id)message
{
  messageCopy = message;
  v6 = [(IMAccount *)self imHandleWithInfo:from];
  if ([v6 isBuddy])
  {
    [(IMAccount *)self setBuddyListAuthorization:1 forIMHandle:v6];
  }

  else if (messageCopy)
  {
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObject:messageCopy forKey:@"Message"];
    [v6 _postNotificationName:@"__kIMHandleAuthorizationRequestNotification" userInfo:v7];
  }

  else
  {
    [v6 _postNotificationName:@"__kIMHandleAuthorizationRequestNotification" userInfo:0];
  }
}

- (void)nowLoggedOut
{
  [(IMAccount *)self disconnectAllIMHandles];

  [(IMAccount *)self invalidSettings];
}

- (id)chatIDForRoomName:(id)name
{
  lowercaseString = [name lowercaseString];
  v5 = [lowercaseString stringByReplacingOccurrencesOfString:@" " withString:&stru_1F1B76F98];

  v6 = [v5 componentsSeparatedByString:@"@"];
  if ([v6 count])
  {
    __imFirstObject = [v6 __imFirstObject];
  }

  else
  {
    __imFirstObject = 0;
  }

  if ([v6 count] < 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v6 objectAtIndex:1];
  }

  if (![v8 length] || (-[IMAccount server](self, "server"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToString:", v9), v9, v10))
  {
    defaultChatSuffix = [(IMAccount *)self defaultChatSuffix];
    if ([defaultChatSuffix length])
    {
      v12 = defaultChatSuffix;

      v8 = v12;
    }
  }

  if ([v8 length])
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@@%@", __imFirstObject, v8];
  }

  else
  {
    v13 = __imFirstObject;
  }

  v14 = v13;

  return v14;
}

- (id)defaultChatSuffix
{
  if ([(IMAccount *)self hasCapability:0x8000000000])
  {
    v3 = [(IMAccount *)self objectForKey:*MEMORY[0x1E69A6418]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_FZChatRoomValidity)validityOfChatRoomName:(id)name
{
  nameCopy = name;
  v5 = [nameCopy length];
  service = [(IMAccount *)self service];
  serviceProperties = [service serviceProperties];
  v8 = [serviceProperties objectForKey:*MEMORY[0x1E69A5E38]];
  intValue = [v8 intValue];

  if (intValue)
  {
    v10 = v5 < 1;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = [nameCopy characterAtIndex:0];
    if ((v11 - 58) > 0xFFFFFFF5)
    {
      v29 = v11;
LABEL_31:
      v32 = 2;
      goto LABEL_36;
    }
  }

  service2 = [(IMAccount *)self service];
  serviceProperties2 = [service2 serviceProperties];
  v14 = [serviceProperties2 objectForKey:*MEMORY[0x1E69A5E28]];
  intValue2 = [v14 intValue];

  service3 = [(IMAccount *)self service];
  serviceProperties3 = [service3 serviceProperties];
  v18 = [serviceProperties3 objectForKey:*MEMORY[0x1E69A5E20]];
  intValue3 = [v18 intValue];

  service4 = [(IMAccount *)self service];
  serviceProperties4 = [service4 serviceProperties];
  v22 = [serviceProperties4 objectForKey:*MEMORY[0x1E69A5E30]];
  intValue4 = [v22 intValue];

  if (!(intValue2 | intValue4))
  {
LABEL_35:
    v32 = 0;
    v29 = 32;
    goto LABEL_36;
  }

  if (v5 < 1)
  {
    v34 = 1;
    if (intValue4)
    {
LABEL_33:
      if (v34)
      {
        defaultChatSuffix = [(IMAccount *)self defaultChatSuffix];
        v36 = [defaultChatSuffix length];

        if (!v36)
        {
LABEL_37:
          v29 = 64;
          v32 = 3;
          goto LABEL_36;
        }
      }
    }

    goto LABEL_35;
  }

  selfCopy = self;
  v24 = 0;
  v25 = (v5 - 1);
  v26 = v5 & 0x7FFFFFFF;
  v27 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v28 = [nameCopy characterAtIndex:v24];
    v29 = v28;
    if (intValue2)
    {
      v30 = !intValue3 && v28 == 32;
      v31 = v30;
      v32 = 1;
      v33 = (v28 - 58) >= 0xFFFFFFF6 || (v28 & 0xFFDF) - 91 >= 0xFFFFFFE6;
      if (!v33 || v31)
      {
        break;
      }
    }

    if (intValue4 && v28 == 64)
    {
      v29 = 64;
      if (v27 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_31;
      }

      v32 = 2;
      if (!v24)
      {
        break;
      }

      v27 = v24;
      if (v25 == v24)
      {
        goto LABEL_37;
      }
    }

    if (v26 == ++v24)
    {
      v34 = v27 == 0x7FFFFFFFFFFFFFFFLL;
      self = selfCopy;
      if (intValue4)
      {
        goto LABEL_33;
      }

      goto LABEL_35;
    }
  }

LABEL_36:

  return (v32 | (v29 << 32));
}

- (NSString)authorizationToken
{
  if ([(IMAccount *)self supportsAuthorization])
  {
    v3 = dispatch_semaphore_create(0);
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_1A8259AE0;
    v21 = sub_1A825AE9C;
    v22 = 0;
    mEMORY[0x1E699BE98] = [MEMORY[0x1E699BE98] sharedInstance];
    authorizationID = [(IMAccount *)self authorizationID];
    login = [(IMAccount *)self login];
    internalName = [(IMAccount *)self internalName];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = sub_1A8295DD8;
    v14 = &unk_1E78108D0;
    v16 = &v17;
    v8 = v3;
    v15 = v8;
    [mEMORY[0x1E699BE98] fetchAuthTokenForProfileID:authorizationID username:login service:internalName outRequestID:0 completionBlock:&v11];

    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    if ([v18[5] length])
    {
      v9 = v18[5];
    }

    else
    {
      v9 = 0;
    }

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)authenticateAccount
{
  v12 = *MEMORY[0x1E69E9840];
  supportsAuthorization = [(IMAccount *)self supportsAuthorization];
  if (supportsAuthorization)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [(IMAccount *)self uniqueID];
      v10 = 138412290;
      v11 = uniqueID;
      _os_log_impl(&dword_1A823F000, registration, OS_LOG_TYPE_DEFAULT, "Client request to authenticate account: %@", &v10, 0xCu);
    }

    v6 = +[IMDaemonController sharedController];
    remoteDaemon = [v6 remoteDaemon];
    uniqueID2 = [(IMAccount *)self uniqueID];
    [remoteDaemon authenticateAccount:uniqueID2];
  }

  return supportsAuthorization;
}

- (void)enrollDeviceInSMSRelay:(id)relay
{
  relayCopy = relay;
  v7 = +[IMDaemonController sharedController];
  remoteDaemon = [v7 remoteDaemon];
  uniqueID = [(IMAccount *)self uniqueID];
  [remoteDaemon enrollDeviceForSMSRelay:relayCopy account:uniqueID];
}

- (void)unEnrollDeviceInSMSRelay:(id)relay
{
  relayCopy = relay;
  v7 = +[IMDaemonController sharedController];
  remoteDaemon = [v7 remoteDaemon];
  uniqueID = [(IMAccount *)self uniqueID];
  [remoteDaemon unEnrollDeviceForSMSRelay:relayCopy account:uniqueID];
}

- (void)enrollSelfDeviceInSMSRelay
{
  v5 = +[IMDaemonController sharedController];
  remoteDaemon = [v5 remoteDaemon];
  uniqueID = [(IMAccount *)self uniqueID];
  [remoteDaemon enrollSelfDeviceForSMSRelay:uniqueID];
}

- (BOOL)updateAuthorizationCredentials:(id)credentials token:(id)token
{
  v23 = *MEMORY[0x1E69E9840];
  credentialsCopy = credentials;
  tokenCopy = token;
  supportsAuthorization = [(IMAccount *)self supportsAuthorization];
  if (supportsAuthorization)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v10 = IMGetEnvironmentName();
      *buf = 138412802;
      v18 = credentialsCopy;
      v19 = 2112;
      v20 = credentialsCopy;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_1A823F000, registration, OS_LOG_TYPE_DEFAULT, "Updating token for account %@:%@ (Environment: %@)", buf, 0x20u);
    }

    if (credentialsCopy)
    {
      [(IMAccount *)self _setObject:credentialsCopy forKey:*MEMORY[0x1E69A63F0]];
    }

    else
    {
      [(IMAccount *)self _removeObjectForKey:*MEMORY[0x1E69A63F0]];
    }

    mEMORY[0x1E699BE98] = [MEMORY[0x1E699BE98] sharedInstance];
    login = [(IMAccount *)self login];
    internalName = [(IMAccount *)self internalName];
    [mEMORY[0x1E699BE98] setAuthTokenForProfileID:credentialsCopy username:login service:internalName authToken:tokenCopy selfHandle:0 outRequestID:0 completionBlock:&unk_1F1B6DEA0];

    v14 = +[IMDaemonController sharedController];
    remoteDaemon = [v14 remoteDaemon];
    [remoteDaemon updateAuthorizationCredentials:credentialsCopy token:tokenCopy account:self->_uniqueID];

    [(IMAccount *)self writeSettings];
  }

  return supportsAuthorization;
}

- (NSDictionary)profileInfo
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(NSDictionary *)self->_profile count])
  {
    [v3 addEntriesFromDictionary:self->_profile];
  }

  if ([(NSMutableDictionary *)self->_profileChanges count])
  {
    [v3 addEntriesFromDictionary:self->_profileChanges];
  }

  return v3;
}

- (id)profileValueForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self->_profileChanges objectForKey:keyCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(NSDictionary *)self->_profile objectForKey:keyCopy];
  }

  v8 = v7;

  return v8;
}

- (id)profileStringForKey:(id)key
{
  v3 = [(IMAccount *)self profileValueForKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)removeProfileValueForKey:(id)key
{
  keyCopy = key;
  v5 = [(IMAccount *)self profileValueForKey:keyCopy];

  if (v5)
  {
    [(IMAccount *)self setProfileValue:0 forKey:keyCopy];
  }

  return v5 != 0;
}

- (BOOL)setProfileValue:(id)value forKey:(id)key
{
  v21 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  if (keyCopy)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = valueCopy;
      v19 = 2112;
      v20 = keyCopy;
      _os_log_impl(&dword_1A823F000, registration, OS_LOG_TYPE_DEFAULT, "Setting profile value: %@   forKey: %@", &v17, 0x16u);
    }

    v9 = [(IMAccount *)self profileValueForKey:keyCopy];
    if (v9 != valueCopy)
    {
      if (valueCopy)
      {
LABEL_10:
        if (!self->_profileChanges)
        {
          v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
          profileChanges = self->_profileChanges;
          self->_profileChanges = v13;
        }

        if (valueCopy)
        {
          v15 = valueCopy;
        }

        else
        {
          v15 = &stru_1F1B76F98;
        }

        [(NSMutableDictionary *)self->_profileChanges setObject:v15 forKey:keyCopy];
        v11 = 1;
        goto LABEL_17;
      }

      v10 = [(NSDictionary *)self->_profile objectForKey:keyCopy];
      if (v10)
      {

        goto LABEL_10;
      }

      v12 = [(NSMutableDictionary *)self->_profileChanges objectForKey:keyCopy];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    v11 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v11 = 0;
LABEL_18:

  return v11;
}

- (BOOL)setProfileString:(id)string forKey:(id)key
{
  stringCopy = string;
  keyCopy = key;
  if (keyCopy)
  {
    v8 = [(IMAccount *)self profileStringForKey:keyCopy];
    v9 = v8;
    v10 = (!stringCopy || !v8 || ([v8 isEqualToString:stringCopy] & 1) == 0) && -[IMAccount setProfileValue:forKey:](self, "setProfileValue:forKey:", stringCopy, keyCopy);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)validateProfile
{
  v11 = *MEMORY[0x1E69E9840];
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    profileInfo = [(IMAccount *)self profileInfo];
    v9 = 138412290;
    v10 = profileInfo;
    _os_log_impl(&dword_1A823F000, registration, OS_LOG_TYPE_DEFAULT, "Requesting validation of profile info: %@", &v9, 0xCu);
  }

  v5 = +[IMDaemonController sharedController];
  remoteDaemon = [v5 remoteDaemon];
  uniqueID = [(IMAccount *)self uniqueID];
  [remoteDaemon validateProfileAccount:uniqueID];

  return 1;
}

- (void)_updateProfileInfo:(id)info
{
  infoCopy = info;
  if ([infoCopy isEqualToDictionary:self->_profile])
  {
    goto LABEL_19;
  }

  v6 = [(IMAccount *)self profileValueForKey:@"Region"];
  v7 = [(IMAccount *)self profileValueForKey:@"Number"];
  profileValidationStatus = [(IMAccount *)self profileValidationStatus];
  profileValidationErrorReason = [(IMAccount *)self profileValidationErrorReason];
  objc_storeStrong(&self->_profile, info);
  v10 = [(IMAccount *)self profileValueForKey:*MEMORY[0x1E69A6478]];
  self->_profileStatus = [v10 intValue];

  v11 = [(IMAccount *)self profileValueForKey:@"Region"];
  v12 = v11;
  if (v11 == v6)
  {
  }

  else
  {
    v13 = [(IMAccount *)self profileValueForKey:@"Region"];
    v14 = [v13 isEqualToString:v6];

    if (!v14)
    {
LABEL_8:
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter __mainThreadPostNotificationName:@"__kIMAccountProfileChangedNotification" object:self];
      goto LABEL_9;
    }
  }

  defaultCenter = [(IMAccount *)self profileValueForKey:@"Number"];
  if (defaultCenter != v7)
  {
    v16 = [(IMAccount *)self profileValueForKey:@"Number"];
    v17 = [v16 isEqualToString:v7];

    if (v17)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

LABEL_9:

LABEL_10:
  if ([(IMAccount *)self profileValidationStatus]!= profileValidationStatus || [(IMAccount *)self profileValidationErrorReason]!= profileValidationErrorReason)
  {
    countryCode = self->_countryCode;
    self->_countryCode = 0;

    profileValidationStatus2 = [(IMAccount *)self profileValidationStatus];
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v21 = MEMORY[0x1E695DF20];
    v22 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IMAccount profileValidationStatus](self, "profileValidationStatus")}];
    v23 = [MEMORY[0x1E696AD98] numberWithInteger:profileValidationStatus];
    if (profileValidationStatus2 == -1)
    {
      v24 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IMAccount profileValidationErrorReason](self, "profileValidationErrorReason")}];
    }

    else
    {
      v24 = 0;
    }

    v25 = [v21 dictionaryWithObjectsAndKeys:{v22, @"__kIMAccountNewStatusKey", v23, @"__kIMAccountOldStatusKey", v24, @"__kIMAccountProfileValidationStatusFailedReasonKey", 0}];
    [defaultCenter2 __mainThreadPostNotificationName:@"__kIMAccountProfileValidationStatusChangedNotification" object:self userInfo:v25];

    if (profileValidationStatus2 == -1)
    {
    }
  }

LABEL_19:
}

- (NSArray)aliasesToRegister
{
  v2 = [(IMAccount *)self objectForKey:*MEMORY[0x1E69A6528]];
  v3 = _IDSCopyOrderedAliasStrings();

  array = [v3 array];

  return array;
}

- (BOOL)_aliasIsVisible:(id)visible
{
  visibleCopy = visible;
  if ([visibleCopy hasSuffix:@"inbox.appleid.apple.com"])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [(IMAccount *)self objectForKey:*MEMORY[0x1E69A55A0]];
    v5 = [v6 containsObject:visibleCopy] ^ 1;
  }

  return v5;
}

- (id)_aliasInfoForAlias:(id)alias
{
  v23 = *MEMORY[0x1E69E9840];
  lowercaseString = [alias lowercaseString];
  trimmedString = [lowercaseString trimmedString];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  _aliases = [(IMAccount *)self _aliases];
  v7 = [_aliases countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    v10 = *MEMORY[0x1E69A63C0];
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(_aliases);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 objectForKey:v10];
        lowercaseString2 = [v13 lowercaseString];
        trimmedString2 = [lowercaseString2 trimmedString];

        if ([trimmedString2 isEqualToString:trimmedString])
        {
          v16 = v12;

          goto LABEL_11;
        }
      }

      v8 = [_aliases countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (id)_statuses
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _aliases = [(IMAccount *)self _aliases];
  v3 = [_aliases countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v14;
    v7 = *MEMORY[0x1E69A63C8];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(_aliases);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (!v5)
        {
          v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        v10 = [v9 objectForKey:v7];
        if (v10)
        {
          v11 = [v9 objectForKey:v7];
          [v5 addObject:v11];
        }
      }

      v4 = [_aliases countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isMakoAccount
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  aliasesToRegister = [(IMAccount *)self aliasesToRegister];
  v4 = [aliasesToRegister countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(aliasesToRegister);
        }

        if (![(IMAccount *)self _aliasIsVisible:*(*(&v10 + 1) + 8 * i)])
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [aliasesToRegister countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (BOOL)hasAlias:(id)alias
{
  lowercaseString = [alias lowercaseString];
  trimmedString = [lowercaseString trimmedString];

  if ([trimmedString length])
  {
    aliases = [(IMAccount *)self aliases];
    v7 = [aliases containsObject:trimmedString];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)aliasesForType:(int64_t)type
{
  aliases = [(IMAccount *)self aliases];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A8297438;
  v8[3] = &unk_1E7810918;
  v8[4] = self;
  v8[5] = type;
  v6 = [aliases __imArrayByApplyingBlock:v8];

  return v6;
}

- (BOOL)addAlias:(id)alias
{
  v14 = *MEMORY[0x1E69E9840];
  aliasCopy = alias;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [(IMAccount *)self uniqueID];
    v10 = 138412546;
    v11 = aliasCopy;
    v12 = 2112;
    v13 = uniqueID;
    _os_log_impl(&dword_1A823F000, registration, OS_LOG_TYPE_DEFAULT, "Client request to add alias: %@   account: %@", &v10, 0x16u);
  }

  if (aliasCopy)
  {
    v7 = IMSingleObjectArray();
    v8 = [(IMAccount *)self addAliases:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)addAliases:(id)aliases
{
  v38 = *MEMORY[0x1E69E9840];
  aliasesCopy = aliases;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [(IMAccount *)self uniqueID];
    *buf = 138412546;
    v35 = aliasesCopy;
    v36 = 2112;
    v37 = uniqueID;
    _os_log_impl(&dword_1A823F000, registration, OS_LOG_TYPE_DEFAULT, "Client request to add aliases: %@   account: %@", buf, 0x16u);
  }

  if ([(IMAccount *)self accountType]== 2)
  {
    v7 = 0;
    v8 = aliasesCopy;
  }

  else
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = sub_1A8297918;
    v32[3] = &unk_1E7810940;
    v32[4] = self;
    v8 = [aliasesCopy __imArrayByApplyingBlock:v32];

    _aliases = [(IMAccount *)self _aliases];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_1A8297A18;
    v30[3] = &unk_1E7810940;
    v10 = _aliases;
    v31 = v10;
    v11 = [v8 __imArrayByApplyingBlock:v30];
    if ([v11 count])
    {
      _aliases2 = [(IMAccount *)self _aliases];
      v13 = [_aliases2 mutableCopy];

      if (!v13)
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = v11;
      v14 = v11;
      v15 = [v14 countByEnumeratingWithState:&v26 objects:v33 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v27;
        v18 = *MEMORY[0x1E69A63C0];
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v27 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v20 = [MEMORY[0x1E695DF20] dictionaryWithObject:*(*(&v26 + 1) + 8 * i) forKey:{v18, v24}];
            [v13 addObject:v20];
          }

          v16 = [v14 countByEnumeratingWithState:&v26 objects:v33 count:16];
        }

        while (v16);
      }

      [(IMAccount *)self _setLocalCachedObject:v13 forKey:*MEMORY[0x1E69A63E0]];
      if ([v8 count])
      {
        v21 = +[IMDaemonController sharedController];
        remoteDaemon = [v21 remoteDaemon];
        [remoteDaemon addAliases:v14 account:self->_uniqueID];
      }

      v7 = [v14 count] != 0;

      v11 = v25;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)addAlias:(id)alias type:(int64_t)type
{
  v14 = *MEMORY[0x1E69E9840];
  aliasCopy = alias;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [(IMAccount *)self uniqueID];
    v10 = 138412546;
    v11 = aliasCopy;
    v12 = 2112;
    v13 = uniqueID;
    _os_log_impl(&dword_1A823F000, registration, OS_LOG_TYPE_DEFAULT, "Client request to add alias: %@   account: %@", &v10, 0x16u);
  }

  v8 = [(IMAccount *)self addAlias:aliasCopy];
  return v8;
}

- (BOOL)removeAlias:(id)alias
{
  v14 = *MEMORY[0x1E69E9840];
  aliasCopy = alias;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [(IMAccount *)self uniqueID];
    v10 = 138412546;
    v11 = aliasCopy;
    v12 = 2112;
    v13 = uniqueID;
    _os_log_impl(&dword_1A823F000, registration, OS_LOG_TYPE_DEFAULT, "Client request to remove alias: %@  account: %@", &v10, 0x16u);
  }

  if (aliasCopy)
  {
    v7 = IMSingleObjectArray();
    v8 = [(IMAccount *)self removeAliases:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)removeAliases:(id)aliases
{
  v23 = *MEMORY[0x1E69E9840];
  aliasesCopy = aliases;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [(IMAccount *)self uniqueID];
    *buf = 138412546;
    v20 = aliasesCopy;
    v21 = 2112;
    v22 = uniqueID;
    _os_log_impl(&dword_1A823F000, registration, OS_LOG_TYPE_DEFAULT, "Client request to remove aliases: %@  account: %@", buf, 0x16u);
  }

  if ([(IMAccount *)self accountType]== 2)
  {
    v7 = 0;
  }

  else
  {
    v8 = [aliasesCopy __imArrayByApplyingBlock:&unk_1F1B6DEE0];
    _aliases = [(IMAccount *)self _aliases];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1A8297FA0;
    v17[3] = &unk_1E7810940;
    v10 = v8;
    v18 = v10;
    v11 = [_aliases __imArrayByApplyingBlock:v17];

    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v11;
      _os_log_impl(&dword_1A823F000, registration2, OS_LOG_TYPE_DEFAULT, "Final set of aliases after removes %@", buf, 0xCu);
    }

    if (v11 && [v11 count])
    {
      [(IMAccount *)self _setObject:v11 forKey:*MEMORY[0x1E69A63E0]];
    }

    else
    {
      array = [MEMORY[0x1E695DEC8] array];
      [(IMAccount *)self _setObject:array forKey:*MEMORY[0x1E69A63E0]];
    }

    if ([aliasesCopy count])
    {
      v14 = +[IMDaemonController sharedController];
      remoteDaemon = [v14 remoteDaemon];
      [remoteDaemon removeAliases:aliasesCopy account:self->_uniqueID];
    }

    v7 = [aliasesCopy count] != 0;
  }

  return v7;
}

- (int64_t)typeForAlias:(id)alias
{
  v3 = MEMORY[0x1E696AD48];
  aliasCopy = alias;
  v5 = objc_alloc_init(v3);
  [v5 addCharactersInString:@"+1234567890#* -()."];
  v6 = [aliasCopy stringByRemovingCharactersFromSet:v5];

  trimmedString = [v6 trimmedString];
  v8 = [trimmedString length];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  return v9;
}

- (BOOL)unvalidateAlias:(id)alias
{
  if (!alias)
  {
    return 0;
  }

  v4 = IMSingleObjectArray();
  LOBYTE(self) = [(IMAccount *)self unvalidateAliases:v4];

  return self;
}

- (BOOL)unvalidateAliases:(id)aliases
{
  aliasesCopy = aliases;
  if ([(IMAccount *)self accountType]== 2)
  {
    v5 = 0;
    v6 = aliasesCopy;
  }

  else
  {
    login = [(IMAccount *)self login];
    v8 = MEMORY[0x1AC56C3F0]();

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A8298280;
    v13[3] = &unk_1E7810940;
    v9 = v8;
    v14 = v9;
    v6 = [aliasesCopy __imArrayByApplyingBlock:v13];

    if ([v6 count])
    {
      v10 = +[IMDaemonController sharedController];
      remoteDaemon = [v10 remoteDaemon];
      [remoteDaemon unvalidateAliases:v6 account:self->_uniqueID];
    }

    v5 = [v6 count] != 0;
  }

  return v5;
}

- (BOOL)validateAlias:(id)alias
{
  v14 = *MEMORY[0x1E69E9840];
  aliasCopy = alias;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [(IMAccount *)self uniqueID];
    v10 = 138412546;
    v11 = aliasCopy;
    v12 = 2112;
    v13 = uniqueID;
    _os_log_impl(&dword_1A823F000, registration, OS_LOG_TYPE_DEFAULT, "Client request to validate alias: %@  account: %@", &v10, 0x16u);
  }

  if (aliasCopy)
  {
    v7 = IMSingleObjectArray();
    v8 = [(IMAccount *)self validateAliases:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)validateAliases:(id)aliases
{
  v16 = *MEMORY[0x1E69E9840];
  aliasesCopy = aliases;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [(IMAccount *)self uniqueID];
    v12 = 138412546;
    v13 = aliasesCopy;
    v14 = 2112;
    v15 = uniqueID;
    _os_log_impl(&dword_1A823F000, registration, OS_LOG_TYPE_DEFAULT, "Client request to validate aliases: %@  account: %@", &v12, 0x16u);
  }

  if ([(IMAccount *)self accountType]== 2)
  {
    v7 = 0;
    v8 = aliasesCopy;
  }

  else
  {
    v8 = [aliasesCopy __imArrayByApplyingBlock:&unk_1F1B6DF00];

    if ([v8 count])
    {
      v9 = +[IMDaemonController sharedController];
      remoteDaemon = [v9 remoteDaemon];
      [remoteDaemon validateAliases:v8 account:self->_uniqueID];
    }

    v7 = [v8 count] != 0;
  }

  return v7;
}

- (int64_t)validationStatusForAlias:(id)alias
{
  v4 = [(IMAccount *)self _aliasInfoForAlias:alias];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:*MEMORY[0x1E69A63C8]];
    intValue = [v6 intValue];

    if (intValue == 3 || ([v5 objectForKey:*MEMORY[0x1E69A63C0]], v8 = objc_claimAutoreleasedReturnValue(), -[IMAccount vettedAliases](self, "vettedAliases"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "containsObject:", v8), v9, v8, (v10 & 1) == 0))
    {
      v11 = intValue;
    }

    else
    {
      v11 = 3;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int64_t)validationErrorReasonForAlias:(id)alias
{
  v3 = [(IMAccount *)self _aliasInfoForAlias:alias];
  v4 = v3;
  if (v3 && ([v3 objectForKey:*MEMORY[0x1E69A63D8]], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    intValue = [v5 intValue];
  }

  else
  {
    intValue = -1;
  }

  return intValue;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self->_localCache objectForKey:keyCopy];

  if (v5)
  {
    localCache = self->_localCache;
LABEL_5:
    v8 = [(NSMutableDictionary *)localCache objectForKey:keyCopy];
    goto LABEL_6;
  }

  v7 = [(NSMutableDictionary *)self->_dataChanges objectForKey:keyCopy];

  if (v7)
  {
    localCache = self->_dataChanges;
    goto LABEL_5;
  }

  [(NSRecursiveLock *)self->_lock lock];
  v8 = [(NSDictionary *)self->_data objectForKey:keyCopy];
  [(NSRecursiveLock *)self->_lock unlock];
LABEL_6:

  return v8;
}

- (void)_setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (keyCopy)
  {
    if (!self->_dataChanges)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      dataChanges = self->_dataChanges;
      self->_dataChanges = v7;
    }

    if (objectCopy)
    {
      v9 = objectCopy;
    }

    else
    {
      v9 = &stru_1F1B76F98;
    }

    [(NSMutableDictionary *)self->_dataChanges setObject:v9 forKey:keyCopy];
    [(IMAccount *)self _invalidateCachedAliases];
  }
}

- (void)_setLocalCachedObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (keyCopy)
  {
    if (!self->_localCache)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      localCache = self->_localCache;
      self->_localCache = v7;
    }

    if (objectCopy)
    {
      v9 = objectCopy;
    }

    else
    {
      v9 = &stru_1F1B76F98;
    }

    [(NSMutableDictionary *)self->_localCache setObject:v9 forKey:keyCopy];
    [(IMAccount *)self _invalidateCachedAliases];
  }
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (qword_1EB2EA1C0 != -1)
  {
    sub_1A84DF44C();
  }

  if ([qword_1EB2EA1B8 containsObject:keyCopy])
  {
    [(IMAccount *)self _setObject:objectCopy forKey:keyCopy];
  }
}

- (id)stringForKey:(id)key
{
  v3 = [(IMAccount *)self objectForKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1F1B76F98;
  }

  return v4;
}

- (BOOL)BOOLForKey:(id)key
{
  v3 = [(IMAccount *)self objectForKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setBool:(BOOL)bool forKey:(id)key
{
  boolCopy = bool;
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithBool:boolCopy];
  [(IMAccount *)self setObject:v8 forKey:keyCopy];
}

- (void)_setBool:(BOOL)bool forKey:(id)key
{
  boolCopy = bool;
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithBool:boolCopy];
  [(IMAccount *)self _setObject:v8 forKey:keyCopy];
}

- (int64_t)integerForKey:(id)key
{
  v3 = [(IMAccount *)self objectForKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)setInteger:(int64_t)integer forKey:(id)key
{
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithInteger:integer];
  [(IMAccount *)self setObject:v8 forKey:keyCopy];
}

- (void)_setInteger:(int64_t)integer forKey:(id)key
{
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithInteger:integer];
  [(IMAccount *)self _setObject:v8 forKey:keyCopy];
}

- (id)_persistentPropertyForKey:(id)key
{
  accountPersistentPropertiesChanges = self->_accountPersistentPropertiesChanges;
  keyCopy = key;
  v6 = [(NSMutableDictionary *)accountPersistentPropertiesChanges objectForKey:keyCopy];

  v7 = 312;
  if (!v6)
  {
    v7 = 304;
  }

  v8 = [*(&self->super.isa + v7) objectForKey:keyCopy];

  return v8;
}

- (void)_setPersistentPropertyObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (keyCopy)
  {
    if (!self->_accountPersistentPropertiesChanges)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      accountPersistentPropertiesChanges = self->_accountPersistentPropertiesChanges;
      self->_accountPersistentPropertiesChanges = Mutable;
    }

    if (objectCopy)
    {
      v9 = objectCopy;
    }

    else
    {
      v9 = &stru_1F1B76F98;
    }

    [(NSMutableDictionary *)self->_accountPersistentPropertiesChanges setObject:v9 forKey:keyCopy];
  }
}

- (NSDictionary)accountPreferences
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(NSDictionary *)self->_accountPreferences count])
  {
    [v3 addEntriesFromDictionary:self->_accountPreferences];
  }

  if ([(NSMutableDictionary *)self->_accountPreferencesChanges count])
  {
    [v3 addEntriesFromDictionary:self->_accountPreferencesChanges];
  }

  return v3;
}

- (id)objectForPreferenceKey:(id)key
{
  accountPreferencesChanges = self->_accountPreferencesChanges;
  keyCopy = key;
  v6 = [(NSMutableDictionary *)accountPreferencesChanges objectForKey:keyCopy];

  v7 = 296;
  if (!v6)
  {
    v7 = 192;
  }

  v8 = [*(&self->super.isa + v7) objectForKey:keyCopy];

  return v8;
}

- (void)setObject:(id)object forPreferenceKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (keyCopy)
  {
    if (!self->_accountPreferencesChanges)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      accountPreferencesChanges = self->_accountPreferencesChanges;
      self->_accountPreferencesChanges = v7;
    }

    if (objectCopy)
    {
      v9 = objectCopy;
    }

    else
    {
      v9 = &stru_1F1B76F98;
    }

    [(NSMutableDictionary *)self->_accountPreferencesChanges setObject:v9 forKey:keyCopy];
  }
}

- (id)stringForPreferenceKey:(id)key
{
  v3 = [(IMAccount *)self objectForPreferenceKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)BOOLForPreferenceKey:(id)key
{
  v3 = [(IMAccount *)self objectForPreferenceKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setBool:(BOOL)bool forPreferenceKey:(id)key
{
  boolCopy = bool;
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithBool:boolCopy];
  [(IMAccount *)self setObject:v8 forPreferenceKey:keyCopy];
}

- (int)integerForPreferenceKey:(id)key
{
  v3 = [(IMAccount *)self objectForPreferenceKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (void)setInteger:(int)integer forPreferenceKey:(id)key
{
  v4 = *&integer;
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithInt:v4];
  [(IMAccount *)self setObject:v8 forPreferenceKey:keyCopy];
}

- (NSString)displayName
{
  v14 = *MEMORY[0x1E69E9840];
  aliases = [(IMAccount *)self aliases];
  v4 = _IDSCopyCallerID();
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    displayName = self->_displayName;
    v8 = 138412802;
    v9 = v4;
    v10 = 2112;
    v11 = displayName;
    v12 = 2112;
    v13 = aliases;
    _os_log_impl(&dword_1A823F000, registration, OS_LOG_TYPE_DEFAULT, " => Returning Caller ID: %@   (Set: %@   Aliases: %@)", &v8, 0x20u);
  }

  return v4;
}

- (void)setDisplayName:(id)name
{
  v13 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (self->_displayName != nameCopy)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      displayName = self->_displayName;
      v9 = 138412546;
      v10 = displayName;
      v11 = 2112;
      v12 = nameCopy;
      _os_log_impl(&dword_1A823F000, registration, OS_LOG_TYPE_DEFAULT, "Asked to change display name from: %@  to: %@", &v9, 0x16u);
    }

    if ((([(NSString *)nameCopy _appearsToBeEmail]& 1) != 0 || [(NSString *)nameCopy _appearsToBePhoneNumber]) && ([(NSString *)nameCopy _appearsToBeDSID]& 1) == 0 && [(IMAccount *)self _updateDisplayName:nameCopy])
    {
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        v8 = self->_displayName;
        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&dword_1A823F000, registration2, OS_LOG_TYPE_DEFAULT, " Changed display name to: %@", &v9, 0xCu);
      }

      [(IMAccount *)self _setObject:self->_displayName forKey:*MEMORY[0x1E69A6428]];
      [(IMAccount *)self writeSettings];
    }
  }
}

- (BOOL)_updateDisplayName:(id)name
{
  nameCopy = name;
  displayName = self->_displayName;
  if (displayName != nameCopy && ![(NSString *)displayName isEqualToString:nameCopy]&& ([(NSString *)nameCopy _appearsToBeDSID]& 1) == 0)
  {
    if (![(NSString *)nameCopy length]|| [(IMAccount *)self validationStatusForAlias:nameCopy]== 3 || ![(IMAccount *)self supportsRegistration])
    {
      objc_storeStrong(&self->_displayName, name);
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter __mainThreadPostNotificationName:@"__kIMAccountDisplayNameChangedNotification" object:self];

      v7 = 1;
      goto LABEL_5;
    }

    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
    {
      sub_1A84DF460(nameCopy, self, registration);
    }
  }

  v7 = 0;
LABEL_5:

  return v7;
}

- (void)deregisterAsIDSIDQueryControllerDelegate
{
  v13 = *MEMORY[0x1E69E9840];
  service = [(IMAccount *)self service];
  v4 = sub_1A824D260(service);

  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        keyTransparencyIDQueryListenerID = [(IMAccount *)self keyTransparencyIDQueryListenerID];
        v9 = 138412546;
        v10 = keyTransparencyIDQueryListenerID;
        v11 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Removing IDSIDQueryControllerDelegate with listenerID %@ for %@", &v9, 0x16u);
      }
    }

    mEMORY[0x1E69A4878] = [MEMORY[0x1E69A4878] sharedInstance];
    keyTransparencyIDQueryListenerID2 = [(IMAccount *)self keyTransparencyIDQueryListenerID];
    [mEMORY[0x1E69A4878] removeDelegate:self forService:v4 listenerID:keyTransparencyIDQueryListenerID2];
  }
}

- (void)idsKTVerifierResultsUpdatedForDestinations:(id)destinations service:(id)service
{
  v43 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  serviceCopy = service;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      accountDescription = [(IMAccount *)self accountDescription];
      allKeys = [destinationsCopy allKeys];
      v9 = [allKeys componentsJoinedByString:{@", "}];
      *buf = 138412802;
      *v40 = serviceCopy;
      *&v40[8] = 2112;
      *&v40[10] = accountDescription;
      v41 = 2112;
      v42 = v9;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Received KTVerifierResult update from IDS for service %@, account %@, uris %@", buf, 0x20u);
    }
  }

  v31 = [MEMORY[0x1E695DFA8] set];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  allKeys2 = [destinationsCopy allKeys];
  v11 = [allKeys2 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v11)
  {
    v12 = *v33;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(allKeys2);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        _stripFZIDPrefix = [v14 _stripFZIDPrefix];
        v16 = [destinationsCopy objectForKeyedSubscript:v14];
        v17 = +[IMKeyTransparencyController sharedController];
        v18 = [v17 ktVerifierResultForHandleID:_stripFZIDPrefix];

        if (_stripFZIDPrefix)
        {
          if (([v18 isEqual:v16] & 1) == 0)
          {
            if (IMOSLoggingEnabled())
            {
              v19 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                uiStatus = [v16 uiStatus];
                *buf = 138412546;
                *v40 = _stripFZIDPrefix;
                *&v40[8] = 2048;
                *&v40[10] = uiStatus;
                _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Updating status for URI: %@ to KTUIStatus: %lu", buf, 0x16u);
              }
            }

            v21 = +[IMKeyTransparencyController sharedController];
            [v21 setKTVerifierResult:v16 forHandleID:_stripFZIDPrefix];

            [v31 addObject:_stripFZIDPrefix];
          }
        }

        else if (IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *v40 = 0;
            _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "IDS tried to update the KTVerifierResult with no URI: %@. Skipping.", buf, 0xCu);
          }
        }
      }

      v11 = [allKeys2 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v11);
  }

  if ([v31 count])
  {
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = [v31 count];
        *buf = 67109378;
        *v40 = v24;
        *&v40[4] = 2112;
        *&v40[6] = v31;
        _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "IDS callback triggered update UI for %d changed handles: %@", buf, 0x12u);
      }
    }

    v36 = @"__kIMChatKTStatusChangedAffectedHandlesKey";
    allObjects = [v31 allObjects];
    v37 = allObjects;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMChatKeyTransparencyStatusChangedNotification" object:v29 userInfo:v26];
  }
}

@end