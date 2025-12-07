@interface CSDIDSService
+ (CSDIDSService)sharedInstance;
- (BOOL)_devicesArrayHasPairedDevice;
- (BOOL)checkValidityForSelfPseudonymString:(id)string;
- (BOOL)defaultPairedDeviceExists;
- (BOOL)hasActiveAccounts;
- (BOOL)isServiceEnabledForTelephonySubscriptionLabelIdentifier:(id)identifier;
- (BOOL)pairedDeviceExists;
- (BOOL)relayCapableDeviceExists;
- (BOOL)sendData:(id)data fromAccount:(id)account toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)telephonyCapableDeviceExists;
- (CSDIDSService)initWithName:(id)name;
- (CSDIDSService)initWithName:(id)name service:(id)service;
- (CSDIDSService)initWithName:(id)name service:(id)service queryController:(id)controller;
- (IDSAccount)account;
- (IDSDevice)defaultPairedDevice;
- (IDSDevice)pairedDevice;
- (NSArray)allAliases;
- (NSArray)devices;
- (NSSet)aliases;
- (NSSet)availableOutgoingRelayCallerIDs;
- (NSString)countryCode;
- (NSString)debugDescription;
- (NSString)localDeviceUniqueID;
- (id)accountForTelephonySubscriptionLabelIdentifier:(id)identifier;
- (id)accountWithCallerID:(id)d;
- (id)anyActiveAccount;
- (id)createGroupSessionProviderWithGroupID:(id)d participantDestinationIDs:(id)ds callerID:(id)iD account:(id)account queue:(id)queue isOneToOneModeEnabled:(BOOL)enabled localMember:(id)member avLess:(BOOL)self0 isScreenSharingRequest:(BOOL)self1 ABTestConfiguration:(id)self2 isInitiator:(BOOL)self3;
- (id)deviceDestinationsWithCapability:(id)capability localHandle:(id)handle;
- (id)deviceForFromID:(id)d;
- (id)deviceWithUniqueID:(id)d;
- (id)devicesWithCapability:(id)capability;
- (id)idsDeviceID;
- (id)pseudonymForPseudonymString:(id)string;
- (unint64_t)registrationRestrictionReason;
- (void)_noteAction:(int64_t)action onHandle:(id)handle completionHandle:(id)completionHandle;
- (void)_update;
- (void)accountController:(id)controller accountAdded:(id)added;
- (void)accountController:(id)controller accountEnabled:(id)enabled;
- (void)addFirewallEntriesForHandleToDate:(id)date;
- (void)addFirewallEntriesForHandles:(id)handles lastSeenDate:(id)date;
- (void)addFirewallEntryForHandle:(id)handle lastSeenDate:(id)date;
- (void)addServiceDelegate:(id)delegate queue:(id)queue;
- (void)checkValidityForPseudonymString:(id)string completion:(id)completion;
- (void)dealloc;
- (void)handleActiveAccountsChanged:(id)changed;
- (void)provisionPseudonymForHandle:(id)handle featureID:(id)d scopeID:(id)iD expiryDuration:(double)duration allowedServices:(id)services completionHandler:(id)handler;
- (void)removeAllFirewallEntries;
- (void)removeFirewallEntries:(id)entries;
- (void)removeServiceDelegate:(id)delegate;
- (void)renewPseudonym:(id)pseudonym expirationDate:(id)date completionHandler:(id)handler;
- (void)renewPseudonymString:(id)string expirationDate:(id)date completionHandler:(id)handler;
- (void)retrieveFirewallAndAddEntries:(id)entries;
- (void)revokePseudonym:(id)pseudonym completionHandler:(id)handler;
- (void)revokePseudonymString:(id)string completionHandler:(id)handler;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)service:(id)service didUpdatePseudonymsWithChanges:(id)changes;
- (void)service:(id)service nearbyDevicesChanged:(id)changed;
- (void)update;
@end

@implementation CSDIDSService

- (void)_update
{
  p_pairedDevice = &self->_pairedDevice;
  v32 = self->_pairedDevice;
  v4 = +[NSMutableSet set];
  defaultPairedDevice = self->_defaultPairedDevice;
  self->_defaultPairedDevice = 0;

  v6 = *p_pairedDevice;
  v33 = p_pairedDevice;
  *p_pairedDevice = 0;

  *&self->_telephonyCapableDeviceExists = 0;
  idsService = [(CSDIDSService *)self idsService];
  devices = [idsService devices];
  devices = self->_devices;
  self->_devices = devices;

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = self->_devices;
  v10 = [(NSArray *)obj countByEnumeratingWithState:&v40 objects:v59 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v41;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v40 + 1) + 8 * i);
        if ([v14 isDefaultPairedDevice])
        {
          objc_storeStrong(&self->_defaultPairedDevice, v14);
        }

        if ([v14 isPairedDevice])
        {
          objc_storeStrong(v33, v14);
        }

        if ([v14 supportsPhoneCalls])
        {
          self->_telephonyCapableDeviceExists = 1;
        }

        if (![v14 isDefaultPairedDevice] || objc_msgSend(v14, "isPairedDevice"))
        {
          self->_relayCapableDeviceExists = 1;
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        linkedUserURIs = [v14 linkedUserURIs];
        v16 = [linkedUserURIs countByEnumeratingWithState:&v36 objects:v58 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v37;
          do
          {
            for (j = 0; j != v17; j = j + 1)
            {
              if (*v37 != v18)
              {
                objc_enumerationMutation(linkedUserURIs);
              }

              _stripFZIDPrefix = [*(*(&v36 + 1) + 8 * j) _stripFZIDPrefix];
              [v4 addObject:_stripFZIDPrefix];
            }

            v17 = [linkedUserURIs countByEnumeratingWithState:&v36 objects:v58 count:16];
          }

          while (v17);
        }
      }

      v11 = [(NSArray *)obj countByEnumeratingWithState:&v40 objects:v59 count:16];
    }

    while (v11);
  }

  v21 = [v4 copy];
  availableOutgoingRelayCallerIDs = self->_availableOutgoingRelayCallerIDs;
  self->_availableOutgoingRelayCallerIDs = v21;

  v24 = sub_100004778(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    obja = self->_availableOutgoingRelayCallerIDs;
    v25 = self->_defaultPairedDevice != 0;
    v26 = self->_pairedDevice != 0;
    telephonyCapableDeviceExists = self->_telephonyCapableDeviceExists;
    relayCapableDeviceExists = self->_relayCapableDeviceExists;
    v29 = [(NSArray *)self->_devices arrayByApplyingSelector:"name"];
    v30 = [v29 componentsJoinedByString:{@", "}];
    *buf = 138413826;
    selfCopy = self;
    v46 = 1024;
    v47 = v25;
    v48 = 1024;
    v49 = v26;
    v50 = 1024;
    v51 = telephonyCapableDeviceExists;
    v52 = 1024;
    v53 = relayCapableDeviceExists;
    v54 = 2112;
    v55 = obja;
    v56 = 2112;
    v57 = v30;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%@ updated state: defaultPairedDeviceExists=%d, pairedDeviceExists=%d, telephonyCapableDeviceExists=%d, relayCapableDeviceExists=%d, availableOutgoingRelayCallerIDs=%@ deviceNames=%@", buf, 0x38u);
  }

  if (v32 != *v33)
  {
    [(CSDIDSService *)self _handlePairedDeviceChangedFrom:v32 to:?];
  }

  v31 = +[NSNotificationCenter defaultCenter];
  [v31 postNotificationName:@"CSDIDSDeviceListChangedNotification" object:self];
}

- (NSArray)devices
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100028730;
  v11 = sub_100032914;
  v12 = 0;
  queue = [(CSDIDSService *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001CF28;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)pairedDeviceExists
{
  pairedDevice = [(CSDIDSService *)self pairedDevice];
  v3 = pairedDevice != 0;

  return v3;
}

- (IDSDevice)pairedDevice
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100028730;
  v11 = sub_100032914;
  v12 = 0;
  queue = [(CSDIDSService *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000288C8;
  v6[3] = &unk_10061C1E0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)_devicesArrayHasPairedDevice
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_devices;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isPairedDevice])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

+ (CSDIDSService)sharedInstance
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CSDIDSService.m" lineNumber:60 description:@"All CSDIDSService subclasses must override +sharedInstance"];

  return 0;
}

- (CSDIDSService)initWithName:(id)name
{
  nameCopy = name;
  v5 = [[IDSService alloc] initWithService:nameCopy];
  v6 = [(CSDIDSService *)self initWithName:nameCopy service:v5];

  return v6;
}

- (CSDIDSService)initWithName:(id)name service:(id)service
{
  serviceCopy = service;
  nameCopy = name;
  v8 = +[IDSIDQueryController sharedInstance];
  v9 = [(CSDIDSService *)self initWithName:nameCopy service:serviceCopy queryController:v8];

  return v9;
}

- (CSDIDSService)initWithName:(id)name service:(id)service queryController:(id)controller
{
  nameCopy = name;
  serviceCopy = service;
  controllerCopy = controller;
  v34.receiver = self;
  v34.super_class = CSDIDSService;
  v11 = [(CSDIDSService *)&v34 init];
  if (v11)
  {
    v12 = [NSString stringWithFormat:@"com.apple.telephonyutilities.callservicesd.%@", objc_opt_class()];
    v13 = dispatch_queue_create([v12 UTF8String], 0);
    queue = v11->_queue;
    v11->_queue = v13;

    v15 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v15;

    v17 = [[IDSAccountController alloc] initWithService:nameCopy];
    accountController = v11->_accountController;
    v11->_accountController = v17;

    [(IDSAccountController *)v11->_accountController addDelegate:v11 queue:v11->_queue];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    accounts = [(IDSAccountController *)v11->_accountController accounts];
    v20 = [accounts countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v31;
      do
      {
        v23 = 0;
        do
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(accounts);
          }

          [*(*(&v30 + 1) + 8 * v23) addRegistrationDelegate:v11 queue:v11->_queue];
          v23 = v23 + 1;
        }

        while (v21 != v23);
        v21 = [accounts countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v21);
    }

    objc_storeStrong(&v11->_idsService, service);
    objc_storeStrong(&v11->_idsQueryController, controller);
    v24 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v11->_featureFlags;
    v11->_featureFlags = v24;

    [(CSDIDSService *)v11 addServiceDelegate:v11 queue:v11->_queue];
    v26 = v11->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002416B0;
    block[3] = &unk_100619D38;
    v29 = v11;
    dispatch_async(v26, block);
  }

  return v11;
}

- (void)dealloc
{
  idsService = [(CSDIDSService *)self idsService];
  [idsService removeDelegate:self];

  v4.receiver = self;
  v4.super_class = CSDIDSService;
  [(CSDIDSService *)&v4 dealloc];
}

- (NSString)debugDescription
{
  v3 = [NSMutableString stringWithFormat:@"%@\n", self];
  devices = [(CSDIDSService *)self devices];
  [v3 appendFormat:@"    devices: %@\n", devices];

  availableOutgoingRelayCallerIDs = [(CSDIDSService *)self availableOutgoingRelayCallerIDs];
  [v3 appendFormat:@"    availableOutgoingRelayCallerIDs: %@\n", availableOutgoingRelayCallerIDs];

  defaultPairedDevice = [(CSDIDSService *)self defaultPairedDevice];
  [v3 appendFormat:@"    defaultPairedDevice: %@\n", defaultPairedDevice];

  pairedDevice = [(CSDIDSService *)self pairedDevice];
  [v3 appendFormat:@"    pairedDevice: %@\n", pairedDevice];

  if ([(CSDIDSService *)self telephonyCapableDeviceExists])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v3 appendFormat:@"    telephonyCapableDeviceExists: %@\n", v8];
  if ([(CSDIDSService *)self relayCapableDeviceExists])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v3 appendFormat:@"    relayCapableDeviceExists: %@\n", v9];

  return v3;
}

- (NSArray)allAliases
{
  v3 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  idsService = [(CSDIDSService *)self idsService];
  accounts = [idsService accounts];

  v6 = [accounts countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(accounts);
        }

        vettedAliases = [*(*(&v13 + 1) + 8 * i) vettedAliases];
        [v3 addObjectsFromArray:vettedAliases];
      }

      v7 = [accounts countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v3 copy];

  return v11;
}

- (id)anyActiveAccount
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  idsService = [(CSDIDSService *)self idsService];
  accounts = [idsService accounts];

  v4 = [accounts countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(accounts);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 canSend])
        {
          v10 = v9;

          v6 = v10;
        }
      }

      v5 = [accounts countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasActiveAccounts
{
  idsService = [(CSDIDSService *)self idsService];
  accounts = [idsService accounts];
  v4 = [accounts count] != 0;

  return v4;
}

- (id)accountWithCallerID:(id)d
{
  dCopy = d;
  anyActiveAccount = [(CSDIDSService *)self anyActiveAccount];
  v6 = anyActiveAccount;
  if (anyActiveAccount)
  {
    anyObject = anyActiveAccount;
  }

  else
  {
    idsService = [(CSDIDSService *)self idsService];
    accounts = [idsService accounts];
    anyObject = [accounts anyObject];
  }

  if (!dCopy)
  {
    v14 = 0;
    goto LABEL_41;
  }

  v34 = anyObject;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  idsService2 = [(CSDIDSService *)self idsService];
  accounts2 = [idsService2 accounts];

  v12 = [accounts2 countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (!v12)
  {
    v14 = 0;
    goto LABEL_40;
  }

  v13 = v12;
  v14 = 0;
  v15 = *v48;
  v35 = *v48;
  v36 = accounts2;
  do
  {
    v16 = 0;
    v38 = v13;
    do
    {
      if (*v48 != v15)
      {
        objc_enumerationMutation(accounts2);
      }

      v17 = *(*(&v47 + 1) + 8 * v16);
      if ([v17 canSend] && objc_msgSend(dCopy, "destinationIdIsPseudonym"))
      {
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        pseudonyms = [v17 pseudonyms];
        v19 = [pseudonyms countByEnumeratingWithState:&v43 objects:v52 count:16];
        if (v19)
        {
          v20 = v19;
          v37 = v14;
          v21 = *v44;
          while (2)
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v44 != v21)
              {
                objc_enumerationMutation(pseudonyms);
              }

              v23 = [*(*(&v43 + 1) + 8 * i) URI];
              prefixedURI = [v23 prefixedURI];
              v25 = [prefixedURI isEqualToString:dCopy];

              if (v25)
              {
                accounts2 = v36;
                v14 = v37;
                v15 = v35;
                goto LABEL_32;
              }
            }

            v20 = [pseudonyms countByEnumeratingWithState:&v43 objects:v52 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }

          accounts2 = v36;
          v14 = v37;
          v15 = v35;
LABEL_33:
          v13 = v38;
        }
      }

      else
      {
        if (![v17 canSend])
        {
          goto LABEL_35;
        }

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        pseudonyms = [v17 aliasStrings];
        v26 = [pseudonyms countByEnumeratingWithState:&v39 objects:v51 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v40;
          while (2)
          {
            for (j = 0; j != v27; j = j + 1)
            {
              if (*v40 != v28)
              {
                objc_enumerationMutation(pseudonyms);
              }

              if ([*(*(&v39 + 1) + 8 * j) isEqualToString:dCopy])
              {
LABEL_32:
                v30 = v17;

                v14 = v30;
                goto LABEL_33;
              }
            }

            v27 = [pseudonyms countByEnumeratingWithState:&v39 objects:v51 count:16];
            if (v27)
            {
              continue;
            }

            goto LABEL_33;
          }
        }
      }

LABEL_35:
      v16 = v16 + 1;
    }

    while (v16 != v13);
    v13 = [accounts2 countByEnumeratingWithState:&v47 objects:v53 count:16];
  }

  while (v13);
LABEL_40:

  anyObject = v34;
LABEL_41:
  if (v14)
  {
    v31 = v14;
  }

  else
  {
    v31 = anyObject;
  }

  v32 = v31;

  return v31;
}

- (IDSAccount)account
{
  callerID = [(CSDIDSService *)self callerID];
  v4 = [(CSDIDSService *)self accountWithCallerID:callerID];

  return v4;
}

- (id)idsDeviceID
{
  account = [(CSDIDSService *)self account];
  loginID = [account loginID];
  iDSFormattedDestinationID = [loginID IDSFormattedDestinationID];

  return iDSFormattedDestinationID;
}

- (void)addServiceDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  idsService = [(CSDIDSService *)self idsService];
  [idsService addDelegate:delegateCopy queue:queueCopy];
}

- (void)removeServiceDelegate:(id)delegate
{
  delegateCopy = delegate;
  idsService = [(CSDIDSService *)self idsService];
  [idsService removeDelegate:delegateCopy];
}

- (BOOL)sendData:(id)data fromAccount:(id)account toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  dataCopy = data;
  destinationsCopy = destinations;
  accountCopy = account;
  v18 = [options mutableCopy];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = objc_alloc_init(NSMutableDictionary);
  }

  v21 = v20;

  v22 = [[CSDMessagingConversationMessage alloc] initWithData:dataCopy];
  v23 = v22;
  if (v22 && [(CSDMessagingConversationMessage *)v22 type]>= 30)
  {
    priorityCopy = priority;
    identifierCopy = identifier;
    v24 = IDSSendMessageOptionRequireAllRegistrationPropertiesKey;
    v25 = [v21 objectForKeyedSubscript:IDSSendMessageOptionRequireAllRegistrationPropertiesKey];
    if (v25 && (v26 = v25, [v21 objectForKeyedSubscript:v24], v34 = self, v27 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v27, self = v34, v26, (isKindOfClass & 1) != 0))
    {
      v29 = [v21 objectForKeyedSubscript:v24];
      v30 = [v29 mutableCopy];

      self = v34;
      [v30 addObject:IDSRegistrationPropertySupportsSelfOneToOneInvites];
    }

    else
    {
      v30 = [NSSet setWithObject:IDSRegistrationPropertySupportsSelfOneToOneInvites];
    }

    [v21 setObject:v30 forKeyedSubscript:v24];

    priority = priorityCopy;
    identifier = identifierCopy;
  }

  service = [(CSDIDSService *)self service];
  v32 = [service sendData:dataCopy fromAccount:accountCopy toDestinations:destinationsCopy priority:priority options:v21 identifier:identifier error:error];

  return v32;
}

- (NSSet)aliases
{
  idsService = [(CSDIDSService *)self idsService];
  aliases = [idsService aliases];

  return aliases;
}

- (id)createGroupSessionProviderWithGroupID:(id)d participantDestinationIDs:(id)ds callerID:(id)iD account:(id)account queue:(id)queue isOneToOneModeEnabled:(BOOL)enabled localMember:(id)member avLess:(BOOL)self0 isScreenSharingRequest:(BOOL)self1 ABTestConfiguration:(id)self2 isInitiator:(BOOL)self3
{
  enabledCopy = enabled;
  HIDWORD(v30) = request;
  configurationCopy = configuration;
  memberCopy = member;
  queueCopy = queue;
  accountCopy = account;
  iDCopy = iD;
  dsCopy = ds;
  dCopy = d;
  v25 = [CSDIDSGroupSessionProvider alloc];
  isLightweightMember = [memberCopy isLightweightMember];

  LOBYTE(v30) = initiator;
  *(&v29 + 1) = __PAIR16__(request, less);
  LOBYTE(v29) = isLightweightMember;
  v27 = [CSDIDSGroupSessionProvider initWithGroupID:v25 participantDestinationIDs:"initWithGroupID:participantDestinationIDs:callerID:account:queue:isOneToOneModeEnabled:isLightweightMember:avLess:isScreenSharingRequest:ABTestConfiguration:isInitiator:" callerID:dCopy account:dsCopy queue:iDCopy isOneToOneModeEnabled:accountCopy isLightweightMember:queueCopy avLess:enabledCopy isScreenSharingRequest:v29 ABTestConfiguration:configurationCopy isInitiator:v30];

  return v27;
}

- (id)accountForTelephonySubscriptionLabelIdentifier:(id)identifier
{
  identifierCopy = identifier;
  idsService = [(CSDIDSService *)self idsService];
  v6 = [idsService accountMatchingSimIdentifier:identifierCopy];

  return v6;
}

- (BOOL)isServiceEnabledForTelephonySubscriptionLabelIdentifier:(id)identifier
{
  v3 = [(CSDIDSService *)self accountForTelephonySubscriptionLabelIdentifier:identifier];
  v4 = v3 != 0;

  return v4;
}

- (void)addFirewallEntriesForHandleToDate:(id)date
{
  dateCopy = date;
  featureFlags = [(CSDIDSService *)self featureFlags];
  offrampEnabled = [featureFlags offrampEnabled];

  if (offrampEnabled)
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = dateCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Adding firewall entries for dictionary: %@", buf, 0xCu);
    }

    +[NSMutableArray array];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1002426B8;
    v12 = v11[3] = &unk_10061F7A8;
    v9 = v12;
    [dateCopy enumerateKeysAndObjectsUsingBlock:v11];
    v10 = [v9 copy];
    [(CSDIDSService *)self retrieveFirewallAndAddEntries:v10];
  }
}

- (void)addFirewallEntryForHandle:(id)handle lastSeenDate:(id)date
{
  dateCopy = date;
  v7 = [NSArray arrayWithObject:handle];
  [(CSDIDSService *)self addFirewallEntriesForHandles:v7 lastSeenDate:dateCopy];
}

- (void)addFirewallEntriesForHandles:(id)handles lastSeenDate:(id)date
{
  handlesCopy = handles;
  dateCopy = date;
  featureFlags = [(CSDIDSService *)self featureFlags];
  offrampEnabled = [featureFlags offrampEnabled];

  if (offrampEnabled)
  {
    selfCopy = self;
    v11 = sub_100004778(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v32 = dateCopy;
      v33 = 2112;
      v34 = handlesCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Adding firewall entries with time %@ for handles: %@", buf, 0x16u);
    }

    v25 = +[NSMutableArray array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = handlesCopy;
    v12 = handlesCopy;
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v26 + 1) + 8 * i);
          normalizedValue = [v17 normalizedValue];
          v19 = [IDSURI URIWithUnprefixedURI:normalizedValue];

          if (v19)
          {
            v21 = [[IDSFirewallEntry alloc] initWithURI:v19 andLastSeenDate:dateCopy];
            if (v21)
            {
              [v25 addObject:v21];
            }
          }

          else
          {
            v21 = sub_100004778(v20);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v32 = v17;
              v33 = 2112;
              v34 = 0;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Not adding handle %@ to firewall since uri %@ is nil", buf, 0x16u);
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v14);
    }

    v22 = [v25 copy];
    [(CSDIDSService *)selfCopy retrieveFirewallAndAddEntries:v22];

    handlesCopy = v24;
  }
}

- (void)retrieveFirewallAndAddEntries:(id)entries
{
  entriesCopy = entries;
  featureFlags = [(CSDIDSService *)self featureFlags];
  offrampEnabled = [featureFlags offrampEnabled];

  if (offrampEnabled)
  {
    service = [(CSDIDSService *)self service];
    queue = [(CSDIDSService *)self queue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100242B78;
    v9[3] = &unk_10061F7D0;
    v10 = entriesCopy;
    [service retrieveFirewallWithQueue:queue completion:v9];
  }
}

- (void)removeAllFirewallEntries
{
  featureFlags = [(CSDIDSService *)self featureFlags];
  offrampEnabled = [featureFlags offrampEnabled];

  if (offrampEnabled)
  {
    v6 = sub_100004778(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removing all IDSFirewall entries", v9, 2u);
    }

    service = [(CSDIDSService *)self service];
    queue = [(CSDIDSService *)self queue];
    [service retrieveFirewallWithQueue:queue completion:&stru_10061F810];
  }
}

- (void)removeFirewallEntries:(id)entries
{
  entriesCopy = entries;
  featureFlags = [(CSDIDSService *)self featureFlags];
  offrampEnabled = [featureFlags offrampEnabled];

  if (offrampEnabled)
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = entriesCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removing handles from IDSFirewall: %@", buf, 0xCu);
    }

    service = [(CSDIDSService *)self service];
    queue = [(CSDIDSService *)self queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1002431BC;
    v11[3] = &unk_10061F7D0;
    v12 = entriesCopy;
    [service retrieveFirewallWithQueue:queue completion:v11];
  }
}

- (id)deviceWithUniqueID:(id)d
{
  dCopy = d;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  devices = [(CSDIDSService *)self devices];
  v6 = [devices countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
LABEL_3:
    v10 = 0;
    v11 = v8;
    while (1)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(devices);
      }

      v8 = *(*(&v15 + 1) + 8 * v10);

      uniqueIDOverride = [v8 uniqueIDOverride];
      v13 = [uniqueIDOverride isEqualToString:dCopy];

      if (v13)
      {
        break;
      }

      v10 = v10 + 1;
      v11 = v8;
      if (v7 == v10)
      {
        v7 = [devices countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v8 = 0;
  }

  return v8;
}

- (id)deviceForFromID:(id)d
{
  dCopy = d;
  idsService = [(CSDIDSService *)self idsService];
  v6 = [idsService deviceForFromID:dCopy];

  return v6;
}

- (id)devicesWithCapability:(id)capability
{
  capabilityCopy = capability;
  v5 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  devices = [(CSDIDSService *)self devices];
  v7 = [devices countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(devices);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        capabilities = [v11 capabilities];
        v13 = [capabilities valueForCapability:capabilityCopy];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [devices countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

- (id)deviceDestinationsWithCapability:(id)capability localHandle:(id)handle
{
  capabilityCopy = capability;
  handleCopy = handle;
  v46 = +[NSMutableArray array];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  devices = [(CSDIDSService *)self devices];
  v9 = [devices countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v52;
    v40 = devices;
    v41 = capabilityCopy;
    v39 = *v52;
    do
    {
      v12 = 0;
      v43 = v10;
      do
      {
        if (*v52 != v11)
        {
          objc_enumerationMutation(devices);
        }

        v13 = *(*(&v51 + 1) + 8 * v12);
        capabilities = [v13 capabilities];
        v15 = [capabilities valueForCapability:capabilityCopy];

        if (v15)
        {
          destination = [v13 destination];
          destinationURIs = [destination destinationURIs];
          v18 = [destinationURIs count];

          if (v18)
          {
            v44 = destination;
            v45 = v12;
            destinationURIs2 = [destination destinationURIs];
            anyObject = [destinationURIs2 anyObject];
            v21 = IDSCopyAddressDestinationForDestination();
            v22 = IDSCopyRawAddressForDestination();
            v23 = [TUHandle normalizedHandleWithDestinationID:v22];

            v24 = v23;
            if (([v23 isEquivalentToHandle:handleCopy] & 1) == 0)
            {
              v42 = v23;
              csd_aliasStrings = [v13 csd_aliasStrings];
              v47 = 0u;
              v48 = 0u;
              v49 = 0u;
              v50 = 0u;
              v26 = [csd_aliasStrings countByEnumeratingWithState:&v47 objects:v59 count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v48;
                do
                {
                  for (i = 0; i != v27; i = i + 1)
                  {
                    if (*v48 != v28)
                    {
                      objc_enumerationMutation(csd_aliasStrings);
                    }

                    v30 = *(*(&v47 + 1) + 8 * i);
                    v31 = [TUHandle normalizedHandleWithDestinationID:v30];
                    v32 = [v31 isEquivalentToHandle:handleCopy];
                    if (v32)
                    {
                      v33 = sub_100004778(v32);
                      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                      {
                        v34 = [v13 csd_destinationForAlias:v30];
                        *buf = 138412546;
                        v56 = v34;
                        v57 = 2112;
                        v58 = v13;
                        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Adding copyIDtoken:%@ to capable destinations for device: %@", buf, 0x16u);
                      }

                      v35 = [v13 csd_destinationForAlias:v30];
                      [v46 addObject:v35];
                    }
                  }

                  v27 = [csd_aliasStrings countByEnumeratingWithState:&v47 objects:v59 count:16];
                }

                while (v27);
              }

              devices = v40;
              capabilityCopy = v41;
              v11 = v39;
              v24 = v42;
            }

            destination2 = [v13 destination];
            [v46 addObject:destination2];

            v10 = v43;
            destination = v44;
            v12 = v45;
          }
        }

        v12 = v12 + 1;
      }

      while (v12 != v10);
      v10 = [devices countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v10);
  }

  v37 = [v46 copy];

  return v37;
}

- (BOOL)telephonyCapableDeviceExists
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(CSDIDSService *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100243D34;
  v5[3] = &unk_100619E80;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (BOOL)relayCapableDeviceExists
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(CSDIDSService *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100243E20;
  v5[3] = &unk_100619E80;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (BOOL)defaultPairedDeviceExists
{
  defaultPairedDevice = [(CSDIDSService *)self defaultPairedDevice];
  v3 = defaultPairedDevice != 0;

  return v3;
}

- (NSSet)availableOutgoingRelayCallerIDs
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100028730;
  v11 = sub_100032914;
  v12 = 0;
  queue = [(CSDIDSService *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100243F84;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (IDSDevice)defaultPairedDevice
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100028730;
  v11 = sub_100032914;
  v12 = 0;
  queue = [(CSDIDSService *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1002440B4;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSString)countryCode
{
  account = [(CSDIDSService *)self account];
  v4 = sub_100004778(account);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    accountInfo = [account accountInfo];
    v19 = 138412290;
    v20 = accountInfo;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Determining country code using account info %@", &v19, 0xCu);
  }

  accountType = [account accountType];
  if (accountType != 1)
  {
    if (!accountType)
    {
      callerID = [(CSDIDSService *)self callerID];
      telephoneNumber = 0;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v9 = +[FTDeviceSupport sharedInstance];
  isTelephonyDevice = [v9 isTelephonyDevice];

  if (!isTelephonyDevice)
  {
LABEL_8:
    telephoneNumber = 0;
    goto LABEL_9;
  }

  v11 = +[FTDeviceSupport sharedInstance];
  telephoneNumber = [v11 telephoneNumber];

LABEL_9:
  callerID = 0;
LABEL_10:
  v12 = IMCountryCodeForNumber();
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = IMCountryCodeForNumber();
    v16 = v15;
    if (v15)
    {
      v14 = v15;
    }

    else
    {
      regionBasePhoneNumber = [account regionBasePhoneNumber];
      v14 = IMCountryCodeForNumber();
    }
  }

  return v14;
}

- (NSString)localDeviceUniqueID
{
  v2 = IDSCopyLocalDeviceUniqueID();

  return v2;
}

- (void)provisionPseudonymForHandle:(id)handle featureID:(id)d scopeID:(id)iD expiryDuration:(double)duration allowedServices:(id)services completionHandler:(id)handler
{
  handleCopy = handle;
  handlerCopy = handler;
  iDCopy = iD;
  dCopy = d;
  service = [(CSDIDSService *)self service];
  v18 = [service pseudonymPropertiesWithFeatureID:dCopy scopeID:iDCopy expiryDurationInSeconds:duration];

  v20 = sub_100004778(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    value = [handleCopy value];
    service2 = [(CSDIDSService *)self service];
    serviceIdentifier = [service2 serviceIdentifier];
    v24 = IDSLoggableDescriptionForHandleOnService();
    *buf = 138412546;
    v33 = v24;
    v34 = 2112;
    v35 = v18;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Asking IDS to generated a pseudonym for unprefixedURI: %@ and properties: %@", buf, 0x16u);
  }

  service3 = [(CSDIDSService *)self service];
  v26 = [IDSURI alloc];
  value2 = [handleCopy value];
  v28 = [v26 initWithUnprefixedURI:value2];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10024452C;
  v30[3] = &unk_10061F748;
  v31 = handlerCopy;
  v29 = handlerCopy;
  [service3 provisionPseudonymForURI:v28 withProperties:v18 completion:v30];
}

- (void)revokePseudonymString:(id)string completionHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  v8 = [(CSDIDSService *)self pseudonymForPseudonymString:stringCopy];
  if (v8)
  {
    [(CSDIDSService *)self revokePseudonym:v8 completionHandler:handlerCopy];
  }

  else
  {
    v9 = sub_100004778(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      service = [(CSDIDSService *)self service];
      pseudonymURIMap = [service pseudonymURIMap];
      v12 = 138412546;
      v13 = stringCopy;
      v14 = 2112;
      v15 = pseudonymURIMap;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No IDSPseudonym matching string %@ was found. All pseudonym URIs: %@", &v12, 0x16u);
    }

    handlerCopy[2](handlerCopy, 1, 0);
  }
}

- (void)revokePseudonym:(id)pseudonym completionHandler:(id)handler
{
  pseudonymCopy = pseudonym;
  handlerCopy = handler;
  v8 = sub_100004778(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = pseudonymCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asking IDS to revoke pseudonym: %@", &v10, 0xCu);
  }

  service = [(CSDIDSService *)self service];
  [service revokePseudonym:pseudonymCopy completion:handlerCopy];
}

- (void)renewPseudonymString:(id)string expirationDate:(id)date completionHandler:(id)handler
{
  stringCopy = string;
  dateCopy = date;
  handlerCopy = handler;
  v11 = [(CSDIDSService *)self pseudonymForPseudonymString:stringCopy];
  if (v11)
  {
    [(CSDIDSService *)self renewPseudonym:v11 expirationDate:dateCopy completionHandler:handlerCopy];
  }

  else
  {
    v12 = sub_100004778(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = stringCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No pseudonym matching %@ was found.", &v13, 0xCu);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
  }
}

- (void)renewPseudonym:(id)pseudonym expirationDate:(id)date completionHandler:(id)handler
{
  pseudonymCopy = pseudonym;
  handlerCopy = handler;
  dateCopy = date;
  v11 = sub_100004778(dateCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = pseudonymCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Asking IDS to renew pseudonym: %@", buf, 0xCu);
  }

  service = [(CSDIDSService *)self service];
  [dateCopy timeIntervalSince1970];
  v14 = v13;

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100244AF0;
  v16[3] = &unk_10061F748;
  v17 = handlerCopy;
  v15 = handlerCopy;
  [service renewPseudonym:pseudonymCopy forUpdatedExpiryEpoch:v16 completion:v14];
}

- (void)checkValidityForPseudonymString:(id)string completion:(id)completion
{
  stringCopy = string;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(CSDIDSService *)self checkValidityForSelfPseudonymString:stringCopy])
    {
      completionCopy[2](completionCopy, 1);
    }

    else
    {
      idsQueryController = [(CSDIDSService *)self idsQueryController];
      name = [(CSDIDSService *)self name];
      queue = [(CSDIDSService *)self queue];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100244D00;
      v13[3] = &unk_10061F858;
      v11 = completionCopy;
      v14 = v11;
      v12 = [idsQueryController refreshIDStatusForDestination:stringCopy service:name listenerID:@"CSDIDSServiceQueryListenerID" queue:queue completionBlock:v13];

      if ((v12 & 1) == 0)
      {
        v11[2](v11, 0);
      }
    }
  }
}

- (BOOL)checkValidityForSelfPseudonymString:(id)string
{
  v3 = [(CSDIDSService *)self pseudonymForPseudonymString:string];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 csd_isExpired] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)pseudonymForPseudonymString:(id)string
{
  stringCopy = string;
  service = [(CSDIDSService *)self service];
  v6 = [[IDSURI alloc] initWithPrefixedURI:stringCopy];

  v7 = [service pseudonymForPseudonymURI:v6];

  return v7;
}

- (void)_noteAction:(int64_t)action onHandle:(id)handle completionHandle:(id)completionHandle
{
  completionHandleCopy = completionHandle;
  normalizedValue = [handle normalizedValue];
  v10 = [IDSURI URIWithPrefixedURI:normalizedValue];

  if ([v10 FZIDType] == 4)
  {
    callerID = [(CSDIDSService *)self callerID];
    v12 = [IDSURI URIWithPrefixedURI:callerID];

    service = [(CSDIDSService *)self service];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100244F70;
    v14[3] = &unk_10061F880;
    v15 = completionHandleCopy;
    [service reportAction:action ofTempURI:v10 fromURI:v12 withCompletion:v14];
  }

  else if (completionHandleCopy)
  {
    (*(completionHandleCopy + 2))(completionHandleCopy, 0);
  }
}

- (void)accountController:(id)controller accountAdded:(id)added
{
  addedCopy = added;
  queue = [(CSDIDSService *)self queue];
  [addedCopy addRegistrationDelegate:self queue:queue];
}

- (void)accountController:(id)controller accountEnabled:(id)enabled
{
  enabledCopy = enabled;
  queue = [(CSDIDSService *)self queue];
  [enabledCopy addRegistrationDelegate:self queue:queue];
}

- (void)handleActiveAccountsChanged:(id)changed
{
  v4 = sub_100004778(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: Active accounts changed", &v6, 0xCu);
  }

  [(CSDIDSService *)self _update];
  delegate = [(CSDIDSService *)self delegate];
  [delegate activeAccountsChangedForService:self];
}

- (void)service:(id)service devicesChanged:(id)changed
{
  v5 = sub_100004778(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Devices changed", &v6, 0xCu);
  }

  [(CSDIDSService *)self _update];
}

- (void)service:(id)service nearbyDevicesChanged:(id)changed
{
  v5 = sub_100004778(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Nearby devices changed", &v6, 0xCu);
  }

  [(CSDIDSService *)self _update];
}

- (void)service:(id)service didUpdatePseudonymsWithChanges:(id)changes
{
  changesCopy = changes;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [changesCopy countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v17;
    *&v7 = 138412290;
    v15 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(changesCopy);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        changeType = [v11 changeType];
        if (!changeType)
        {
          delegate = [(CSDIDSService *)self delegate];
          pseudonym = [v11 pseudonym];
          [delegate service:self pseudonymRemoved:pseudonym];
          goto LABEL_13;
        }

        if (changeType == 2)
        {
          delegate = [(CSDIDSService *)self delegate];
          pseudonym = [v11 pseudonym];
          [delegate service:self pseudonymUpdated:pseudonym];
LABEL_13:

          goto LABEL_14;
        }

        if (changeType != 1)
        {
          continue;
        }

        delegate = sub_100004778(1);
        if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v15;
          selfCopy = self;
          _os_log_impl(&_mh_execute_header, delegate, OS_LOG_TYPE_DEFAULT, "%@: Told that a pseudonym was added to our account.", buf, 0xCu);
        }

LABEL_14:
      }

      v8 = [changesCopy countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v8);
  }
}

- (unint64_t)registrationRestrictionReason
{
  idsService = [(CSDIDSService *)self idsService];
  registrationRestrictionReason = [idsService registrationRestrictionReason];

  return registrationRestrictionReason;
}

- (void)update
{
  queue = [(CSDIDSService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100245538;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

@end