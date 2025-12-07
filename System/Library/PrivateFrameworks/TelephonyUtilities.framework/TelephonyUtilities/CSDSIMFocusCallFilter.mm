@interface CSDSIMFocusCallFilter
- (BOOL)shouldAllowCallsFromSIM:(id)m;
- (BOOL)shouldAllowIncomingCall:(id)call from:(id)from;
- (CSDSIMFocusCallFilter)initWithQueue:(id)queue;
- (id)readSimFocusDataWithError:(id *)error;
- (id)simAccountsFromKeychain;
@end

@implementation CSDSIMFocusCallFilter

- (CSDSIMFocusCallFilter)initWithQueue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = CSDSIMFocusCallFilter;
  v6 = [(CSDSIMFocusCallFilter *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = +[CSDFocusStateManager sharedManager];
    focusStateManager = v7->_focusStateManager;
    v7->_focusStateManager = v8;

    v10 = [DNDEventBehaviorResolutionService serviceForClientIdentifier:TUBundleIdentifierCallServicesDaemon];
    behaviorResolutionService = v7->_behaviorResolutionService;
    v7->_behaviorResolutionService = v10;
  }

  return v7;
}

- (BOOL)shouldAllowIncomingCall:(id)call from:(id)from
{
  callCopy = call;
  fromCopy = from;
  remoteHandle = [callCopy remoteHandle];
  value = [remoteHandle value];

  isTelephonyProvider = [fromCopy isTelephonyProvider];
  if (isTelephonyProvider)
  {
    isTelephonyProvider = [value destinationIdIsPhoneNumber];
    if (isTelephonyProvider)
    {
      bundleIdentifier = [fromCopy bundleIdentifier];
      if (bundleIdentifier)
      {
        bundleIdentifier2 = [fromCopy bundleIdentifier];
      }

      else
      {
        bundleIdentifier2 = TUBundleIdentifierPhoneApplication;
      }

      v13 = bundleIdentifier2;

      v15 = objc_alloc_init(DNDMutableClientEventDetails);
      [v15 setBundleIdentifier:v13];
      [v15 setType:1];
      v16 = objc_alloc_init(DNDMutableContactHandle);
      [v16 setType:2];
      [v16 setValue:value];
      v45 = v16;
      [v15 setSender:v16];
      behaviorResolutionService = [(CSDSIMFocusCallFilter *)self behaviorResolutionService];
      v46 = 0;
      v18 = [behaviorResolutionService resolveBehaviorForEventDetails:v15 error:&v46];
      v19 = v46;

      v21 = sub_100004778(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v48 = v18;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "simFocus: shouldAllowIncomingCall: behavior=%@", buf, 0xCu);
      }

      v43 = v19;
      v44 = v18;
      if (v18)
      {
        v23 = [v18 interruptionSuppression] == 0;
        resolutionReason = [v18 resolutionReason];
        v25 = resolutionReason;
      }

      else
      {
        v26 = sub_100004778(v22);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v48 = v19;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[WARN] Error encountered resolving behavior via DND. Defaulting isDestinationIDAllowedThroughDoNotDisturb to YES. error=%@", buf, 0xCu);
        }

        v25 = 0;
        v23 = 0;
      }

      v27 = sub_100004778(resolutionReason);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = DNDResolutionReasonToString();
        *buf = 138412546;
        *v48 = v28;
        *&v48[8] = 1024;
        *&v48[10] = v23;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "simFocus: resolutionReason: =%@, shouldAllowCall=%d", buf, 0x12u);
      }

      if (v23)
      {
        if (v25 - 5) < 0xE && ((0x216Du >> (v25 - 5)))
        {
          LOBYTE(v14) = 1;
LABEL_38:

          goto LABEL_39;
        }

        simAccountsFromKeychain = [(CSDSIMFocusCallFilter *)self simAccountsFromKeychain];
        v31 = simAccountsFromKeychain;
        if (!simAccountsFromKeychain || (simAccountsFromKeychain = [simAccountsFromKeychain count]) == 0)
        {
          v41 = sub_100004778(simAccountsFromKeychain);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "simFocus: no active sim accounts found, FBSS is not enabled.", buf, 2u);
          }

          LOBYTE(v14) = 1;
          goto LABEL_37;
        }
      }

      v32 = sub_100004778(v29);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v48 = value;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "simFocus: Check if (%@) is in denied contact list", buf, 0xCu);
      }

      focusStateManager = [(CSDSIMFocusCallFilter *)self focusStateManager];
      v34 = [focusStateManager contactInDeniedContactsList:value];

      v31 = sub_100004778(v35);
      v36 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
      if (v34)
      {
        if (v36)
        {
          *buf = 67109120;
          *v48 = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "simFocus: focus based silencing, contact found in denied list, shouldAllowCall = %d", buf, 8u);
        }

        LOBYTE(v14) = 0;
      }

      else
      {
        if (v36)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "simFocus: Check if focus based sim allows the call", buf, 2u);
        }

        account = [callCopy account];
        handle = [account handle];
        value2 = [handle value];
        v14 = [(CSDSIMFocusCallFilter *)self shouldAllowCallsFromSIM:value2];

        v31 = sub_100004778(v40);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v48 = v14;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "simFocus: focus based sim silencing, shouldAllowCall = %d", buf, 8u);
        }
      }

LABEL_37:

      goto LABEL_38;
    }
  }

  v13 = sub_100004778(isTelephonyProvider);
  LOBYTE(v14) = 1;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *v48 = [fromCopy isTelephonyProvider];
    *&v48[4] = 2112;
    *&v48[6] = value;
    v49 = 1024;
    v50 = 1;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "simFocus: allow call for isTelephonyProvider=%d, destinationID=%@, shouldAllowCall=%d", buf, 0x18u);
  }

LABEL_39:

  return v14;
}

- (BOOL)shouldAllowCallsFromSIM:(id)m
{
  mCopy = m;
  simAccountsFromKeychain = [(CSDSIMFocusCallFilter *)self simAccountsFromKeychain];
  v6 = simAccountsFromKeychain;
  if (simAccountsFromKeychain && (simAccountsFromKeychain = [simAccountsFromKeychain count]) != 0)
  {
    v7 = sub_100004778(simAccountsFromKeychain);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "simFocus: Found simAccounts from keychain : %@", buf, 0xCu);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v6;
    focusAllowCalls = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
    v10 = focusAllowCalls;
    if (focusAllowCalls)
    {
      v20 = v6;
      v11 = *v22;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * v12);
          v14 = sub_100004778(focusAllowCalls);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            phNumber = [v13 phNumber];
            *buf = 138412546;
            v26 = phNumber;
            v27 = 2112;
            v28 = mCopy;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "simFocus: simAccount.phNumber: %@, myPhoneNumber: %@", buf, 0x16u);
          }

          phNumber2 = [v13 phNumber];
          v17 = [mCopy isEqualToString:phNumber2];

          if (v17)
          {
            focusAllowCalls = [v13 focusAllowCalls];
            if (focusAllowCalls)
            {
              v10 = sub_100004778(focusAllowCalls);
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                phNumber3 = [v13 phNumber];
                *buf = 138412290;
                v26 = phNumber3;
                _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "simFocus: Found a match for sim number: %@", buf, 0xCu);
              }

              LOBYTE(v10) = 1;
              goto LABEL_23;
            }
          }

          v12 = (v12 + 1);
        }

        while (v10 != v12);
        focusAllowCalls = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
        v10 = focusAllowCalls;
        if (focusAllowCalls)
        {
          continue;
        }

        break;
      }

LABEL_23:
      v6 = v20;
    }
  }

  else
  {
    v8 = sub_100004778(simAccountsFromKeychain);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "simFocus: shouldAllowCallsFromSIM - no active sim accounts found, FBSS is not enabled.", buf, 2u);
    }

    LOBYTE(v10) = 0;
  }

  return v10;
}

- (id)simAccountsFromKeychain
{
  v3 = +[NSArray array];
  v19 = 0;
  v4 = [(CSDSIMFocusCallFilter *)self readSimFocusDataWithError:&v19];
  v5 = v19;
  if (v5)
  {
    v6 = v5;
    v7 = sub_100004778(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10047F2C0(v7);
    }

    v8 = 0;
    goto LABEL_14;
  }

  if (v4)
  {
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [NSSet setWithObjects:v9, v10, v11, objc_opt_class(), 0];
    v18 = 0;
    v13 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v12 fromData:v4 error:&v18];
    v14 = v18;

    if (v14)
    {
      v15 = sub_100004778(v5);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "simFocus: Reading data with error %@", buf, 0xCu);
      }

      v8 = 0;
      v3 = v13;
      goto LABEL_14;
    }

    v3 = v13;
  }

  v16 = sub_100004778(v5);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "simFocus: simAccounts read from keychain %@", buf, 0xCu);
  }

  v8 = [v3 copy];
LABEL_14:

  return v8;
}

- (id)readSimFocusDataWithError:(id *)error
{
  v11[0] = kSecClass;
  v11[1] = kSecAttrAccessible;
  v12[0] = kSecClassGenericPassword;
  v12[1] = kSecAttrAccessibleAfterFirstUnlock;
  v11[2] = kSecAttrService;
  v11[3] = kSecReturnData;
  v12[2] = @"apple.phoneFocus";
  v12[3] = &__kCFBooleanTrue;
  v11[4] = kSecAttrAccessGroup;
  v12[4] = @"apple";
  v4 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:5];
  result = 0;
  v5 = SecItemCopyMatching(v4, &result);
  if (v5)
  {
    if (error)
    {
      v5 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v5 userInfo:0];
      *error = v5;
    }

    v6 = sub_100004778(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "simFocus: Failed to read data from keychain", v9, 2u);
    }

    v7 = 0;
  }

  else
  {
    v7 = result;
    v6 = sub_100004778(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "simFocus: Successfully read data from keychain", v9, 2u);
    }
  }

  return v7;
}

@end