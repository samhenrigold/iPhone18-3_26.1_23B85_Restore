@interface CSDIncomingCallFilter
- (BOOL)_doNotDisturbAllowsCallFromSourceAddress:(id)address providerIdentifier:(id)identifier;
- (BOOL)callDirectoryAllowsCallFromSourceAddress:(id)address;
- (BOOL)callDirectoryAllowsCallFromSourceAddress:(id)address countryCode:(id)code;
- (BOOL)callDirectoryExtensionsAllowCallFromPhoneNumbers:(id)numbers error:(id *)error;
- (BOOL)isOnEmergencyCall;
- (BOOL)liveLookupExtensionsAllowCallFromHandle:(id)handle;
- (BOOL)systemAllowsCallsFromSourceAddress:(id)address providerIdentifier:(id)identifier;
- (CSDIncomingCallFilter)init;
- (CSDIncomingCallFilter)initWithDataSource:(id)source deviceLockObserver:(id)observer callCenterObserver:(id)centerObserver callDirectoryStoreBuilder:(id)builder callDirectoryManager:(id)manager contactStore:(id)store featureFlags:(id)flags queue:(id)self0;
- (id)_callDirectoryPhoneNumberVariantsForSourceAddress:(id)address countryCode:(id)code;
- (id)_callFilterBlock;
- (id)blockedByExtension:(id)extension;
- (void)callsChangedForCallCenterObserver:(id)observer;
- (void)setOnEmergencyCall:(BOOL)call;
@end

@implementation CSDIncomingCallFilter

- (CSDIncomingCallFilter)init
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000286B4;
  v14 = sub_1000328E4;
  v15 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001ADD7C;
  block[3] = &unk_10061ABF0;
  selfCopy = self;
  v9 = &v10;
  v7 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.incomingcallfilter", 0);
  v2 = selfCopy;
  v3 = v7;
  dispatch_sync(v3, block);
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);
  return v4;
}

- (CSDIncomingCallFilter)initWithDataSource:(id)source deviceLockObserver:(id)observer callCenterObserver:(id)centerObserver callDirectoryStoreBuilder:(id)builder callDirectoryManager:(id)manager contactStore:(id)store featureFlags:(id)flags queue:(id)self0
{
  sourceCopy = source;
  observerCopy = observer;
  centerObserverCopy = centerObserver;
  builderCopy = builder;
  managerCopy = manager;
  storeCopy = store;
  flagsCopy = flags;
  queueCopy = queue;
  v43.receiver = self;
  v43.super_class = CSDIncomingCallFilter;
  v19 = [(CSDIncomingCallFilter *)&v43 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_queue, queue);
    objc_storeStrong(&v20->_dataSource, source);
    objc_storeStrong(&v20->_featureFlags, flags);
    if (([(TUFeatureFlags *)v20->_featureFlags communicationTrustAdoption]& 1) == 0)
    {
      dataSource = v20->_dataSource;
      _callFilterBlock = [(CSDIncomingCallFilter *)v20 _callFilterBlock];
      [(CSDIncomingCallFilterDataSource *)dataSource setFilterBlock:_callFilterBlock];
    }

    v20->_twoTimeCallthroughInterval = 180.0;
    objc_storeStrong(&v20->_deviceLockObserver, observer);
    objc_storeStrong(&v20->_callCenterObserver, centerObserver);
    [(CSDCallCenterObserver *)v20->_callCenterObserver setTriggers:1];
    [(CSDCallCenterObserver *)v20->_callCenterObserver setDelegate:v20];
    v23 = objc_alloc_init(CXCallDirectorySanitizer);
    callDirectorySanitizer = v20->_callDirectorySanitizer;
    v20->_callDirectorySanitizer = v23;

    v25 = objc_alloc_init(TUCallProviderManager);
    callProviderManager = v20->_callProviderManager;
    v20->_callProviderManager = v25;

    emergencyProvider = [(TUCallProviderManager *)v20->_callProviderManager emergencyProvider];
    identifier = [emergencyProvider identifier];
    v29 = [identifier copy];
    emergencyProviderIdentifier = v20->_emergencyProviderIdentifier;
    v20->_emergencyProviderIdentifier = v29;

    objc_storeStrong(&v20->_callDirectoryManager, manager);
    objc_storeStrong(&v20->_contactStore, store);
    objc_initWeak(&location, v20);
    deviceLockObserver = v20->_deviceLockObserver;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1001AE23C;
    v39[3] = &unk_10061D920;
    objc_copyWeak(&v41, &location);
    v40 = builderCopy;
    [(CSDDeviceLockStateObserver *)deviceLockObserver performBlockAfterFirstUnlock:v39];

    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
  }

  return v20;
}

- (id)_callFilterBlock
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001AE38C;
  v4[3] = &unk_10061D948;
  objc_copyWeak(&v5, &location);
  v2 = objc_retainBlock(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (BOOL)_doNotDisturbAllowsCallFromSourceAddress:(id)address providerIdentifier:(id)identifier
{
  addressCopy = address;
  identifierCopy = identifier;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  queue = [(CSDIncomingCallFilter *)self queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001AE6F8;
  v12[3] = &unk_10061D970;
  v12[4] = self;
  v13 = identifierCopy;
  v14 = addressCopy;
  v15 = &v16;
  v9 = addressCopy;
  v10 = identifierCopy;
  dispatch_sync(queue, v12);

  LOBYTE(self) = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return self;
}

- (BOOL)callDirectoryAllowsCallFromSourceAddress:(id)address
{
  addressCopy = address;
  dataSource = [(CSDIncomingCallFilter *)self dataSource];
  networkCountryCode = [dataSource networkCountryCode];
  LOBYTE(self) = [(CSDIncomingCallFilter *)self callDirectoryAllowsCallFromSourceAddress:addressCopy countryCode:networkCountryCode];

  return self;
}

- (BOOL)callDirectoryAllowsCallFromSourceAddress:(id)address countryCode:(id)code
{
  addressCopy = address;
  codeCopy = code;
  destinationIdIsPhoneNumber = [addressCopy destinationIdIsPhoneNumber];
  if (destinationIdIsPhoneNumber)
  {
    v9 = sub_100004778(destinationIdIsPhoneNumber);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "sourceAddress is phone number, continuing", buf, 2u);
    }

    contactStore = [(CSDIncomingCallFilter *)self contactStore];
    v47 = CNContactPhoneNumbersKey;
    v11 = [NSArray arrayWithObjects:&v47 count:1];
    v12 = [contactStore contactForDestinationId:addressCopy keysToFetch:v11];

    v14 = sub_100004778(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v46 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "contact=%@", buf, 0xCu);
    }

    if (v12)
    {
      v15 = 1;
LABEL_38:

      goto LABEL_39;
    }

    v16 = [addressCopy copy];
    callDirectoryStore = [(CSDIncomingCallFilter *)self callDirectoryStore];

    if (callDirectoryStore)
    {
      v18 = [(CSDIncomingCallFilter *)self _callDirectoryPhoneNumberVariantsForSourceAddress:addressCopy countryCode:codeCopy];
      v19 = sub_100004778(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v46 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "phoneNumberVariants: %@", buf, 0xCu);
      }

      if ([v18 count])
      {
        v43 = 0;
        v38 = [(CSDIncomingCallFilter *)self callDirectoryExtensionsAllowCallFromPhoneNumbers:v18 error:&v43];
        v20 = v43;
        v21 = v20;
        if (v20)
        {
          v22 = sub_100004778(v20);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_1004790E0();
          }
        }

        v37 = v21;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v23 = v18;
        v24 = [v23 countByEnumeratingWithState:&v39 objects:v44 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v40;
          do
          {
            for (i = 0; i != v25; i = i + 1)
            {
              if (*v40 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v39 + 1) + 8 * i);
              v29 = [v28 length];
              if (v29 > [addressCopy length])
              {
                v30 = [v28 copy];

                v16 = v30;
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v39 objects:v44 count:16];
          }

          while (v25);
        }

        v12 = 0;
        if (!v38)
        {
          goto LABEL_34;
        }
      }

      else
      {
      }
    }

    callDirectoryManager = [(CSDIncomingCallFilter *)self callDirectoryManager];

    if (!callDirectoryManager)
    {
      goto LABEL_33;
    }

    v34 = sub_100004778(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v46 = v16;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "callDirectory allowed call, checking live blocking info using qualifiedNumber: %@", buf, 0xCu);
    }

    v31 = [(CSDIncomingCallFilter *)self liveLookupExtensionsAllowCallFromHandle:v16];
    if (v31)
    {
LABEL_33:
      v15 = 1;
LABEL_37:

      goto LABEL_38;
    }

LABEL_34:
    v35 = sub_100004778(v31);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v46 = addressCopy;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Disallowing call from source address %@ since blocked by call directory or live caller id lookup", buf, 0xCu);
    }

    v15 = 0;
    goto LABEL_37;
  }

  v15 = 1;
LABEL_39:

  return v15;
}

- (BOOL)callDirectoryExtensionsAllowCallFromPhoneNumbers:(id)numbers error:(id *)error
{
  numbersCopy = numbers;
  callDirectoryStore = [(CSDIncomingCallFilter *)self callDirectoryStore];
  LOBYTE(error) = [callDirectoryStore containsBlockingEntryForEnabledExtensionWithPhoneNumberInArray:numbersCopy error:error];

  return error ^ 1;
}

- (BOOL)liveLookupExtensionsAllowCallFromHandle:(id)handle
{
  handleCopy = handle;
  callDirectoryManager = [(CSDIncomingCallFilter *)self callDirectoryManager];

  if (!callDirectoryManager)
  {
    goto LABEL_8;
  }

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = handleCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Checking live blocking info using handle: %@", &v14, 0xCu);
  }

  callDirectoryManager2 = [(CSDIncomingCallFilter *)self callDirectoryManager];
  v9 = [callDirectoryManager2 fetchLiveBlockingInfoForHandle:handleCopy];

  if (v9)
  {
    v11 = sub_100004778(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = handleCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Disallowing call from source address %@ since blocked by live caller id lookup", &v14, 0xCu);
    }

    v12 = 0;
  }

  else
  {
LABEL_8:
    v12 = 1;
  }

  return v12;
}

- (BOOL)systemAllowsCallsFromSourceAddress:(id)address providerIdentifier:(id)identifier
{
  addressCopy = address;
  v7 = [(CSDIncomingCallFilter *)self _doNotDisturbAllowsCallFromSourceAddress:addressCopy providerIdentifier:identifier];
  v8 = v7;
  if ((v7 & 1) == 0)
  {
    v9 = sub_100004778(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = addressCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Disallowing call with sourceAddress %@ since _doNotDisturbAllowsCallFromSourceAddress returned NO", &v11, 0xCu);
    }
  }

  return v8;
}

- (id)blockedByExtension:(id)extension
{
  extensionCopy = extension;
  callDirectoryStore = [(CSDIncomingCallFilter *)self callDirectoryStore];
  if (!callDirectoryStore || (v6 = callDirectoryStore, v7 = [extensionCopy destinationIdIsPhoneNumber], v6, !v7))
  {
LABEL_13:
    callDirectoryManager = [(CSDIncomingCallFilter *)self callDirectoryManager];
    if (callDirectoryManager && (v20 = callDirectoryManager, v21 = [extensionCopy destinationIdIsPhoneNumber], v20, v21))
    {
      v23 = sub_100004778(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "callDirectory allowed call, checking live blocking info", buf, 2u);
      }

      callDirectoryManager2 = [(CSDIncomingCallFilter *)self callDirectoryManager];
      v15 = [callDirectoryManager2 firstEnabledLiveBlockingExtensionIdentifierForPhoneNumber:extensionCopy];
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_19;
  }

  dataSource = [(CSDIncomingCallFilter *)self dataSource];
  networkCountryCode = [dataSource networkCountryCode];
  v10 = [(CSDIncomingCallFilter *)self _callDirectoryPhoneNumberVariantsForSourceAddress:extensionCopy countryCode:networkCountryCode];

  v12 = sub_100004778(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "phoneNumberVariants: %@", buf, 0xCu);
  }

  if (![v10 count])
  {

    goto LABEL_13;
  }

  callDirectoryStore2 = [(CSDIncomingCallFilter *)self callDirectoryStore];
  v14 = [v10 objectAtIndexedSubscript:0];
  v26 = 0;
  v15 = [callDirectoryStore2 firstEnabledBlockingExtensionIdentifierForPhoneNumber:v14 error:&v26];
  v16 = v26;

  if (v16)
  {
    v18 = sub_100004778(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1004790E0();
    }
  }

  if (!v15)
  {
    goto LABEL_13;
  }

LABEL_19:

  return v15;
}

- (id)_callDirectoryPhoneNumberVariantsForSourceAddress:(id)address countryCode:(id)code
{
  codeCopy = code;
  addressCopy = address;
  v8 = +[NSMutableArray array];
  v9 = [[TUPhoneNumber alloc] initWithDigits:addressCopy countryCode:codeCopy];

  digits = [v9 digits];

  if (digits)
  {
    callDirectorySanitizer = [(CSDIncomingCallFilter *)self callDirectorySanitizer];
    digits2 = [v9 digits];
    digits = [callDirectorySanitizer canonicalizedPhoneNumber:digits2];

    if (digits)
    {
      [v8 addObject:digits];
    }
  }

  unformattedInternationalRepresentation = [v9 unformattedInternationalRepresentation];
  if (unformattedInternationalRepresentation)
  {
    callDirectorySanitizer2 = [(CSDIncomingCallFilter *)self callDirectorySanitizer];
    v15 = [callDirectorySanitizer2 canonicalizedPhoneNumber:unformattedInternationalRepresentation];

    if (!v15)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (digits)
  {
    v16 = [NSLocale ITUCountryCodeForISOCountryCode:codeCopy];
    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [NSString stringWithFormat:@"%ld%@", v16, digits];
LABEL_10:
      [v8 addObject:v15];
LABEL_11:
    }
  }

  v17 = [v8 copy];

  return v17;
}

- (BOOL)isOnEmergencyCall
{
  queue = [(CSDIncomingCallFilter *)self queue];
  dispatch_assert_queue_V2(queue);

  return self->_onEmergencyCall;
}

- (void)setOnEmergencyCall:(BOOL)call
{
  queue = [(CSDIncomingCallFilter *)self queue];
  dispatch_assert_queue_V2(queue);

  self->_onEmergencyCall = call;
}

- (void)callsChangedForCallCenterObserver:(id)observer
{
  observerCopy = observer;
  v5 = +[TUCallCenter sharedInstance];
  queue = [v5 queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001AF544;
  v8[3] = &unk_100619D88;
  v9 = observerCopy;
  selfCopy = self;
  v7 = observerCopy;
  dispatch_async(queue, v8);
}

@end