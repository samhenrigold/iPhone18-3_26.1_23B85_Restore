@interface CSDVoIPApplication
- (BOOL)hasPTTBackgroundMode;
- (BOOL)hasPTTSelfAddEntitlement;
- (BOOL)hasPendingChannelPushMessagesToDeliver;
- (BOOL)hasVoIPBackgroundMode;
- (BOOL)hasVoIPNetworkExtensionEntitlement;
- (BOOL)isDevelopmentOrTestFlightApp;
- (BOOL)isEligibleForPTTEntitlementDeprecationNotice;
- (BOOL)isUsingPTTEligibleSDK;
- (BOOL)meetsRequirementsForPTT;
- (BOOL)requiresStrictPolicyEnforcement;
- (CSDVoIPApplication)init;
- (CSDVoIPApplication)initWithBundleIdentifier:(id)identifier;
- (NSString)localizedAppName;
- (id)description;
- (id)pushEnvironmentAccordingToLaunchServices;
- (void)_deliverChannelPushTokenToApplication;
- (void)_deliverMessageContext:(id)context;
- (void)_deliverPendingChannelPushPayloadsToApplication;
- (void)_deliverPendingNetworkExtensionPayloadsToApplication;
- (void)_deliverPendingPushKitPayloadsToApplication;
- (void)_deliverVoIPTokenToApplication;
- (void)deliverChannelPushToken:(id)token;
- (void)deliverMessage:(id)message withAssertion:(id)assertion applicationShouldPostIncomingCall:(BOOL)call;
- (void)deliverVoIPToken:(id)token;
- (void)dropUndeliveredChannelPushesOnTheFloor;
- (void)setChannelPushClient:(id)client;
- (void)setNetworkExtensionClient:(id)client;
- (void)setPushKitClient:(id)client;
@end

@implementation CSDVoIPApplication

- (CSDVoIPApplication)init
{
  v4 = [NSString stringWithFormat:@"[CSDVoIPApplication init] is not supported. Use [CSDVoIPApplication initWithBundleIdentifier:] instead"];
  NSLog(@"** TUAssertion failure: %@", v4);

  if (_TUAssertShouldCrashApplication())
  {
    v5 = +[NSAssertionHandler currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"CSDVoIPApplication.m" lineNumber:105 description:@"-[CSDVoIPApplication init] is not supported. Use -[CSDVoIPApplication initWithBundleIdentifier:] instead"];
  }

  return 0;
}

- (CSDVoIPApplication)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = CSDVoIPApplication;
  v6 = [(CSDVoIPApplication *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, identifier);
    v8 = +[NSMutableArray array];
    pendingNetworkExtensionMessageContexts = v7->_pendingNetworkExtensionMessageContexts;
    v7->_pendingNetworkExtensionMessageContexts = v8;

    v10 = +[NSMutableArray array];
    pendingPushKitVoIPMessageContexts = v7->_pendingPushKitVoIPMessageContexts;
    v7->_pendingPushKitVoIPMessageContexts = v10;

    v12 = +[NSMutableArray array];
    pendingChannelDelegateMessageContexts = v7->_pendingChannelDelegateMessageContexts;
    v7->_pendingChannelDelegateMessageContexts = v12;
  }

  return v7;
}

- (id)description
{
  v15 = objc_opt_class();
  bundleIdentifier = [(CSDVoIPApplication *)self bundleIdentifier];
  environment = [(CSDVoIPApplication *)self environment];
  pushKitClient = [(CSDVoIPApplication *)self pushKitClient];
  channelPushClient = [(CSDVoIPApplication *)self channelPushClient];
  networkExtensionClient = [(CSDVoIPApplication *)self networkExtensionClient];
  voipToken = [(CSDVoIPApplication *)self voipToken];
  channelPushToken = [(CSDVoIPApplication *)self channelPushToken];
  pendingPushKitVoIPMessageContexts = [(CSDVoIPApplication *)self pendingPushKitVoIPMessageContexts];
  v10 = [pendingPushKitVoIPMessageContexts count];
  pendingNetworkExtensionMessageContexts = [(CSDVoIPApplication *)self pendingNetworkExtensionMessageContexts];
  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@ %p bundleIdentifier=%@ environment=%@ pushKitClient=%@ channelClient=%@ networkExtensionClient=%@ voipToken=%@ channelPushToken=%@ pendingPKMessageContextCount=%lu pendingNetworkExtensionContextsCount=%lu>", v15, self, bundleIdentifier, environment, pushKitClient, channelPushClient, networkExtensionClient, voipToken, channelPushToken, v10, [pendingNetworkExtensionMessageContexts count]);

  return v12;
}

- (id)pushEnvironmentAccordingToLaunchServices
{
  applicationRecord = [(CSDVoIPApplication *)self applicationRecord];
  entitlements = [applicationRecord entitlements];
  v4 = [entitlements objectForKey:@"aps-environment" ofClass:objc_opt_class()];
  if (([v4 isEqualToString:APSEnvironmentProduction] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", APSEnvironmentDevelopment))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasVoIPBackgroundMode
{
  applicationRecord = [(CSDVoIPApplication *)self applicationRecord];
  csd_hasVoIPBackgroundMode = [applicationRecord csd_hasVoIPBackgroundMode];

  return csd_hasVoIPBackgroundMode;
}

- (BOOL)hasPTTBackgroundMode
{
  applicationRecord = [(CSDVoIPApplication *)self applicationRecord];
  csd_hasPTTBackgroundMode = [applicationRecord csd_hasPTTBackgroundMode];

  return csd_hasPTTBackgroundMode;
}

- (BOOL)hasPTTSelfAddEntitlement
{
  applicationRecord = [(CSDVoIPApplication *)self applicationRecord];
  csd_hasPTTSelfAddEntitlement = [applicationRecord csd_hasPTTSelfAddEntitlement];

  return csd_hasPTTSelfAddEntitlement;
}

- (BOOL)isUsingPTTEligibleSDK
{
  applicationRecord = [(CSDVoIPApplication *)self applicationRecord];
  sDKVersion = [applicationRecord SDKVersion];
  v4 = sub_1001365CC(sDKVersion, @"16.0");

  return v4;
}

- (BOOL)meetsRequirementsForPTT
{
  applicationRecord = [(CSDVoIPApplication *)self applicationRecord];
  if (([applicationRecord isPlaceholder] & 1) == 0 && -[CSDVoIPApplication hasPTTBackgroundMode](self, "hasPTTBackgroundMode") && -[CSDVoIPApplication hasPTTSelfAddEntitlement](self, "hasPTTSelfAddEntitlement"))
  {
    isUsingPTTEligibleSDK = [(CSDVoIPApplication *)self isUsingPTTEligibleSDK];
  }

  else
  {
    isUsingPTTEligibleSDK = 0;
  }

  return isUsingPTTEligibleSDK;
}

- (BOOL)isEligibleForPTTEntitlementDeprecationNotice
{
  applicationRecord = [(CSDVoIPApplication *)self applicationRecord];
  sDKVersion = [applicationRecord SDKVersion];
  entitlements = [applicationRecord entitlements];
  v5 = [entitlements objectForKey:@"get-task-allow" ofClass:objc_opt_class()];
  bOOLValue = [v5 BOOLValue];

  v7 = [entitlements objectForKey:@"com.apple.developer.pushkit.unrestricted-voip.ptt" ofClass:objc_opt_class()];
  bOOLValue2 = [v7 BOOLValue];

  if (bOOLValue)
  {
    isBeta = 1;
  }

  else
  {
    isBeta = [applicationRecord isBeta];
  }

  v10 = sub_1001365CC(sDKVersion, @"16.0") & isBeta;

  return v10 & bOOLValue2;
}

- (BOOL)isDevelopmentOrTestFlightApp
{
  applicationRecord = [(CSDVoIPApplication *)self applicationRecord];
  entitlements = [applicationRecord entitlements];
  v4 = [entitlements objectForKey:@"get-task-allow" ofClass:objc_opt_class()];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    isBeta = 1;
  }

  else
  {
    isBeta = [applicationRecord isBeta];
  }

  return isBeta;
}

- (NSString)localizedAppName
{
  applicationRecord = [(CSDVoIPApplication *)self applicationRecord];
  localizedName = [applicationRecord localizedName];

  return localizedName;
}

- (BOOL)hasVoIPNetworkExtensionEntitlement
{
  applicationRecord = [(CSDVoIPApplication *)self applicationRecord];
  csd_hasVoIPNetworkExtensionEntitlement = [applicationRecord csd_hasVoIPNetworkExtensionEntitlement];

  return csd_hasVoIPNetworkExtensionEntitlement;
}

- (BOOL)requiresStrictPolicyEnforcement
{
  applicationRecord = [(CSDVoIPApplication *)self applicationRecord];
  sDKVersion = [applicationRecord SDKVersion];
  entitlements = [applicationRecord entitlements];
  v5 = [entitlements objectForKey:@"com.apple.developer.pushkit.unrestricted-voip" ofClass:objc_opt_class()];
  bOOLValue = [v5 BOOLValue];

  v7 = [entitlements objectForKey:@"com.apple.developer.pushkit.unrestricted-voip-regulatory" ofClass:objc_opt_class()];
  bOOLValue2 = [v7 BOOLValue];

  v9 = [entitlements objectForKey:@"com.apple.developer.pushkit.unrestricted-voip.ptt" ofClass:objc_opt_class()];
  bOOLValue3 = [v9 BOOLValue];

  v11 = [entitlements objectForKey:@"com.apple.developer.pushkit.unrestricted-voip.temporary" ofClass:objc_opt_class()];
  bOOLValue4 = [v11 BOOLValue];

  if (sub_1001365CC(sDKVersion, @"13.0"))
  {
    v13 = sub_1001365CC(sDKVersion, @"15.0") | bOOLValue ^ 1;
    if (bOOLValue2)
    {
      v13 &= sub_1001365CC(sDKVersion, @"15.4");
    }
  }

  else
  {
    v13 = 0;
  }

  if (bOOLValue3)
  {
    v13 &= sub_1001365CC(sDKVersion, @"19.0");
  }

  return (bOOLValue4 ^ 1) & v13;
}

- (void)setChannelPushClient:(id)client
{
  clientCopy = client;
  if (self->_channelPushClient != clientCopy)
  {
    v8 = clientCopy;
    objc_storeStrong(&self->_channelPushClient, client);
    clientCopy = v8;
    if (v8)
    {
      channelPushToken = [(CSDVoIPApplication *)self channelPushToken];

      if (channelPushToken)
      {
        [(CSDVoIPApplication *)self _deliverChannelPushTokenToApplication];
      }

      pendingChannelDelegateMessageContexts = [(CSDVoIPApplication *)self pendingChannelDelegateMessageContexts];

      clientCopy = v8;
      if (pendingChannelDelegateMessageContexts)
      {
        [(CSDVoIPApplication *)self _deliverPendingChannelPushPayloadsToApplication];
        clientCopy = v8;
      }
    }
  }
}

- (void)setPushKitClient:(id)client
{
  clientCopy = client;
  if (self->_pushKitClient != clientCopy)
  {
    v9 = clientCopy;
    objc_storeStrong(&self->_pushKitClient, client);
    clientCopy = v9;
    if (v9)
    {
      voipToken = [(CSDVoIPApplication *)self voipToken];

      if (voipToken)
      {
        [(CSDVoIPApplication *)self _deliverVoIPTokenToApplication];
      }

      pendingPushKitVoIPMessageContexts = [(CSDVoIPApplication *)self pendingPushKitVoIPMessageContexts];
      v8 = [pendingPushKitVoIPMessageContexts count];

      clientCopy = v9;
      if (v8)
      {
        [(CSDVoIPApplication *)self _deliverPendingPushKitPayloadsToApplication];
        clientCopy = v9;
      }
    }
  }
}

- (void)setNetworkExtensionClient:(id)client
{
  clientCopy = client;
  if (self->_networkExtensionClient != clientCopy)
  {
    v8 = clientCopy;
    objc_storeStrong(&self->_networkExtensionClient, client);
    clientCopy = v8;
    if (v8)
    {
      pendingNetworkExtensionMessageContexts = [(CSDVoIPApplication *)self pendingNetworkExtensionMessageContexts];
      v7 = [pendingNetworkExtensionMessageContexts count];

      clientCopy = v8;
      if (v7)
      {
        [(CSDVoIPApplication *)self _deliverPendingNetworkExtensionPayloadsToApplication];
        clientCopy = v8;
      }
    }
  }
}

- (void)deliverVoIPToken:(id)token
{
  tokenCopy = token;
  v5 = sub_100004778(tokenCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = tokenCopy;
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asked to deliver voip token %@ to application %@", &v6, 0x16u);
  }

  [(CSDVoIPApplication *)self setVoipToken:tokenCopy];
  [(CSDVoIPApplication *)self _deliverVoIPTokenToApplication];
}

- (void)deliverChannelPushToken:(id)token
{
  tokenCopy = token;
  v5 = sub_100004778(tokenCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = tokenCopy;
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asked to deliver PTT token %@ to application %@", &v6, 0x16u);
  }

  [(CSDVoIPApplication *)self setChannelPushToken:tokenCopy];
  [(CSDVoIPApplication *)self _deliverChannelPushTokenToApplication];
}

- (BOOL)hasPendingChannelPushMessagesToDeliver
{
  pendingChannelDelegateMessageContexts = [(CSDVoIPApplication *)self pendingChannelDelegateMessageContexts];
  v3 = [pendingChannelDelegateMessageContexts count] != 0;

  return v3;
}

- (void)dropUndeliveredChannelPushesOnTheFloor
{
  pendingChannelDelegateMessageContexts = [(CSDVoIPApplication *)self pendingChannelDelegateMessageContexts];
  [pendingChannelDelegateMessageContexts removeAllObjects];
}

- (void)deliverMessage:(id)message withAssertion:(id)assertion applicationShouldPostIncomingCall:(BOOL)call
{
  callCopy = call;
  messageCopy = message;
  assertionCopy = assertion;
  v10 = sub_100004778(assertionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134218242;
    v18 = messageCopy;
    v19 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Asked to deliver message %p to application %@", &v17, 0x16u);
  }

  v11 = [[CSDVoIPApplicationMessageContext alloc] initWithMessage:messageCopy assertion:assertionCopy applicationShouldPostIncomingCall:callCopy];
  transportType = [messageCopy transportType];
  if (transportType > 1)
  {
    if (transportType == 2)
    {
      pendingPushKitVoIPMessageContexts = [(CSDVoIPApplication *)self pendingPushKitVoIPMessageContexts];
      [pendingPushKitVoIPMessageContexts addObject:v11];

      [(CSDVoIPApplication *)self _deliverPendingPushKitPayloadsToApplication];
    }

    else if (transportType == 3)
    {
      pendingChannelDelegateMessageContexts = [(CSDVoIPApplication *)self pendingChannelDelegateMessageContexts];
      [pendingChannelDelegateMessageContexts addObject:v11];

      [(CSDVoIPApplication *)self _deliverPendingChannelPushPayloadsToApplication];
    }
  }

  else if (transportType)
  {
    if (transportType == 1)
    {
      pendingNetworkExtensionMessageContexts = [(CSDVoIPApplication *)self pendingNetworkExtensionMessageContexts];
      [pendingNetworkExtensionMessageContexts addObject:v11];

      [(CSDVoIPApplication *)self _deliverPendingNetworkExtensionPayloadsToApplication];
    }
  }

  else
  {
    v15 = sub_100004778(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = messageCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Message transport type is unknown; cannot enqueue message %@", &v17, 0xCu);
    }
  }
}

- (void)_deliverVoIPTokenToApplication
{
  pushKitClient = [(CSDVoIPApplication *)self pushKitClient];

  if (pushKitClient)
  {
    pushKitClient2 = [(CSDVoIPApplication *)self pushKitClient];
    objectForBlock = [pushKitClient2 objectForBlock];

    v7 = [objectForBlock conformsToProtocol:&OBJC_PROTOCOL___PKVoIPXPCClient];
    if (v7)
    {
      v8 = sub_100004778(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        voipToken = [(CSDVoIPApplication *)self voipToken];
        v11 = 138412546;
        v12 = voipToken;
        v13 = 2112;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Delivering voip token %@ to application %@", &v11, 0x16u);
      }

      voipToken2 = [(CSDVoIPApplication *)self voipToken];
      [objectForBlock voipRegistrationSucceededWithDeviceToken:voipToken2];
    }
  }

  else
  {
    objectForBlock = sub_100004778(v4);
    if (os_log_type_enabled(objectForBlock, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, objectForBlock, OS_LOG_TYPE_DEFAULT, "Pending VoIP token delivery until a connection exists", &v11, 2u);
    }
  }
}

- (void)_deliverChannelPushTokenToApplication
{
  channelPushClient = [(CSDVoIPApplication *)self channelPushClient];

  if (channelPushClient)
  {
    channelPushClient2 = [(CSDVoIPApplication *)self channelPushClient];
    objectForBlock = [channelPushClient2 objectForBlock];

    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      channelPushToken = [(CSDVoIPApplication *)self channelPushToken];
      v11 = 138412802;
      v12 = channelPushToken;
      v13 = 2112;
      selfCopy = self;
      v15 = 2048;
      v16 = objectForBlock;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Delivering ptt token %@ to application %@ proxy %p", &v11, 0x20u);
    }

    channelPushToken2 = [(CSDVoIPApplication *)self channelPushToken];
    [objectForBlock _didReceivePushToken:channelPushToken2];
  }

  else
  {
    objectForBlock = sub_100004778(v4);
    if (os_log_type_enabled(objectForBlock, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, objectForBlock, OS_LOG_TYPE_DEFAULT, "Pending ptt token delivery until a connection exists", &v11, 2u);
    }
  }
}

- (void)_deliverPendingNetworkExtensionPayloadsToApplication
{
  networkExtensionClient = [(CSDVoIPApplication *)self networkExtensionClient];

  pendingNetworkExtensionMessageContexts3 = sub_100004778(v4);
  v6 = os_log_type_enabled(pendingNetworkExtensionMessageContexts3, OS_LOG_TYPE_DEFAULT);
  if (networkExtensionClient)
  {
    if (v6)
    {
      pendingNetworkExtensionMessageContexts = [(CSDVoIPApplication *)self pendingNetworkExtensionMessageContexts];
      *buf = 134218242;
      v19 = [pendingNetworkExtensionMessageContexts count];
      v20 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, pendingNetworkExtensionMessageContexts3, OS_LOG_TYPE_DEFAULT, "Delivering %lu network extension payload(s) to application %@", buf, 0x16u);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    pendingNetworkExtensionMessageContexts2 = [(CSDVoIPApplication *)self pendingNetworkExtensionMessageContexts];
    v9 = [pendingNetworkExtensionMessageContexts2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(pendingNetworkExtensionMessageContexts2);
          }

          [(CSDVoIPApplication *)self _deliverMessageContext:*(*(&v13 + 1) + 8 * v12)];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [pendingNetworkExtensionMessageContexts2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }

    pendingNetworkExtensionMessageContexts3 = [(CSDVoIPApplication *)self pendingNetworkExtensionMessageContexts];
    [pendingNetworkExtensionMessageContexts3 removeAllObjects];
  }

  else if (v6)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, pendingNetworkExtensionMessageContexts3, OS_LOG_TYPE_DEFAULT, "Pending Network Extension payload deliveries until a connection exists", buf, 2u);
  }
}

- (void)_deliverPendingPushKitPayloadsToApplication
{
  pushKitClient = [(CSDVoIPApplication *)self pushKitClient];

  pendingPushKitVoIPMessageContexts3 = sub_100004778(v4);
  v6 = os_log_type_enabled(pendingPushKitVoIPMessageContexts3, OS_LOG_TYPE_DEFAULT);
  if (pushKitClient)
  {
    if (v6)
    {
      pendingPushKitVoIPMessageContexts = [(CSDVoIPApplication *)self pendingPushKitVoIPMessageContexts];
      *buf = 134218242;
      v19 = [pendingPushKitVoIPMessageContexts count];
      v20 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, pendingPushKitVoIPMessageContexts3, OS_LOG_TYPE_DEFAULT, "Delivering %lu VoIP payload(s) to application %@", buf, 0x16u);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    pendingPushKitVoIPMessageContexts2 = [(CSDVoIPApplication *)self pendingPushKitVoIPMessageContexts];
    v9 = [pendingPushKitVoIPMessageContexts2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(pendingPushKitVoIPMessageContexts2);
          }

          [(CSDVoIPApplication *)self _deliverMessageContext:*(*(&v13 + 1) + 8 * v12)];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [pendingPushKitVoIPMessageContexts2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }

    pendingPushKitVoIPMessageContexts3 = [(CSDVoIPApplication *)self pendingPushKitVoIPMessageContexts];
    [pendingPushKitVoIPMessageContexts3 removeAllObjects];
  }

  else if (v6)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, pendingPushKitVoIPMessageContexts3, OS_LOG_TYPE_DEFAULT, "Pending PushKit VoIP payload deliveries until a connection exists", buf, 2u);
  }
}

- (void)_deliverPendingChannelPushPayloadsToApplication
{
  channelPushClient = [(CSDVoIPApplication *)self channelPushClient];

  pendingChannelDelegateMessageContexts3 = sub_100004778(v4);
  v6 = os_log_type_enabled(pendingChannelDelegateMessageContexts3, OS_LOG_TYPE_DEFAULT);
  if (channelPushClient)
  {
    if (v6)
    {
      pendingChannelDelegateMessageContexts = [(CSDVoIPApplication *)self pendingChannelDelegateMessageContexts];
      *buf = 134218242;
      v19 = [pendingChannelDelegateMessageContexts count];
      v20 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, pendingChannelDelegateMessageContexts3, OS_LOG_TYPE_DEFAULT, "Delivering %lu channel push payload(s) to application %@", buf, 0x16u);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    pendingChannelDelegateMessageContexts2 = [(CSDVoIPApplication *)self pendingChannelDelegateMessageContexts];
    v9 = [pendingChannelDelegateMessageContexts2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(pendingChannelDelegateMessageContexts2);
          }

          [(CSDVoIPApplication *)self _deliverMessageContext:*(*(&v13 + 1) + 8 * v12)];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [pendingChannelDelegateMessageContexts2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }

    pendingChannelDelegateMessageContexts3 = [(CSDVoIPApplication *)self pendingChannelDelegateMessageContexts];
    [pendingChannelDelegateMessageContexts3 removeAllObjects];
  }

  else if (v6)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, pendingChannelDelegateMessageContexts3, OS_LOG_TYPE_DEFAULT, "Pending channel push payload deliveries until a connection exists", buf, 2u);
  }
}

- (void)_deliverMessageContext:(id)context
{
  contextCopy = context;
  message = [contextCopy message];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100137C84;
  v23[3] = &unk_100619D88;
  v6 = contextCopy;
  v24 = v6;
  selfCopy = self;
  v7 = objc_retainBlock(v23);
  transportType = [message transportType];
  if (transportType > 1)
  {
    if (transportType == 2)
    {
      pushKitClient = [(CSDVoIPApplication *)self pushKitClient];
      objectForBlock = [pushKitClient objectForBlock];

      if ([objectForBlock conformsToProtocol:&OBJC_PROTOCOL___PKVoIPXPCClient])
      {
        payload = [message payload];
        -[NSObject voipPayloadReceived:mustPostCall:withCompletionHandler:](objectForBlock, "voipPayloadReceived:mustPostCall:withCompletionHandler:", payload, [v6 applicationShouldPostIncomingCall], v7);
        goto LABEL_16;
      }

LABEL_17:

      goto LABEL_18;
    }

    if (transportType == 3)
    {
      objectForBlock = message;
      reply = [objectForBlock reply];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100137D74;
      v20[3] = &unk_10061C3A0;
      v21 = v7;
      v13 = reply;
      v22 = v13;
      [objectForBlock setReply:v20];
      channelPushClient = [(CSDVoIPApplication *)self channelPushClient];
      objectForBlock2 = [channelPushClient objectForBlock];

      if ([objectForBlock2 conformsToProtocol:&OBJC_PROTOCOL___CXChannelPushClientProtocol] && (objc_opt_respondsToSelector() & 1) != 0)
      {
        payload2 = [objectForBlock payload];
        channelUUID = [objectForBlock channelUUID];
        reply2 = [objectForBlock reply];
        [objectForBlock2 _didReceivePushPayload:payload2 channelUUID:channelUUID reply:reply2 isServiceUpdateMessage:-[NSObject isServiceUpdateMessage](objectForBlock isHighPriority:"isServiceUpdateMessage") remainingHighPriorityBudget:{-[NSObject isWakingMessage](objectForBlock, "isWakingMessage"), -[NSObject remainingHighPriorityServiceUpdateBudget](objectForBlock, "remainingHighPriorityServiceUpdateBudget")}];
      }

      goto LABEL_17;
    }
  }

  else
  {
    if (!transportType)
    {
      objectForBlock = sub_100004778(0);
      if (os_log_type_enabled(objectForBlock, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = message;
        _os_log_impl(&_mh_execute_header, objectForBlock, OS_LOG_TYPE_DEFAULT, "[WARN] Message transport type is unknown; cannot deliver message %@", buf, 0xCu);
      }

      goto LABEL_17;
    }

    if (transportType == 1)
    {
      networkExtensionClient = [(CSDVoIPApplication *)self networkExtensionClient];
      objectForBlock = [networkExtensionClient objectForBlock];

      if ([objectForBlock conformsToProtocol:&OBJC_PROTOCOL___CXNetworkExtensionVoIPXPCClient])
      {
        payload = [message payload];
        -[NSObject voipNetworkExtensionPayloadReceived:mustPostCall:withCompletionHandler:](objectForBlock, "voipNetworkExtensionPayloadReceived:mustPostCall:withCompletionHandler:", payload, [v6 applicationShouldPostIncomingCall], v7);
LABEL_16:

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

LABEL_18:
}

@end