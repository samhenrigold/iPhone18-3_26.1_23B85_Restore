@interface CSDTelephonyCallCapabilities
- (BOOL)areCapabilitiesValid;
- (BOOL)isEmergencyCallbackModeEnabled;
- (BOOL)isEmergencyCallbackPossible;
- (BOOL)shouldUpdateSubscriptions;
- (CSDTelephonyCallCapabilities)initWithQueue:(id)queue;
- (CSDTelephonyCallCapabilities)initWithQueue:(id)queue coreTelephonyClient:(id)client emergencyCallbackCapabilities:(id)capabilities;
- (CSDTelephonyCallCapabilitiesDelegate)delegate;
- (NSArray)localThumperAccounts;
- (NSArray)secondaryThumperAccounts;
- (NSString)associatedThumperAccountID;
- (NSString)debugDescription;
- (id)_senderIdentityCapabilitiesStateForSubscription:(id)subscription;
- (id)_subscriptionWithUUID:(id)d;
- (id)primaryThumperAccountUsingDevices:(id)devices outgoingCallerIDURI:(id)i requireMatchingCallerIDURI:(BOOL)rI requireAvailableDeviceSlots:(BOOL)slots;
- (id)secondaryThumperAccountForAccountID:(id)d;
- (id)secondaryThumperAccountForRegisteredDeviceID:(id)d;
- (id)telephonySubscriptionLabelIdentifierForSenderIdentityUUID:(id)d;
- (void)_updateCallCapabilitiesForSubscription:(id)subscription capabilitiesState:(id)state;
- (void)_updateEmergencyCallbackModeEnabledState;
- (void)_updateState;
- (void)_updateSubscriptions;
- (void)_updateSystemCapabilitiesStateForSubscription:(id)subscription capabilitiesState:(id)state;
- (void)_updateThumperAccountState;
- (void)client:(id)client capabilitiesDidChange:(id)change;
- (void)client:(id)client subscription:(id)subscription callCapabilitiesDidChange:(id)change;
- (void)client:(id)client subscription:(id)subscription capabilitiesDidChange:(id)change;
- (void)emergencyCallbackModeDidChangeForAllSubscriptionsForClient:(id)client;
- (void)endEmergencyCallbackMode;
- (void)invalidateAndRefreshThumperCallingCapabilitiesForSenderIdentityWithUUID:(id)d;
- (void)invalidateAndRefreshVoLTECallingCapabilitiesForSenderIdentityWithUUID:(id)d;
- (void)invalidateAndRefreshWiFiCallingCapabilitiesForSenderIdentityWithUUID:(id)d;
- (void)setAssociatedThumperAccountID:(id)d;
- (void)setCallCapabilities:(id)capabilities forSenderIdentityCapabilitiesState:(id)state;
- (void)setCapabilityInfo:(id)info forSubscription:(id)subscription senderIdentityCapabilitiesState:(id)state;
- (void)setSecondaryThumperAccounts:(id)accounts;
- (void)setThumperCallingAllowed:(BOOL)allowed onSecondaryDeviceWithID:(id)d forSenderIdentityWithUUID:(id)iD;
- (void)setThumperCallingAssociatedAccountID:(id)d;
- (void)setThumperCallingEnabled:(BOOL)enabled forSenderIdentityWithUUID:(id)d;
- (void)setVoLTECallingEnabled:(BOOL)enabled forSenderIdentityWithUUID:(id)d;
- (void)setWiFiCallingEnabled:(BOOL)enabled forSenderIdentityWithUUID:(id)d;
- (void)setWiFiCallingRoamingEnabled:(BOOL)enabled forSenderIdentityWithUUID:(id)d;
- (void)subscriptionsDidChangeForClient:(id)client;
@end

@implementation CSDTelephonyCallCapabilities

- (CSDTelephonyCallCapabilities)initWithQueue:(id)queue
{
  queueCopy = queue;
  v5 = [[CSDCoreTelephonyClient alloc] initWithQueue:queueCopy shouldRegisterForECBMNotification:1];
  v6 = [[CSDEmergencyCallbackCapabilities alloc] initWithQueue:queueCopy];
  v7 = [(CSDTelephonyCallCapabilities *)self initWithQueue:queueCopy coreTelephonyClient:v5 emergencyCallbackCapabilities:v6];

  return v7;
}

- (CSDTelephonyCallCapabilities)initWithQueue:(id)queue coreTelephonyClient:(id)client emergencyCallbackCapabilities:(id)capabilities
{
  queueCopy = queue;
  clientCopy = client;
  capabilitiesCopy = capabilities;
  v26.receiver = self;
  v26.super_class = CSDTelephonyCallCapabilities;
  v12 = [(CSDTelephonyCallCapabilities *)&v26 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    v14 = +[NSSet set];
    subscriptions = v13->_subscriptions;
    v13->_subscriptions = v14;

    senderIdentityCapabilitiesStateByUUID = v13->_senderIdentityCapabilitiesStateByUUID;
    v13->_senderIdentityCapabilitiesStateByUUID = &__NSDictionary0__struct;

    v17 = +[NSMutableDictionary dictionary];
    lastSavedAccountIDByCapability = v13->_lastSavedAccountIDByCapability;
    v13->_lastSavedAccountIDByCapability = v17;

    objc_storeStrong(&v13->_coreTelephonyClient, client);
    [(CSDCoreTelephonyClient *)v13->_coreTelephonyClient setDelegate:v13];
    objc_storeStrong(&v13->_emergencyCallbackCapabilities, capabilities);
    objc_initWeak(&location, v13);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10021A6DC;
    v23[3] = &unk_10061A740;
    objc_copyWeak(&v24, &location);
    [(CSDEmergencyCallbackCapabilities *)v13->_emergencyCallbackCapabilities setEmergencyCallbackCapabilitiesDidChange:v23];
    queue = v13->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10021A734;
    block[3] = &unk_100619D38;
    v22 = v13;
    dispatch_async(queue, block);

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v13;
}

- (NSString)debugDescription
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p>\n", objc_opt_class(), self];
  v4 = v3;
  if (self->_capabilitiesValid)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"    Are capabilities valid: %@\n", v5];
  senderIdentityCapabilitiesStateByUUID = [(CSDTelephonyCallCapabilities *)self senderIdentityCapabilitiesStateByUUID];
  [v4 appendFormat:@"    Sender identity capabilities: %@\n", senderIdentityCapabilitiesStateByUUID];

  emergencyCallbackCapabilities = [(CSDTelephonyCallCapabilities *)self emergencyCallbackCapabilities];
  [v4 appendFormat:@"    Emergency callback capabilities: %@\n", emergencyCallbackCapabilities];

  localThumperDeviceID = [(CSDTelephonyCallCapabilities *)self localThumperDeviceID];
  [v4 appendFormat:@"    Thumper local device ID: %@\n", localThumperDeviceID];

  localThumperAccounts = [(CSDTelephonyCallCapabilities *)self localThumperAccounts];
  [v4 appendFormat:@"    Thumper local accounts: %@\n", localThumperAccounts];

  secondaryThumperAccounts = [(CSDTelephonyCallCapabilities *)self secondaryThumperAccounts];
  [v4 appendFormat:@"    Thumper secondary accounts: %@\n", secondaryThumperAccounts];

  return v4;
}

- (BOOL)areCapabilitiesValid
{
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  return self->_capabilitiesValid;
}

- (NSArray)localThumperAccounts
{
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  localThumperAccounts = self->_localThumperAccounts;

  return localThumperAccounts;
}

- (NSArray)secondaryThumperAccounts
{
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  secondaryThumperAccounts = self->_secondaryThumperAccounts;

  return secondaryThumperAccounts;
}

- (void)setSecondaryThumperAccounts:(id)accounts
{
  accountsCopy = accounts;
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = self->_secondaryThumperAccounts;
  if ((TUObjectsAreEqualOrNil() & 1) == 0)
  {
    v7 = [accountsCopy copy];
    secondaryThumperAccounts = self->_secondaryThumperAccounts;
    self->_secondaryThumperAccounts = v7;

    v10 = sub_100004778(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_secondaryThumperAccounts;
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Secondary Thumper accounts changed from %@ to %@", &v12, 0x16u);
    }
  }
}

- (BOOL)isEmergencyCallbackModeEnabled
{
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  return self->_emergencyCallbackModeEnabled;
}

- (BOOL)isEmergencyCallbackPossible
{
  emergencyCallbackCapabilities = [(CSDTelephonyCallCapabilities *)self emergencyCallbackCapabilities];
  emergencyCallbackPossible = [emergencyCallbackCapabilities emergencyCallbackPossible];

  return emergencyCallbackPossible;
}

- (id)primaryThumperAccountUsingDevices:(id)devices outgoingCallerIDURI:(id)i requireMatchingCallerIDURI:(BOOL)rI requireAvailableDeviceSlots:(BOOL)slots
{
  slotsCopy = slots;
  devicesCopy = devices;
  iCopy = i;
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  secondaryThumperAccounts = [(CSDTelephonyCallCapabilities *)self secondaryThumperAccounts];
  v49 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [devicesCopy count]);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v11 = devicesCopy;
  v12 = [v11 countByEnumeratingWithState:&v63 objects:v75 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v64;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v64 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v63 + 1) + 8 * i);
        uniqueIDOverride = [v16 uniqueIDOverride];

        if (uniqueIDOverride)
        {
          uniqueIDOverride2 = [v16 uniqueIDOverride];
          [v49 setObject:v16 forKeyedSubscript:uniqueIDOverride2];
        }

        else
        {
          uniqueIDOverride2 = sub_100004778(v18);
          if (os_log_type_enabled(uniqueIDOverride2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v70 = v16;
            _os_log_impl(&_mh_execute_header, uniqueIDOverride2, OS_LOG_TYPE_DEFAULT, "[WARN] Skipping device %@ because uniqueIDOverride is nil", buf, 0xCu);
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v63 objects:v75 count:16];
    }

    while (v13);
  }

  v21 = sub_100004778(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v70 = secondaryThumperAccounts;
    v71 = 2112;
    v72 = v11;
    v73 = 2112;
    v74 = iCopy;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Attempting to find primary Thumper account in accounts: %@ devices: %@ outgoingCallerIDURI: %@", buf, 0x20u);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v22 = secondaryThumperAccounts;
  v48 = [v22 countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (!v48)
  {

    v40 = 0;
    v38 = 0;
    v23 = 0;
    v41 = 0;
    goto LABEL_52;
  }

  obj = v22;
  v23 = 0;
  v51 = 0;
  v52 = 0;
  v47 = *v60;
  do
  {
    v24 = 0;
    do
    {
      if (*v60 != v47)
      {
        objc_enumerationMutation(obj);
      }

      v50 = v24;
      v25 = *(*(&v59 + 1) + 8 * v24);
      phoneNumberURI = [v25 phoneNumberURI];
      primaryDeviceID = [v25 primaryDeviceID];
      v28 = [v49 objectForKeyedSubscript:primaryDeviceID];

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      linkedUserURIs = [v28 linkedUserURIs];
      v30 = [linkedUserURIs countByEnumeratingWithState:&v55 objects:v67 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v56;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v56 != v32)
            {
              objc_enumerationMutation(linkedUserURIs);
            }

            if (TUStringsAreCaseInsensitiveEqual() && (!slotsCopy || [v25 availableDeviceSlots] >= 1))
            {
              v34 = v25;

              if ([v28 isDefaultPairedDevice])
              {
                v35 = v34;

                v51 = v35;
              }

              if (TUStringsAreCaseInsensitiveEqual())
              {
                v23 = v34;

                v52 = v23;
              }

              else
              {
                v23 = v34;
              }
            }
          }

          v31 = [linkedUserURIs countByEnumeratingWithState:&v55 objects:v67 count:16];
        }

        while (v31);
      }

      v24 = v50 + 1;
    }

    while ((v50 + 1) != v48);
    v48 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
  }

  while (v48);

  if (v51)
  {
    v37 = sub_100004778(v36);
    v38 = v52;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v70 = v51;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Found default paired device; setting primary Thumper account to %@", buf, 0xCu);
    }

    v39 = v51;
    v40 = v39;
  }

  else if (v52)
  {
    v42 = sub_100004778(v36);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v70 = iCopy;
      v71 = 2112;
      v72 = v52;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Found matching outgoing caller ID %@; setting primary Thumper account to %@", buf, 0x16u);
    }

    v39 = v52;
    v38 = v39;
    v40 = 0;
  }

  else
  {
    v40 = 0;
    if (!v23 || rI)
    {
      v38 = 0;
      v41 = 0;
      goto LABEL_51;
    }

    v43 = sub_100004778(v36);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v70 = iCopy;
      v71 = 2112;
      v72 = obj;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "No primary Thumper account found for outgoingRelayCallerID %@ but requireMatchingCallerID is NO. Arbitrarily choosing last Thumper account from list: %@", buf, 0x16u);
    }

    v39 = v23;
    v23 = v39;
    v40 = 0;
    v38 = 0;
  }

  v41 = v39;
LABEL_51:
  v22 = obj;
LABEL_52:

  return v41;
}

- (void)setVoLTECallingEnabled:(BOOL)enabled forSenderIdentityWithUUID:(id)d
{
  enabledCopy = enabled;
  dCopy = d;
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = [(CSDTelephonyCallCapabilities *)self _subscriptionWithUUID:dCopy];
  if (v8)
  {
    coreTelephonyClient = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
    [coreTelephonyClient setSubscription:v8 capability:kCTCapabilityAgent enabled:enabledCopy info:0];
  }

  else
  {
    v10 = sub_100004778(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      subscriptions = [(CSDTelephonyCallCapabilities *)self subscriptions];
      v12 = 138412546;
      v13 = dCopy;
      v14 = 2112;
      v15 = subscriptions;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find subscription with UUID %@. All subscriptions: %@", &v12, 0x16u);
    }
  }
}

- (void)setWiFiCallingEnabled:(BOOL)enabled forSenderIdentityWithUUID:(id)d
{
  enabledCopy = enabled;
  dCopy = d;
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = [(CSDTelephonyCallCapabilities *)self _subscriptionWithUUID:dCopy];
  if (v8)
  {
    coreTelephonyClient = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
    [coreTelephonyClient setSubscription:v8 capability:kCTCapabilityAgent2 enabled:enabledCopy info:0];
  }

  else
  {
    v10 = sub_100004778(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      subscriptions = [(CSDTelephonyCallCapabilities *)self subscriptions];
      v12 = 138412546;
      v13 = dCopy;
      v14 = 2112;
      v15 = subscriptions;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find subscription with UUID %@. All subscriptions: %@", &v12, 0x16u);
    }
  }
}

- (void)setWiFiCallingRoamingEnabled:(BOOL)enabled forSenderIdentityWithUUID:(id)d
{
  enabledCopy = enabled;
  dCopy = d;
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = [(CSDTelephonyCallCapabilities *)self _subscriptionWithUUID:dCopy];
  if (v8)
  {
    senderIdentityCapabilitiesStateByUUID = [(CSDTelephonyCallCapabilities *)self senderIdentityCapabilitiesStateByUUID];
    v10 = [senderIdentityCapabilitiesStateByUUID objectForKeyedSubscript:dCopy];

    coreTelephonyClient = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
    v12 = kCTCapabilityAgent2;
    wiFiCallingCapabilitiesState = [v10 wiFiCallingCapabilitiesState];
    isEnabled = [wiFiCallingCapabilitiesState isEnabled];
    v22 = kPSWifiCallingRoamingEnabled;
    v15 = [NSNumber numberWithBool:enabledCopy];
    v23 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    [coreTelephonyClient setSubscription:v8 capability:v12 enabled:isEnabled info:v16];
  }

  else
  {
    v10 = sub_100004778(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      subscriptions = [(CSDTelephonyCallCapabilities *)self subscriptions];
      v18 = 138412546;
      v19 = dCopy;
      v20 = 2112;
      v21 = subscriptions;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find subscription with UUID %@. All subscriptions: %@", &v18, 0x16u);
    }
  }
}

- (void)setThumperCallingEnabled:(BOOL)enabled forSenderIdentityWithUUID:(id)d
{
  enabledCopy = enabled;
  dCopy = d;
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = [(CSDTelephonyCallCapabilities *)self _subscriptionWithUUID:dCopy];
  if (v8)
  {
    coreTelephonyClient = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
    [coreTelephonyClient setSubscription:v8 capability:kCTCapabilityPhoneServices enabled:enabledCopy info:0];
  }

  else
  {
    v10 = sub_100004778(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      subscriptions = [(CSDTelephonyCallCapabilities *)self subscriptions];
      v12 = 138412546;
      v13 = dCopy;
      v14 = 2112;
      v15 = subscriptions;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find subscription with UUID %@. All subscriptions: %@", &v12, 0x16u);
    }
  }
}

- (NSString)associatedThumperAccountID
{
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  lastSavedAccountIDByCapability = [(CSDTelephonyCallCapabilities *)self lastSavedAccountIDByCapability];
  v5 = [lastSavedAccountIDByCapability objectForKeyedSubscript:kPSAssociatedAccountID];

  return v5;
}

- (void)setAssociatedThumperAccountID:(id)d
{
  dCopy = d;
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = kPSAssociatedAccountID;
  lastSavedAccountIDByCapability = [(CSDTelephonyCallCapabilities *)self lastSavedAccountIDByCapability];
  v8 = [lastSavedAccountIDByCapability objectForKeyedSubscript:v6];

  if ((TUStringsAreEqualOrNil() & 1) == 0)
  {
    lastSavedAccountIDByCapability2 = [(CSDTelephonyCallCapabilities *)self lastSavedAccountIDByCapability];
    [lastSavedAccountIDByCapability2 setObject:dCopy forKeyedSubscript:v6];

    v11 = sub_100004778(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = dCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Associated Thumper account ID changed from %@ to %@", &v12, 0x16u);
    }
  }
}

- (void)setThumperCallingAssociatedAccountID:(id)d
{
  dCopy = d;
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  associatedThumperAccountID = [(CSDTelephonyCallCapabilities *)self associatedThumperAccountID];
  v7 = sub_100004778(associatedThumperAccountID);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = dCopy;
    v18 = 2112;
    v19 = associatedThumperAccountID;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Comparing specified Thumper account ID %@ to cached associated Thumper account ID %@", buf, 0x16u);
  }

  v8 = TUStringsAreCaseInsensitiveEqualOrNil();
  if ((v8 & 1) == 0)
  {
    v9 = sub_100004778(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending CommCenter a request to set associated Thumper account ID to %@", buf, 0xCu);
    }

    coreTelephonyClient = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
    v11 = kCTCapabilityPhoneServices;
    if (dCopy)
    {
      v12 = dCopy;
    }

    else
    {
      v12 = &stru_100631E68;
    }

    v14 = kPSAssociatedAccountID;
    v15 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [coreTelephonyClient setCapability:v11 enabled:0 info:v13];
  }
}

- (void)setThumperCallingAllowed:(BOOL)allowed onSecondaryDeviceWithID:(id)d forSenderIdentityWithUUID:(id)iD
{
  allowedCopy = allowed;
  dCopy = d;
  iDCopy = iD;
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  v11 = [(CSDTelephonyCallCapabilities *)self _subscriptionWithUUID:iDCopy];
  if (v11)
  {
    coreTelephonyClient = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
    v13 = coreTelephonyClient;
    if (allowedCopy)
    {
      [coreTelephonyClient addSecondaryThumperDeviceWithIDSDeviceIdentifier:dCopy toSubscription:v11];
    }

    else
    {
      [coreTelephonyClient removeSecondaryThumperDeviceWithIDSDeviceIdentifier:dCopy fromSubscription:v11];
    }
  }

  else
  {
    v14 = sub_100004778(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      subscriptions = [(CSDTelephonyCallCapabilities *)self subscriptions];
      v16 = 138412546;
      v17 = iDCopy;
      v18 = 2112;
      v19 = subscriptions;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find subscription with UUID %@. All subscriptions: %@", &v16, 0x16u);
    }
  }
}

- (void)invalidateAndRefreshWiFiCallingCapabilitiesForSenderIdentityWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  senderIdentityCapabilitiesStateByUUID = [(CSDTelephonyCallCapabilities *)self senderIdentityCapabilitiesStateByUUID];
  v11 = [senderIdentityCapabilitiesStateByUUID objectForKeyedSubscript:dCopy];

  wiFiCallingCapabilitiesState = [v11 wiFiCallingCapabilitiesState];
  [wiFiCallingCapabilitiesState invalidateProvisioningURL];

  v8 = [(CSDTelephonyCallCapabilities *)self _subscriptionWithUUID:dCopy];

  coreTelephonyClient = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
  [coreTelephonyClient recheckAccountStatusForSubscription:v8 capability:kCTCapabilityAgent2];

  delegate = [(CSDTelephonyCallCapabilities *)self delegate];
  [delegate telephonyCallCapabilitiesChanged];
}

- (void)invalidateAndRefreshVoLTECallingCapabilitiesForSenderIdentityWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  senderIdentityCapabilitiesStateByUUID = [(CSDTelephonyCallCapabilities *)self senderIdentityCapabilitiesStateByUUID];
  v11 = [senderIdentityCapabilitiesStateByUUID objectForKeyedSubscript:dCopy];

  voLTECallingCapabilitiesState = [v11 voLTECallingCapabilitiesState];
  [voLTECallingCapabilitiesState invalidateProvisioningURL];

  v8 = [(CSDTelephonyCallCapabilities *)self _subscriptionWithUUID:dCopy];

  coreTelephonyClient = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
  [coreTelephonyClient recheckAccountStatusForSubscription:v8 capability:kCTCapabilityAgent];

  delegate = [(CSDTelephonyCallCapabilities *)self delegate];
  [delegate telephonyCallCapabilitiesChanged];
}

- (void)invalidateAndRefreshThumperCallingCapabilitiesForSenderIdentityWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  senderIdentityCapabilitiesStateByUUID = [(CSDTelephonyCallCapabilities *)self senderIdentityCapabilitiesStateByUUID];
  v11 = [senderIdentityCapabilitiesStateByUUID objectForKeyedSubscript:dCopy];

  thumperCallingCapabilitiesState = [v11 thumperCallingCapabilitiesState];
  [thumperCallingCapabilitiesState invalidateProvisioningURL];

  v8 = [(CSDTelephonyCallCapabilities *)self _subscriptionWithUUID:dCopy];

  coreTelephonyClient = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
  [coreTelephonyClient recheckAccountStatusForSubscription:v8 capability:kCTCapabilityPhoneServices];

  delegate = [(CSDTelephonyCallCapabilities *)self delegate];
  [delegate telephonyCallCapabilitiesChanged];
}

- (void)endEmergencyCallbackMode
{
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  coreTelephonyClient = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
  [coreTelephonyClient endEmergencyCallbackMode];
}

- (id)secondaryThumperAccountForAccountID:(id)d
{
  dCopy = d;
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  secondaryThumperAccounts = [(CSDTelephonyCallCapabilities *)self secondaryThumperAccounts];
  v7 = [secondaryThumperAccounts countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(secondaryThumperAccounts);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        accountID = [v10 accountID];
        v12 = TUStringsAreCaseInsensitiveEqual();

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [secondaryThumperAccounts countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)secondaryThumperAccountForRegisteredDeviceID:(id)d
{
  dCopy = d;
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  secondaryThumperAccounts = [(CSDTelephonyCallCapabilities *)self secondaryThumperAccounts];
  v7 = [secondaryThumperAccounts countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(secondaryThumperAccounts);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 containsRegisteredDeviceID:dCopy])
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [secondaryThumperAccounts countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)telephonySubscriptionLabelIdentifierForSenderIdentityUUID:(id)d
{
  v3 = [(CSDTelephonyCallCapabilities *)self _subscriptionWithUUID:d];
  labelID = [v3 labelID];

  return labelID;
}

- (void)setCallCapabilities:(id)capabilities forSenderIdentityCapabilitiesState:(id)state
{
  stateCopy = state;
  capabilitiesCopy = capabilities;
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  isCSCallingAvailable = [capabilitiesCopy isCSCallingAvailable];
  csCallingCapabilitiesState = [stateCopy csCallingCapabilitiesState];
  [csCallingCapabilitiesState setCurrentlyAvailable:isCSCallingAvailable];

  isVoLTECallingAvailable = [capabilitiesCopy isVoLTECallingAvailable];
  voLTECallingCapabilitiesState = [stateCopy voLTECallingCapabilitiesState];
  [voLTECallingCapabilitiesState setCurrentlyAvailable:isVoLTECallingAvailable];

  isWiFiCallingAvailable = [capabilitiesCopy isWiFiCallingAvailable];
  wiFiCallingCapabilitiesState = [stateCopy wiFiCallingCapabilitiesState];
  [wiFiCallingCapabilitiesState setCurrentlyAvailable:isWiFiCallingAvailable];

  isWiFiCallingAvailable2 = [capabilitiesCopy isWiFiCallingAvailable];
  thumperCallingCapabilitiesState = [stateCopy thumperCallingCapabilitiesState];
  [thumperCallingCapabilitiesState setCurrentlyAvailable:isWiFiCallingAvailable2];

  isWiFiEmergencyCallingAllowed = [capabilitiesCopy isWiFiEmergencyCallingAllowed];
  wiFiCallingCapabilitiesState2 = [stateCopy wiFiCallingCapabilitiesState];
  [wiFiCallingCapabilitiesState2 setEmergencySupported:isWiFiEmergencyCallingAllowed];

  isWiFiEmergencyCallingAvailable = [capabilitiesCopy isWiFiEmergencyCallingAvailable];
  wiFiCallingCapabilitiesState3 = [stateCopy wiFiCallingCapabilitiesState];

  [wiFiCallingCapabilitiesState3 setEmergencyCurrentlyAvailable:isWiFiEmergencyCallingAvailable];
}

- (void)setCapabilityInfo:(id)info forSubscription:(id)subscription senderIdentityCapabilitiesState:(id)state
{
  infoCopy = info;
  subscriptionCopy = subscription;
  stateCopy = state;
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = sub_100004778(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v36 = infoCopy;
    v37 = 2112;
    v38 = subscriptionCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received request to set capability information %@ capabilityInfo for subscription %@", buf, 0x16u);
  }

  v14 = [infoCopy objectForKeyedSubscript:kCTCapabilityAgent];
  if (v14)
  {
    v15 = [[TUCTCapabilitiesState alloc] initWithCapabilityInfo:v14];
    v16 = sub_100004778(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Updating VoLTE capability state with %@", buf, 0xCu);
    }

    [stateCopy setVoLTECallingCapabilitiesState:v15];
  }

  v17 = [infoCopy objectForKeyedSubscript:kCTCapabilityAgent2];
  if (v17)
  {
    v18 = [[TUCTCapabilitiesState alloc] initWithCapabilityInfo:v17];
    v19 = sub_100004778(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v17;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Updating VoWiFi capability state with %@", buf, 0xCu);
    }

    [stateCopy setWiFiCallingCapabilitiesState:v18];
  }

  v20 = [infoCopy objectForKeyedSubscript:kCTCapabilityPhoneServices];
  if (v20)
  {
    v21 = [[TUThumperCTCapabilitiesState alloc] initWithCapabilityInfo:v20];
    accountID = [v21 accountID];
    associatedThumperAccountID = [(CSDTelephonyCallCapabilities *)self associatedThumperAccountID];
    [v21 setAssociated:TUStringsAreCaseInsensitiveEqual()];

    if ([v21 isEnabled])
    {
      v34 = subscriptionCopy;
      coreTelephonyClient = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
      telephonySubscriptions = [coreTelephonyClient telephonySubscriptions];
      v26 = [telephonySubscriptions count];
      if (v26 == 1 || ![v34 csd_isTelephony])
      {
        [v21 setSupportsDefaultPairedDevice:v26 == 1];
      }

      else
      {
        coreTelephonyClient2 = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
        preferredVoiceSubscriptionUUID = [coreTelephonyClient2 preferredVoiceSubscriptionUUID];
        uuid = [v34 uuid];
        [v21 setSupportsDefaultPairedDevice:{objc_msgSend(preferredVoiceSubscriptionUUID, "isEqual:")}];
      }

      subscriptionCopy = v34;
    }

    else
    {
      v28 = [v21 setSupportsDefaultPairedDevice:0];
    }

    v29 = sub_100004778(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v21;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Updating Thumper capability state with %@", buf, 0xCu);
    }

    [stateCopy setThumperCallingCapabilitiesState:v21];
  }

  v30 = [infoCopy objectForKeyedSubscript:kSimultaneousCallAndDataCurrentlySupported];
  v31 = [infoCopy objectForKeyedSubscript:kSuspendInternetOnBBCall];
  if (v30 | v31)
  {
    [(CSDTelephonyCallCapabilities *)self _updateSystemCapabilitiesStateForSubscription:subscriptionCopy capabilitiesState:stateCopy];
  }

  if (v14 || v17 || v20)
  {
    [(CSDTelephonyCallCapabilities *)self _updateCallCapabilitiesForSubscription:subscriptionCopy capabilitiesState:stateCopy];
  }
}

- (id)_subscriptionWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  subscriptions = [(CSDTelephonyCallCapabilities *)self subscriptions];
  v7 = [subscriptions countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(subscriptions);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        uuid = [v10 uuid];
        v12 = [uuid isEqual:dCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [subscriptions countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)_updateState
{
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDTelephonyCallCapabilities *)self _updateThumperAccountState];

  [(CSDTelephonyCallCapabilities *)self _updateSubscriptions];
}

- (void)_updateSubscriptions
{
  selfCopy = self;
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  coreTelephonyClient = [(CSDTelephonyCallCapabilities *)selfCopy coreTelephonyClient];
  subscriptions = [coreTelephonyClient subscriptions];
  v6 = subscriptions;
  if (subscriptions)
  {
    v7 = subscriptions;
  }

  else
  {
    v7 = +[NSSet set];
  }

  v8 = v7;

  v53 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v8 count]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v63;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v63 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v62 + 1) + 8 * i);
        uuid = [v13 uuid];
        v15 = [(CSDTelephonyCallCapabilities *)selfCopy _senderIdentityCapabilitiesStateForSubscription:v13];
        if (v15)
        {
          [(CSDTelephonyCallCapabilities *)selfCopy _updateSystemCapabilitiesStateForSubscription:v13 capabilitiesState:v15];
          [v53 setObject:v15 forKeyedSubscript:uuid];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
    }

    while (v10);
  }

  v46 = +[NSMutableSet set];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  secondaryThumperAccounts = [(CSDTelephonyCallCapabilities *)selfCopy secondaryThumperAccounts];
  v52 = [secondaryThumperAccounts countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (v52)
  {
    v51 = *v59;
    v49 = selfCopy;
    do
    {
      for (j = 0; j != v52; j = j + 1)
      {
        if (*v59 != v51)
        {
          objc_enumerationMutation(secondaryThumperAccounts);
        }

        v17 = *(*(&v58 + 1) + 8 * j);
        accountID = [v17 accountID];
        if ([accountID length])
        {
          v50 = v17;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          allValues = [v53 allValues];
          v20 = [allValues countByEnumeratingWithState:&v54 objects:v66 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v55;
LABEL_21:
            v23 = 0;
            while (1)
            {
              if (*v55 != v22)
              {
                objc_enumerationMutation(allValues);
              }

              v24 = *(*(&v54 + 1) + 8 * v23);
              thumperCallingCapabilitiesState = [v24 thumperCallingCapabilitiesState];
              accountID2 = [thumperCallingCapabilitiesState accountID];
              v27 = TUStringsAreCaseInsensitiveEqualOrNil();

              if (v27)
              {
                break;
              }

              if (v21 == ++v23)
              {
                v21 = [allValues countByEnumeratingWithState:&v54 objects:v66 count:16];
                selfCopy = v49;
                if (v21)
                {
                  goto LABEL_21;
                }

                goto LABEL_27;
              }
            }

            v28 = v24;

            selfCopy = v49;
            if (v28)
            {
              goto LABEL_32;
            }
          }

          else
          {
LABEL_27:
          }

          v29 = [CTXPCContextInfo csd_unknownContextInfoForAccountID:accountID];
          if (v29)
          {
            [v46 addObject:v29];
            v30 = [TUSenderIdentityCapabilitiesState alloc];
            uuid2 = [v29 uuid];
            v32 = [v30 initWithSenderIdentityUUID:uuid2];

            accountID3 = [v50 accountID];
            thumperCallingCapabilitiesState2 = [v32 thumperCallingCapabilitiesState];
            [thumperCallingCapabilitiesState2 setAccountID:accountID3];

            allowedSecondaryDeviceIDs = [v50 allowedSecondaryDeviceIDs];
            thumperCallingCapabilitiesState3 = [v32 thumperCallingCapabilitiesState];
            [thumperCallingCapabilitiesState3 setApprovedSecondaryDeviceIDs:allowedSecondaryDeviceIDs];

            accountID4 = [v50 accountID];
            associatedThumperAccountID = [(CSDTelephonyCallCapabilities *)selfCopy associatedThumperAccountID];
            v39 = TUStringsAreCaseInsensitiveEqual();
            thumperCallingCapabilitiesState4 = [v32 thumperCallingCapabilitiesState];
            [thumperCallingCapabilitiesState4 setAssociated:v39];

            primaryDeviceID = [v50 primaryDeviceID];
            thumperCallingCapabilitiesState5 = [v32 thumperCallingCapabilitiesState];
            [thumperCallingCapabilitiesState5 setLocalDeviceID:primaryDeviceID];

            thumperCallingCapabilitiesState6 = [v32 thumperCallingCapabilitiesState];
            [thumperCallingCapabilitiesState6 setSupported:1];

            senderIdentityUUID = [v32 senderIdentityUUID];
            [v53 setObject:v32 forKeyedSubscript:senderIdentityUUID];
          }

          v28 = 0;
LABEL_32:
        }
      }

      v52 = [secondaryThumperAccounts countByEnumeratingWithState:&v58 objects:v67 count:16];
    }

    while (v52);
  }

  v45 = [obj setByAddingObjectsFromSet:v46];
  [(CSDTelephonyCallCapabilities *)selfCopy setSubscriptions:v45];

  [(CSDTelephonyCallCapabilities *)selfCopy setSenderIdentityCapabilitiesStateByUUID:v53];
  [(CSDTelephonyCallCapabilities *)selfCopy _updateEmergencyCallbackModeEnabledState];
}

- (void)_updateCallCapabilitiesForSubscription:(id)subscription capabilitiesState:(id)state
{
  subscriptionCopy = subscription;
  stateCopy = state;
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  coreTelephonyClient = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
  v10 = [coreTelephonyClient callCapabilitiesForSubscription:subscriptionCopy];

  v12 = sub_100004778(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = subscriptionCopy;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Retrieved new telephony call capabilities for subscription %@: %@", &v13, 0x16u);
  }

  [(CSDTelephonyCallCapabilities *)self setCallCapabilities:v10 forSenderIdentityCapabilitiesState:stateCopy];
}

- (id)_senderIdentityCapabilitiesStateForSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[NSMutableDictionary dictionary];
  v7 = kCTCapabilityAgent;
  coreTelephonyClient = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
  v9 = [coreTelephonyClient capabilityInfoForSubscription:subscriptionCopy capability:v7];
  [v6 setObject:v9 forKeyedSubscript:v7];

  v10 = kCTCapabilityAgent2;
  coreTelephonyClient2 = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
  v12 = [coreTelephonyClient2 capabilityInfoForSubscription:subscriptionCopy capability:v10];
  [v6 setObject:v12 forKeyedSubscript:v10];

  v13 = kCTCapabilityPhoneServices;
  coreTelephonyClient3 = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
  v15 = [coreTelephonyClient3 capabilityInfoForSubscription:subscriptionCopy capability:v13];
  [v6 setObject:v15 forKeyedSubscript:v13];

  if ([v6 count])
  {
    v16 = [TUSenderIdentityCapabilitiesState alloc];
    uuid = [subscriptionCopy uuid];
    v18 = [v16 initWithSenderIdentityUUID:uuid];

    [(CSDTelephonyCallCapabilities *)self setCapabilityInfo:v6 forSubscription:subscriptionCopy senderIdentityCapabilitiesState:v18];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)_updateSystemCapabilitiesStateForSubscription:(id)subscription capabilitiesState:(id)state
{
  subscriptionCopy = subscription;
  stateCopy = state;
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  coreTelephonyClient = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
  v10 = [coreTelephonyClient systemCapabilitiesForSubscription:subscriptionCopy];

  v12 = sub_100004778(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = subscriptionCopy;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Retrieved new system capabilities for subscription %@: %@", &v15, 0x16u);
  }

  v13 = [v10 objectForKeyedSubscript:kSimultaneousCallAndDataCurrentlySupported];
  if ([v13 BOOLValue])
  {
    v14 = [v10 objectForKeyedSubscript:kSuspendInternetOnBBCall];
    [stateCopy setSupportsSimultaneousVoiceAndData:{objc_msgSend(v14, "BOOLValue") ^ 1}];
  }

  else
  {
    [stateCopy setSupportsSimultaneousVoiceAndData:0];
  }
}

- (void)_updateEmergencyCallbackModeEnabledState
{
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  coreTelephonyClient = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
  isEmergencyCallbackModeEnabled = [coreTelephonyClient isEmergencyCallbackModeEnabled];

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"disabled";
    if (isEmergencyCallbackModeEnabled)
    {
      v8 = @"enabled";
    }

    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting new emergency callback mode %@.", &v9, 0xCu);
  }

  [(CSDTelephonyCallCapabilities *)self setEmergencyCallbackModeEnabled:isEmergencyCallbackModeEnabled];
}

- (void)_updateThumperAccountState
{
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  selfCopy = self;
  coreTelephonyClient = [(CSDTelephonyCallCapabilities *)self coreTelephonyClient];
  thumperDeviceInfo = [coreTelephonyClient thumperDeviceInfo];

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v63 = thumperDeviceInfo;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating Thumper account state with %@", buf, 0xCu);
  }

  [(CSDTelephonyCallCapabilities *)selfCopy setCapabilitiesValid:thumperDeviceInfo != 0];
  v8 = [(CSDThumperAccount *)thumperDeviceInfo objectForKeyedSubscript:kPSDeviceId];
  objc_opt_class();
  v46 = v8;
  if (objc_opt_isKindOfClass())
  {
    uppercaseString = [v8 uppercaseString];
    v10 = sub_100004778(uppercaseString);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v63 = uppercaseString;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Updated local Thumper device ID to %@", buf, 0xCu);
    }

    [(CSDTelephonyCallCapabilities *)selfCopy setLocalThumperDeviceID:uppercaseString];
  }

  else
  {
    uppercaseString = 0;
  }

  v51 = +[NSMutableArray array];
  v50 = +[NSMutableArray array];
  v11 = [(CSDThumperAccount *)thumperDeviceInfo objectForKeyedSubscript:kPSThumperCalling];

  v48 = thumperDeviceInfo;
  v12 = [(CSDThumperAccount *)thumperDeviceInfo objectForKeyedSubscript:kPSAccountList];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v57;
    do
    {
      v16 = 0;
      do
      {
        if (*v57 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v56 + 1) + 8 * v16);
        v18 = [[CSDThumperAccount alloc] initWithDictionaryRepresentation:v17];
        v19 = v18;
        if (v18)
        {
          primaryDeviceID = [(CSDThumperAccount *)v18 primaryDeviceID];
          v21 = TUStringsAreCaseInsensitiveEqual();

          if (v21)
          {
            v23 = v51;
LABEL_23:
            [(CSDThumperAccount *)v23 addObject:v19];
            goto LABEL_24;
          }

          v25 = sub_100004778(v22);
          v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
          if (v11)
          {
            if (v26)
            {
              *buf = 138412290;
              v63 = v19;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Adding thumperAccount %@ to secondaryThumperAccounts", buf, 0xCu);
            }

            v23 = v50;
            goto LABEL_23;
          }

          if (v26)
          {
            *buf = 138412290;
            v63 = v19;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Not adding thumperAccount %@ to accounts list", buf, 0xCu);
          }
        }

        else
        {
          v24 = sub_100004778(0);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v63 = v17;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[WARN] Could not initialize Thumper account with Thumper account dictionary: %@", buf, 0xCu);
          }
        }

LABEL_24:

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v27 = [v12 countByEnumeratingWithState:&v56 objects:v61 count:16];
      v14 = v27;
    }

    while (v27);
  }

  v28 = [(CSDThumperAccount *)v51 sortedArrayUsingComparator:&stru_10061ECB0];
  [(CSDTelephonyCallCapabilities *)selfCopy setLocalThumperAccounts:v28];

  v30 = sub_100004778(v29);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v63 = v51;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Updated local Thumper accounts to %@", buf, 0xCu);
  }

  v31 = [(CSDThumperAccount *)v50 sortedArrayUsingComparator:&stru_10061ECD0];
  [(CSDTelephonyCallCapabilities *)selfCopy setSecondaryThumperAccounts:v31];

  v33 = sub_100004778(v32);
  v34 = v48;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v63 = v50;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Updated secondary Thumper accounts to %@", buf, 0xCu);
  }

  v35 = kPSAssociatedAccountID;
  v36 = [(CSDThumperAccount *)v48 objectForKeyedSubscript:v35];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    secondaryThumperAccounts = sub_100004778([(CSDTelephonyCallCapabilities *)selfCopy setAssociatedThumperAccountID:v36]);
    if (os_log_type_enabled(secondaryThumperAccounts, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v63 = v36;
      _os_log_impl(&_mh_execute_header, secondaryThumperAccounts, OS_LOG_TYPE_DEFAULT, "Found associated Thumper account ID; updated associated Thumper account ID to %@", buf, 0xCu);
    }

LABEL_50:

    goto LABEL_51;
  }

  if ([(CSDThumperAccount *)uppercaseString length])
  {
    secondaryThumperAccounts = [(CSDTelephonyCallCapabilities *)selfCopy secondaryThumperAccounts];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v38 = [secondaryThumperAccounts countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v38)
    {
      v39 = v38;
      v45 = v35;
      v47 = v36;
      v40 = *v53;
      do
      {
        for (i = 0; i != v39; i = i + 1)
        {
          if (*v53 != v40)
          {
            objc_enumerationMutation(secondaryThumperAccounts);
          }

          v42 = *(*(&v52 + 1) + 8 * i);
          if ([v42 containsRegisteredDeviceID:{uppercaseString, v45}])
          {
            accountID = [v42 accountID];
            v44 = sub_100004778([(CSDTelephonyCallCapabilities *)selfCopy setAssociatedThumperAccountID:accountID]);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v63 = accountID;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Found matching secondary Thumper account; updated associated Thumper account ID to %@", buf, 0xCu);
            }
          }
        }

        v39 = [secondaryThumperAccounts countByEnumeratingWithState:&v52 objects:v60 count:16];
      }

      while (v39);
      v36 = v47;
      v34 = v48;
      v35 = v45;
    }

    goto LABEL_50;
  }

LABEL_51:
}

- (void)subscriptionsDidChangeForClient:(id)client
{
  clientCopy = client;
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = clientCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Subscriptions changed for client: %@", &v9, 0xCu);
  }

  [(CSDTelephonyCallCapabilities *)self _updateSubscriptions];
  delegate = [(CSDTelephonyCallCapabilities *)self delegate];
  [delegate telephonyCallCapabilitiesChanged];
}

- (void)client:(id)client subscription:(id)subscription callCapabilitiesDidChange:(id)change
{
  changeCopy = change;
  subscriptionCopy = subscription;
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  senderIdentityCapabilitiesStateByUUID = [(CSDTelephonyCallCapabilities *)self senderIdentityCapabilitiesStateByUUID];
  uuid = [subscriptionCopy uuid];

  v11 = [senderIdentityCapabilitiesStateByUUID objectForKeyedSubscript:uuid];

  if (v11)
  {
    [(CSDTelephonyCallCapabilities *)self setCallCapabilities:changeCopy forSenderIdentityCapabilitiesState:v11];
    delegate = [(CSDTelephonyCallCapabilities *)self delegate];
    [delegate telephonyCallCapabilitiesChanged];
  }
}

- (void)client:(id)client capabilitiesDidChange:(id)change
{
  v5 = [(CSDTelephonyCallCapabilities *)self queue:client];
  dispatch_assert_queue_V2(v5);

  if ([(CSDTelephonyCallCapabilities *)self shouldUpdateSubscriptions])
  {
    [(CSDTelephonyCallCapabilities *)self _updateSubscriptions];
    delegate = [(CSDTelephonyCallCapabilities *)self delegate];
    [delegate telephonyCallCapabilitiesChanged];
  }
}

- (void)client:(id)client subscription:(id)subscription capabilitiesDidChange:(id)change
{
  subscriptionCopy = subscription;
  changeCopy = change;
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  senderIdentityCapabilitiesStateByUUID = [(CSDTelephonyCallCapabilities *)self senderIdentityCapabilitiesStateByUUID];
  uuid = [subscriptionCopy uuid];
  v11 = [senderIdentityCapabilitiesStateByUUID objectForKeyedSubscript:uuid];

  if ([(CSDTelephonyCallCapabilities *)self shouldUpdateSubscriptions]|| !v11)
  {
    [(CSDTelephonyCallCapabilities *)self _updateSubscriptions];
  }

  else
  {
    [(CSDTelephonyCallCapabilities *)self setCapabilityInfo:changeCopy forSubscription:subscriptionCopy senderIdentityCapabilitiesState:v11];
  }

  delegate = [(CSDTelephonyCallCapabilities *)self delegate];
  [delegate telephonyCallCapabilitiesChanged];
}

- (void)emergencyCallbackModeDidChangeForAllSubscriptionsForClient:(id)client
{
  queue = [(CSDTelephonyCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDTelephonyCallCapabilities *)self _updateEmergencyCallbackModeEnabledState];
  delegate = [(CSDTelephonyCallCapabilities *)self delegate];
  [delegate telephonyCallCapabilitiesChanged];
}

- (BOOL)shouldUpdateSubscriptions
{
  associatedThumperAccountID = [(CSDTelephonyCallCapabilities *)self associatedThumperAccountID];
  secondaryThumperAccounts = [(CSDTelephonyCallCapabilities *)self secondaryThumperAccounts];
  [(CSDTelephonyCallCapabilities *)self _updateThumperAccountState];
  associatedThumperAccountID2 = [(CSDTelephonyCallCapabilities *)self associatedThumperAccountID];
  secondaryThumperAccounts2 = [(CSDTelephonyCallCapabilities *)self secondaryThumperAccounts];
  v7 = TUStringsAreCaseInsensitiveEqualOrNil();
  if ((v7 & 1) == 0)
  {
    v10 = sub_100004778(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0;
      v11 = "Subscription cache requires an update; associated Thumper account ID changed";
      v12 = &v15;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
    }

LABEL_9:

    v9 = 1;
    goto LABEL_10;
  }

  v8 = [secondaryThumperAccounts isEqualToArray:secondaryThumperAccounts2];
  if ((v8 & 1) == 0)
  {
    v10 = sub_100004778(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v11 = "Subscription cache requires an update; secondary Thumper accounts changed";
      v12 = &v14;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (CSDTelephonyCallCapabilitiesDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end