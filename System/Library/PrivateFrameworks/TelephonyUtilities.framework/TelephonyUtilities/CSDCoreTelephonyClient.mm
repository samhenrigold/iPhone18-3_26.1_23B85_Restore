@interface CSDCoreTelephonyClient
+ (BOOL)_isNSErrorFatal:(id)fatal;
- (BOOL)isEmergencyCallbackModeEnabled;
- (BOOL)isInHomeCountryForSubscriptionUUID:(id)d;
- (CSDCarrierBundleProviderController)carrierBundleProviderController;
- (CSDCoreTelephonyClient)initWithQueue:(id)queue shouldRegisterForECBMNotification:(BOOL)notification;
- (CSDCoreTelephonyClientDelegate)delegate;
- (CTXPCContexts)activeContexts;
- (NSDictionary)thumperDeviceInfo;
- (NSSet)subscriptions;
- (NSSet)telephonySubscriptions;
- (NSUUID)preferredVoiceSubscriptionUUID;
- (id)ISOCountryCodeForMobileCountryCode:(id)code mobileNetworkCode:(id)networkCode;
- (id)ISOCountryCodeForSubscriptionUUID:(id)d;
- (id)_subscriptionWithUUID:(id)d;
- (id)accountISOCountryCodeForSubscriptionUUID:(id)d;
- (id)callCapabilitiesForSubscription:(id)subscription;
- (id)capabilityInfoForSubscription:(id)subscription capability:(id)capability;
- (id)legacySystemCapabilities;
- (id)mobileCountryCodeForSubscription:(id)subscription error:(id *)error;
- (id)mobileNetworkCodeForSubscription:(id)subscription error:(id *)error;
- (id)spamIdentifiersForSubscriptionUUID:(id)d;
- (id)systemCapabilitiesForSubscription:(id)subscription;
- (void)activeSubscriptionsDidChange;
- (void)addSecondaryThumperDeviceWithIDSDeviceIdentifier:(id)identifier toSubscription:(id)subscription;
- (void)callCapabilitiesChanged:(id)changed capabilities:(id)capabilities;
- (void)context:(id)context capabilitiesChanged:(id)changed;
- (void)ctEmergencyCallbackModeStatusChangedWithUserInfo:(id)info;
- (void)endEmergencyCallbackMode;
- (void)legacyAddSecondaryThumperDeviceWithIDSDeviceIdentifier:(id)identifier;
- (void)legacyRecheckAccountStatusForCapability:(id)capability;
- (void)legacyRemoveSecondaryThumperDeviceWithIDSDeviceIdentifier:(id)identifier;
- (void)phoneServicesCapabilitiesChanged:(id)changed;
- (void)recheckAccountStatusForSubscription:(id)subscription capability:(id)capability;
- (void)removeSecondaryThumperDeviceWithIDSDeviceIdentifier:(id)identifier fromSubscription:(id)subscription;
- (void)setLegacyCapability:(id)capability enabled:(BOOL)enabled capabilityInformation:(id)information;
- (void)setSubscription:(id)subscription capability:(id)capability enabled:(BOOL)enabled info:(id)info;
@end

@implementation CSDCoreTelephonyClient

- (CSDCoreTelephonyClient)initWithQueue:(id)queue shouldRegisterForECBMNotification:(BOOL)notification
{
  notificationCopy = notification;
  queueCopy = queue;
  v21.receiver = self;
  v21.super_class = CSDCoreTelephonyClient;
  v8 = [(CSDCoreTelephonyClient *)&v21 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, queue);
    v10 = [[CoreTelephonyClient alloc] initWithQueue:queueCopy];
    client = v9->_client;
    v9->_client = v10;

    [(CoreTelephonyClient *)v9->_client setDelegate:v9];
    v12 = objc_alloc_init(NSMutableDictionary);
    mobileCodesToISOCountryCode = v9->_mobileCodesToISOCountryCode;
    v9->_mobileCodesToISOCountryCode = v12;

    v14 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{@"01", @"gp", @"02", @"gp", @"03", @"gp", @"08", @"gp", @"09", @"gf", @"10", @"mq", @"12", @"gp", @"20", 0}];
    [(NSMutableDictionary *)v9->_mobileCodesToISOCountryCode setObject:v14 forKeyedSubscript:@"340"];

    objc_initWeak(&location, v9);
    if (notificationCopy)
    {
      TUCTServerConnection();
      objc_copyWeak(&v19, &location);
      v15 = _CTServerConnectionRegisterBlockForNotification();
      v16 = HIDWORD(v15);
      v17 = sub_100004778(v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v23 = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Registered for kCTEmergencyCallBackModeStatusNotification with error: %d", buf, 8u);
      }

      objc_destroyWeak(&v19);
    }

    objc_destroyWeak(&location);
  }

  return v9;
}

- (CTXPCContexts)activeContexts
{
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  activeContexts = self->_activeContexts;
  if (!activeContexts)
  {
    client = [(CSDCoreTelephonyClient *)self client];
    v12 = 0;
    v6 = [client getActiveContexts:&v12];
    v7 = v12;
    v8 = self->_activeContexts;
    self->_activeContexts = v6;

    if (!self->_activeContexts)
    {
      v9 = [objc_opt_class() _isNSErrorFatal:v7];
      if (v9)
      {
        v10 = sub_100004778(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10047D41C(self, v7, v10);
        }
      }
    }

    activeContexts = self->_activeContexts;
  }

  return activeContexts;
}

- (CSDCarrierBundleProviderController)carrierBundleProviderController
{
  carrierBundleProviderController = self->_carrierBundleProviderController;
  if (!carrierBundleProviderController)
  {
    v4 = objc_alloc_init(CSDCarrierBundleProviderController);
    v5 = self->_carrierBundleProviderController;
    self->_carrierBundleProviderController = v4;

    carrierBundleProviderController = self->_carrierBundleProviderController;
  }

  return carrierBundleProviderController;
}

- (NSUUID)preferredVoiceSubscriptionUUID
{
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  activeContexts = [(CSDCoreTelephonyClient *)self activeContexts];
  voicePreferred = [activeContexts voicePreferred];

  return voicePreferred;
}

- (NSSet)subscriptions
{
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  activeContexts = [(CSDCoreTelephonyClient *)self activeContexts];
  subscriptions = [activeContexts subscriptions];

  if (subscriptions)
  {
    v6 = [NSSet setWithArray:subscriptions];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSSet)telephonySubscriptions
{
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = +[NSMutableSet set];
  subscriptions = [(CSDCoreTelephonyClient *)self subscriptions];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [subscriptions countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(subscriptions);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 csd_isTelephony])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [subscriptions countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (BOOL)isEmergencyCallbackModeEnabled
{
  TUCTServerConnection();
  v2 = _CTServerConnectionGetEmergencyCallBackMode();
  v3 = [objc_opt_class() _isCTErrorFatal:v2];
  if (v3)
  {
    v4 = sub_100004778(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10047D4C8();
    }
  }

  return 0;
}

- (NSDictionary)thumperDeviceInfo
{
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  client = [(CSDCoreTelephonyClient *)self client];
  v10 = 0;
  v5 = [client getPhoneServicesDeviceInfo:&v10];
  v6 = v10;

  if (!v5)
  {
    v7 = [objc_opt_class() _isNSErrorFatal:v6];
    if (v7)
    {
      v8 = sub_100004778(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10047D538();
      }
    }
  }

  return v5;
}

- (id)callCapabilitiesForSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  if (([subscriptionCopy csd_isUnknown] & 1) != 0 || (-[CSDCoreTelephonyClient client](self, "client"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) == 0))
  {
    v11 = 0;
  }

  else
  {
    client = [(CSDCoreTelephonyClient *)self client];
    context = [subscriptionCopy context];
    v15 = 0;
    v9 = [client getCallCapabilities:context error:&v15];
    v10 = v15;

    if (v9)
    {
      v11 = [CSDCTCallCapabilities callCapabilitiesForCTCallCapabilities:v9];
    }

    else
    {
      v12 = [objc_opt_class() _isNSErrorFatal:v10];
      if (v12)
      {
        v13 = sub_100004778(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_10047D5A0();
        }
      }

      v11 = 0;
    }
  }

  return v11;
}

- (id)capabilityInfoForSubscription:(id)subscription capability:(id)capability
{
  subscriptionCopy = subscription;
  capabilityCopy = capability;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([subscriptionCopy csd_isUnknown])
  {
    v9 = 0;
  }

  else
  {
    v17 = 0;
    client = [(CSDCoreTelephonyClient *)self client];
    context = [subscriptionCopy context];
    v16 = 0;
    v12 = [client context:context getCapability:capabilityCopy status:&v17 with:&v16];
    v9 = v16;

    if (!v9)
    {
      v13 = [objc_opt_class() _isNSErrorFatal:v12];
      if (v13)
      {
        v14 = sub_100004778(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10047D608();
        }
      }
    }
  }

  return v9;
}

- (id)systemCapabilitiesForSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([subscriptionCopy csd_isUnknown])
  {
    v6 = 0;
  }

  else
  {
    client = [(CSDCoreTelephonyClient *)self client];
    context = [subscriptionCopy context];
    v13 = 0;
    v6 = [client context:context getSystemCapabilities:&v13];
    v9 = v13;

    if (!v6)
    {
      v10 = [objc_opt_class() _isNSErrorFatal:v9];
      if (v10)
      {
        v11 = sub_100004778(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10047D678();
        }
      }
    }
  }

  return v6;
}

- (void)setSubscription:(id)subscription capability:(id)capability enabled:(BOOL)enabled info:(id)info
{
  enabledCopy = enabled;
  subscriptionCopy = subscription;
  capabilityCopy = capability;
  infoCopy = info;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  csd_isUnknown = [subscriptionCopy csd_isUnknown];
  if (csd_isUnknown)
  {
    [(CSDCoreTelephonyClient *)self setLegacyCapability:capabilityCopy enabled:enabledCopy capabilityInformation:infoCopy];
  }

  else
  {
    v15 = sub_100004778(csd_isUnknown);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412802;
      *v22 = capabilityCopy;
      *&v22[8] = 1024;
      *&v22[10] = enabledCopy;
      v23 = 2112;
      v24 = infoCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Calling [CoreTelephonyClient context:setCapability:enabled:with:completion:] with capability: %@ enabled: %d info: %@", &v21, 0x1Cu);
    }

    client = [(CSDCoreTelephonyClient *)self client];
    context = [subscriptionCopy context];
    v18 = [client context:context setCapability:capabilityCopy enabled:enabledCopy with:infoCopy];

    if (v18)
    {
      v20 = sub_100004778(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = 67109890;
        *v22 = enabledCopy;
        *&v22[4] = 2112;
        *&v22[6] = capabilityCopy;
        v23 = 2112;
        v24 = infoCopy;
        v25 = 2112;
        v26 = v18;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to set enabled=%d for capability %@ with info %@: %@", &v21, 0x26u);
      }
    }
  }
}

- (void)addSecondaryThumperDeviceWithIDSDeviceIdentifier:(id)identifier toSubscription:(id)subscription
{
  identifierCopy = identifier;
  subscriptionCopy = subscription;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  csd_isUnknown = [subscriptionCopy csd_isUnknown];
  if ((csd_isUnknown & 1) == 0)
  {
    v10 = sub_100004778(csd_isUnknown);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling [CoreTelephonyClient context:addPhoneServicesDevice:withCompletion:] with idsDeviceIdentifier: %@", buf, 0xCu);
    }

    client = [(CSDCoreTelephonyClient *)self client];
    context = [subscriptionCopy context];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10023041C;
    v13[3] = &unk_10061A4C0;
    v14 = identifierCopy;
    [client context:context addPhoneServicesDevice:v14 withCompletion:v13];
  }
}

- (void)removeSecondaryThumperDeviceWithIDSDeviceIdentifier:(id)identifier fromSubscription:(id)subscription
{
  identifierCopy = identifier;
  subscriptionCopy = subscription;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  csd_isUnknown = [subscriptionCopy csd_isUnknown];
  if ((csd_isUnknown & 1) == 0)
  {
    v10 = sub_100004778(csd_isUnknown);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling [CoreTelephonyClient context:removePhoneServicesDevice:withCompletion:] with idsDeviceIdentifier: %@", buf, 0xCu);
    }

    client = [(CSDCoreTelephonyClient *)self client];
    context = [subscriptionCopy context];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100230600;
    v13[3] = &unk_10061A4C0;
    v14 = identifierCopy;
    [client context:context removePhoneServicesDevice:v14 withCompletion:v13];
  }
}

- (void)recheckAccountStatusForSubscription:(id)subscription capability:(id)capability
{
  subscriptionCopy = subscription;
  capabilityCopy = capability;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  csd_isUnknown = [subscriptionCopy csd_isUnknown];
  if ((csd_isUnknown & 1) == 0)
  {
    v10 = sub_100004778(csd_isUnknown);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = capabilityCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling [CoreTelephonyClient context:recheckPhoneServicesAccountStatus:] with capability: %@", &v14, 0xCu);
    }

    client = [(CSDCoreTelephonyClient *)self client];
    context = [subscriptionCopy context];
    v13 = [client context:context recheckPhoneServicesAccountStatus:capabilityCopy];
  }
}

- (void)endEmergencyCallbackMode
{
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = sub_100004778(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = @"NO";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling _CTServerConnectionEnableEmergencyCallBackMode() with %@", &v8, 0xCu);
  }

  TUCTServerConnection();
  v5 = _CTServerConnectionEnableEmergencyCallBackMode();
  v6 = [objc_opt_class() _isCTErrorFatal:v5];
  if (v6)
  {
    v7 = sub_100004778(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10047D4C8();
    }
  }
}

- (void)setLegacyCapability:(id)capability enabled:(BOOL)enabled capabilityInformation:(id)information
{
  enabledCopy = enabled;
  capabilityCopy = capability;
  informationCopy = information;
  v9 = sub_100004778(informationCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = capabilityCopy;
    v15 = 1024;
    v16 = enabledCopy;
    v17 = 2112;
    v18 = informationCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Calling _CTServerConnectionSetCapabilityExtended() with capability: %@ value: %d capabilityInformation: %@", &v13, 0x1Cu);
  }

  TUCTServerConnection();
  v10 = _CTServerConnectionSetCapabilityExtended();
  v11 = [objc_opt_class() _isCTErrorFatal:v10];
  if (v11)
  {
    v12 = sub_100004778(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412802;
      v14 = capabilityCopy;
      v15 = 1024;
      v16 = v10;
      v17 = 1024;
      LODWORD(v18) = HIDWORD(v10);
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error setting capability for %@ calling (domain=%d, code=%d)", &v13, 0x18u);
    }
  }
}

- (id)legacySystemCapabilities
{
  TUCTServerConnection();
  v2 = _CTServerConnectionCopySystemCapabilities();
  v3 = [objc_opt_class() _isCTErrorFatal:v2];
  if (v3)
  {
    v4 = sub_100004778(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10047D7D0();
    }
  }

  return 0;
}

- (void)legacyAddSecondaryThumperDeviceWithIDSDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = kCTCapabilityPhoneServices;
  v5 = sub_100004778(identifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    *v12 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Calling _CTServerConnectionPhoneServicesAddDevice() with capability: %@ idsDeviceIdentifier: %@", &v9, 0x16u);
  }

  TUCTServerConnection();
  v6 = _CTServerConnectionPhoneServicesAddDevice();
  v7 = [objc_opt_class() _isCTErrorFatal:v6];
  if (v7)
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412802;
      v10 = v4;
      v11 = 1024;
      *v12 = v6;
      *&v12[4] = 1024;
      *&v12[6] = HIDWORD(v6);
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error adding device for %@ calling (domain=%d, code=%d)", &v9, 0x18u);
    }
  }
}

- (void)legacyRemoveSecondaryThumperDeviceWithIDSDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = kCTCapabilityPhoneServices;
  v5 = sub_100004778(identifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    *v12 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Calling _CTServerConnectionPhoneServicesRemoveDevice() with capability: %@ idsDeviceIdentifier: %@", &v9, 0x16u);
  }

  TUCTServerConnection();
  v6 = _CTServerConnectionPhoneServicesRemoveDevice();
  v7 = [objc_opt_class() _isCTErrorFatal:v6];
  if (v7)
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412802;
      v10 = v4;
      v11 = 1024;
      *v12 = v6;
      *&v12[4] = 1024;
      *&v12[6] = HIDWORD(v6);
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error removing device for %@ calling (domain=%d, code=%d)", &v9, 0x18u);
    }
  }
}

- (void)legacyRecheckAccountStatusForCapability:(id)capability
{
  capabilityCopy = capability;
  v4 = sub_100004778(capabilityCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = capabilityCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling _CTServerConnectionPhoneServicesAccountStatusChanged() and _CTServerConnectionSendBarrier() with capability: %@", buf, 0xCu);
  }

  TUCTServerConnection();
  v5 = capabilityCopy;
  v6 = &__kCFBooleanTrue;
  [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  _CTServerConnectionPhoneServicesAccountStatusChanged();
  TUCTServerConnection();
  _CTServerConnectionSendBarrier();
}

- (id)accountISOCountryCodeForSubscriptionUUID:(id)d
{
  dCopy = d;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [(CSDCoreTelephonyClient *)self _subscriptionWithUUID:dCopy];
  if (v6)
  {
    client = [(CSDCoreTelephonyClient *)self client];
    context = [v6 context];
    v19 = 0;
    v9 = [client copyMobileSubscriberCountryCode:context error:&v19];
    v10 = v19;

    if (v9)
    {
      client2 = [(CSDCoreTelephonyClient *)self client];
      v18 = v10;
      v12 = [client2 copyMobileSubscriberIsoCountryCode:v9 error:&v18];
      v13 = v18;

      if ([v12 length])
      {
        goto LABEL_15;
      }

      v14 = [objc_opt_class() _isNSErrorFatal:v13];
      if (!v14)
      {
        goto LABEL_15;
      }

      v15 = sub_100004778(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10047D840();
      }
    }

    else
    {
      v16 = [objc_opt_class() _isNSErrorFatal:v10];
      if (!v16)
      {
        v12 = 0;
        goto LABEL_16;
      }

      v15 = sub_100004778(v16);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10047D8B0();
      }

      v12 = 0;
      v13 = v10;
    }

LABEL_15:
    v10 = v13;
LABEL_16:

    goto LABEL_17;
  }

  v10 = sub_100004778(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_10047D920();
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (BOOL)isInHomeCountryForSubscriptionUUID:(id)d
{
  dCopy = d;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [(CSDCoreTelephonyClient *)self _subscriptionWithUUID:dCopy];

  if (v6)
  {
    v7 = +[CTXPCServiceSubscriptionContext contextWithSlot:](CTXPCServiceSubscriptionContext, "contextWithSlot:", [v6 slotID]);
    client = [(CSDCoreTelephonyClient *)self client];
    v16 = 0;
    v9 = [client getRoamingStatus:v7 error:&v16];
    v10 = v16;

    if (v10)
    {
      v12 = 0;
    }

    else
    {
      isVoiceRoaming = [v9 isVoiceRoaming];
      v12 = isVoiceRoaming ^ 1;
    }

    v13 = sub_100004778(isVoiceRoaming);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = @"NO";
      if (v12)
      {
        v14 = @"YES";
      }

      *buf = 138412546;
      v18 = v14;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "isInHomeCountryForSubscriptionUUID: %@ for subscription context - %@.", buf, 0x16u);
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (id)spamIdentifiersForSubscriptionUUID:(id)d
{
  dCopy = d;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  carrierBundleProviderController = [(CSDCoreTelephonyClient *)self carrierBundleProviderController];
  v7 = [carrierBundleProviderController spamIdentifiersForSubscriptionUUID:dCopy];

  return v7;
}

- (id)ISOCountryCodeForSubscriptionUUID:(id)d
{
  dCopy = d;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [(CSDCoreTelephonyClient *)self _subscriptionWithUUID:dCopy];
  if (v6)
  {
    v20 = 0;
    v7 = [(CSDCoreTelephonyClient *)self mobileCountryCodeForSubscription:v6 error:&v20];
    v8 = v20;
    v9 = v8;
    if (v7)
    {
      v19 = v8;
      v10 = [(CSDCoreTelephonyClient *)self mobileNetworkCodeForSubscription:v6 error:&v19];
      v11 = v19;

      if (v10)
      {
        v13 = sub_100004778(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v22 = v7;
          v23 = 2112;
          v24 = v10;
          v25 = 2112;
          v26 = v6;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Retrieved mobile country code %@ and mobile network code %@ for subscription %@", buf, 0x20u);
        }

        v14 = [(CSDCoreTelephonyClient *)self ISOCountryCodeForMobileCountryCode:v7 mobileNetworkCode:v10];
      }

      else
      {
        v16 = [objc_opt_class() _isNSErrorFatal:v11];
        if (v16)
        {
          v17 = sub_100004778(v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_10047D988();
          }
        }

        v14 = 0;
      }
    }

    else
    {
      v15 = [objc_opt_class() _isNSErrorFatal:v8];
      if (!v15)
      {
        v14 = 0;
        goto LABEL_20;
      }

      v10 = sub_100004778(v15);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10047D8B0();
      }

      v14 = 0;
      v11 = v9;
    }

    v9 = v11;
LABEL_20:

    goto LABEL_21;
  }

  v9 = sub_100004778(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10047D920();
  }

  v14 = 0;
LABEL_21:

  return v14;
}

- (id)ISOCountryCodeForMobileCountryCode:(id)code mobileNetworkCode:(id)networkCode
{
  codeCopy = code;
  networkCodeCopy = networkCode;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  mobileCodesToISOCountryCode = [(CSDCoreTelephonyClient *)self mobileCodesToISOCountryCode];
  v10 = [mobileCodesToISOCountryCode objectForKeyedSubscript:codeCopy];
  v11 = [v10 objectForKeyedSubscript:networkCodeCopy];

  v12 = [v11 length];
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    *buf = 0;
    TUCTServerConnection();
    v14 = _CTServerConnectionCopyISOForMCC();
    v13 = v11;
    v12 = [objc_opt_class() _isCTErrorFatal:v14];
    if (v12)
    {
      v15 = sub_100004778(v12);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10047D9F8();
      }
    }
  }

  v16 = sub_100004778(v12);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = v13;
    v19 = 2112;
    v20 = codeCopy;
    v21 = 2112;
    v22 = networkCodeCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Retrieved ISO country code %@ for mobile country code %@ and mobile network code %@", buf, 0x20u);
  }

  return v13;
}

- (id)mobileCountryCodeForSubscription:(id)subscription error:(id *)error
{
  subscriptionCopy = subscription;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([subscriptionCopy csd_isUnknown])
  {
    v8 = 0;
  }

  else
  {
    client = [(CSDCoreTelephonyClient *)self client];
    context = [subscriptionCopy context];
    v8 = [client copyMobileCountryCode:context error:error];
  }

  return v8;
}

- (id)mobileNetworkCodeForSubscription:(id)subscription error:(id *)error
{
  subscriptionCopy = subscription;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([subscriptionCopy csd_isUnknown])
  {
    v8 = 0;
  }

  else
  {
    client = [(CSDCoreTelephonyClient *)self client];
    context = [subscriptionCopy context];
    v8 = [client copyMobileNetworkCode:context error:error];
  }

  return v8;
}

+ (BOOL)_isNSErrorFatal:(id)fatal
{
  fatalCopy = fatal;
  v4 = fatalCopy != 0;
  domain = [fatalCopy domain];
  if ([domain isEqualToString:NSPOSIXErrorDomain])
  {
    code = [fatalCopy code];

    if (fatalCopy)
    {
      v7 = code == 35;
    }

    else
    {
      v7 = 1;
    }

    v4 = !v7;
  }

  else
  {
  }

  return v4;
}

- (id)_subscriptionWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  subscriptions = [(CSDCoreTelephonyClient *)self subscriptions];
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

- (void)activeSubscriptionsDidChange
{
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDCoreTelephonyClient *)self setActiveContexts:0];
  delegate = [(CSDCoreTelephonyClient *)self delegate];
  [delegate subscriptionsDidChangeForClient:self];
}

- (void)callCapabilitiesChanged:(id)changed capabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  changedCopy = changed;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  uuid = [changedCopy uuid];

  v10 = [(CSDCoreTelephonyClient *)self _subscriptionWithUUID:uuid];

  if (v10)
  {
    v12 = sub_100004778(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = capabilitiesCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received delegate callback callCapabilitiesChanged: with context: %@ info: %@", &v15, 0x16u);
    }

    v13 = [CSDCTCallCapabilities callCapabilitiesForCTCallCapabilities:capabilitiesCopy];
    delegate = [(CSDCoreTelephonyClient *)self delegate];
    [delegate client:self subscription:v10 callCapabilitiesDidChange:v13];
  }
}

- (void)context:(id)context capabilitiesChanged:(id)changed
{
  changedCopy = changed;
  contextCopy = context;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  uuid = [contextCopy uuid];

  v10 = [(CSDCoreTelephonyClient *)self _subscriptionWithUUID:uuid];

  if (v10)
  {
    v12 = sub_100004778(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = changedCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received context:capabilitiesChanged: with context: %@ info: %@", &v14, 0x16u);
    }

    delegate = [(CSDCoreTelephonyClient *)self delegate];
    [delegate client:self subscription:v10 capabilitiesDidChange:changedCopy];
  }
}

- (void)phoneServicesCapabilitiesChanged:(id)changed
{
  changedCopy = changed;
  v5 = sub_100004778(changedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = objc_opt_class();
    v13 = 2112;
    v14 = changedCopy;
    v6 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling phoneServicesCapabilitiesChanged: with userInfo %@", buf, 0x16u);
  }

  queue = [(CSDCoreTelephonyClient *)self queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100231F4C;
  v9[3] = &unk_100619D88;
  v9[4] = self;
  v10 = changedCopy;
  v8 = changedCopy;
  dispatch_async(queue, v9);
}

- (void)ctEmergencyCallbackModeStatusChangedWithUserInfo:(id)info
{
  infoCopy = info;
  v5 = sub_100004778(infoCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = infoCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received kCTEmergencyCallBackModeStatusNotification with userInfo %@", buf, 0xCu);
  }

  queue = [(CSDCoreTelephonyClient *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002320BC;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (CSDCoreTelephonyClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end