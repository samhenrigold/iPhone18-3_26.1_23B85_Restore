@interface NRLink
- (BOOL)changeStateTo:(unsigned __int8)to details:(id)details;
- (BOOL)changeStateTo:(unsigned __int8)to detailsFormat:(id)format;
- (BOOL)initializeExternalDeviceLink;
- (BOOL)publishDNSConfig:(id)config;
- (BOOL)resume;
- (BOOL)setInterfacePeerEgressFunctionalType:(unsigned int)type;
- (BOOL)setInterfaceRank;
- (BOOL)setInterfaceSubfamily;
- (BOOL)setNoACKPrioritization;
- (BOOL)setupVirtualInterface;
- (BOOL)shouldCreateCompanionProxyAgent;
- (BOOL)shouldSendIDSDeviceID;
- (NRLinkDelegate)linkDelegate;
- (NSString)description;
- (id)copyDescription;
- (id)copyDescriptionInner;
- (id)copyLocalOuterEndpoint:(unsigned __int8)endpoint;
- (id)copyShortDescription;
- (id)copyShortDescriptionInner;
- (id)initLinkWithQueue:(id)queue linkDelegate:(id)delegate nrUUID:(id)d;
- (void)checkPeerAvailabilityWithForceAggressive:(BOOL)aggressive;
- (void)checkProxyAgentWithForceUpdate:(BOOL)update;
- (void)dealloc;
- (void)invalidateIKESession:(id *)session;
- (void)invalidateIKESessionForClass:(unsigned __int8)class;
- (void)invalidateLink;
- (void)invalidateVirtualInterface;
- (void)processIKEDisconnection:(unsigned __int8)disconnection error:(id)error;
- (void)removePolicies;
- (void)reportEvent:(unsigned int)event details:(id)details;
- (void)reportEvent:(unsigned int)event detailsFormat:(id)format;
- (void)setIkeClassCEstablished:(BOOL)established;
- (void)setIkeClassDEstablished:(BOOL)established;
- (void)setInterfaceAvailability;
- (void)setLinkMTU;
- (void)setPowerAssertionState:(BOOL)state;
- (void)unregisterProxyAgent;
- (void)updateIKEv2Role:(BOOL *)role;
@end

@implementation NRLink

- (NRLinkDelegate)linkDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_linkDelegate);

  return WeakRetained;
}

- (id)copyLocalOuterEndpoint:(unsigned __int8)endpoint
{
  endpointCopy = endpoint;
  nrUUID = [(NRLink *)self nrUUID];
  v6 = sub_100163A30(NRDLocalDevice, nrUUID);

  if (!self->_hasCompanionDatapath)
  {
    type = self->_type;
    if (type != 1 && type != 4)
    {
      v12 = self->_localOuterEndpoint;
LABEL_14:
      v11 = v12;
      goto LABEL_15;
    }
  }

  if (endpointCopy == 4)
  {
    if (v6)
    {
      v10 = sub_100003490();
      dispatch_assert_queue_V2(v10);

      v12 = sub_1001672A0(v6, @"0");
      goto LABEL_14;
    }
  }

  else if (endpointCopy == 3 && v6)
  {
    v9 = sub_100003490();
    dispatch_assert_queue_V2(v9);

    v12 = sub_1001679E0(v6, @"0");
    goto LABEL_14;
  }

  v11 = 0;
LABEL_15:

  return v11;
}

- (void)removePolicies
{
  policyIDs = self->_policyIDs;
  if (!policyIDs || ![(NSMutableArray *)policyIDs count])
  {
    v18 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return;
    }

    v28 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v28, 0, "%s%.30s:%-4d %@: No policies to remove", ", "[NRLink removePolicies]"", 905, copyDescription);
LABEL_22:

    return;
  }

  if (!self->_policyIdentifierString)
  {
    v26 = _NRCopyLogObjectForNRUUID();
    v27 = _NRLogIsLevelEnabled();

    if (!v27)
    {
      return;
    }

    v28 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v28, 17, "%@: Invalid policy identifier string", copyDescription);
    goto LABEL_22;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = self->_policyIDs;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        if ([v9 unsignedIntegerValue])
        {
          objc_opt_self();
          if (qword_100229410 != -1)
          {
            dispatch_once(&qword_100229410, &stru_1001FCD98);
          }

          v10 = qword_100229408;
          sub_100159FB0(v10, self->_policyIdentifierString, v9);
          goto LABEL_12;
        }

        v11 = _NRCopyLogObjectForNRUUID();
        v12 = _NRLogIsLevelEnabled();

        if (v12)
        {
          v13 = _NRCopyLogObjectForNRUUID();
          copyDescription2 = [(NRLink *)self copyDescription];
          _NRLogWithArgs(v13, 16, "%s%.30s:%-4d %@: found invalid policyID %@ with session %@", ", "[NRLink removePolicies]"", 888, copyDescription2, v9, self->_policyIdentifierString);
        }

        v15 = _NRCopyLogObjectForNRUUID();
        v16 = _NRLogIsLevelEnabled();

        if (v16)
        {
          v10 = _NRCopyLogObjectForNRUUID();
          copyDescription3 = [(NRLink *)self copyDescription];
          _NRLogWithArgs(v10, 17, "%@: Found invalid policyID %@", copyDescription3, v9);

LABEL_12:
          continue;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v6);
  }

  objc_opt_self();
  if (qword_100229410 != -1)
  {
    dispatch_once(&qword_100229410, &stru_1001FCD98);
  }

  v21 = qword_100229408;
  sub_10015A52C(v21);

  [(NSMutableArray *)self->_policyIDs removeAllObjects];
  *&self->_hasRouteRulePolicy = 0;
  self->_hasClassDPolicies = 0;
  v22 = _NRCopyLogObjectForNRUUID();
  v23 = _NRLogIsLevelEnabled();

  if (v23)
  {
    v24 = _NRCopyLogObjectForNRUUID();
    copyDescription4 = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v24, 0, "%s%.30s:%-4d %@: Removed all policies", ", "[NRLink removePolicies]"", 903, copyDescription4);
  }
}

- (void)updateIKEv2Role:(BOOL *)role
{
  v25 = sub_100163A30(NRDLocalDevice, self->_nrUUID);
  [(NRLink *)self setIkev2Role:sub_10013FF60(v25)];
  ikev2Role = [(NRLink *)self ikev2Role];
  ikev2Role2 = [(NRLink *)self ikev2Role];
  v7 = ikev2Role2 == 1;
  if (ikev2Role != 2 && ikev2Role2 != 1)
  {
    peerToken = [(NRLink *)self peerToken];
    if (peerToken && (v9 = peerToken, [(NRLink *)self localToken], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
    {
      localToken = [(NRLink *)self localToken];
      peerToken2 = [(NRLink *)self peerToken];
    }

    else
    {
      if (v25)
      {
        v13 = v25[5];
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      if (!v14)
      {
        nrUUID = [(NRLink *)self nrUUID];
        v21 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          nrUUID2 = [(NRLink *)self nrUUID];
          v24 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v24, 17, "failed to determine ikev2 role");
        }

        v19 = 1;
        v7 = 1;
        goto LABEL_20;
      }

      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v15 = qword_1002290B8;
      localToken = sub_1000CAD2C(v15, 0);

      if (v25)
      {
        v16 = v25[5];
      }

      else
      {
        v16 = 0;
      }

      peerToken2 = v16;
    }

    v17 = peerToken2;
    v18 = [localToken compare:peerToken2];

    v7 = v18 == -1;
    if (v18 == -1)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

LABEL_20:
    [(NRLink *)self setIkev2Role:v19];
  }

  if (role)
  {
    *role = v7;
  }
}

- (BOOL)publishDNSConfig:(id)config
{
  configCopy = config;
  if ([(NRLink *)self virtualInterface]&& [(NRLink *)self state]== 8)
  {
    [(NRLink *)self virtualInterface];
    if (configCopy)
    {
      hostname = [configCopy hostname];
      v9 = hostname;
      [NSArray arrayWithObjects:&v9 count:1];
      NEVirtualInterfaceSetDNSServers();

      [(NRLink *)self virtualInterface];
      port = [configCopy port];
      [port intValue];
      NEVirtualInterfaceSetDNSPort();
    }

    else
    {
      NEVirtualInterfaceSetDNSServers();
      [(NRLink *)self virtualInterface];
      NEVirtualInterfaceSetDNSPort();
    }

    [(NRLink *)self virtualInterface];
    NEVirtualInterfaceUpdateAdHocService();
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)checkPeerAvailabilityWithForceAggressive:(BOOL)aggressive
{
  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v7 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v7, 1, "%s%.30s:%-4d %@: peer availability check is unsupported", ", "[NRLink checkPeerAvailabilityWithForceAggressive:]"", 810, copyDescription);
  }
}

- (void)setPowerAssertionState:(BOOL)state
{
  if (state)
  {
    if (!self || !self->_powerAssertion)
    {
      v4 = [NSString alloc];
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v17 = [v4 initWithFormat:@"%@:[%llu]", v6, -[NRLink identifier](self, "identifier")];

      v7 = sub_10013F1F8(v17);
      if (self)
      {
        self->_powerAssertion = v7;
        if (v7)
        {
          v8 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v10 = _NRCopyLogObjectForNRUUID();
            copyDescription = [(NRLink *)self copyDescription];
            _NRLogWithArgs(v10, 0, "%s%.30s:%-4d %@: Successfully took power assertion", ", "[NRLink setPowerAssertionState:]"", 790, copyDescription);
          }

          [(NRLink *)self reportEvent:3300 detailsFormat:@"id: %u", self->_powerAssertion];
        }
      }
    }
  }

  else if (self)
  {
    powerAssertion = self->_powerAssertion;
    if (powerAssertion)
    {
      if (sub_10013F3BC(powerAssertion))
      {
        v13 = _NRCopyLogObjectForNRUUID();
        v14 = _NRLogIsLevelEnabled();

        if (v14)
        {
          v15 = _NRCopyLogObjectForNRUUID();
          copyDescription2 = [(NRLink *)self copyDescription];
          _NRLogWithArgs(v15, 0, "%s%.30s:%-4d %@: Successfully released power assertion", ", "[NRLink setPowerAssertionState:]"", 800, copyDescription2);
        }

        [(NRLink *)self reportEvent:3302 detailsFormat:@"id: %u", self->_powerAssertion];
      }

      self->_powerAssertion = 0;
    }
  }
}

- (BOOL)setNoACKPrioritization
{
  if ([(NRLink *)self virtualInterface])
  {
    [(NRLink *)self virtualInterface];
    v3 = NEVirtualInterfaceCopyName();
    v4 = sub_10013B900(v3);
  }

  else
  {
    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return 0;
    }

    v3 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v3, 17, "%@: No interface to set interface no ack prioritization", copyDescription);

    v4 = 0;
  }

  return v4;
}

- (BOOL)setInterfacePeerEgressFunctionalType:(unsigned int)type
{
  v3 = *&type;
  if (![(NRLink *)self virtualInterface])
  {
    v7 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v5 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v5, 17, "%@: No interface to set interface sub-family", copyDescription);
LABEL_8:

      v6 = 0;
      goto LABEL_9;
    }

    return 0;
  }

  if (!v3)
  {
    v10 = _NRCopyLogObjectForNRUUID();
    v11 = _NRLogIsLevelEnabled();

    if (v11)
    {
      v5 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v5, 1, "%s%.30s:%-4d %@: Unsupported link type in trying to set the peer egress type.", ", "[NRLink setInterfacePeerEgressFunctionalType:]"", 750, copyDescription);
      goto LABEL_8;
    }

    return 0;
  }

  [(NRLink *)self virtualInterface];
  v5 = NEVirtualInterfaceCopyName();
  v6 = sub_10013B488(v5, v3);
LABEL_9:

  return v6;
}

- (BOOL)setInterfaceSubfamily
{
  if ([(NRLink *)self virtualInterface])
  {
    [(NRLink *)self virtualInterface];
    v3 = NEVirtualInterfaceCopyName();
    type = [(NRLink *)self type];
    if (type > 5)
    {
      v5 = 2;
    }

    else
    {
      v5 = dword_1001965A8[type];
    }

    v9 = sub_10013AD6C(v3, v5);
  }

  else
  {
    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return 0;
    }

    v3 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v3, 17, "%@: No interface to set interface sub-family", copyDescription);

    v9 = 0;
  }

  return v9;
}

- (void)setInterfaceAvailability
{
  if ([(NRLink *)self virtualInterface])
  {
    [(NRLink *)self virtualInterface];
    v6 = NEVirtualInterfaceCopyName();
    sub_10013CC88(v6);
  }

  else
  {
    v3 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return;
    }

    v6 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v6, 17, "%@: Attempting to set interface availability on a link with no interface", copyDescription);
  }
}

- (void)setIkeClassDEstablished:(BOOL)established
{
  if (self->_ikeClassDEstablished != established)
  {
    self->_ikeClassDEstablished = established;
    if (established)
    {
      selfCopy = self;
      v4 = nr_absolute_time();
      self = selfCopy;
    }

    else
    {
      v4 = 0;
    }

    self->_ikeClassDEstablishedTime = v4;
  }
}

- (void)setIkeClassCEstablished:(BOOL)established
{
  if (self->_ikeClassCEstablished != established)
  {
    self->_ikeClassCEstablished = established;
    if (self->_isPrimary && established)
    {
      nr_absolute_time();
      NRDiffMachTimeInSeconds();
      if (v5 > 1.0)
      {
        v6 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v8 = _NRCopyLogObjectForNRUUID();
          copyDescription = [(NRLink *)self copyDescription];
          _NRLogWithArgs(v8, 0, "%s%.30s:%-4d %@: setting interface availability for classC connect event", ", "[NRLink setIkeClassCEstablished:]"", 661, copyDescription);
        }

        objc_opt_self();
        if (qword_1002290C0 != -1)
        {
          dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
        }

        v16 = qword_1002290B8;
        v10 = self->_nrUUID;
        if (!v16)
        {
          goto LABEL_16;
        }

        v11 = sub_100003490();
        dispatch_assert_queue_V2(v11);

        if (v10)
        {
          v12 = [v16[28] objectForKeyedSubscript:v10];

          if (!v12)
          {
LABEL_16:

            return;
          }

          v13 = [v16[28] objectForKeyedSubscript:v10];
          sub_100101D0C(v13);
        }

        else
        {
          v14 = sub_1000B9544();
          v15 = _NRLogIsLevelEnabled();

          if (!v15)
          {
            goto LABEL_16;
          }

          v13 = sub_1000B9544();
          _NRLogWithArgs(v13, 17, "%s called with null nrUUID", "[NRLinkDirector setInterfaceAvailabilityForCatchAllInterface:]");
        }

        goto LABEL_16;
      }
    }
  }
}

- (BOOL)shouldCreateCompanionProxyAgent
{
  v2 = sub_100163A30(NRDLocalDevice, self->_nrUUID);
  if (!v2)
  {
    v6 = sub_100140094();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = sub_100140094();
      _NRLogWithArgs(v8, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", ", "[NRLink shouldCreateCompanionProxyAgent]"", 645);
    }

    v9 = _os_log_pack_size();
    v10 = __error();
    v11 = _os_log_pack_fill(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9, *v10, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
    *v11 = 136446210;
    *(v11 + 4) = "[NRLink shouldCreateCompanionProxyAgent]";
    sub_100140094();
    _NRLogAbortWithPack();
  }

  v3 = v2;
  v4 = sub_100140C44(v2);

  return v4;
}

- (BOOL)setInterfaceRank
{
  if ([(NRLink *)self state]!= 9)
  {
    nrUUID = [(NRLink *)self nrUUID];
    v5 = sub_100163A30(NRDLocalDevice, nrUUID);

    if (!v5)
    {
      v17 = sub_100140094();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v19 = sub_100140094();
        _NRLogWithArgs(v19, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", ", "[NRLink setInterfaceRank]"", 601);
      }

      v20 = _os_log_pack_size();
      v21 = __error();
      v22 = _os_log_pack_fill(&v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v20, *v21, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
      *v22 = 136446210;
      *(v22 + 4) = "[NRLink setInterfaceRank]";
      sub_100140094();
      _NRLogAbortWithPack();
    }

    v6 = v5[18];

    if (v6)
    {
      v7 = v5[18];
      requiresReachability = [v7 requiresReachability];

      isCompanionLink = [(NRLink *)self isCompanionLink];
      v10 = isCompanionLink;
      if (requiresReachability)
      {
        [(NRLink *)self virtualInterface];
        if (!v10)
        {
          v11 = NEVirtualInterfaceSetRankPrimaryEligible();
          goto LABEL_15;
        }

LABEL_7:
        v11 = NEVirtualInterfaceSetRankLast();
LABEL_15:
        v3 = v11;

        return v3 != 0;
      }

      if ((isCompanionLink & 1) == 0)
      {
        v12 = v5[18];
        if ([v12 hasPoliciesForProxyCriteria])
        {
          v13 = v5[18];
          proxyProviderCriteria = [v13 proxyProviderCriteria];
          forwardNonMatchingTraffic = [proxyProviderCriteria forwardNonMatchingTraffic];

          if (forwardNonMatchingTraffic)
          {
            [(NRLink *)self virtualInterface];
            goto LABEL_7;
          }
        }

        else
        {
        }
      }
    }

    [(NRLink *)self virtualInterface];
    v11 = NEVirtualInterfaceSetRankNever();
    goto LABEL_15;
  }

  [(NRLink *)self virtualInterface];
  v3 = NEVirtualInterfaceSetRankNever();
  return v3 != 0;
}

- (void)processIKEDisconnection:(unsigned __int8)disconnection error:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    state = self->_state;
    if (state == 8 || state == 9 && self->_type == 1)
    {
      v7 = NEIKEv2ErrorDomain;
      v15 = errorCopy;
      v8 = [errorCopy code] == 3;
      v9 = v15;
      if (!v8 || ([v15 domain], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", v7), v10, v9 = v15, (v11 & 1) == 0))
      {
        String = v9;
        if ([String code] != 4)
        {
LABEL_11:

          errorCopy = v15;
          goto LABEL_12;
        }

        domain = [String domain];
        v14 = [domain isEqualToString:v7];

        errorCopy = v15;
        if (!v14)
        {
          goto LABEL_12;
        }
      }

      String = NRDataProtectionClassCreateString();
      [(NRLink *)self cancelWithReason:@"%@ session disconnected due to no response from peer", String];
      goto LABEL_11;
    }
  }

LABEL_12:
}

- (void)dealloc
{
  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v5 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v5, 0, "%s%.30s:%-4d %@: Dealloc", ", "[NRLink dealloc]"", 547, copyDescription);
  }

  [(NRLink *)self invalidateLink];
  v7.receiver = self;
  v7.super_class = NRLink;
  [(NRLink *)&v7 dealloc];
}

- (void)setLinkMTU
{
  if (!self->_virtualInterface)
  {
    return;
  }

  v3 = sub_100163A30(NRDLocalDevice, self->_nrUUID);
  if (v3 && v3[8] >= 0xCu && !self->_isExternalDeviceLink)
  {
    v4 = 1400;
    if (!self->_hasCompanionDatapath)
    {
      if (self->_type == 1)
      {
        v4 = 1500;
      }

      else
      {
        v4 = 1400;
      }
    }

    if (self->_linkMTU != v4)
    {
      v11 = v3;
      if (NEVirtualInterfaceSetMTU())
      {
        self->_linkMTU = v4;
        v5 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        v3 = v11;
        if (IsLevelEnabled)
        {
          v7 = _NRCopyLogObjectForNRUUID();
          copyDescription = [(NRLink *)self copyDescription];
          _NRLogWithArgs(v7, 0, "%s%.30s:%-4d %@: Successfully updated interface mtu to %u", ", "[NRLink setLinkMTU]"", 509, copyDescription, self->_linkMTU);
LABEL_16:

          v3 = v11;
        }
      }

      else
      {
        v9 = _NRCopyLogObjectForNRUUID();
        v10 = _NRLogIsLevelEnabled();

        v3 = v11;
        if (v10)
        {
          v7 = _NRCopyLogObjectForNRUUID();
          copyDescription = [(NRLink *)self copyDescription];
          _NRLogWithArgs(v7, 17, "%@: Failed to update interface mtu to %u", copyDescription, self->_linkMTU);
          goto LABEL_16;
        }
      }
    }
  }
}

- (BOOL)changeStateTo:(unsigned __int8)to detailsFormat:(id)format
{
  toCopy = to;
  formatCopy = format;
  v7 = [[NSString alloc] initWithFormat:formatCopy arguments:&v9];

  LOBYTE(toCopy) = [(NRLink *)self changeStateTo:toCopy details:v7];
  return toCopy;
}

- (BOOL)changeStateTo:(unsigned __int8)to details:(id)details
{
  toCopy = to;
  detailsCopy = details;
  v7 = detailsCopy;
  switch(toCopy)
  {
    case 8:
      [(NRLink *)self reportEvent:3004 details:detailsCopy];
      v8 = 0;
      goto LABEL_8;
    case 9:
      v9 = 3002;
      goto LABEL_7;
    case 255:
      v9 = 3005;
LABEL_7:
      [(NRLink *)self reportEvent:v9 details:detailsCopy];
      [(NRLink *)self setClients:0];
      v8 = toCopy == 255;
      goto LABEL_8;
  }

  if (detailsCopy && [detailsCopy length])
  {
    v17 = sub_1001415A0(toCopy);
    [(NRLink *)self reportEvent:3008 detailsFormat:@"Changing state to %@ %@", v17, v7];
  }

  else
  {
    v17 = sub_1001415A0(toCopy);
    [(NRLink *)self reportEvent:3008 detailsFormat:@"Changing state to %@", v17, v18];
  }

  v8 = 0;
LABEL_8:
  state = self->_state;
  if (state != toCopy)
  {
    if (state == 8)
    {
      nr_absolute_time();
      NRDiffMachTimeInSeconds();
      self->_linkTotalReadyTimeInSec = self->_linkTotalReadyTimeInSec + v11;
    }

    if (toCopy == 8)
    {
      self->_linkReadyStartTime = nr_absolute_time();
      pairingClient = [(NRLink *)self pairingClient];

      if (pairingClient)
      {
        pairingClient2 = [(NRLink *)self pairingClient];
        v14 = pairingClient2;
        if (pairingClient2)
        {
          sub_10000CCF0(pairingClient2);
          sub_10000C668(v14, 6u, 0);
        }

        [(NRLink *)self setPairingClient:0];
      }

      [(NRLink *)self setLinkMTU];
      sub_1001416F4(self);
    }

    else if (toCopy == 255 || toCopy == 9)
    {
      [(NRLink *)self removePolicies];
      v15 = !v8;
      if (state != 8)
      {
        v15 = 1;
      }

      if ((v15 & 1) == 0 && [(NRLink *)self virtualInterface])
      {
        [(NRLink *)self setInterfaceAvailability];
      }
    }

    self->_state = toCopy;
  }

  return state != toCopy;
}

- (void)reportEvent:(unsigned int)event detailsFormat:(id)format
{
  v4 = *&event;
  formatCopy = format;
  v7 = [[NSString alloc] initWithFormat:formatCopy arguments:&v8];

  [(NRLink *)self reportEvent:v4 details:v7];
}

- (void)reportEvent:(unsigned int)event details:(id)details
{
  detailsCopy = details;
  nrUUID = [(NRLink *)self nrUUID];
  copyShortDescription = [(NRLink *)self copyShortDescription];
  sub_1000059A8(nrUUID, event, copyShortDescription, detailsCopy);
}

- (BOOL)resume
{
  if (self->_ikeClassDEstablished || self->_ikeClassCEstablished)
  {
    return 1;
  }

  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v6 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v6, 1, "%s%.30s:%-4d %@: Class D/C not yet established. Ignoring 'resume'", ", "[NRLink resume]"", 347, copyDescription);
  }

  return 0;
}

- (id)copyShortDescription
{
  v3 = [NSString alloc];
  copyShortDescriptionInner = [(NRLink *)self copyShortDescriptionInner];
  v5 = [v3 initWithFormat:@"[%@]", copyShortDescriptionInner];

  return v5;
}

- (id)copyShortDescriptionInner
{
  v3 = [NSString alloc];
  identifier = self->_identifier;
  isPrimary = [(NRLink *)self isPrimary];
  ShortStringFromNRLinkType = createShortStringFromNRLinkType();
  state = self->_state;
  if (state == 8)
  {
    v8 = @"Rdy";
  }

  else
  {
    v8 = sub_1001415A0(state);
  }

  v9 = "";
  if (isPrimary)
  {
    v9 = " P";
  }

  v10 = [v3 initWithFormat:@"%llu%s %@ %@", identifier, v9, ShortStringFromNRLinkType, v8];

  return v10;
}

- (NSString)description
{
  copyDescription = [(NRLink *)self copyDescription];

  return copyDescription;
}

- (id)copyDescription
{
  v3 = [NSString alloc];
  copyDescriptionInner = [(NRLink *)self copyDescriptionInner];
  v5 = [v3 initWithFormat:@"[%@]", copyDescriptionInner];

  return v5;
}

- (id)copyDescriptionInner
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"%llu", -[NRLink identifier](self, "identifier")];
  if ([(NRLink *)self isPrimary])
  {
    [v3 appendString:{@", PRIMARY"}];
  }

  [(NRLink *)self type];
  StringFromNRLinkType = createStringFromNRLinkType();
  [v3 appendFormat:@", %@", StringFromNRLinkType];

  if ([(NRLink *)self subtype])
  {
    [(NRLink *)self subtype];
    ShortStringFromNRLinkSubtype = createShortStringFromNRLinkSubtype();
    [v3 appendFormat:@"(%@)", ShortStringFromNRLinkSubtype];
  }

  v6 = sub_1001415A0([(NRLink *)self state]);
  [v3 appendFormat:@", %@", v6];

  if ([(NRLink *)self virtualInterface])
  {
    [(NRLink *)self virtualInterface];
    v7 = NEVirtualInterfaceCopyName();
    [v3 appendFormat:@", %@", v7];
  }

  return v3;
}

- (id)initLinkWithQueue:(id)queue linkDelegate:(id)delegate nrUUID:(id)d
{
  queueCopy = queue;
  delegateCopy = delegate;
  dCopy = d;
  if (!queueCopy)
  {
    v21 = sub_100140094();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_20;
    }

    v23 = sub_100140094();
    _NRLogWithArgs(v23, 17, "%s called with null queue");
LABEL_19:

    selfCopy = 0;
    goto LABEL_9;
  }

  dispatch_assert_queue_V2(queueCopy);
  if (!delegateCopy)
  {
    v24 = sub_100140094();
    v25 = _NRLogIsLevelEnabled();

    if (!v25)
    {
      goto LABEL_20;
    }

    v23 = sub_100140094();
    _NRLogWithArgs(v23, 17, "%s called with null linkDelegate");
    goto LABEL_19;
  }

  if (!dCopy)
  {
    v26 = sub_100140094();
    v27 = _NRLogIsLevelEnabled();

    if (v27)
    {
      v23 = sub_100140094();
      _NRLogWithArgs(v23, 17, "%s called with null nrUUID");
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if ((_NRIsUUIDNonZero() & 1) == 0)
  {
    v28 = sub_100140094();
    v29 = _NRLogIsLevelEnabled();

    if (v29)
    {
      v23 = sub_100140094();
      _NRLogWithArgs(v23, 17, "called with all-zero nrUUID");
      goto LABEL_19;
    }

LABEL_20:
    selfCopy = 0;
    goto LABEL_9;
  }

  v37.receiver = self;
  v37.super_class = NRLink;
  v12 = [(NRLink *)&v37 init];
  if (!v12)
  {
    v30 = sub_100140094();
    v31 = _NRLogIsLevelEnabled();

    if (v31)
    {
      v32 = sub_100140094();
      _NRLogWithArgs(v32, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRLink initLinkWithQueue:linkDelegate:nrUUID:]"", 265);
    }

    v33 = _os_log_pack_size();
    v34 = __error();
    v35 = _os_log_pack_fill(&v36 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v33, *v34, &_mh_execute_header, "%{public}s [super init] failed");
    *v35 = 136446210;
    *(v35 + 4) = "[NRLink initLinkWithQueue:linkDelegate:nrUUID:]";
    sub_100140094();
    _NRLogAbortWithPack();
  }

  v13 = v12;
  objc_storeStrong(&v12->_queue, queue);
  objc_storeWeak(&v13->_linkDelegate, delegateCopy);
  objc_storeStrong(&v13->_nrUUID, d);
  *&v13->_state = 1;
  v13->_subtype = 0;
  v13->_linkMTU = 1500;
  nrUUID = [(NRLink *)v13 nrUUID];
  v15 = sub_100163A30(NRDLocalDevice, nrUUID);

  if (v15)
  {
    v16 = *(v15 + 144);
    v13->_hasCompanionDatapath = [v16 hasCompanionDatapath];

    v17 = (*(v15 + 48) >> 3) & 1;
  }

  else
  {
    v13->_hasCompanionDatapath = [0 hasCompanionDatapath];
    LOBYTE(v17) = 0;
  }

  v13->_isExternalDeviceLink = v17;
  v18 = objc_alloc_init(NSMutableArray);
  [(NRLink *)v13 setPolicyIDs:v18];

  v13->_identifier = atomic_fetch_add_explicit(&qword_100228A88, 1uLL, memory_order_relaxed);
  self = v13;

  selfCopy = self;
LABEL_9:

  return selfCopy;
}

- (BOOL)shouldSendIDSDeviceID
{
  if ([(NRLink *)self isExternalDeviceLink])
  {
    return 0;
  }

  if ([(NRLink *)self isCompanionLink])
  {
    if ([(NRLink *)self type]== 1)
    {
      v4 = 1;
    }

    else
    {
      if (qword_100229238 != -1)
      {
        dispatch_once(&qword_100229238, &stru_1001FC340);
      }

      v4 = byte_100229230;
    }

    return v4 & 1;
  }

  else
  {
    nrUUID = [(NRLink *)self nrUUID];
    v6 = sub_100163A30(NRDLocalDevice, nrUUID);

    if (v6)
    {
      v7 = v6[18];
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    allowsApplicationServiceConnections = [v8 allowsApplicationServiceConnections];

    return allowsApplicationServiceConnections;
  }
}

- (void)checkProxyAgentWithForceUpdate:(BOOL)update
{
  v5 = sub_100163A30(NRDLocalDevice, self->_nrUUID);
  if (!v5)
  {
    v22 = sub_100140094();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v24 = sub_100140094();
      _NRLogWithArgs(v24, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", ", "[NRLink(NRLinkProtected) checkProxyAgentWithForceUpdate:]"", 1234);
    }

    v25 = _os_log_pack_size();
    v26 = __error();
    v27 = _os_log_pack_fill(&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v25, *v26, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
    *v27 = 136446210;
    *(v27 + 4) = "[NRLink(NRLinkProtected) checkProxyAgentWithForceUpdate:]";
    sub_100140094();
    _NRLogAbortWithPack();
  }

  v6 = v5;
  if (update)
  {
    goto LABEL_24;
  }

  v7 = self->_usedProxyNotifyPayload;
  v8 = v6[12];
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_18;
  }

  v10 = self->_usedProxyNotifyPayload;
  v11 = v6[12];
  v12 = [(NSData *)v10 isEqual:v11];

  if ((v12 & 1) == 0)
  {
LABEL_24:
    v13 = v6[18];
    proxyCapability = [v13 proxyCapability];

    if (proxyCapability == 2)
    {
      [(NRLink *)self unregisterProxyAgent];
      objc_storeStrong(&self->_usedProxyNotifyPayload, v6[12]);
      if (self->_usedProxyNotifyPayload)
      {
        v31 = 0;
        v32 = 0;
        v29 = 0;
        v30 = 0;
        if ([(NRLink *)self virtualInterface])
        {
          [(NRLink *)self virtualInterface];
          localInterfaceName = NEVirtualInterfaceCopyName();
        }

        else
        {
          if ([(NRLink *)self hasCompanionDatapath])
          {
            v16 = 0;
LABEL_14:
            v17 = self->_usedProxyNotifyPayload;
            v18 = [(NRLink *)self description];
            v19 = sub_1001428D4(v6, v17, v16, &v31, &v32, &v30, &v29, v18);

            if (v19)
            {
              v20 = v31;
              [(NRLink *)self setShoesProxyAgentRegistration:v31];
              v21 = v32;
              objc_storeStrong(&self->_proxyAgentUUID, v32);
              [(NRLink *)self setPublishedMasqueProxyConfig:v30];
              [(NRLink *)self setProxyEndpoint:v29];
            }

            else
            {
              [(NRLink *)self cancelWithReason:@"Failed to configure proxy agent"];
              v20 = v31;
              v21 = v32;
            }

            goto LABEL_18;
          }

          localInterfaceName = [(NRLink *)self localInterfaceName];
        }

        v16 = localInterfaceName;
        goto LABEL_14;
      }
    }
  }

LABEL_18:
}

- (BOOL)setupVirtualInterface
{
  if (![(NRLink *)self virtualInterface]&& [(NRLink *)self hasCompanionDatapath])
  {
    queue = [(NRLink *)self queue];
    [(NRLink *)self setVirtualInterface:sub_100144910(2, queue)];

    if (![(NRLink *)self virtualInterface])
    {
      v17 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        return 0;
      }

      v5 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v5, 16, "%s%.30s:%-4d %@: failed to setup interface", ", "[NRLink(NRLinkProtected) setupVirtualInterface]"", 1150, copyDescription);

      goto LABEL_51;
    }

    if ([(NRLink *)self setInterfaceSubfamily])
    {
      if ([(NRLink *)self setNoACKPrioritization])
      {
        if ([(NRLink *)self setInterfaceRank])
        {
          nrUUID = [(NRLink *)self nrUUID];
          v5 = sub_100163A30(NRDLocalDevice, nrUUID);

          if (!v5)
          {
            v52 = sub_100140094();
            v53 = _NRLogIsLevelEnabled();

            if (v53)
            {
              v54 = sub_100140094();
              _NRLogWithArgs(v54, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", ", "[NRLink(NRLinkProtected) setupVirtualInterface]"", 1171);
            }

            v55 = _os_log_pack_size();
            v56 = __error();
            v57 = _os_log_pack_fill(&v58 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), v55, *v56, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
            *v57 = 136446210;
            *(v57 + 4) = "[NRLink(NRLinkProtected) setupVirtualInterface]";
            sub_100140094();
            _NRLogAbortWithPack();
          }

          [(NRLink *)self virtualInterface];
          v6 = sub_100172E20(v5);
          v7 = NEVirtualInterfaceAddAddress();

          if (v7)
          {
            [(NRLink *)self virtualInterface];
            v8 = sub_100172E88(v5);
            v9 = NEVirtualInterfaceAddAddress();

            if (v9)
            {
              [(NRLink *)self virtualInterface];
              v10 = sub_1001731B0(v5);
              v11 = NEVirtualInterfaceAddAddress();

              if (v11)
              {
                [(NRLink *)self virtualInterface];
                if (NEVirtualInterfaceAddAddress())
                {
                  [(NRLink *)self virtualInterface];
                  v12 = sub_100172EF0(v5);
                  v13 = NEVirtualInterfaceAddIPv6Route();

                  if (v13)
                  {
                    [(NRLink *)self virtualInterface];
                    v14 = sub_100172F58(v5);
                    v15 = NEVirtualInterfaceAddIPv6Route();

                    if (v15)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        [(NRLink *)self virtualInterface];
                        localInterfaceName = [(NRLink *)self localInterfaceName];
                        NEVirtualInterfaceSetDelegateInterface();

                        [(NRLink *)self virtualInterface];
                        NEVirtualInterfaceSetRankNever();
                      }

                      else if ([(NRLink *)self type]== 5)
                      {
                        [(NRLink *)self virtualInterface];
                        localInterfaceName2 = [(NRLink *)self localInterfaceName];
                        NEVirtualInterfaceSetDelegateInterface();
                      }

                      [(NRLink *)self virtualInterface];
                      if (NEVirtualInterfaceUpdateAdHocService())
                      {
                        [(NRLink *)self virtualInterface];
                        v43 = NEVirtualInterfaceCopyName();
                        v44 = _NRCopyLogObjectForNRUUID();
                        v45 = _NRLogIsLevelEnabled();

                        if (v45)
                        {
                          v46 = _NRCopyLogObjectForNRUUID();
                          copyDescription2 = [(NRLink *)self copyDescription];
                          _NRLogWithArgs(v46, 0, "%s%.30s:%-4d %@: Created virtual interface %@", ", "[NRLink(NRLinkProtected) setupVirtualInterface]"", 1215, copyDescription2, v43);
                        }

                        goto LABEL_45;
                      }

                      v48 = _NRCopyLogObjectForNRUUID();
                      v49 = _NRLogIsLevelEnabled();

                      if ((v49 & 1) == 0)
                      {
                        goto LABEL_50;
                      }

                      v31 = "%@: failed to update ad-hoc service";
                      goto LABEL_49;
                    }

                    v40 = _NRCopyLogObjectForNRUUID();
                    v41 = _NRLogIsLevelEnabled();

                    if (v41)
                    {
                      v31 = "%@: failed to add ClassC route";
                      goto LABEL_49;
                    }

LABEL_50:
                    [(NRLink *)self invalidateVirtualInterface];
LABEL_51:

                    return 0;
                  }

                  v38 = _NRCopyLogObjectForNRUUID();
                  v39 = _NRLogIsLevelEnabled();

                  if ((v39 & 1) == 0)
                  {
                    goto LABEL_50;
                  }

                  v31 = "%@: failed to add ClassD route";
                }

                else
                {
                  v36 = _NRCopyLogObjectForNRUUID();
                  v37 = _NRLogIsLevelEnabled();

                  if ((v37 & 1) == 0)
                  {
                    goto LABEL_50;
                  }

                  v31 = "%@: failed to add bogus IPv4 address";
                }
              }

              else
              {
                v34 = _NRCopyLogObjectForNRUUID();
                v35 = _NRLogIsLevelEnabled();

                if ((v35 & 1) == 0)
                {
                  goto LABEL_50;
                }

                v31 = "%@: failed to add link-local address";
              }
            }

            else
            {
              v32 = _NRCopyLogObjectForNRUUID();
              v33 = _NRLogIsLevelEnabled();

              if ((v33 & 1) == 0)
              {
                goto LABEL_50;
              }

              v31 = "%@: failed to add ClassC address";
            }
          }

          else
          {
            v29 = _NRCopyLogObjectForNRUUID();
            v30 = _NRLogIsLevelEnabled();

            if ((v30 & 1) == 0)
            {
              goto LABEL_50;
            }

            v31 = "%@: failed to add ClassD address";
          }

LABEL_49:
          v50 = _NRCopyLogObjectForNRUUID();
          copyDescription3 = [(NRLink *)self copyDescription];
          _NRLogWithArgs(v50, 17, v31, copyDescription3);

          goto LABEL_50;
        }

        v27 = _NRCopyLogObjectForNRUUID();
        v28 = _NRLogIsLevelEnabled();

        if (v28)
        {
          v22 = _NRCopyLogObjectForNRUUID();
          copyDescription4 = [(NRLink *)self copyDescription];
          _NRLogWithArgs(v22, 17, "%@: failed to set interface rank", copyDescription4);
          goto LABEL_25;
        }

LABEL_26:
        [(NRLink *)self invalidateVirtualInterface];
        return 0;
      }

      v25 = _NRCopyLogObjectForNRUUID();
      v26 = _NRLogIsLevelEnabled();

      if (!v26)
      {
        goto LABEL_26;
      }

      v22 = _NRCopyLogObjectForNRUUID();
      copyDescription4 = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v22, 17, "%@: failed to setup no ack prioritization", copyDescription4);
    }

    else
    {
      v20 = _NRCopyLogObjectForNRUUID();
      v21 = _NRLogIsLevelEnabled();

      if (!v21)
      {
        goto LABEL_26;
      }

      v22 = _NRCopyLogObjectForNRUUID();
      copyDescription4 = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v22, 17, "%@: failed to setup interface sub family", copyDescription4);
    }

LABEL_25:

    goto LABEL_26;
  }

LABEL_45:
  [(NRLink *)self checkProxyAgentWithForceUpdate:1];
  return [(NRLink *)self state]!= 255;
}

- (BOOL)initializeExternalDeviceLink
{
  isExternalDeviceLink = self->_isExternalDeviceLink;
  if (isExternalDeviceLink)
  {
    v4 = sub_100163A30(NRDLocalDevice, self->_nrUUID);
    v5 = v4;
    if (v4)
    {
      v6 = *(v4 + 48);
      if ((v6 & 0x20) != 0)
      {
        LOBYTE(v8) = 1;
        if ((v6 & 0x1000) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v7 = (v6 & 0x10) != 0 || *(v4 + 16) > 0x12u;
        v8 = (v6 >> 14) & 1 | v7;
        if ((v6 & 0x1000) == 0)
        {
          goto LABEL_11;
        }
      }

      if ((((*(v4 + 48) & 0x2000) != 0) & v8) != 0)
      {
LABEL_12:

        return isExternalDeviceLink;
      }
    }

LABEL_11:
    sub_10016B190(NRDLocalDevice, 4, self->_nrUUID);
    sub_10016B190(NRDLocalDevice, 3, self->_nrUUID);
    sub_10016B190(NRDLocalDevice, 1, self->_nrUUID);
    goto LABEL_12;
  }

  return isExternalDeviceLink;
}

- (void)unregisterProxyAgent
{
  shoesProxyAgentRegistration = [(NRLink *)self shoesProxyAgentRegistration];

  if (shoesProxyAgentRegistration)
  {
    shoesProxyAgentRegistration2 = [(NRLink *)self shoesProxyAgentRegistration];
    [shoesProxyAgentRegistration2 unregisterNetworkAgent];

    [(NRLink *)self setShoesProxyAgentRegistration:0];
  }

  publishedMasqueProxyConfig = [(NRLink *)self publishedMasqueProxyConfig];

  if (publishedMasqueProxyConfig)
  {
    publishedMasqueProxyConfig2 = [(NRLink *)self publishedMasqueProxyConfig];
    nw_proxy_config_unpublish();

    [(NRLink *)self setPublishedMasqueProxyConfig:0];
  }

  proxyAgentUUID = self->_proxyAgentUUID;
  self->_proxyAgentUUID = 0;
}

- (void)invalidateIKESessionForClass:(unsigned __int8)class
{
  if (class == 3)
  {
    [(NRLink *)self setIkeClassCEstablished:0];
  }

  else if (class == 4)
  {
    [(NRLink *)self setIkeClassDEstablished:0];
  }
}

- (void)invalidateIKESession:(id *)session
{
  if (*session)
  {
    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v7, 0, "%s%.30s:%-4d %@: Invalidating IKE Session %@", ", "[NRLink(NRLinkProtected) invalidateIKESession:]"", 1078, copyDescription, *session);
    }

    objc_initWeak(&location, *session);
    v9 = [objc_opt_class() description];
    v10 = dispatch_time(0, 5000000000);
    queue = [(NRLink *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100145178;
    block[3] = &unk_1001FD0D8;
    objc_copyWeak(&v16, &location);
    v12 = v9;
    v15 = v12;
    dispatch_after(v10, queue, block);

    [*session setStateUpdateBlock:0];
    [*session setChildStateUpdateBlock:0];
    [*session setConfigurationUpdateBlock:0];
    [*session setTrafficSelectorUpdateBlock:0];
    [*session setAdditionalAddressesUpdateBlock:0];
    [*session setShortDPDEventBlock:0];
    [*session setRedirectEventBlock:0];
    [*session setPrivateNotifyStatusEvent:0];
    [*session disconnect];
    [*session invalidate];
    v13 = *session;
    *session = 0;

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

- (void)invalidateVirtualInterface
{
  if ([(NRLink *)self virtualInterface])
  {
    CFRelease([(NRLink *)self virtualInterface]);

    [(NRLink *)self setVirtualInterface:0];
  }
}

- (void)invalidateLink
{
  objc_storeWeak(&self->_linkDelegate, 0);
  *&self->_ikeClassCEstablished = 0;
  [(NRLink *)self unregisterProxyAgent];
  [(NRLink *)self setPowerAssertionState:0];
  pairingClient = [(NRLink *)self pairingClient];

  if (pairingClient)
  {
    pairingClient2 = [(NRLink *)self pairingClient];
    v5 = pairingClient2;
    if (pairingClient2)
    {
      sub_10000CCF0(pairingClient2);
      sub_10000C668(v5, 6u, 0);
    }

    [(NRLink *)self setPairingClient:0];
  }

  objc_opt_self();
  if (qword_100228E88 != -1)
  {
    dispatch_once(&qword_100228E88, &stru_1001FA180);
  }

  v6 = qword_100228E80;
  selfCopy = self;
  if (!v6)
  {
    goto LABEL_28;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = v6[3];
  v9 = [v8 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (!v9)
  {
    v19 = v8;
    goto LABEL_27;
  }

  v10 = v9;
  v33 = selfCopy;
  v11 = *v39;
LABEL_11:
  v12 = 0;
  while (1)
  {
    if (*v39 != v11)
    {
      objc_enumerationMutation(v8);
    }

    v13 = *(*(&v38 + 1) + 8 * v12);
    v14 = [v6[3] objectForKeyedSubscript:{v13, v33}];
    v15 = v14;
    if (!v14)
    {
      goto LABEL_12;
    }

    v16 = v6;
    v17 = *(v14 + 24);
    identifier = [v17 identifier];
    if (identifier == [(NRLink *)v33 identifier])
    {
      break;
    }

    v6 = v16;
LABEL_12:

    if (v10 == ++v12)
    {
      v10 = [v8 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v10)
      {
        goto LABEL_11;
      }

      v19 = v8;
      selfCopy = v33;
      goto LABEL_27;
    }
  }

  v19 = v13;

  selfCopy = v33;
  v6 = v16;
  if (!v19)
  {
    goto LABEL_28;
  }

  [*(v16 + 24) setObject:0 forKeyedSubscript:v19];
  if (qword_100228E98 != -1)
  {
    dispatch_once(&qword_100228E98, &stru_1001FA1F0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228E98 != -1)
    {
      dispatch_once(&qword_100228E98, &stru_1001FA1F0);
    }

    _NRLogWithArgs(qword_100228E90, 0, "%s%.30s:%-4d Successfully un-registered link %@", ", "[NRIKEv2Listener unregisterLink:]"", 468, v33);
  }

  sub_100015C1C(v16);
LABEL_27:

LABEL_28:
  if ([(NRLink *)selfCopy virtualInterface])
  {
    [(NRLink *)selfCopy virtualInterface];
    v20 = NEVirtualInterfaceCopyName();
    if (v20)
    {
      v21 = v20;
      v22 = &qword_100229000;
      if (qword_100229378 == -1)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v28 = sub_100140094();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v30 = sub_100140094();
        _NRLogWithArgs(v30, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (interfaceName) != ((void*)0)", ", "[NRLink(NRLinkProtected) invalidateLink]"", 1037);
      }

      v22 = _os_log_pack_size();
      v21 = &v34[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = __error();
      v32 = _os_log_pack_fill(v21, v22, *v31, &_mh_execute_header, "%{public}s Assertion Failed: (interfaceName) != ((void*)0)");
      *v32 = 136446210;
      *(v32 + 4) = "[NRLink(NRLinkProtected) invalidateLink]";
      sub_100140094();
      _NRLogAbortWithPack();
    }

    dispatch_once(&qword_100229378, &stru_1001FC6A0);
LABEL_31:
    if (_NRLogIsLevelEnabled())
    {
      if (v22[111] != -1)
      {
        dispatch_once(&qword_100229378, &stru_1001FC6A0);
      }

      _NRLogWithArgs(qword_100229370, 1, "%s%.30s:%-4d Attempting to start interface leak monitor for %@", ", "[NRLink(NRLinkProtected) invalidateLink]"", 1039, v21);
    }

    v23 = sub_10013BCD8(v21);
    if (v23)
    {
      v24 = [objc_opt_class() description];
      v25 = dispatch_time(0, 5000000000);
      queue = [(NRLink *)selfCopy queue];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100145824;
      v34[3] = &unk_1001FD088;
      v35 = v21;
      v36 = v23;
      v37 = v24;
      v27 = v24;
      dispatch_after(v25, queue, v34);
    }
  }
}

@end