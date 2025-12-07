@interface NSPProxyPath
- (BOOL)isMultiHopRegistered;
- (BOOL)isSingleHopRegistered;
- (BOOL)matchEgress:(id)egress;
- (BOOL)matchIngress:(id)ingress;
- (BOOL)proxyPathIsValid:(id)valid proxyPathList:(id)list;
- (NSPProxyPath)initWithCoder:(id)coder;
- (NSPProxyPath)initWithDelegate:(id)delegate ingressProxy:(id)proxy egressProxy:(id)egressProxy proxyPathWeight:(unint64_t)weight allowFallback:(BOOL)fallback fallbackToQUIC:(BOOL)c forceFallback:(BOOL)forceFallback allowFailOpen:(BOOL)self0 geohashSharingEnabled:(BOOL)self1 configEpoch:(id)self2 networkCharacteristics:(id)self3;
- (NSPProxyPathDelegate)delegate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
- (id)multiHopConfigurationHash;
- (id)singleHopConfigurationHash;
- (void)dealloc;
- (void)enableFailOpen:(BOOL)open;
- (void)encodeWithCoder:(id)coder;
- (void)handleNetworkCharacteristicsChange:(id)change;
- (void)reportErrorForNetworkRegistration:(id)registration error:(int)error withOptions:(id)options;
- (void)resetError;
- (void)resetStats;
- (void)updateConfigEpoch:(id)epoch;
- (void)updateGeohashSharing:(BOOL)sharing;
- (void)updateIngressProxy:(id)proxy egressProxy:(id)egressProxy proxyPathWeight:(unint64_t)weight;
@end

@implementation NSPProxyPath

- (NSPProxyPath)initWithDelegate:(id)delegate ingressProxy:(id)proxy egressProxy:(id)egressProxy proxyPathWeight:(unint64_t)weight allowFallback:(BOOL)fallback fallbackToQUIC:(BOOL)c forceFallback:(BOOL)forceFallback allowFailOpen:(BOOL)self0 geohashSharingEnabled:(BOOL)self1 configEpoch:(id)self2 networkCharacteristics:(id)self3
{
  delegateCopy = delegate;
  proxyCopy = proxy;
  obj = egressProxy;
  egressProxyCopy = egressProxy;
  epochCopy = epoch;
  characteristicsCopy = characteristics;
  if (!proxyCopy)
  {
    v31 = nplog_obj();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
LABEL_10:

      selfCopy = 0;
      goto LABEL_6;
    }

    *buf = 136315138;
    v37 = "[NSPProxyPath initWithDelegate:ingressProxy:egressProxy:proxyPathWeight:allowFallback:fallbackToQUIC:forceFallback:allowFailOpen:geohashSharingEnabled:configEpoch:networkCharacteristics:]";
    v32 = "%s called with null ingressProxy";
LABEL_12:
    _os_log_fault_impl(&_mh_execute_header, v31, OS_LOG_TYPE_FAULT, v32, buf, 0xCu);
    goto LABEL_10;
  }

  if (!egressProxyCopy)
  {
    v31 = nplog_obj();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    *buf = 136315138;
    v37 = "[NSPProxyPath initWithDelegate:ingressProxy:egressProxy:proxyPathWeight:allowFallback:fallbackToQUIC:forceFallback:allowFailOpen:geohashSharingEnabled:configEpoch:networkCharacteristics:]";
    v32 = "%s called with null egressProxy";
    goto LABEL_12;
  }

  v35.receiver = self;
  v35.super_class = NSPProxyPath;
  v23 = [(NSPProxyPath *)&v35 init];
  v24 = v23;
  if (v23)
  {
    objc_storeWeak(&v23->_delegate, delegateCopy);
    objc_storeStrong(&v24->_ingressProxy, proxy);
    objc_storeStrong(&v24->_egressProxy, obj);
    v24->_proxyPathWeight = weight;
    v24->_allowFallback = fallback;
    v24->_fallbackToQUIC = c;
    v24->_forceFallback = forceFallback;
    v24->_allowFailOpen = open;
    v24->_geohashSharingEnabled = enabled;
    objc_storeStrong(&v24->_configEpoch, epoch);
    v25 = objc_alloc_init(NSPProxyAgentNetworkStatistics);
    networkSingleHopAgentStatistics = v24->_networkSingleHopAgentStatistics;
    v24->_networkSingleHopAgentStatistics = v25;

    v27 = objc_alloc_init(NSPProxyAgentNetworkStatistics);
    networkMultiHopAgentStatistics = v24->_networkMultiHopAgentStatistics;
    v24->_networkMultiHopAgentStatistics = v27;

    sub_10000A4F0(v24->_networkMultiHopAgentStatistics, characteristicsCopy);
    sub_10000A4F0(v24->_networkSingleHopAgentStatistics, characteristicsCopy);
  }

  self = v24;
  selfCopy = self;
LABEL_6:

  return selfCopy;
}

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v7 = [[NSMutableString alloc] initWithCapacity:0];
  ingressProxy = [(NSPProxyPath *)self ingressProxy];
  sub_1000417D0(v7, ingressProxy, @"Ingress proxy", indent, options);

  egressProxy = [(NSPProxyPath *)self egressProxy];
  sub_1000417D0(v7, egressProxy, @"Egress proxy", indent, options);

  sub_100042020(v7, [(NSPProxyPath *)self allowFallback], @"Allow fallback", indent, options);
  sub_100042020(v7, [(NSPProxyPath *)self fallbackToQUIC], @"Fallback to QUIC", indent, options);
  sub_100042020(v7, [(NSPProxyPath *)self allowFailOpen], @"Allow fail open", indent, options);
  sub_100042020(v7, [(NSPProxyPath *)self geohashSharingEnabled], @"Geohash Sharing Enabled", indent, options);
  configEpoch = [(NSPProxyPath *)self configEpoch];
  sub_1000417D0(v7, configEpoch, @"Config Epoch", indent, options);

  nonDefaultAgentUUID = [(NSPProxyPath *)self nonDefaultAgentUUID];
  sub_1000417D0(v7, nonDefaultAgentUUID, @"Agent UUID", indent, options);

  networkSingleHopAgentStatistics = [(NSPProxyPath *)self networkSingleHopAgentStatistics];
  sub_1000417D0(v7, networkSingleHopAgentStatistics, @"Single hop statistics", indent, options);

  networkMultiHopAgentStatistics = [(NSPProxyPath *)self networkMultiHopAgentStatistics];
  sub_1000417D0(v7, networkMultiHopAgentStatistics, @"Multi hop statistics", indent, options);

  return v7;
}

- (NSPProxyPath)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = NSPProxyPath;
  v5 = [(NSPProxyPath *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proxyPathIngressProxy"];
    ingressProxy = v5->_ingressProxy;
    v5->_ingressProxy = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proxyPathEgressProxy"];
    egressProxy = v5->_egressProxy;
    v5->_egressProxy = v8;

    v5->_proxyPathWeight = [coderCopy decodeIntegerForKey:@"proxyPathWeight"];
    v5->_allowFallback = [coderCopy decodeBoolForKey:@"proxyPathAllowFallback"];
    v5->_fallbackToQUIC = [coderCopy decodeBoolForKey:@"proxyPathFallbackToQUIC"];
    v5->_forceFallback = [coderCopy decodeBoolForKey:@"proxyPathForceFallback"];
    v5->_allowFailOpen = [coderCopy decodeBoolForKey:@"proxyPathAllowFailOpen"];
    v5->_geohashSharingEnabled = [coderCopy decodeBoolForKey:@"proxyPathGeohashSharingEnabled"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proxyPathConfigEpoch"];
    configEpoch = v5->_configEpoch;
    v5->_configEpoch = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proxyPathAgentUUID"];
    nonDefaultAgentUUID = v5->_nonDefaultAgentUUID;
    v5->_nonDefaultAgentUUID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proxyPathSingleHopAgentStatistics"];
    networkSingleHopAgentStatistics = v5->_networkSingleHopAgentStatistics;
    v5->_networkSingleHopAgentStatistics = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proxyPathMultipleHopAgentStatistics"];
    networkMultiHopAgentStatistics = v5->_networkMultiHopAgentStatistics;
    v5->_networkMultiHopAgentStatistics = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  ingressProxy = [(NSPProxyPath *)self ingressProxy];
  [coderCopy encodeObject:ingressProxy forKey:@"proxyPathIngressProxy"];

  egressProxy = [(NSPProxyPath *)self egressProxy];
  [coderCopy encodeObject:egressProxy forKey:@"proxyPathEgressProxy"];

  [coderCopy encodeInteger:-[NSPProxyPath proxyPathWeight](self forKey:{"proxyPathWeight"), @"proxyPathWeight"}];
  [coderCopy encodeBool:-[NSPProxyPath allowFallback](self forKey:{"allowFallback"), @"proxyPathAllowFallback"}];
  [coderCopy encodeBool:-[NSPProxyPath fallbackToQUIC](self forKey:{"fallbackToQUIC"), @"proxyPathFallbackToQUIC"}];
  [coderCopy encodeBool:-[NSPProxyPath forceFallback](self forKey:{"forceFallback"), @"proxyPathForceFallback"}];
  [coderCopy encodeBool:-[NSPProxyPath allowFailOpen](self forKey:{"allowFailOpen"), @"proxyPathAllowFailOpen"}];
  [coderCopy encodeBool:-[NSPProxyPath geohashSharingEnabled](self forKey:{"geohashSharingEnabled"), @"proxyPathGeohashSharingEnabled"}];
  configEpoch = [(NSPProxyPath *)self configEpoch];
  [coderCopy encodeObject:configEpoch forKey:@"proxyPathConfigEpoch"];

  nonDefaultAgentUUID = [(NSPProxyPath *)self nonDefaultAgentUUID];
  [coderCopy encodeObject:nonDefaultAgentUUID forKey:@"proxyPathAgentUUID"];

  networkSingleHopAgentStatistics = [(NSPProxyPath *)self networkSingleHopAgentStatistics];
  [coderCopy encodeObject:networkSingleHopAgentStatistics forKey:@"proxyPathSingleHopAgentStatistics"];

  networkMultiHopAgentStatistics = [(NSPProxyPath *)self networkMultiHopAgentStatistics];
  [coderCopy encodeObject:networkMultiHopAgentStatistics forKey:@"proxyPathMultipleHopAgentStatistics"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NSPProxyPath allocWithZone:?]];
  delegate = [(NSPProxyPath *)self delegate];
  [(NSPProxyPath *)v4 setDelegate:delegate];

  ingressProxy = [(NSPProxyPath *)self ingressProxy];
  [(NSPProxyPath *)v4 setIngressProxy:ingressProxy];

  egressProxy = [(NSPProxyPath *)self egressProxy];
  [(NSPProxyPath *)v4 setEgressProxy:egressProxy];

  [(NSPProxyPath *)v4 setProxyPathWeight:[(NSPProxyPath *)self proxyPathWeight]];
  [(NSPProxyPath *)v4 setAllowFallback:[(NSPProxyPath *)self allowFallback]];
  [(NSPProxyPath *)v4 setFallbackToQUIC:[(NSPProxyPath *)self fallbackToQUIC]];
  [(NSPProxyPath *)v4 setForceFallback:[(NSPProxyPath *)self forceFallback]];
  [(NSPProxyPath *)v4 setAllowFailOpen:[(NSPProxyPath *)self allowFailOpen]];
  [(NSPProxyPath *)v4 setGeohashSharingEnabled:[(NSPProxyPath *)self geohashSharingEnabled]];
  configEpoch = [(NSPProxyPath *)self configEpoch];
  [(NSPProxyPath *)v4 setConfigEpoch:configEpoch];

  nonDefaultAgentUUID = [(NSPProxyPath *)self nonDefaultAgentUUID];
  [(NSPProxyPath *)v4 setNonDefaultAgentUUID:nonDefaultAgentUUID];

  [(NSPProxyPath *)v4 setSingleHopRegistered:[(NSPProxyPath *)self singleHopRegistered]];
  [(NSPProxyPath *)v4 setMultiHopRegistered:[(NSPProxyPath *)self multiHopRegistered]];
  singleHopRegistration = [(NSPProxyPath *)self singleHopRegistration];
  [(NSPProxyPath *)v4 setSingleHopRegistration:singleHopRegistration];

  multiHopRegistration = [(NSPProxyPath *)self multiHopRegistration];
  [(NSPProxyPath *)v4 setMultiHopRegistration:multiHopRegistration];

  networkSingleHopAgentStatistics = [(NSPProxyPath *)self networkSingleHopAgentStatistics];
  [(NSPProxyPath *)v4 setNetworkSingleHopAgentStatistics:networkSingleHopAgentStatistics];

  networkMultiHopAgentStatistics = [(NSPProxyPath *)self networkMultiHopAgentStatistics];
  [(NSPProxyPath *)v4 setNetworkMultiHopAgentStatistics:networkMultiHopAgentStatistics];

  return v4;
}

- (BOOL)isMultiHopRegistered
{
  multiHopRegistration = [(NSPProxyPath *)self multiHopRegistration];
  v3 = multiHopRegistration;
  if (multiHopRegistration)
  {
    isRegistered = [*(multiHopRegistration + 24) isRegistered];
  }

  else
  {
    isRegistered = 0;
  }

  return isRegistered;
}

- (BOOL)isSingleHopRegistered
{
  singleHopRegistration = [(NSPProxyPath *)self singleHopRegistration];
  v3 = singleHopRegistration;
  if (singleHopRegistration)
  {
    isRegistered = [*(singleHopRegistration + 24) isRegistered];
  }

  else
  {
    isRegistered = 0;
  }

  return isRegistered;
}

- (void)updateIngressProxy:(id)proxy egressProxy:(id)egressProxy proxyPathWeight:(unint64_t)weight
{
  egressProxyCopy = egressProxy;
  [(NSPProxyPath *)self setIngressProxy:proxy];
  [(NSPProxyPath *)self setEgressProxy:egressProxyCopy];

  [(NSPProxyPath *)self setProxyPathWeight:weight];
  [(NSPProxyPath *)self resetSingleHopProxyAgent];

  [(NSPProxyPath *)self resetMultiHopProxyAgent];
}

- (void)enableFailOpen:(BOOL)open
{
  openCopy = open;
  if ([(NSPProxyPath *)self allowFailOpen]!= open)
  {
    [(NSPProxyPath *)self setAllowFailOpen:openCopy];
    [(NSPProxyPath *)self resetSingleHopProxyAgent];

    [(NSPProxyPath *)self resetMultiHopProxyAgent];
  }
}

- (void)updateGeohashSharing:(BOOL)sharing
{
  [(NSPProxyPath *)self setGeohashSharingEnabled:sharing];

  [(NSPProxyPath *)self resetMultiHopProxyAgent];
}

- (void)updateConfigEpoch:(id)epoch
{
  [(NSPProxyPath *)self setConfigEpoch:epoch];
  [(NSPProxyPath *)self resetSingleHopProxyAgent];

  [(NSPProxyPath *)self resetMultiHopProxyAgent];
}

- (BOOL)proxyPathIsValid:(id)valid proxyPathList:(id)list
{
  validCopy = valid;
  listCopy = list;
  __assert_rtn("[NSPProxyPath proxyPathIsValid:proxyPathList:]", "NSPPrivacyProxyAgentManager.m", 3428, "0");
}

- (BOOL)matchIngress:(id)ingress
{
  ingressCopy = ingress;
  if (!ingressCopy)
  {
    v14 = nplog_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
LABEL_10:

      v12 = 0;
      goto LABEL_6;
    }

    v16 = 136315138;
    v17 = "[NSPProxyPath matchIngress:]";
    v15 = "%s called with null proxyTokenInfo";
LABEL_12:
    _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, v15, &v16, 0xCu);
    goto LABEL_10;
  }

  ingressProxy = [(NSPProxyPath *)self ingressProxy];

  if (!ingressProxy)
  {
    v14 = nplog_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    v16 = 136315138;
    v17 = "[NSPProxyPath matchIngress:]";
    v15 = "%s called with null self.ingressProxy";
    goto LABEL_12;
  }

  ingressProxy2 = [(NSPProxyPath *)self ingressProxy];
  v7 = ingressProxy2;
  if (ingressProxy2)
  {
    v8 = *(ingressProxy2 + 24);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  proxyURL = [v9 proxyURL];
  proxyURL2 = [ingressCopy[3] proxyURL];
  v12 = [proxyURL isEqualToString:proxyURL2];

LABEL_6:
  return v12;
}

- (BOOL)matchEgress:(id)egress
{
  egressCopy = egress;
  if (!egressCopy)
  {
    v14 = nplog_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
LABEL_10:

      v12 = 0;
      goto LABEL_6;
    }

    v16 = 136315138;
    v17 = "[NSPProxyPath matchEgress:]";
    v15 = "%s called with null proxyTokenInfo";
LABEL_12:
    _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, v15, &v16, 0xCu);
    goto LABEL_10;
  }

  egressProxy = [(NSPProxyPath *)self egressProxy];

  if (!egressProxy)
  {
    v14 = nplog_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    v16 = 136315138;
    v17 = "[NSPProxyPath matchEgress:]";
    v15 = "%s called with null self.egressProxy";
    goto LABEL_12;
  }

  egressProxy2 = [(NSPProxyPath *)self egressProxy];
  v7 = egressProxy2;
  if (egressProxy2)
  {
    v8 = *(egressProxy2 + 24);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  proxyURL = [v9 proxyURL];
  proxyURL2 = [egressCopy[3] proxyURL];
  v12 = [proxyURL isEqualToString:proxyURL2];

LABEL_6:
  return v12;
}

- (void)handleNetworkCharacteristicsChange:(id)change
{
  changeCopy = change;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "proxy path: network signature changed", v10, 2u);
  }

  networkSingleHopAgentStatistics = [(NSPProxyPath *)self networkSingleHopAgentStatistics];
  sub_10000A4F0(networkSingleHopAgentStatistics, changeCopy);

  networkMultiHopAgentStatistics = [(NSPProxyPath *)self networkMultiHopAgentStatistics];
  sub_10000A4F0(networkMultiHopAgentStatistics, changeCopy);

  networkSingleHopAgentStatistics2 = [(NSPProxyPath *)self networkSingleHopAgentStatistics];
  if (networkSingleHopAgentStatistics2)
  {
    networkSingleHopAgentStatistics2[6] = 0u;
    networkSingleHopAgentStatistics2[7] = 0u;
    networkSingleHopAgentStatistics2[4] = 0u;
    networkSingleHopAgentStatistics2[5] = 0u;
    networkSingleHopAgentStatistics2[2] = 0u;
    networkSingleHopAgentStatistics2[3] = 0u;
    networkSingleHopAgentStatistics2[1] = 0u;
  }

  networkMultiHopAgentStatistics2 = [(NSPProxyPath *)self networkMultiHopAgentStatistics];
  if (networkMultiHopAgentStatistics2)
  {
    networkMultiHopAgentStatistics2[6] = 0u;
    networkMultiHopAgentStatistics2[7] = 0u;
    networkMultiHopAgentStatistics2[4] = 0u;
    networkMultiHopAgentStatistics2[5] = 0u;
    networkMultiHopAgentStatistics2[2] = 0u;
    networkMultiHopAgentStatistics2[3] = 0u;
    networkMultiHopAgentStatistics2[1] = 0u;
  }
}

- (void)resetStats
{
  networkSingleHopAgentStatistics = [(NSPProxyPath *)self networkSingleHopAgentStatistics];
  if (networkSingleHopAgentStatistics)
  {
    networkSingleHopAgentStatistics[6] = 0u;
    networkSingleHopAgentStatistics[7] = 0u;
    networkSingleHopAgentStatistics[4] = 0u;
    networkSingleHopAgentStatistics[5] = 0u;
    networkSingleHopAgentStatistics[2] = 0u;
    networkSingleHopAgentStatistics[3] = 0u;
    networkSingleHopAgentStatistics[1] = 0u;
  }

  networkMultiHopAgentStatistics = [(NSPProxyPath *)self networkMultiHopAgentStatistics];
  if (networkMultiHopAgentStatistics)
  {
    networkMultiHopAgentStatistics[6] = 0u;
    networkMultiHopAgentStatistics[7] = 0u;
    networkMultiHopAgentStatistics[4] = 0u;
    networkMultiHopAgentStatistics[5] = 0u;
    networkMultiHopAgentStatistics[2] = 0u;
    networkMultiHopAgentStatistics[3] = 0u;
    networkMultiHopAgentStatistics[1] = 0u;
  }
}

- (void)resetError
{
  singleHopRegistration = [(NSPProxyPath *)self singleHopRegistration];
  v4 = singleHopRegistration;
  if (singleHopRegistration)
  {
    [*(singleHopRegistration + 24) resetError];
  }

  multiHopRegistration = [(NSPProxyPath *)self multiHopRegistration];
  if (multiHopRegistration)
  {
    v6 = multiHopRegistration;
    [multiHopRegistration[3] resetError];
    multiHopRegistration = v6;
  }
}

- (void)reportErrorForNetworkRegistration:(id)registration error:(int)error withOptions:(id)options
{
  v6 = *&error;
  registrationCopy = registration;
  buffer = 0u;
  memset(v52, 0, sizeof(v52));
  v9 = [options objectForKeyedSubscript:NWNetworkAgentStartOptionClientUUID];
  if (!v9)
  {
    interface = 0;
    v16 = 0;
    v11 = 0;
LABEL_8:
    v17 = 0;
    goto LABEL_22;
  }

  v10 = [NWPath pathForClientID:v9];
  v11 = v10;
  if (!v10)
  {
    interface = 0;
    v16 = 0;
    goto LABEL_8;
  }

  interface = [v10 interface];
  parameters = [v11 parameters];
  v13 = [parameters pid];
  effectiveProcessUUID = [parameters effectiveProcessUUID];
  v48 = v9;
  if (v13)
  {
    if (proc_pidinfo(v13, 13, 1uLL, &buffer, 64) == 64)
    {
      v15 = registrationCopy;
      v16 = v52;
    }

    else
    {
      v19 = nplog_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v13;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to convert from PID (%d) to process name", buf, 8u);
      }

      v15 = registrationCopy;

      v16 = 0;
    }

    v18 = ne_copy_signing_identifier_for_pid();
    if (v18)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v15 = registrationCopy;
    v16 = 0;
    v18 = 0;
  }

  if (effectiveProcessUUID)
  {
    *buf = 0;
    *&buf[8] = 0;
    [effectiveProcessUUID getUUIDBytes:buf];
    v18 = NEHelperCacheCopySigningIdentifierMapping();
  }

LABEL_16:
  if (v18 && xpc_get_type(v18) == &_xpc_type_string && (string_ptr = xpc_string_get_string_ptr(v18)) != 0)
  {
    v17 = [NSString stringWithUTF8String:string_ptr];
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    delegate = [(NSPProxyPath *)self delegate];
    [delegate reportActivityForApp:v17 path:0];
  }

  registrationCopy = v15;
  v9 = v48;
LABEL_22:
  v21 = nplog_obj();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if ((v6 & 0xFFFF0000) == 0xFF0000)
  {
    if (v22)
    {
      if (!v16)
      {
        v16 = "none";
      }

      v23 = sub_1000423BC(registrationCopy);
      *buf = 67109890;
      *&buf[4] = v6;
      *&buf[8] = 2080;
      *&buf[10] = v16;
      *&buf[18] = 2112;
      *&buf[20] = v17;
      *&buf[28] = 2112;
      *&buf[30] = v23;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received epoch (%u) from %s (%@) for %@ agent", buf, 0x26u);
    }

    delegate2 = [(NSPProxyPath *)self delegate];
    [delegate2 reportEpoch:v6];
    goto LABEL_28;
  }

  if (v6)
  {
    if (!v22)
    {
      goto LABEL_39;
    }

    if (!v16)
    {
      v16 = "none";
    }

    v26 = sub_1000423BC(registrationCopy);
    interfaceName = [interface interfaceName];
    *buf = 67110146;
    *&buf[4] = v6;
    *&buf[8] = 2080;
    *&buf[10] = v16;
    *&buf[18] = 2112;
    *&buf[20] = v17;
    *&buf[28] = 2112;
    *&buf[30] = v26;
    *&buf[38] = 2112;
    *&buf[40] = interfaceName;
    v28 = "Received error (%d) from %s (%@) for %@ agent on interface %@";
    v29 = v21;
    v30 = 48;
  }

  else
  {
    if (!v22)
    {
      goto LABEL_39;
    }

    if (!v16)
    {
      v16 = "none";
    }

    v26 = sub_1000423BC(registrationCopy);
    interfaceName = [interface interfaceName];
    *buf = 136315906;
    *&buf[4] = v16;
    *&buf[12] = 2112;
    *&buf[14] = v17;
    *&buf[22] = 2112;
    *&buf[24] = v26;
    *&buf[32] = 2112;
    *&buf[34] = interfaceName;
    v28 = "Received success indication from %s (%@) for %@ agent on interface %@";
    v29 = v21;
    v30 = 42;
  }

  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v28, buf, v30);

LABEL_39:
  multiHopRegistration = [(NSPProxyPath *)self multiHopRegistration];

  if (multiHopRegistration == registrationCopy)
  {
    networkMultiHopAgentStatistics = [(NSPProxyPath *)self networkMultiHopAgentStatistics];
  }

  else
  {
    singleHopRegistration = [(NSPProxyPath *)self singleHopRegistration];

    if (singleHopRegistration != registrationCopy)
    {
      delegate2 = 0;
      goto LABEL_45;
    }

    networkMultiHopAgentStatistics = [(NSPProxyPath *)self networkSingleHopAgentStatistics];
  }

  delegate2 = networkMultiHopAgentStatistics;
LABEL_45:
  interface2 = [v11 interface];
  type = [interface2 type];

  if (type == 1)
  {
    v36 = registrationCopy;
    v37 = [NPUtilities copyCurrentNetworkCharacteristicsForPath:v11];
    v38 = [v37 objectForKeyedSubscript:@"Signature"];
    if (delegate2)
    {
      v39 = *(delegate2 + 8);
    }

    else
    {
      v39 = 0;
    }

    v40 = [v39 objectForKeyedSubscript:@"Signature"];
    v41 = v40;
    if (v38 && v40 && ([v38 isEqual:v40] & 1) == 0)
    {
      v47 = nplog_obj();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "ignore error, network signature does not match", buf, 2u);
      }

      registrationCopy = v36;
      goto LABEL_28;
    }

    registrationCopy = v36;
  }

  if (v6 > 1099)
  {
    if (v6 > 1199)
    {
      if ((v6 - 1200) > 7)
      {
LABEL_89:
        if (v6 == 1301)
        {
          if (delegate2)
          {
            ++*(delegate2 + 112);
          }

          delegate3 = [(NSPProxyPath *)self delegate];
          delegate4 = delegate3;
          v45 = 1301;
          goto LABEL_78;
        }

        if (v6 == 1302)
        {
          if (delegate2)
          {
            ++*(delegate2 + 120);
          }

          delegate3 = [(NSPProxyPath *)self delegate];
          delegate4 = delegate3;
          v45 = 1302;
          goto LABEL_78;
        }

        goto LABEL_117;
      }

      v42 = 1 << (v6 + 80);
      if ((v42 & 0x51) == 0)
      {
        if ((v42 & 0xA2) != 0)
        {
          if (delegate2)
          {
            ++*(delegate2 + 96);
          }

LABEL_77:
          delegate3 = [(NSPProxyPath *)self delegate];
          delegate4 = delegate3;
          v45 = v6;
LABEL_78:
          v25 = interface;
          [delegate3 reportProxyError:v45 interface:interface proxyPath:self];
LABEL_79:

          goto LABEL_80;
        }

        goto LABEL_89;
      }

LABEL_69:
      if (delegate2)
      {
        ++*(delegate2 + 88);
      }

      goto LABEL_77;
    }

    if ((v6 - 1100) <= 7)
    {
      if (((1 << (v6 - 76)) & 0x33) != 0)
      {
        goto LABEL_69;
      }

      if (v6 == 1106)
      {
        if (delegate2)
        {
          ++*(delegate2 + 80);
        }

        delegate3 = [(NSPProxyPath *)self delegate];
        delegate4 = delegate3;
        v45 = 1106;
        goto LABEL_78;
      }

      if (v6 == 1107)
      {
        if (delegate2)
        {
          ++*(delegate2 + 104);
        }

        delegate3 = [(NSPProxyPath *)self delegate];
        delegate4 = delegate3;
        v45 = 1107;
        goto LABEL_78;
      }
    }

LABEL_117:
    if (delegate2)
    {
      ++*(delegate2 + 56);
    }

    goto LABEL_77;
  }

  if ((v6 & 0x80000000) != 0)
  {
    if ((v6 + 65568) <= 0x1E)
    {
      if (((1 << (v6 + 32)) & 0x4004C000) != 0)
      {
        if (delegate2)
        {
          ++*(delegate2 + 72);
        }

        goto LABEL_77;
      }

      if (v6 == -65568)
      {
        if (delegate2)
        {
          ++*(delegate2 + 64);
        }

        delegate3 = [(NSPProxyPath *)self delegate];
        delegate4 = delegate3;
        v45 = 4294901728;
        goto LABEL_78;
      }
    }

    goto LABEL_117;
  }

  if (v6 <= 60)
  {
    switch(v6)
    {
      case 0:
        if (delegate2)
        {
          *(delegate2 + 120) = 0;
          *(delegate2 + 104) = 0u;
          *(delegate2 + 88) = 0u;
          *(delegate2 + 72) = 0u;
          *(delegate2 + 56) = 0u;
          *(delegate2 + 40) = 0u;
          *(delegate2 + 24) = 0u;
          *(delegate2 + 16) = 1;
        }

        delegate4 = [(NSPProxyPath *)self delegate];
        v25 = interface;
        [delegate4 reportProxySuccessOnInterface:interface proxyPath:self];
        goto LABEL_79;
      case 1:
LABEL_28:
        v25 = interface;
        goto LABEL_80;
      case 0x3C:
        if (delegate2)
        {
          ++*(delegate2 + 24);
        }

        delegate3 = [(NSPProxyPath *)self delegate];
        delegate4 = delegate3;
        v45 = 60;
        goto LABEL_78;
    }

    goto LABEL_117;
  }

  if (v6 == 61)
  {
    if (delegate2)
    {
      ++*(delegate2 + 32);
    }

    delegate3 = [(NSPProxyPath *)self delegate];
    delegate4 = delegate3;
    v45 = 61;
    goto LABEL_78;
  }

  if (v6 != 64)
  {
    if (v6 == 65)
    {
      if (delegate2)
      {
        ++*(delegate2 + 48);
      }

      goto LABEL_28;
    }

    goto LABEL_117;
  }

  v25 = interface;
  if (delegate2)
  {
    ++*(delegate2 + 40);
  }

LABEL_80:
}

- (void)dealloc
{
  singleHopRegistration = [(NSPProxyPath *)self singleHopRegistration];
  sub_100042E8C(singleHopRegistration);

  delegate = [(NSPProxyPath *)self delegate];
  [delegate singleHopAgentUnregistered:self];

  multiHopRegistration = [(NSPProxyPath *)self multiHopRegistration];
  sub_100042E8C(multiHopRegistration);

  delegate2 = [(NSPProxyPath *)self delegate];
  [delegate2 multiHopAgentUnregistered:self];

  v7.receiver = self;
  v7.super_class = NSPProxyPath;
  [(NSPProxyPath *)&v7 dealloc];
}

- (id)singleHopConfigurationHash
{
  singleHopRegistration = [(NSPProxyPath *)self singleHopRegistration];
  v3 = sub_100042F70(singleHopRegistration);

  return v3;
}

- (id)multiHopConfigurationHash
{
  multiHopRegistration = [(NSPProxyPath *)self multiHopRegistration];
  v3 = sub_100042F70(multiHopRegistration);

  return v3;
}

- (NSPProxyPathDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end