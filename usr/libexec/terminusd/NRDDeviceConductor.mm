@interface NRDDeviceConductor
- (BOOL)preferWiFiP2PRequestUpdated;
- (BOOL)preferWiFiRequestAvailable;
- (BOOL)preferWiFiRequestUnavailable;
- (NSString)description;
- (void)apsIsConnected:(BOOL)connected;
- (void)dealloc;
- (void)deviceHasBTLinkUpgradeRequest:(BOOL)request;
- (void)deviceHasPhoneCallRelayRequest:(BOOL)request;
- (void)deviceHasQuickRelayRequest:(id)request hasQuickRelayRequest:(BOOL)relayRequest;
- (void)didCompleteIncomingResolveRequestForASName:(id)name asClient:(id)client;
- (void)didStartBrowseRequestForASName:(id)name asClient:(id)client;
- (void)didStartResolveRequestForASName:(id)name asClient:(id)client;
- (void)didStartTrackingNOI:(id)i;
- (void)didStopAdvertiseRequestForASName:(id)name endpoint:(id)endpoint asClient:(id)client;
- (void)didStopBrowseRequestForASName:(id)name asClient:(id)client;
- (void)didStopResolveRequestForASName:(id)name asClient:(id)client;
- (void)didStopTrackingAllNOIs:(id)is;
- (void)didUpdateDNSProxyState:(id)state state:(unsigned __int8)a4;
- (void)directToCloudRequestAvailable;
- (void)directToCloudRequestUnavailable;
- (void)linkDidReceiveData:(id)data data:(id)a4;
- (void)linkIsAvailable:(id)available;
- (void)linkIsReady:(id)ready;
- (void)linkIsSuspended:(id)suspended;
- (void)linkIsUnavailable:(id)unavailable;
- (void)linkPeerIsAsleep:(id)asleep isAsleep:(BOOL)isAsleep;
- (void)localAWDLEndpointChanged:(id)changed;
- (void)peerDidUnpairBluetooth:(BOOL)bluetooth nrUUID:(id)d;
- (void)pipeDidConnectForNRUUID:(BOOL)d nrUUID:(id)iD;
- (void)processAppStateChanged:(id)changed;
- (void)reportBTLinkUpgradeClientAdded:(id)added;
- (void)reportBTLinkUpgradeClientRemoved:(id)removed;
@end

@implementation NRDDeviceConductor

- (void)didStopAdvertiseRequestForASName:(id)name endpoint:(id)endpoint asClient:(id)client
{
  nameCopy = name;
  endpointCopy = endpoint;
  clientCopy = client;
  if (self && self->_isEnabled && nameCopy && self->_asClient == clientCopy)
  {
    v26 = clientCopy;
    if (endpointCopy)
    {
      v10 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v12 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v12, 0, "%s%.30s:%-4d advertise stopped for %@ : %@", ", "[NRDDeviceConductor didStopAdvertiseRequestForASName:endpoint:asClient:]"", 9647, nameCopy, endpointCopy);
      }

      v13 = nameCopy;
      v14 = endpointCopy;
      if (nw_endpoint_get_type(v14) == nw_endpoint_type_address)
      {
        v15 = objc_alloc_init(NSMutableData);
        v16 = [v13 dataUsingEncoding:4];
        NRTLVAddData();
        v17 = [NWAddressEndpoint endpointWithCEndpoint:v14];
        port = [v17 port];
        v19 = sub_10013D308(v17, [port intValue], 0);

        NRTLVAddData();
        v20 = objc_alloc_init(NSMutableData);
        NRTLVAddData();
        v21 = sub_10002A50C([NRLinkDirectorMessage alloc], self->_nrUUID);
        sub_10002AB38(v21, 20, v20);
        sub_10002C0E8(v21);
      }

      else
      {
        v22 = _NRCopyLogObjectForNRUUID();
        v23 = _NRLogIsLevelEnabled();

        if (!v23)
        {
LABEL_13:

LABEL_14:
          clientCopy = v26;
          goto LABEL_15;
        }

        v15 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v15, 17, "invalid endpoint %@", v14);
      }

      goto LABEL_13;
    }

    v24 = sub_1000E83DC();
    v25 = _NRLogIsLevelEnabled();

    clientCopy = v26;
    if (v25)
    {
      v13 = sub_1000E83DC();
      _NRLogWithArgs(v13, 17, "%s called with null advertisedEndpoint", "[NRDDeviceConductor didStopAdvertiseRequestForASName:endpoint:asClient:]");
      goto LABEL_14;
    }
  }

LABEL_15:
}

- (void)didCompleteIncomingResolveRequestForASName:(id)name asClient:(id)client
{
  nameCopy = name;
  clientCopy = client;
  if (self && self->_isEnabled && nameCopy && self->_asClient == clientCopy)
  {
    v7 = clientCopy;
    v8 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v10, 0, "%s%.30s:%-4d resolve completed for %@", ", "[NRDDeviceConductor didCompleteIncomingResolveRequestForASName:asClient:]"", 9639, nameCopy);
    }

    sub_1000E8568(self, nameCopy);
    clientCopy = v7;
  }
}

- (void)didStopResolveRequestForASName:(id)name asClient:(id)client
{
  nameCopy = name;
  clientCopy = client;
  if (self && self->_isEnabled && nameCopy && self->_asClient == clientCopy)
  {
    v7 = clientCopy;
    v8 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v10, 0, "%s%.30s:%-4d stopping resolve for %@", ", "[NRDDeviceConductor didStopResolveRequestForASName:asClient:]"", 9626, nameCopy);
    }

    [(NSMutableDictionary *)self->_asNamesToResolvedEndpoints setObject:0 forKeyedSubscript:nameCopy];
    [(NSMutableDictionary *)self->_outgoingResolveASNameToToken setObject:0 forKeyedSubscript:nameCopy];
    asClient = self->_asClient;
    if (asClient)
    {
      asClient = asClient->_asNamesForResolving;
    }

    v12 = asClient;
    if ([(NRApplicationServiceClient *)v12 count])
    {
    }

    else
    {
      qrAssertedForResolve = self->_qrAssertedForResolve;

      clientCopy = v7;
      if (!qrAssertedForResolve)
      {
        goto LABEL_14;
      }

      self->_qrAssertedForResolve = 0;
      [(NRQuickRelayAgent *)self->_quickRelayAgent unassertAgentWithOptions:0];
    }

    clientCopy = v7;
  }

LABEL_14:
}

- (void)didStartResolveRequestForASName:(id)name asClient:(id)client
{
  nameCopy = name;
  clientCopy = client;
  if (self && self->_isEnabled && nameCopy && self->_asClient == clientCopy)
  {
    v7 = clientCopy;
    v8 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v10, 0, "%s%.30s:%-4d starting resolve for %@", ", "[NRDDeviceConductor didStartResolveRequestForASName:asClient:]"", 9618, nameCopy);
    }

    sub_1000E8C70(self, 0, 1);
    clientCopy = v7;
  }
}

- (void)didStopBrowseRequestForASName:(id)name asClient:(id)client
{
  nameCopy = name;
  clientCopy = client;
  if (self && self->_isEnabled && nameCopy && self->_asClient == clientCopy)
  {
    v7 = clientCopy;
    v8 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v10, 0, "%s%.30s:%-4d stopping browse for %@", ", "[NRDDeviceConductor didStopBrowseRequestForASName:asClient:]"", 9607, nameCopy);
    }

    asClient = self->_asClient;
    if (asClient)
    {
      asClient = asClient->_asNamesForBrowsing;
    }

    v12 = asClient;
    if ([(NRApplicationServiceClient *)v12 count])
    {
    }

    else
    {
      qrAssertedForBrowse = self->_qrAssertedForBrowse;

      clientCopy = v7;
      if (!qrAssertedForBrowse)
      {
        goto LABEL_14;
      }

      self->_qrAssertedForBrowse = 0;
      [(NRQuickRelayAgent *)self->_quickRelayAgent unassertAgentWithOptions:0];
    }

    clientCopy = v7;
  }

LABEL_14:
}

- (void)didStartBrowseRequestForASName:(id)name asClient:(id)client
{
  nameCopy = name;
  clientCopy = client;
  if (self && self->_isEnabled && nameCopy && self->_asClient == clientCopy)
  {
    v7 = clientCopy;
    v8 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v10, 0, "%s%.30s:%-4d starting browse for %@", ", "[NRDDeviceConductor didStartBrowseRequestForASName:asClient:]"", 9599, nameCopy);
    }

    sub_1000E8C70(self, 1, 0);
    clientCopy = v7;
  }
}

- (void)localAWDLEndpointChanged:(id)changed
{
  changedCopy = changed;
  if (self && self->_isEnabled && self->_supportsAWDL)
  {
    v5 = changedCopy;
    sub_1000EA6A0(self);
    sub_1000EA900(self);
    changedCopy = v5;
  }
}

- (void)directToCloudRequestUnavailable
{
  if (!self || !self->_allowsDirectToCloud)
  {
    return;
  }

  v3 = nr_absolute_time();
  directToCloudAnalytics = self->_directToCloudAnalytics;
  if (!directToCloudAnalytics || (directToCloudAnalytics->_directToCloudRequestEnd = v3, (v5 = self->_directToCloudAnalytics) == 0))
  {
    self->_directToCloudRequestEndTime = 0;
    v6 = 0;
    goto LABEL_12;
  }

  self->_directToCloudRequestEndTime = v5->_directToCloudRequestEnd;
  v6 = v5;
  if (!v6->_iRATManagerQueryStart)
  {
LABEL_12:

    goto LABEL_13;
  }

  v7 = self->_directToCloudAnalytics;
  if (!v7)
  {

    v9 = self->_directToCloudAnalytics;
    if (!v9)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  iRATManagerQueryEnd = v7->_iRATManagerQueryEnd;

  if (!iRATManagerQueryEnd)
  {
    v9 = self->_directToCloudAnalytics;
    if (v9)
    {
LABEL_9:
      v9->_iRATManagerQueryIncomplete = 1;
    }
  }

LABEL_13:
  [(NRAnalyticsDirectToCloud *)self->_directToCloudAnalytics submit];
  v10 = self->_directToCloudAnalytics;
  self->_directToCloudAnalytics = 0;
}

- (void)directToCloudRequestAvailable
{
  if (self && self->_allowsDirectToCloud)
  {
    companionProxyAgent = [(NRLink *)self->_primaryLink companionProxyAgent];
  }
}

- (BOOL)preferWiFiRequestUnavailable
{
  dispatch_assert_queue_V2(self->_queue);
  self->_preferWiFiRequestInFlight = 0;
  if (_NRIsAppleInternal())
  {
    if (self->_disablePreferWiFi)
    {
      v3 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v5 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v5, 0, "%s%.30s:%-4d ignoring prefer Wi-Fi request as it is manually disabled");
LABEL_11:

        return 0;
      }

      return 0;
    }

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v6 = qword_1002290B8;
    if (v6)
    {
      v7 = v6[8];

      if (v7 == 1)
      {
        v8 = _NRCopyLogObjectForNRUUID();
        v9 = _NRLogIsLevelEnabled();

        if (v9)
        {
          v5 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v5, 0, "%s%.30s:%-4d ignoring prefer Wi-Fi request as fixed interface mode is enabled");
          goto LABEL_11;
        }

        return 0;
      }
    }
  }

  if (self->_hasPhoneCallRelayRequest)
  {
    v11 = _NRCopyLogObjectForNRUUID();
    v12 = _NRLogIsLevelEnabled();

    if (v12)
    {
      v13 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v13, 0, "%s%.30s:%-4d ignoring prefer Wi-Fi disable request as we have an active phone call relay request", ", "[NRDDeviceConductor preferWiFiRequestUnavailable]"", 7709);
    }
  }

  else
  {
    self->_p2pRequested = 0;
    if (!sub_1000EF670(self, 0, 1, 1, 0, 0) && !sub_1000EF670(self, 0, 1, 1, 1, 0))
    {
      sub_1000EF670(self, 0, 1, 0, 0, 0);
    }

    self->_pendingPreferWiFiRequest = 0;
    sub_1000EF7A0(self, 0);
  }

  return 1;
}

- (BOOL)preferWiFiRequestAvailable
{
  dispatch_assert_queue_V2(self->_queue);
  self->_preferWiFiRequestInFlight = 0;
  if (_NRIsAppleInternal())
  {
    if (self->_disablePreferWiFi)
    {
      v3 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v5 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v5, 0, "%s%.30s:%-4d ignoring prefer Wi-Fi request as it is manually disabled");
LABEL_14:

        return 0;
      }

      return 0;
    }

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v6 = qword_1002290B8;
    if (v6)
    {
      v7 = v6[8];

      if (v7 == 1)
      {
        v8 = _NRCopyLogObjectForNRUUID();
        v9 = _NRLogIsLevelEnabled();

        if (v9)
        {
          v5 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v5, 0, "%s%.30s:%-4d ignoring prefer Wi-Fi request as fixed interface mode is enabled");
          goto LABEL_14;
        }

        return 0;
      }
    }
  }

  if (self->_deviceSetupInProgress)
  {
    v10 = _NRCopyLogObjectForNRUUID();
    v11 = _NRLogIsLevelEnabled();

    if (v11)
    {
      v5 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v5, 0, "%s%.30s:%-4d ignoring prefer Wi-Fi enable request as device setup is in progress");
      goto LABEL_14;
    }

    return 0;
  }

  if (self->_hasPhoneCallRelayRequest)
  {
    v13 = _NRCopyLogObjectForNRUUID();
    v14 = _NRLogIsLevelEnabled();

    if (v14)
    {
      v15 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v15, 0, "%s%.30s:%-4d ignoring prefer Wi-Fi enable request as we have an active phone call relay request", ", "[NRDDeviceConductor preferWiFiRequestAvailable]"", 7616);
    }
  }

  else
  {
    if (self->_supportsAWDL)
    {
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v16 = qword_1002290B8;
      v17 = v16;
      if (v16)
      {
        v18 = *(v16 + 12);
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      self->_p2pRequested = sub_10007401C(v19, 0);
    }

    v20 = sub_1000F1BC0(self, 2);
    v27 = v20;
    if (v20 && [(dispatch_queue_t *)v20 state]!= 255)
    {
      goto LABEL_33;
    }

    if (!self->_p2pRequested)
    {
      goto LABEL_39;
    }

    dispatch_assert_queue_V2(self->_queue);
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v28 = qword_1002290B8;
    v29 = v28;
    v30 = v28 ? *(v28 + 6) : 0;
    v31 = v30;

    v32 = sub_10017F7C8(v31);
    if (v32)
    {
LABEL_33:
      dispatch_assert_queue_V2(self->_queue);
      if (self->_isAlwaysReachableOverWiFi)
      {
        v33 = objc_alloc_init(NRLinkDirectorRequest);
        v34 = v33;
        if (v33)
        {
          v33->_type = 1;
          v33->_requiredLinkType = 1;
          *&v33->_attemptImmediately = 257;
        }

        sub_1000EAA20(self, v33);
      }

      if (sub_1000EF670(self, 1, 1, 1, 0, 0))
      {
        [(dispatch_queue_t *)v27 start];
      }

      else
      {
        self->_pendingPreferWiFiRequest = 1;
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_1000F2CB0;
        v39[3] = &unk_1001FD3C8;
        v39[4] = self;
        sub_1000EF670(self, 1, 0, 0, 0, v39);
        v35 = _NRCopyLogObjectForNRUUID();
        v36 = _NRLogIsLevelEnabled();

        if (v36)
        {
          v37 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v37, 1, "%s%.30s:%-4d Enqueued prefer Wi-Fi request to be sent later", ", "[NRDDeviceConductor preferWiFiRequestAvailable]"", 7678);
        }
      }
    }

    else
    {
LABEL_39:
      sub_1000F2504(self, @"No Wi-Fi link available", v21, v22, v23, v24, v25, v26, v38);
      self->_pendingPreferWiFiRequest = 1;
    }
  }

  return 1;
}

- (BOOL)preferWiFiP2PRequestUpdated
{
  if (_NRIsAppleInternal())
  {
    if (self && self->_disablePreferWiFi)
    {
      return 0;
    }

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v3 = qword_1002290B8;
    if (v3)
    {
      v4 = v3[8];

      if (v4)
      {
        return 0;
      }
    }
  }

  if (!self || !self->_preferWiFiRequest && !self->_preferWiFiRequestInFlight)
  {
    v11 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v13 = _NRCopyLogObjectForNRUUID();
      if (self)
      {
        preferWiFiRequest = self->_preferWiFiRequest;
        preferWiFiRequestInFlight = self->_preferWiFiRequestInFlight;
      }

      else
      {
        preferWiFiRequest = 0;
        preferWiFiRequestInFlight = 0;
      }

      _NRLogWithArgs(v13, 0, "%s%.30s:%-4d %d %d", ", "[NRDDeviceConductor preferWiFiP2PRequestUpdated]"", 7575, preferWiFiRequest, preferWiFiRequestInFlight);
    }

    return 0;
  }

  if (self->_supportsAWDL)
  {
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v5 = qword_1002290B8;
    v6 = v5;
    if (v5)
    {
      v7 = *(v5 + 12);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = sub_10007401C(v8, 0);

    if (v9 != self->_p2pRequested)
    {
      [(NRDDeviceConductor *)self preferWiFiRequestUnavailable];
      [(NRDDeviceConductor *)self preferWiFiRequestAvailable];
    }
  }

  return 1;
}

- (void)reportBTLinkUpgradeClientRemoved:(id)removed
{
  if (self)
  {
    self = self->_devicePreferencesManager;
  }

  sub_100149890(self, removed);
}

- (void)reportBTLinkUpgradeClientAdded:(id)added
{
  if (self)
  {
    self = self->_devicePreferencesManager;
  }

  sub_100149788(self, added);
}

- (void)deviceHasBTLinkUpgradeRequest:(BOOL)request
{
  if (request)
  {
    v4 = objc_alloc_init(NRBluetoothLinkPreferences);
    [v4 setPacketsPerSecond:&off_100209CF8];
    if (self)
    {
      v5 = self->_devicePreferencesManager;
      v6 = self->_btLinkPreferencesAgent;
      agentUUID = [(NRBTLinkPreferencesAgent *)v6 agentUUID];
      uUIDString = [agentUUID UUIDString];
      sub_100149998(v5, v4, uUIDString);

      v9 = (self->_effectiveALUAdvice >> 1) & 1;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000F31AC;
      v19[3] = &unk_1001FBA98;
      v20 = v9;
      v19[4] = self;
      sub_1000F06F8(self, 1, v9, v19);
    }

    else
    {
      agentUUID2 = [0 agentUUID];
      uUIDString2 = [agentUUID2 UUIDString];
      sub_100149998(0, v4, uUIDString2);
    }
  }

  else if (self)
  {
    v10 = self->_devicePreferencesManager;
    v11 = self->_btLinkPreferencesAgent;
    agentUUID3 = [(NRBTLinkPreferencesAgent *)v11 agentUUID];
    uUIDString3 = [agentUUID3 UUIDString];
    sub_100149A78(v10, uUIDString3);

    linkUpgradeReportForBTClassic = self->_linkUpgradeReportForBTClassic;

    sub_1000F0D40(self, linkUpgradeReportForBTClassic);
  }

  else
  {
    agentUUID4 = [0 agentUUID];
    uUIDString4 = [agentUUID4 UUIDString];
    sub_100149A78(0, uUIDString4);
  }
}

- (void)deviceHasQuickRelayRequest:(id)request hasQuickRelayRequest:(BOOL)relayRequest
{
  relayRequestCopy = relayRequest;
  requestCopy = request;
  v36 = requestCopy;
  if (!self)
  {
    if ([requestCopy isEqual:0])
    {
      goto LABEL_35;
    }

LABEL_21:
    v25 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_38;
    }

    if (self)
    {
      nrUUID = self->_nrUUID;
    }

    else
    {
      nrUUID = 0;
    }

    v28 = nrUUID;
    v29 = _NRCopyLogObjectForNRUUID();
    v19 = v29;
    if (self)
    {
      v30 = self->_nrUUID;
    }

    else
    {
      v30 = 0;
    }

    _NRLogWithArgs(v29, 17, "Received quick relay request for incorrect conductor (expected: %@, received: %@", v30, v36);

    goto LABEL_37;
  }

  if (([requestCopy isEqual:self->_nrUUID] & 1) == 0)
  {
    goto LABEL_21;
  }

  if (self->_isEnabled)
  {
    v7 = _NRCopyLogObjectForNRUUID();
    v8 = _NRLogIsLevelEnabled();

    if (v8)
    {
      v9 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v9, 0, "%s%.30s:%-4d deviceHasQuickRelayRequest: %d -> %d", ", "[NRDDeviceConductor deviceHasQuickRelayRequest:hasQuickRelayRequest:]"", 7507, self->_hasQuickRelayRequest, relayRequestCopy);
    }

    self->_hasQuickRelayRequest = relayRequestCopy;
    if (self->_hasReceivedFirstAPSIsConnectedUpdate)
    {
      goto LABEL_17;
    }

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v10 = qword_1002290B8;
    v11 = v10;
    if (v10)
    {
      v12 = v10[7];
      if (v12)
      {
        v13 = v12[32];
        goto LABEL_12;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = 0;
LABEL_12:
    self->_apsIsConnected = v13 & 1;

    v14 = _NRCopyLogObjectForNRUUID();
    v15 = _NRLogIsLevelEnabled();

    if (v15)
    {
      v16 = _NRCopyLogObjectForNRUUID();
      v17 = v16;
      if (self->_apsIsConnected)
      {
        v18 = "YES";
      }

      else
      {
        v18 = "NO";
      }

      _NRLogWithArgs(v16, 0, "%s%.30s:%-4d force fetching apsIsConnected: %s", ", "[NRDDeviceConductor deviceHasQuickRelayRequest:hasQuickRelayRequest:]"", 7512, v18);
    }

LABEL_17:
    v19 = sub_1000F1BC0(self, 4);
    if (v19)
    {
      quickRelayAgent = self->_quickRelayAgent;
      if (quickRelayAgent && [(NSMutableDictionary *)quickRelayAgent->_quickRelayClientNames count])
      {
        v21 = [NSSet alloc];
        allValues = [(NSMutableDictionary *)quickRelayAgent->_quickRelayClientNames allValues];
        v23 = [v21 initWithArray:allValues];

        allObjects = [v23 allObjects];
      }

      else
      {
        allObjects = 0;
      }

      if ([allObjects count])
      {
        clients = [v19 clients];

        if (!clients)
        {
          v32 = objc_alloc_init(NSMutableSet);
          [v19 setClients:v32];
        }

        clients2 = [v19 clients];
        [clients2 addObjectsFromArray:allObjects];
      }
    }

    sub_1000F35C8(self);
    goto LABEL_37;
  }

LABEL_35:
  v34 = _NRCopyLogObjectForNRUUID();
  v35 = _NRLogIsLevelEnabled();

  if (!v35)
  {
    goto LABEL_38;
  }

  v19 = _NRCopyLogObjectForNRUUID();
  _NRLogWithArgs(v19, 0, "%s%.30s:%-4d Ignoring quick relay request as conductor is disabled (request: %d)", ", "[NRDDeviceConductor deviceHasQuickRelayRequest:hasQuickRelayRequest:]"", 7503, relayRequestCopy);
LABEL_37:

LABEL_38:
}

- (void)apsIsConnected:(BOOL)connected
{
  connectedCopy = connected;
  if (self)
  {
    self->_hasReceivedFirstAPSIsConnectedUpdate = 1;
    if (self->_apsIsConnected == connected)
    {
      return;
    }

    connectedCopy2 = connected;
  }

  else
  {
    if (!connected)
    {
      return;
    }

    connectedCopy2 = 1;
  }

  v6 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v8 = _NRCopyLogObjectForNRUUID();
    if (self)
    {
      apsIsConnected = self->_apsIsConnected;
    }

    else
    {
      apsIsConnected = 0;
    }

    _NRLogWithArgs(v8, 0, "%s%.30s:%-4d apsIsConnected: %d -> %d", ", "[NRDDeviceConductor apsIsConnected:]"", 7442, apsIsConnected, connectedCopy2);
  }

  if (self && (self->_apsIsConnected = connectedCopy, self->_isEnabled))
  {
    if (connectedCopy)
    {

      sub_1000F35C8(self);
    }
  }

  else
  {
    v10 = _NRCopyLogObjectForNRUUID();
    v11 = _NRLogIsLevelEnabled();

    if (v11)
    {
      v12 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v12, 0, "%s%.30s:%-4d Ignoring apsIsConnected callback as conductor is disabled (apsIsConnected: %d)", ", "[NRDDeviceConductor apsIsConnected:]"", 7446, connectedCopy2);
    }
  }
}

- (void)deviceHasPhoneCallRelayRequest:(BOOL)request
{
  requestCopy = request;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_isEnabled || !self->_supportsPhoneCallRelay || self->_hasPhoneCallRelayRequest == requestCopy)
  {
    return;
  }

  if (!self->_phoneCallRelayAnalytics)
  {
    v5 = objc_alloc_init(NRAnalyticsPhoneCallRelay);
    phoneCallRelayAnalytics = self->_phoneCallRelayAnalytics;
    self->_phoneCallRelayAnalytics = v5;
  }

  v7 = nr_absolute_time();
  v8 = self->_phoneCallRelayAnalytics;
  if (requestCopy)
  {
    if (v8)
    {
      v8->_phoneCallRelayStart = v7;
    }
  }

  else
  {
    if (v8)
    {
      v8->_phoneCallRelayEnd = v7;
      v9 = self->_phoneCallRelayAnalytics;
    }

    else
    {
      v9 = 0;
    }

    [(NRAnalyticsPhoneCallRelay *)v9 submit];
    v10 = self->_phoneCallRelayAnalytics;
    self->_phoneCallRelayAnalytics = 0;
  }

  v11 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v13 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v13, 0, "%s%.30s:%-4d deviceHasPhoneCallRelayRequest: %d", ", "[NRDDeviceConductor deviceHasPhoneCallRelayRequest:]"", 7403, requestCopy);
  }

  self->_hasPhoneCallRelayRequest = requestCopy;
  if (self->_isPreferWiFiProvider)
  {
    if (requestCopy)
    {
      return;
    }

    dispatch_assert_queue_V2(self->_queue);
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v14 = qword_1002290B8;
    v15 = v14;
    if (v14)
    {
      v16 = *(v14 + 6);
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (v17 && (v18 = v17[3], dispatch_assert_queue_V2(v18), v18, *(v17 + 10) >= 1))
    {
      preferWiFiRequest = self->_preferWiFiRequest;

      if (!preferWiFiRequest)
      {
        v20 = _NRCopyLogObjectForNRUUID();
        v21 = _NRLogIsLevelEnabled();

        if (v21)
        {
          v22 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v22, 0, "%s%.30s:%-4d processing outstanding prefer Wi-Fi requests", ", "[NRDDeviceConductor deviceHasPhoneCallRelayRequest:]"", 7410);
        }

        [(NRDDeviceConductor *)self preferWiFiRequestAvailable];
        return;
      }
    }

    else
    {
    }

    dispatch_assert_queue_V2(self->_queue);
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v26 = qword_1002290B8;
    v27 = v26;
    if (v26)
    {
      v28 = *(v26 + 6);
    }

    else
    {
      v28 = 0;
    }

    v35 = v28;

    v29 = v35;
    if (v35 && (v30 = v35[3], dispatch_assert_queue_V2(v30), v30, v29 = v35, *(v35 + 10) > 0))
    {
    }

    else
    {
      v31 = self->_preferWiFiRequest;

      if (v31)
      {
        v32 = _NRCopyLogObjectForNRUUID();
        v33 = _NRLogIsLevelEnabled();

        if (v33)
        {
          v34 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v34, 0, "%s%.30s:%-4d processing deferred prefer Wi-Fi disable request", ", "[NRDDeviceConductor deviceHasPhoneCallRelayRequest:]"", 7415);
        }

        [(NRDDeviceConductor *)self preferWiFiRequestUnavailable];
      }
    }
  }

  else if (requestCopy && !self->_preferWiFiRequest && self->_pendingPreferWiFiRequest)
  {
    v23 = _NRCopyLogObjectForNRUUID();
    v24 = _NRLogIsLevelEnabled();

    if (v24)
    {
      v25 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v25, 0, "%s%.30s:%-4d resetting pending bit for prefer Wi-Fi request, as the device has a phone call relay request", ", "[NRDDeviceConductor deviceHasPhoneCallRelayRequest:]"", 7426);
    }

    self->_pendingPreferWiFiRequest = 0;
  }
}

- (void)peerDidUnpairBluetooth:(BOOL)bluetooth nrUUID:(id)d
{
  bluetoothCopy = bluetooth;
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_peerDidUnpairBluetooth != bluetoothCopy)
  {
    if (([(NSUUID *)self->_nrUUID isEqual:dCopy]& 1) == 0)
    {
      v9 = sub_1000E83DC();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v11 = sub_1000E83DC();
        _NRLogWithArgs(v11, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: [self.nrUUID isEqual:nrUUID]", ", "[NRDDeviceConductor peerDidUnpairBluetooth:nrUUID:]"", 7369);
      }

      v12 = _os_log_pack_size();
      v13 = __error();
      v14 = _os_log_pack_fill(&dCopy - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v12, *v13, &_mh_execute_header, "%{public}s Assertion Failed: [self.nrUUID isEqual:nrUUID]");
      *v14 = 136446210;
      *(v14 + 4) = "[NRDDeviceConductor peerDidUnpairBluetooth:nrUUID:]";
      sub_1000E83DC();
      _NRLogAbortWithPack();
    }

    v6 = _NRCopyLogObjectForNRUUID();
    v7 = _NRLogIsLevelEnabled();

    if (v7)
    {
      v8 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v8, 1, "%s%.30s:%-4d PeerHasUnregistered: %d", ", "[NRDDeviceConductor peerDidUnpairBluetooth:nrUUID:]"", 7370, bluetoothCopy);
    }

    self->_peerDidUnpairBluetooth = bluetoothCopy;
    sub_1000F4104(self);
  }
}

- (void)pipeDidConnectForNRUUID:(BOOL)d nrUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  dispatch_assert_queue_V2(self->_queue);
  if (([(NSUUID *)self->_nrUUID isEqual:iDCopy]& 1) == 0)
  {
    v13 = sub_1000E83DC();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v15 = sub_1000E83DC();
      _NRLogWithArgs(v15, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: [self.nrUUID isEqual:nrUUID]", ", "[NRDDeviceConductor pipeDidConnectForNRUUID:nrUUID:]"", 7326);
    }

    v16 = _os_log_pack_size();
    v17 = __error();
    v18 = _os_log_pack_fill(&block[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v16, *v17, &_mh_execute_header, "%{public}s Assertion Failed: [self.nrUUID isEqual:nrUUID]");
    *v18 = 136446210;
    *(v18 + 4) = "[NRDDeviceConductor pipeDidConnectForNRUUID:nrUUID:]";
    sub_1000E83DC();
    _NRLogAbortWithPack();
  }

  v7 = _NRCopyLogObjectForNRUUID();
  v8 = _NRLogIsLevelEnabled();

  if (v8)
  {
    v9 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v9, 1, "%s%.30s:%-4d PeerIsNearby: %d", ", "[NRDDeviceConductor pipeDidConnectForNRUUID:nrUUID:]"", 7327, dCopy);
  }

  self->_peerDeviceIsNearby = dCopy;
  ++self->_peerDeviceIsNearbyUpdateCounter;
  if (dCopy)
  {
    sub_10003F7D8(self->_quickRelayAgent);
    peerDeviceIsNearbyUpdateCounter = self->_peerDeviceIsNearbyUpdateCounter;
    v11 = dispatch_time(0x8000000000000000, 3000000000);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F54EC;
    block[3] = &unk_1001FBAE8;
    block[4] = self;
    block[5] = peerDeviceIsNearbyUpdateCounter;
    dispatch_after(v11, queue, block);
  }

  sub_1000F4104(self);
}

- (void)linkPeerIsAsleep:(id)asleep isAsleep:(BOOL)isAsleep
{
  isAsleepCopy = isAsleep;
  asleepCopy = asleep;
  dispatch_assert_queue_V2(self->_queue);
  v6 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v8 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v8, 1, "%s%.30s:%-4d link: %@, IsAsleep: %d", ", "[NRDDeviceConductor linkPeerIsAsleep:isAsleep:]"", 7154, asleepCopy, isAsleepCopy);
  }

  self->_peerDeviceIsAsleep = isAsleepCopy;
  if (!isAsleepCopy && self->_peerDeviceIsNearby)
  {
    netInfo = self->_netInfo;
    if (netInfo)
    {
      if (!netInfo->_isCoalescing)
      {
        netInfoGenerationSent = self->_netInfoGenerationSent;
        goto LABEL_11;
      }

      v10 = sub_10001EEBC(netInfo);

      if (v10)
      {
        netInfo = self->_netInfo;
        netInfoGenerationSent = self->_netInfoGenerationSent;
        if (!netInfo)
        {
          generation = 0;
          goto LABEL_12;
        }

LABEL_11:
        generation = netInfo->_generation;
LABEL_12:
        if (netInfoGenerationSent != generation)
        {
          sub_1000F5B40(self, self->_primaryLink);
        }
      }
    }

    if (self->_sendThermalPressureUpdateWhenAwake)
    {
      sub_1000F5768(self, self->_primaryLink);
    }

    if (self->_sendDeviceStateUpdateWhenAwake)
    {
      sub_1000F5974(self, self->_primaryLink);
    }
  }

  sub_1000F4104(self);
}

- (void)linkDidReceiveData:(id)data data:(id)a4
{
  dataCopy = data;
  v364 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v362 = dataCopy;
  if (self->_isEnabled)
  {
    if ([dataCopy state] != 255)
    {
      v7 = self->_nrUUID;
      v8 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v10 = self->_nrUUID;
        v11 = _NRCopyLogObjectForNRUUID();
        [v364 length];
        v358 = "";
        _NRLogWithArgs(v11, 1, "%s%.30s:%-4d Received message of length %llu bytes on link %@");
      }

      v12 = self->_nrUUID;
      v13 = sub_10002A684(NRLinkDirectorMessage, v364, v12);

      v363 = v13;
      if (!v13)
      {
        v41 = _NRCopyLogObjectForNRUUID();
        v42 = _NRLogIsLevelEnabled();

        if (v42)
        {
          v43 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v43, 16, "%s%.30s:%-4d Failed to create message from received data", ", "[NRDDeviceConductor linkDidReceiveData:data:]"", 6631);
        }

LABEL_365:

        goto LABEL_366;
      }

      selfCopy = self;
      v14 = sub_10002B210(v13, 1);
      firstObject = [v14 firstObject];

      if (firstObject)
      {
        v16 = self->_nrUUID;
        v17 = _NRCopyLogObjectForNRUUID();
        v18 = _NRLogIsLevelEnabled();

        if (v18)
        {
          v19 = self->_nrUUID;
          v20 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v20, 1, "%s%.30s:%-4d Received hello message", ", "[NRDDeviceConductor linkDidReceiveData:data:]"", 6636);
        }

        if (self->_helloMessageReceivedOnce)
        {
          v21 = self->_nrUUID;
          v22 = _NRCopyLogObjectForNRUUID();
          v23 = _NRLogIsLevelEnabled();

          if (v23)
          {
            v24 = self->_nrUUID;
            v25 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v25, 1, "%s%.30s:%-4d The other side restarted", ", "[NRDDeviceConductor linkDidReceiveData:data:]"", 6642);
          }

          sub_1000F91EC(self, v362, 1);
          objc_opt_self();
          if (qword_1002294C8 != -1)
          {
            dispatch_once(&qword_1002294C8, &stru_1001FD250);
          }

          v26 = qword_1002294C0;
          if (v26)
          {
            v27 = v26;
            dispatch_assert_queue_V2(*(v26 + 2));
            if ((v27[10] & 1) == 0)
            {
              v27[10] = 1;
              if (v27[8] == 4)
              {
                sub_100181020(v27);
                if (v27[9] == 1)
                {
                  v27[8] = 3;
                  sub_100181284(v27);
                }
              }
            }

            v28 = v27[8] & 0xFD;

            if (v28 == 1)
            {
              sub_1000F2504(self, @"Other side restarted", v29, v30, v31, v32, v33, v34, v358);
              if (self->_isPreferWiFiProvider)
              {
                v35 = sub_1000EC630(self);
                self->_pendingPreferWiFiRequest = sub_10017F64C(v35);
              }
            }
          }
        }

        else
        {
          self->_helloMessageReceivedOnce = 1;
        }
      }

      v44 = sub_10002B210(v363, 3);
      firstObject2 = [v44 firstObject];

      selfCopy2 = self;
      if (firstObject2 || (v47 = sub_10002B210(v363, 2), [v47 firstObject], v48 = objc_claimAutoreleasedReturnValue(), v47, v48, selfCopy2 = self, v48))
      {
        selfCopy2->_latestWiFiAddressUpdateMsgIdentifier = sub_100029538(v363);
      }

      if (selfCopy2->_supportsAWDL)
      {
        v49 = sub_10002B210(v363, 10);
        firstObject3 = [v49 firstObject];

        if (firstObject3)
        {
          self->_latestAWDLAddressUpdateMsgIdentifier = sub_100029538(v363);
        }
      }

      v51 = sub_10002B210(v363, 7);
      firstObject4 = [v51 firstObject];

      v53 = v363;
      if (firstObject4 || (v54 = sub_10002B210(v363, 13), [v54 firstObject], v55 = objc_claimAutoreleasedReturnValue(), v54, v55, v53 = v363, v55))
      {
        self->_latestPreferWiFiAckMsgIdentifier = sub_100029538(v53);
      }

      v56 = sub_10002B210(v53, 5);
      firstObject5 = [v56 firstObject];

      v58 = v363;
      if (firstObject5 || (v59 = sub_10002B210(v363, 13), [v59 firstObject], v60 = objc_claimAutoreleasedReturnValue(), v59, v60, v58 = v363, v60))
      {
        self->_latestPreferWiFiRequestMsgIdentifier = sub_100029538(v58);
      }

      v61 = sub_10002B210(v58, 6);
      firstObject6 = [v61 firstObject];

      if (firstObject6)
      {
        self->_latestDeviceLinkStateMsgIdentifier = sub_100029538(v363);
      }

      v63 = sub_10002B210(v363, 15);
      firstObject7 = [v63 firstObject];

      if (firstObject7)
      {
        self->_latestCountryCodeMsgIdentifier = sub_100029538(v363);
      }

      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v65 = qword_1002290B8;
      v423[0] = _NSConcreteStackBlock;
      v423[1] = 3221225472;
      v423[2] = sub_1000F92A8;
      v423[3] = &unk_1001FD060;
      v423[4] = self;
      v365 = v363;
      v424 = v365;
      sub_1000C95D8(v65, v423);

      v66 = sub_10002B210(v365, 8);
      firstObject8 = [v66 firstObject];

      if (firstObject8)
      {
        selfCopy4 = self;
        if (!self->_handlesLinkRecommendations && !self->_didForceWoWMode)
        {
          if (!self->_forcedWoWUUID)
          {
            v69 = +[NSUUID UUID];
            forcedWoWUUID = self->_forcedWoWUUID;
            self->_forcedWoWUUID = v69;

            selfCopy4 = self;
          }

          dispatch_assert_queue_V2(selfCopy4->_queue);
          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v71 = qword_1002290B8;
          v72 = v71;
          if (v71)
          {
            v73 = *(v71 + 6);
          }

          else
          {
            v73 = 0;
          }

          v74 = v73;

          sub_10017EDB4(v74, 1, self->_forcedWoWUUID);
          dispatch_assert_queue_V2(self->_queue);
          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v75 = qword_1002290B8;
          v76 = v75;
          if (v75)
          {
            v77 = *(v75 + 6);
          }

          else
          {
            v77 = 0;
          }

          v78 = v77;

          sub_10017F43C(v78, 16, self->_forcedWoWUUID, &off_10020A0A8);
          v79 = dispatch_time(0x8000000000000000, 60000000000);
          queue = self->_queue;
          block = _NSConcreteStackBlock;
          p_block = 3221225472;
          v458 = sub_100004F08;
          v459 = &unk_1001FD3C8;
          selfCopy5 = self;
          dispatch_after(v79, queue, &block);
          self->_didForceWoWMode = 1;
          sub_1000059A8(self->_nrUUID, 1029, 0, 0);
        }
      }

      v81 = sub_10002B210(v365, 11);
      firstObject9 = [v81 firstObject];

      if ([firstObject9 length] < 8)
      {
LABEL_99:
        if (self->_supportsPathOverrides)
        {
          v87 = sub_10002B210(v365, 12);
          firstObject10 = [v87 firstObject];

          if (firstObject10)
          {
            v89 = sub_10001CD58([NRNetInfo alloc], firstObject10);
            v396 = v89;
            if (v89 && (v89[16] | 2) == 3)
            {
              sub_1000FA7F8(self);
            }

            else
            {
              sub_1000FA994(self);
            }

            v90 = firstObject10;
            CC_SHA256([v90 bytes], objc_msgSend(v90, "length"), &block);
            obj = [[NSData alloc] initWithBytes:&block length:32];
          }

          else
          {
            obj = 0;
            v396 = 0;
          }

          v91 = self->_lastReceivedNetInfoDataHash;
          v92 = [obj isEqualToData:v91];

          if (v92)
          {
            v93 = self->_nrUUID;
            v94 = _NRCopyLogObjectForNRUUID();
            v95 = _NRLogIsLevelEnabled();

            if (v95)
            {
              v96 = self->_nrUUID;
              v97 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs(v97, 1, "%s%.30s:%-4d ignoring unchanged net-info update", ", "[NRDDeviceConductor linkDidReceiveData:data:]"", 6880);
            }
          }

          else if (firstObject10)
          {
            v98 = self->_nrUUID;
            v99 = _NRCopyLogObjectForNRUUID();
            v100 = _NRLogIsLevelEnabled();

            if (v100)
            {
              v101 = self->_nrUUID;
              v102 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs(v102, 0, "%s%.30s:%-4d Received net-info: %@ (%lu bytes)", ", "-[NRDDeviceConductor linkDidReceiveData:data:]"", 6882, v396, [firstObject10 length]);
            }

            sub_1000FAA10(self, v396 == 0);
            if (v396)
            {
              objc_storeStrong(&self->_lastReceivedNetInfoDataHash, obj);
              v103 = nw_path_override_info_create();
              nw_path_override_info_set_expensive();
              nw_path_override_info_set_constrained();
              nw_path_override_info_set_roaming();
              nw_path_override_info_set_uses_wifi();
              nw_path_override_info_set_uses_cellular();
              v104 = v396[16];
              v419 = 0u;
              v420 = 0u;
              v421 = 0u;
              v422 = 0u;
              v105 = v104;
              v106 = [v105 countByEnumeratingWithState:&v419 objects:v445 count:16];
              if (v106)
              {
                v107 = *v420;
                do
                {
                  for (i = 0; i != v106; ++i)
                  {
                    if (*v420 != v107)
                    {
                      objc_enumerationMutation(v105);
                    }

                    nw_path_override_info_add_resolver_config();
                  }

                  v106 = [v105 countByEnumeratingWithState:&v419 objects:v445 count:16];
                }

                while (v106);
              }

              v109 = selfCopy->_queue;
              v110 = nw_agent_create_with_path_override_info();
              sub_1000FAB30(selfCopy, v110);

              v111 = selfCopy->_pathOverrideAgent;
              v112 = nw_path_override_info_copy_data();
              nw_agent_change_state();

              block = 0;
              p_block = 0;
              v113 = selfCopy->_pathOverrideAgent;
              nw_agent_get_uuid();

              v385 = [[NSUUID alloc] initWithUUIDBytes:&block];
              v114 = selfCopy->_nrUUID;
              v115 = _NRCopyLogObjectForNRUUID();
              LODWORD(v112) = _NRLogIsLevelEnabled();

              if (v112)
              {
                v116 = selfCopy->_nrUUID;
                v117 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs(v117, 0, "%s%.30s:%-4d Published net-info agent: %@", ", "[NRDDeviceConductor linkDidReceiveData:data:]"", 6908, v385);
              }

              endpoint = [NEPolicyRouteRule routeRuleWithAction:5 forType:6];
              [endpoint setNetworkAgentUUID:v385];
              v118 = [NEPolicy alloc];
              v444 = endpoint;
              v119 = [NSArray arrayWithObjects:&v444 count:1];
              v120 = [NEPolicyResult routeRules:v119];
              v121 = +[NEPolicyCondition allInterfaces];
              v443 = v121;
              v122 = [NSArray arrayWithObjects:&v443 count:1];
              v381 = [v118 initWithOrder:10 result:v120 conditions:v122];

              v123 = sub_1001599CC(NRDPolicySessionManager);
              v124 = selfCopy->_netInfoPolicyIdentifier;
              v125 = sub_100159E00(v123, v124, v381);

              sub_1000FAB40(selfCopy, v396);
              v126 = sub_1001599CC(NRDPolicySessionManager);
              sub_10015A52C(v126);

              v127 = v396;
              v128 = selfCopy;
              if (*(v396 + 9) == 1 && !selfCopy->_hasNonCompanionClients)
              {
                sub_1000FAEC0(selfCopy);
                v128 = selfCopy;
                v127 = v396;
              }

              if (*(v127 + 16) - 1 <= 2)
              {
                v129 = dword_1001965C0[(*(v127 + 16) - 1)];
                v417 = 0u;
                v418 = 0u;
                v415 = 0u;
                v416 = 0u;
                v130 = v128->_availableLinks;
                v131 = [(NSMutableSet *)v130 countByEnumeratingWithState:&v415 objects:v442 count:16];
                if (v131)
                {
                  v132 = *v416;
                  do
                  {
                    for (j = 0; j != v131; j = j + 1)
                    {
                      if (*v416 != v132)
                      {
                        objc_enumerationMutation(v130);
                      }

                      v134 = *(*(&v415 + 1) + 8 * j);
                      if ([v134 virtualInterface])
                      {
                        proxyAgentUUID = [v134 proxyAgentUUID];
                        v136 = proxyAgentUUID == 0;

                        if (!v136)
                        {
                          [v134 setInterfacePeerEgressFunctionalType:v129];
                        }
                      }
                    }

                    v131 = [(NSMutableSet *)v130 countByEnumeratingWithState:&v415 objects:v442 count:16];
                  }

                  while (v131);
                }

                if (selfCopy->_catchAllInterface)
                {
                  v137 = selfCopy->_proxyAgentUUID;
                  v138 = v137 == 0;

                  if (!v138)
                  {
                    if (selfCopy->_catchAllInterface)
                    {
                      v139 = NEVirtualInterfaceCopyName();
                    }

                    else
                    {
                      v139 = 0;
                    }

                    sub_10013B488(v139, v129);
                  }
                }
              }
            }

            else
            {
              sub_1000FAFFC(self);
            }

            sub_1000FB114(selfCopy, 1);
          }
        }

        v140 = sub_10002B210(v365, 6);
        v141 = v140;
        if (v140 && [v140 count])
        {
          v455 = 0u;
          v454 = 0u;
          v453 = 0u;
          v452 = 0u;
          v142 = v141;
          v143 = [v142 countByEnumeratingWithState:&v452 objects:&block count:16];
          if (v143)
          {
            v386 = 0;
            v144 = *v453;
            do
            {
              for (k = 0; k != v143; k = k + 1)
              {
                if (*v453 != v144)
                {
                  objc_enumerationMutation(v142);
                }

                v146 = *(*(&v452 + 1) + 8 * k);
                LOBYTE(v435) = 0;
                if ([v146 length] <= 1)
                {
                  v147 = [v146 length];
                }

                else
                {
                  v147 = 1;
                }

                [v146 getBytes:&v435 length:v147];
                if (!v386)
                {
                  v386 = objc_alloc_init(NSMutableArray);
                }

                if (((v435 - 1) & 0xF8) != 0)
                {
                  v148 = 0;
                }

                else
                {
                  v148 = 0x102020205040201uLL >> (8 * (v435 - 1));
                }

                v149 = [NSNumber numberWithUnsignedChar:v148 & 7];
                [v386 addObject:v149];
              }

              v143 = [v142 countByEnumeratingWithState:&v452 objects:&block count:16];
            }

            while (v143);

            if (v386)
            {
              if ([v386 count])
              {
                v413 = 0u;
                v414 = 0u;
                v411 = 0u;
                v412 = 0u;
                v386 = v386;
                v150 = [v386 countByEnumeratingWithState:&v411 objects:v441 count:16];
                if (v150)
                {
                  v151 = 0;
                  v397 = 0;
                  v152 = *v412;
                  while (1)
                  {
                    v153 = 0;
                    obja = v151;
                    v154 = -v151;
                    do
                    {
                      if (*v412 != v152)
                      {
                        objc_enumerationMutation(v386);
                      }

                      unsignedShortValue = [*(*(&v411 + 1) + 8 * v153) unsignedShortValue];
                      StringFromNRLinkType = createStringFromNRLinkType();
                      v157 = selfCopy->_nrUUID;
                      v158 = _NRCopyLogObjectForNRUUID();
                      v159 = _NRLogIsLevelEnabled();

                      if (v154 == v153)
                      {
                        v397 = unsignedShortValue;
                        if (!v159)
                        {
                          goto LABEL_177;
                        }

                        v160 = selfCopy->_nrUUID;
                        v161 = _NRCopyLogObjectForNRUUID();
                        _NRLogWithArgs(v161, 0, "%s%.30s:%-4d Peer has link: %@ (PRIMARY)", ", "[NRDDeviceConductor linkDidReceiveData:data:]"", 6964, StringFromNRLinkType);
                        v397 = unsignedShortValue;
                      }

                      else
                      {
                        if (!v159)
                        {
                          goto LABEL_177;
                        }

                        v160 = selfCopy->_nrUUID;
                        v161 = _NRCopyLogObjectForNRUUID();
                        _NRLogWithArgs(v161, 0, "%s%.30s:%-4d Peer has link: %@", ", "[NRDDeviceConductor linkDidReceiveData:data:]"", 6966, StringFromNRLinkType);
                      }

LABEL_177:
                      v153 = v153 + 1;
                    }

                    while (v150 != v153);
                    v162 = [v386 countByEnumeratingWithState:&v411 objects:v441 count:16];
                    v151 = obja + v150;
                    v150 = v162;
                    if (!v162)
                    {
                      goto LABEL_373;
                    }
                  }
                }

                v397 = 0;
LABEL_373:

                v297 = sub_10002B210(v365, 6);
                v298 = v297;
                if (v297 && [v297 count])
                {
                  v455 = 0u;
                  v454 = 0u;
                  v453 = 0u;
                  v452 = 0u;
                  v299 = v298;
                  v300 = 0;
                  v301 = [v299 countByEnumeratingWithState:&v452 objects:&block count:16];
                  if (v301)
                  {
                    v302 = *v453;
                    do
                    {
                      for (m = 0; m != v301; m = m + 1)
                      {
                        if (*v453 != v302)
                        {
                          objc_enumerationMutation(v299);
                        }

                        v304 = *(*(&v452 + 1) + 8 * m);
                        LOBYTE(v435) = 0;
                        if ([v304 length] <= 1)
                        {
                          v305 = [v304 length];
                        }

                        else
                        {
                          v305 = 1;
                        }

                        [v304 getBytes:&v435 length:v305];
                        if (!v300)
                        {
                          v300 = objc_alloc_init(NSMutableArray);
                        }

                        if (v435 > 8uLL)
                        {
                          v306 = 0;
                        }

                        else
                        {
                          v306 = byte_100196508[v435];
                        }

                        v307 = [NSNumber numberWithUnsignedChar:v306];
                        [v300 addObject:v307];
                      }

                      v301 = [v299 countByEnumeratingWithState:&v452 objects:&block count:16];
                    }

                    while (v301);
                  }
                }

                else
                {
                  v300 = 0;
                }

                v407 = 0u;
                v408 = 0u;
                v409 = 0u;
                v410 = 0u;
                endpointc = v300;
                v308 = [endpointc countByEnumeratingWithState:&v407 objects:v440 count:16];
                if (v308)
                {
                  v309 = 0;
                  v310 = *v408;
                  do
                  {
                    v311 = 0;
                    v384 = v309;
                    v312 = -v309;
                    do
                    {
                      if (*v408 != v310)
                      {
                        objc_enumerationMutation(endpointc);
                      }

                      unsignedShortValue2 = [*(*(&v407 + 1) + 8 * v311) unsignedShortValue];
                      StringFromNRLinkSubtype = createStringFromNRLinkSubtype();
                      if (unsignedShortValue2)
                      {
                        v315 = v312 == v311;
                      }

                      else
                      {
                        v315 = 0;
                      }

                      v316 = v315;
                      v317 = selfCopy->_nrUUID;
                      v318 = _NRCopyLogObjectForNRUUID();
                      v319 = _NRLogIsLevelEnabled();

                      if (v316)
                      {
                        if (!v319)
                        {
                          goto LABEL_409;
                        }

                        v320 = selfCopy->_nrUUID;
                        v321 = _NRCopyLogObjectForNRUUID();
                        _NRLogWithArgs(v321, 0, "%s%.30s:%-4d Peer has link subtype: %@ (PRIMARY)", ", "[NRDDeviceConductor linkDidReceiveData:data:]"", 6981, StringFromNRLinkSubtype);
                      }

                      else
                      {
                        if (!v319)
                        {
                          goto LABEL_409;
                        }

                        v320 = selfCopy->_nrUUID;
                        v321 = _NRCopyLogObjectForNRUUID();
                        _NRLogWithArgs(v321, 0, "%s%.30s:%-4d Peer has link subtype: %@", ", "[NRDDeviceConductor linkDidReceiveData:data:]"", 6983, StringFromNRLinkSubtype);
                      }

LABEL_409:
                      v311 = v311 + 1;
                    }

                    while (v308 != v311);
                    v322 = [endpointc countByEnumeratingWithState:&v407 objects:v440 count:16];
                    v309 = v384 + v308;
                    v308 = v322;
                  }

                  while (v322);
                }

                v323 = selfCopy->_nrUUID;
                v324 = _NRCopyLogObjectForNRUUID();
                v325 = _NRLogIsLevelEnabled();

                if (v325)
                {
                  v326 = selfCopy->_nrUUID;
                  v327 = _NRCopyLogObjectForNRUUID();
                  v328 = selfCopy->_primaryLink;
                  [(NRLink *)v328 type];
                  v329 = createStringFromNRLinkType();
                  v330 = selfCopy->_primaryLink;
                  [(NRLink *)v330 subtype];
                  v331 = createStringFromNRLinkSubtype();
                  v332 = createStringFromNRLinkType();
                  v333 = createStringFromNRLinkSubtype();
                  _NRLogWithArgs(v327, 0, "%s%.30s:%-4d Our primary link: %@(%@), peer primary link: %@(%@)", ", "[NRDDeviceConductor linkDidReceiveData:data:]"", 6990, v329, v331, v332, v333);
                }

                v334 = selfCopy;
                if (!selfCopy->_followsPeerPrimaryLink)
                {
                  goto LABEL_434;
                }

                if (!v397)
                {
                  v335 = selfCopy->_nrUUID;
                  v336 = _NRCopyLogObjectForNRUUID();
                  v337 = _NRLogIsLevelEnabled();

                  if (v337)
                  {
                    v338 = selfCopy->_nrUUID;
                    v339 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs(v339, 17, "Received recommended Link type is invalid");
                  }

                  v397 = 1;
                  v334 = selfCopy;
                }

                v340 = v334->_nrUUID;
                v341 = _NRCopyLogObjectForNRUUID();
                v342 = _NRLogIsLevelEnabled();

                if (v342)
                {
                  v343 = selfCopy->_nrUUID;
                  v344 = _NRCopyLogObjectForNRUUID();
                  v345 = createStringFromNRLinkType();
                  _NRLogWithArgs(v344, 1, "%s%.30s:%-4d Received a primary link recommendation from the peer: %@", ", "[NRDDeviceConductor linkDidReceiveData:data:]"", 7080, v345);
                }

                v334 = selfCopy;
                if (v397 != 2)
                {
                  if (v397 != 1)
                  {
LABEL_434:
                    v405 = 0u;
                    v406 = 0u;
                    v403 = 0u;
                    v404 = 0u;
                    v349 = v334->_availableLinks;
                    v350 = [(NSMutableSet *)v349 copy];

                    v351 = [v350 countByEnumeratingWithState:&v403 objects:v439 count:16];
                    if (v351)
                    {
                      v352 = *v404;
                      do
                      {
                        for (n = 0; n != v351; n = n + 1)
                        {
                          if (*v404 != v352)
                          {
                            objc_enumerationMutation(v350);
                          }

                          v354 = *(*(&v403 + 1) + 8 * n);
                          if ([v354 state] == 8)
                          {
                            v355 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v354 type]);
                            if (![v386 containsObject:v355] || objc_msgSend(v354, "subtype") && (+[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", objc_msgSend(v354, "subtype")), v356 = objc_claimAutoreleasedReturnValue(), v357 = -[NSObject containsObject:](endpointc, "containsObject:", v356), v356, (v357 & 1) == 0))
                            {
                              [v354 checkPeerAvailabilityWithForceAggressive:1];
                            }
                          }
                        }

                        v351 = [v350 countByEnumeratingWithState:&v403 objects:v439 count:16];
                      }

                      while (v351);
                    }

                    goto LABEL_182;
                  }

                  sub_1000FB7E8(selfCopy);
                  sub_1000F0BF8(selfCopy);
LABEL_433:
                  v334 = selfCopy;
                  goto LABEL_434;
                }

                v346 = sub_1000F1BC0(selfCopy, 2);
                v347 = v346;
                if (v346 && [(dispatch_queue_t *)v346 state]== 8)
                {
                  v348 = v347;
                }

                else
                {
                  v348 = sub_1000EA2C8(selfCopy, 2, 102);

                  if (!v348 || [v348 state] != 8)
                  {
                    goto LABEL_432;
                  }
                }

                sub_1000EFF24(selfCopy);
LABEL_432:

                goto LABEL_433;
              }

LABEL_182:
              v163 = sub_10002B210(v365, 14);
              firstObject11 = [v163 firstObject];

              if (firstObject11)
              {
                v165 = sub_10002B210(v365, 14);
                firstObject12 = [v165 firstObject];

                LOBYTE(block) = 0;
                if ([firstObject12 length] && (objc_msgSend(firstObject12, "getBytes:length:", &block, 1), block))
                {
                  if (block >= 0xBu)
                  {
                    if (block >= 0x15u)
                    {
                      if (block >= 0x1Fu)
                      {
                        v167 = block >= 0x29u ? 50 : 40;
                      }

                      else
                      {
                        v167 = 30;
                      }
                    }

                    else
                    {
                      v167 = 20;
                    }
                  }

                  else
                  {
                    v167 = 10;
                  }
                }

                else
                {
                  v167 = 0;
                }

                selfCopy->_lastSeenPeerThermalPressure = v167;
                if (selfCopy->_lastReportedPeerThermalPressure != v167)
                {
                  sub_1000F4104(selfCopy);
                }
              }

              v168 = sub_10002B210(v365, 22);
              firstObject13 = [v168 firstObject];

              if (firstObject13)
              {
                v170 = sub_10002B210(v365, 22);
                firstObject14 = [v170 firstObject];

                if (firstObject14 && [firstObject14 length])
                {
                  LOBYTE(block) = 0;
                  [firstObject14 getBytes:&block length:1];
                  v172 = (block & 1) != 0 ? &__kCFBooleanTrue : &__kCFBooleanFalse;
                }

                else
                {
                  v172 = 0;
                }

                bOOLValue = [v172 BOOLValue];
                selfCopy->_lastSeenPeerPluggedInState = bOOLValue;
                if (bOOLValue != selfCopy->_lastReportedPluggedInState)
                {
                  sub_1000F4104(selfCopy);
                }
              }

              v174 = sub_10002B210(v365, 16);
              firstObject15 = [v174 firstObject];

              if (firstObject15 || (v176 = sub_10002B210(v365, 18), [v176 firstObject], v177 = objc_claimAutoreleasedReturnValue(), v176, v177, v177) || (v178 = sub_10002B210(v365, 17), objc_msgSend(v178, "firstObject"), v179 = objc_claimAutoreleasedReturnValue(), v178, v179, v179) || (v180 = sub_10002B210(v365, 19), objc_msgSend(v180, "firstObject"), v181 = objc_claimAutoreleasedReturnValue(), v180, v181, v181))
              {
                objc_opt_self();
                if (qword_1002294C8 != -1)
                {
                  dispatch_once(&qword_1002294C8, &stru_1001FD250);
                }

                v182 = qword_1002294C0;
                v401[0] = _NSConcreteStackBlock;
                v401[1] = 3221225472;
                v401[2] = sub_1000FBA90;
                v401[3] = &unk_1001FD060;
                v401[4] = selfCopy;
                v402 = v365;
                sub_1001816DC(v182, v401);
              }

              v183 = sub_10002B210(v365, 20);
              firstObject16 = [v183 firstObject];

              if (firstObject16)
              {
                v185 = sub_10002B210(v365, 20);
                firstObject17 = [v185 firstObject];

                v187 = firstObject17;
                if (selfCopy)
                {
                  v359 = v187;
                  v382 = v187;
                  block = 0;
                  p_block = &block;
                  v458 = 0x3032000000;
                  v459 = sub_1000FD2F4;
                  selfCopy5 = sub_1000FD304;
                  v461 = objc_alloc_init(NSMutableDictionary);
                  *&v452 = _NSConcreteStackBlock;
                  *(&v452 + 1) = 3221225472;
                  *&v453 = sub_1000FD874;
                  *(&v453 + 1) = &unk_1001FC680;
                  *&v454 = &block;
                  NRTLVParse();
                  v360 = *(p_block + 40);
                  _Block_object_dispose(&block, 8);

                  if ([v360 count])
                  {
                    v188 = _NRCopyLogObjectForNRUUID();
                    v189 = _NRLogIsLevelEnabled();

                    if (v189)
                    {
                      v190 = _NRCopyLogObjectForNRUUID();
                      _NRLogWithArgs(v190, 0, "%s%.30s:%-4d removing endpoints %@", ", "[NRDDeviceConductor handleIncomingResolveRequest:]"", 9505, v360);
                    }

                    v427 = 0u;
                    v428 = 0u;
                    v425 = 0u;
                    v426 = 0u;
                    v369 = v360;
                    v367 = [v369 countByEnumeratingWithState:&v425 objects:&v452 count:16];
                    if (v367)
                    {
                      v366 = *v426;
                      do
                      {
                        v191 = 0;
                        do
                        {
                          if (*v426 != v366)
                          {
                            v192 = v191;
                            objc_enumerationMutation(v369);
                            v191 = v192;
                          }

                          v373 = v191;
                          v193 = *(*(&v425 + 1) + 8 * v191);
                          v379 = selfCopy->_asClient;
                          v194 = [v369 objectForKeyedSubscript:v193];
                          v375 = v193;
                          v377 = v194;
                          if (v379 && !v379->_cancelled)
                          {
                            objc_opt_self();
                            if (qword_1002291A0 != -1)
                            {
                              dispatch_once(&qword_1002291A0, &stru_1001FBD88);
                            }

                            v195 = qword_100229198;
                            v371 = v375;
                            endpointa = v377;
                            if (v195)
                            {
                              if (qword_1002291B0 != -1)
                              {
                                dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                              }

                              if (_NRLogIsLevelEnabled())
                              {
                                if (qword_1002291B0 != -1)
                                {
                                  dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                                }

                                _NRLogWithArgs(qword_1002291A8, 0, "%s%.30s:%-4d removing endpoint for asName %@ %@", ", "[NRApplicationServiceManager removeEndpointForASName:endpoint:]"", 1035, v371, endpointa);
                              }

                              v437 = 0u;
                              v438 = 0u;
                              v435 = 0u;
                              v436 = 0u;
                              objb = [*(v195 + 48) objectForKeyedSubscript:v371];
                              v196 = [objb countByEnumeratingWithState:&v435 objects:&block count:16];
                              if (v196)
                              {
                                v398 = *v436;
                                do
                                {
                                  for (ii = 0; ii != v196; ii = ii + 1)
                                  {
                                    if (*v436 != v398)
                                    {
                                      objc_enumerationMutation(objb);
                                    }

                                    v198 = *(*(&v435 + 1) + 8 * ii);
                                    if (v198)
                                    {
                                      v199 = *(v198 + 56);
                                      if (v199)
                                      {
                                        v200 = v199[11];

                                        if (v200)
                                        {
                                          v201 = objc_alloc_init(NSMutableArray);
                                          v202 = +[NEPolicyCondition allInterfaces];
                                          [v201 addObject:v202];

                                          v203 = nw_endpoint_copy_port_string(endpointa);
                                          v204 = [NSString stringWithUTF8String:v203];
                                          if (v203)
                                          {
                                            free(v203);
                                          }

                                          v205 = [NWAddressEndpoint endpointWithHostname:@"::" port:v204];
                                          v206 = [NEPolicyCondition flowRemoteAddress:v205 prefix:0];

                                          [v201 addObject:v206];
                                          v207 = [NEPolicyCondition requiredAgentDomain:@"com.apple.networkrelay" agentType:@"ASResolver"];
                                          [v201 addObject:v207];
                                          if (*(v198 + 8) >= 1)
                                          {
                                            v208 = [NEPolicyCondition effectivePID:?];
                                            [v201 addObject:v208];
                                          }

                                          v209 = [NEPolicy alloc];
                                          v210 = [NEPolicyResult dropWithFlags:4];
                                          v211 = [v209 initWithOrder:10 result:v210 conditions:v201];

                                          objc_opt_self();
                                          if (qword_100229410 != -1)
                                          {
                                            dispatch_once(&qword_100229410, &stru_1001FCD98);
                                          }

                                          v212 = qword_100229408;
                                          v213 = [v198 description];
                                          v214 = sub_100159E00(v212, v213, v211);

                                          objc_opt_self();
                                          if (qword_100229410 != -1)
                                          {
                                            dispatch_once(&qword_100229410, &stru_1001FCD98);
                                          }

                                          v215 = qword_100229408;
                                          sub_10015A52C(v215);

                                          v216 = *(v198 + 56);
                                          if (v216)
                                          {
                                            *(v216 + 12) = 1;
                                          }
                                        }
                                      }
                                    }
                                  }

                                  v196 = [objb countByEnumeratingWithState:&v435 objects:&block count:16];
                                }

                                while (v196);
                              }
                            }
                          }

                          v191 = v373 + 1;
                        }

                        while ((v373 + 1) != v367);
                        v367 = [v369 countByEnumeratingWithState:&v425 objects:&v452 count:16];
                      }

                      while (v367);
                    }
                  }

                  v217 = sub_1000FC558(v382);
                  v218 = _NRCopyLogObjectForNRUUID();
                  v219 = _NRLogIsLevelEnabled();

                  if (v219)
                  {
                    v220 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs(v220, 1, "%s%.30s:%-4d received resolve request %@", ", "[NRDDeviceConductor handleIncomingResolveRequest:]"", 9512, v217);
                  }

                  v437 = 0u;
                  v438 = 0u;
                  v435 = 0u;
                  v436 = 0u;
                  v221 = v217;
                  v222 = [v221 countByEnumeratingWithState:&v435 objects:&block count:16];
                  if (v222)
                  {
                    v399 = *v436;
                    do
                    {
                      v223 = 0;
                      do
                      {
                        if (*v436 != v399)
                        {
                          objc_enumerationMutation(v221);
                        }

                        v224 = *(*(&v435 + 1) + 8 * v223);
                        v225 = [v221 objectForKeyedSubscript:v224];
                        v226 = objc_alloc_init(NSMutableArray);
                        v429 = _NSConcreteStackBlock;
                        v430 = 3221225472;
                        v431 = sub_1000FD82C;
                        v432 = &unk_1001FBBF8;
                        v433 = v226;
                        v227 = v226;
                        nw_array_apply();
                        v447 = 0;
                        v446 = 0;
                        v228 = +[NSUUID UUID];
                        [v228 getUUIDBytes:&v446];

                        [v224 UTF8String];
                        application_service = nw_endpoint_create_application_service();
                        nw_endpoint_set_public_keys();
                        v230 = sub_1000FC668(v382, v224);
                        [(NSMutableDictionary *)selfCopy->_incomingResolveASNameToToken setObject:v230 forKeyedSubscript:v224];

                        sub_1000E9DD8(selfCopy, application_service);
                        asClient = selfCopy->_asClient;
                        v232 = v224;
                        v233 = application_service;
                        if (asClient && !asClient->_cancelled)
                        {
                          if (([(NSMutableArray *)asClient->_asNamesForIncomingResolveRequests containsObject:v232]& 1) == 0)
                          {
                            [(NSMutableArray *)asClient->_asNamesForIncomingResolveRequests addObject:v232];
                          }

                          objc_opt_self();
                          if (qword_1002291A0 != -1)
                          {
                            dispatch_once(&qword_1002291A0, &stru_1001FBD88);
                          }

                          v234 = qword_100229198;
                          v235 = v233;
                          v236 = v235;
                          if (v234)
                          {
                            if (v235)
                            {
                              if (nw_endpoint_get_type(v235) == (nw_endpoint_type_url|nw_endpoint_type_host))
                              {
                                v237 = [NSString stringWithUTF8String:nw_endpoint_get_application_service_name()];
                                [v234[8] setObject:v236 forKeyedSubscript:v237];
                                sub_10011B75C(v234);
                              }

                              else
                              {
                                if (qword_1002291B0 != -1)
                                {
                                  dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                                }

                                if (_NRLogIsLevelEnabled())
                                {
                                  if (qword_1002291B0 != -1)
                                  {
                                    dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                                  }

                                  _NRLogWithArgs(qword_1002291A8, 16, "%s%.30s:%-4d invalid endpoint type %@", ", "[NRApplicationServiceManager addIncomingResolveRequestForEndpoint:]"", 1024, v236);
                                }
                              }
                            }

                            else
                            {
                              if (qword_1002291B0 != -1)
                              {
                                dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                              }

                              v238 = qword_1002291A8;
                              v239 = _NRLogIsLevelEnabled();

                              if (v239)
                              {
                                if (qword_1002291B0 != -1)
                                {
                                  dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                                }

                                v240 = qword_1002291A8;
                                _NRLogWithArgs(v240, 17, "%s called with null asEndpoint", "[NRApplicationServiceManager addIncomingResolveRequestForEndpoint:]");
                              }
                            }
                          }
                        }

                        v223 = v223 + 1;
                      }

                      while (v222 != v223);
                      v241 = [v221 countByEnumeratingWithState:&v435 objects:&block count:16];
                      v222 = v241;
                    }

                    while (v241);
                  }

                  sub_1000FC7D0(selfCopy, 1);
                  v187 = v359;
                }

                v242 = v187;
              }

              v243 = sub_10002B210(v365, 21);
              firstObject18 = [v243 firstObject];

              if (firstObject18)
              {
                v245 = sub_10002B210(v365, 21);
                firstObject19 = [v245 firstObject];

                v247 = firstObject19;
                if (selfCopy)
                {
                  v368 = v247;
                  v248 = sub_1000FC558(v247);
                  v249 = _NRCopyLogObjectForNRUUID();
                  v250 = _NRLogIsLevelEnabled();

                  if (v250)
                  {
                    v251 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs(v251, 1, "%s%.30s:%-4d received resolve response %@", ", "[NRDDeviceConductor handleIncomingResolveResponse:]"", 9392, v248);
                  }

                  v427 = 0u;
                  v428 = 0u;
                  v425 = 0u;
                  v426 = 0u;
                  v372 = v248;
                  v376 = [v372 countByEnumeratingWithState:&v425 objects:&v452 count:16];
                  if (v376)
                  {
                    v374 = *v426;
                    do
                    {
                      v252 = 0;
                      do
                      {
                        if (*v426 != v374)
                        {
                          objc_enumerationMutation(v372);
                        }

                        v253 = *(*(&v425 + 1) + 8 * v252);
                        v254 = selfCopy->_asClient;
                        v255 = v254;
                        endpointb = v252;
                        if (v254)
                        {
                          asNamesForResolving = v254->_asNamesForResolving;
                        }

                        else
                        {
                          asNamesForResolving = 0;
                        }

                        v257 = asNamesForResolving;
                        v258 = [(NSMutableArray *)v257 containsObject:v253];

                        if (v258)
                        {
                          objc = sub_1000FC668(v368, v253);
                          v383 = [(NSMutableDictionary *)selfCopy->_outgoingResolveASNameToToken objectForKeyedSubscript:v253];
                          if (objc && (v259 = objc->_token) != 0 && (v260 = v259, v261 = objc->_token, v262 = [v383 isEqual:v261], v261, v260, (v262 & 1) == 0))
                          {
                            v285 = _NRCopyLogObjectForNRUUID();
                            v286 = _NRLogIsLevelEnabled();

                            if (v286)
                            {
                              v287 = selfCopy->_nrUUID;
                              v380 = _NRCopyLogObjectForNRUUID();
                              v378 = objc->_token;
                              _NRLogWithArgs(v380, 0, "%s%.30s:%-4d token mismatched for asName %@ sent %@ received %@", ", "[NRDDeviceConductor handleIncomingResolveResponse:]"", 9400, v253, v383, v378);

                              goto LABEL_345;
                            }
                          }

                          else
                          {
                            v263 = _NRCopyLogObjectForNRUUID();
                            v264 = _NRLogIsLevelEnabled();

                            if (v264)
                            {
                              v265 = selfCopy->_nrUUID;
                              v266 = _NRCopyLogObjectForNRUUID();
                              if (objc)
                              {
                                token = objc->_token;
                              }

                              else
                              {
                                token = 0;
                              }

                              v268 = token;
                              _NRLogWithArgs(v266, 0, "%s%.30s:%-4d token matched for asName %@ sent %@ received %@", ", "[NRDDeviceConductor handleIncomingResolveResponse:]"", 9403, v253, v383, v268);
                            }

                            [(NSMutableDictionary *)selfCopy->_outgoingResolveASNameToToken setObject:0 forKeyedSubscript:v253];
                            [(NSMutableDictionary *)selfCopy->_asNamesToResolvedEndpoints setObject:0 forKeyedSubscript:v253];
                            v269 = objc_alloc_init(NSMutableArray);
                            v270 = [v372 objectForKeyedSubscript:v253];
                            v446 = _NSConcreteStackBlock;
                            v447 = 3221225472;
                            v448 = sub_1000FC74C;
                            v449 = &unk_1001FBBD0;
                            v450 = selfCopy;
                            v451 = v269;
                            v378 = v269;
                            nw_array_apply();
                            [(NSMutableDictionary *)selfCopy->_asNamesToResolvedEndpoints setObject:v378 forKeyedSubscript:v253];
                            v271 = selfCopy->_asClient;
                            v370 = v253;
                            v380 = v270;
                            if (v271 && !v271->_cancelled)
                            {
                              objc_opt_self();
                              if (qword_1002291A0 != -1)
                              {
                                dispatch_once(&qword_1002291A0, &stru_1001FBD88);
                              }

                              v272 = qword_100229198;
                              v273 = v370;
                              v274 = v380;
                              if (v272)
                              {
                                v400 = v274;
                                if (v274)
                                {
                                  dispatch_assert_queue_V2(*(v272 + 16));
                                  v275 = [*(v272 + 48) objectForKeyedSubscript:v273];
                                  if ([v275 count])
                                  {
                                    v437 = 0u;
                                    v438 = 0u;
                                    v435 = 0u;
                                    v436 = 0u;
                                    v275 = v275;
                                    v276 = [v275 countByEnumeratingWithState:&v435 objects:&block count:16];
                                    if (v276)
                                    {
                                      v277 = *v436;
                                      do
                                      {
                                        for (jj = 0; jj != v276; jj = jj + 1)
                                        {
                                          if (*v436 != v277)
                                          {
                                            objc_enumerationMutation(v275);
                                          }

                                          v279 = *(*(&v435 + 1) + 8 * jj);
                                          if (!v279 || (*(v279 + 64) != 1 || (sub_10011E694(v272, v273) & 1) == 0) && (*(v279 + 65) & 1) == 0)
                                          {
                                            v280 = nw_array_create();
                                            v429 = _NSConcreteStackBlock;
                                            v430 = 3221225472;
                                            v431 = sub_10011E848;
                                            v432 = &unk_1001FBDB0;
                                            v433 = v279;
                                            v281 = v280;
                                            v434 = v281;
                                            nw_array_apply();
                                            if (nw_array_get_count())
                                            {
                                              if (qword_1002291B0 != -1)
                                              {
                                                dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                                              }

                                              if (_NRLogIsLevelEnabled())
                                              {
                                                if (qword_1002291B0 != -1)
                                                {
                                                  dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                                                }

                                                if (v279)
                                                {
                                                  v282 = *(v279 + 48);
                                                }

                                                else
                                                {
                                                  v282 = 0;
                                                }

                                                v283 = qword_1002291A8;
                                                _NRLogWithArgs(v283, 2, "%s%.30s:%-4d triggering resolve response block for %@ (%p) with endpoints %@", ", "[NRApplicationServiceManager reportResolveResultForASName:endpoint:]"", 544, v273, v282, v281);
                                              }

                                              if (v279)
                                              {
                                                *(v279 + 64) = 1;
                                                v284 = *(v279 + 72);
                                              }

                                              else
                                              {
                                                v284 = 0;
                                              }

                                              (*(v284 + 16))(v284, v281);
                                            }
                                          }
                                        }

                                        v276 = [v275 countByEnumeratingWithState:&v435 objects:&block count:16];
                                      }

                                      while (v276);
                                    }
                                  }

                                  goto LABEL_342;
                                }

                                if (qword_1002291B0 != -1)
                                {
                                  dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                                }

                                v288 = qword_1002291A8;
                                v289 = _NRLogIsLevelEnabled();

                                v274 = 0;
                                if (v289)
                                {
                                  if (qword_1002291B0 != -1)
                                  {
                                    dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                                  }

                                  v275 = qword_1002291A8;
                                  _NRLogWithArgs(v275, 17, "%s called with null resolvedEndpoints", "[NRApplicationServiceManager reportResolveResultForASName:endpoint:]");
LABEL_342:

                                  v274 = v400;
                                }
                              }
                            }

LABEL_345:
                          }
                        }

                        v252 = (&endpointb->isa + 1);
                      }

                      while (&endpointb->isa + 1 != v376);
                      v376 = [v372 countByEnumeratingWithState:&v425 objects:&v452 count:16];
                    }

                    while (v376);
                  }

                  sub_1000FC7D0(selfCopy, 1);
                  v247 = v368;
                }

                v290 = v247;
              }

              v291 = sub_10002B210(v365, 23);
              firstObject20 = [v291 firstObject];

              if (firstObject20)
              {
                v293 = sub_10002B210(v365, 23);
                firstObject21 = [v293 firstObject];

                objc_opt_self();
                if (qword_1002290C0 != -1)
                {
                  dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
                }

                v295 = qword_1002290B8;
                v296 = selfCopy->_nrUUID;
                sub_1000CA918(v295, firstObject21, v296);
              }

              goto LABEL_365;
            }
          }

          else
          {
          }
        }

        else
        {
        }

        v386 = 0;
        goto LABEL_182;
      }

      block = 0;
      [firstObject9 getBytes:&block length:8];
      v82 = block;
      v83 = sub_100163A30(NRDLocalDevice, self->_nrUUID);
      v84 = v83;
      if (v83 && *(v83 + 16) >= 0x16u)
      {
        if ((v82 & 4) == 0)
        {
          if ((v82 & 8) == 0)
          {
            goto LABEL_98;
          }

          if (qword_100229160 != -1)
          {
            dispatch_once(&qword_100229160, &stru_1001FBC40);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229160 != -1)
            {
              dispatch_once(&qword_100229160, &stru_1001FBC40);
            }

            _NRLogWithArgs(qword_100229158, 1, "%s%.30s:%-4d processing request flag for stopping immediate net-info updates", ", "[NRDDeviceConductor processReceivedRequestFlags:]"", 4584);
          }

          goto LABEL_81;
        }

        if (qword_100229160 != -1)
        {
          dispatch_once(&qword_100229160, &stru_1001FBC40);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229160 != -1)
          {
            dispatch_once(&qword_100229160, &stru_1001FBC40);
          }

          _NRLogWithArgs(qword_100229158, 1, "%s%.30s:%-4d processing request flag for starting immediate net-info updates", ", "[NRDDeviceConductor processReceivedRequestFlags:]"", 4581);
        }
      }

      else
      {
        if ((v82 & 2) == 0)
        {
          if ((v82 & 4) == 0)
          {
            goto LABEL_98;
          }

          if (qword_100229160 != -1)
          {
            dispatch_once(&qword_100229160, &stru_1001FBC40);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229160 != -1)
            {
              dispatch_once(&qword_100229160, &stru_1001FBC40);
            }

            _NRLogWithArgs(qword_100229158, 1, "%s%.30s:%-4d processing request flag for stopping immediate net-info updates", ", "[NRDDeviceConductor processReceivedRequestFlags:]"", 4592);
          }

LABEL_81:
          netInfo = self->_netInfo;
          if (netInfo)
          {
            v86 = 0;
LABEL_97:
            netInfo->_disableCoalescing = v86;
            goto LABEL_98;
          }

          goto LABEL_98;
        }

        if (qword_100229160 != -1)
        {
          dispatch_once(&qword_100229160, &stru_1001FBC40);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229160 != -1)
          {
            dispatch_once(&qword_100229160, &stru_1001FBC40);
          }

          _NRLogWithArgs(qword_100229158, 1, "%s%.30s:%-4d processing request flag for starting immediate net-info updates", ", "[NRDDeviceConductor processReceivedRequestFlags:]"", 4589);
        }
      }

      netInfo = self->_netInfo;
      if (netInfo)
      {
        v86 = 1;
        goto LABEL_97;
      }

LABEL_98:

      goto LABEL_99;
    }

    v39 = _NRCopyLogObjectForNRUUID();
    v40 = _NRLogIsLevelEnabled();

    if (v40)
    {
      v38 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v38, 16, "%s%.30s:%-4d Ignoring link receive data event as link was cancelled %@", ", "[NRDDeviceConductor linkDidReceiveData:data:]"", 6622, v362);
      goto LABEL_26;
    }
  }

  else
  {
    v36 = _NRCopyLogObjectForNRUUID();
    v37 = _NRLogIsLevelEnabled();

    if (v37)
    {
      v38 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v38, 1, "%s%.30s:%-4d Ignoring link receive data event as conductor is disabled");
LABEL_26:
    }
  }

LABEL_366:
}

- (void)linkIsUnavailable:(id)unavailable
{
  unavailableCopy = unavailable;
  dispatch_assert_queue_V2(self->_queue);
  if (!unavailableCopy)
  {
    v51 = sub_1000E83DC();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_81;
    }

    v16 = sub_1000E83DC();
    _NRLogWithArgs(v16, 17, "%s called with null link");
    goto LABEL_11;
  }

  isEnabled = self->_isEnabled;
  v6 = _NRCopyLogObjectForNRUUID();
  v7 = _NRLogIsLevelEnabled();

  if (!isEnabled)
  {
    if (!v7)
    {
      goto LABEL_81;
    }

    v16 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v16, 1, "%s%.30s:%-4d Ignoring link unavailability event as conductor is disabled");
LABEL_11:

    goto LABEL_81;
  }

  if (v7)
  {
    v8 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v8, 1, "%s%.30s:%-4d link is unavailable: %@", ", "[NRDDeviceConductor linkIsUnavailable:]"", 6454, unavailableCopy);
  }

  copyShortDescription = [unavailableCopy copyShortDescription];
  sub_1000EC910(self, 1007, @"%@", v10, v11, v12, v13, v14, copyShortDescription);

  [(NSMutableSet *)self->_availableLinks removeObject:unavailableCopy];
  if ([unavailableCopy type] == 1)
  {
    sub_1000FFA7C(self);
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v15 = qword_1002290B8;
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_1000FFB90;
    v58[3] = &unk_1001FD3C8;
    v58[4] = self;
    sub_1000C95D8(v15, v58);
    goto LABEL_72;
  }

  if ([unavailableCopy type] != 2)
  {
    if ([unavailableCopy type] == 4)
    {
      quickRelayAgent = self->_quickRelayAgent;
      if (quickRelayAgent)
      {
        if (quickRelayAgent->_state.state != 1)
        {
          quickRelayAgent->_state.state = 1;
          [(NWNetworkAgentRegistration *)quickRelayAgent->_registrationObject updateNetworkAgent:?];
        }
      }
    }

    goto LABEL_73;
  }

  v17 = [unavailableCopy subtype] == 103 || objc_msgSend(unavailableCopy, "subtype") == 102;
  v15 = sub_1000EA2C8(self, 2, 102);
  v19 = sub_1000EA2C8(self, 2, 103);
  if (v17)
  {
    if ([unavailableCopy startRequested])
    {
      if (!self->_peerDeviceIsNearby)
      {
        sub_1000FFD58(self);
      }

      goto LABEL_29;
    }
  }

  else
  {
    if (([v15 state] == 255 || (objc_msgSend(v15, "startRequested") & 1) == 0) && (objc_msgSend(v19, "state") == 255 || !objc_msgSend(v19, "startRequested")))
    {
LABEL_29:
      if (self->_pendingPreferWiFiRequest)
      {
        sub_1000F08C8(self, 2u);
      }

      if (self->_isPreferWiFiProvider)
      {
        if (self->_preferWiFiRequest && !self->_preferwiFiTimeoutSet)
        {
          v20 = _NRCopyLogObjectForNRUUID();
          v21 = _NRLogIsLevelEnabled();

          if (v21)
          {
            v28 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v28, 1, "%s%.30s:%-4d Wi-Fi link went away while servicing prefer Wi-Fi request", ", "[NRDDeviceConductor linkIsUnavailable:]"", 6526);
          }

          sub_1000F2504(self, @"Wi-Fi link went away", v22, v23, v24, v25, v26, v27, v53);
          v29 = sub_1000EC630(self);
          self->_pendingPreferWiFiRequest = sub_10017F64C(v29);
        }

        if (self->_preferwiFiTimeoutSet)
        {
          v30 = _NRCopyLogObjectForNRUUID();
          v31 = _NRLogIsLevelEnabled();

          if (v31)
          {
            v32 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v32, 0, "%s%.30s:%-4d Not rejecting prefer wifi request as connection is in progress", ", "[NRDDeviceConductor linkIsUnavailable:]"", 6531);
          }
        }
      }

      if (self->_bringUpWiFiImmediately)
      {
        v33 = _NRCopyLogObjectForNRUUID();
        v34 = _NRLogIsLevelEnabled();

        if (v34)
        {
          v35 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v35, 1, "%s%.30s:%-4d Wi-Fi link went away when we need it immediately", ", "[NRDDeviceConductor linkIsUnavailable:]"", 6537);
        }

        sub_1000F18B4(self);
      }

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v36 = self->_availableLinks;
      v37 = [(NSMutableSet *)v36 countByEnumeratingWithState:&v54 objects:v59 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = 0;
        v40 = *v55;
        while (2)
        {
          v41 = 0;
          v42 = v39;
          do
          {
            if (*v55 != v40)
            {
              objc_enumerationMutation(v36);
            }

            v39 = *(*(&v54 + 1) + 8 * v41);

            if ([v39 type] == 1)
            {
              v43 = 0;
              goto LABEL_55;
            }

            v41 = v41 + 1;
            v42 = v39;
          }

          while (v38 != v41);
          v38 = [(NSMutableSet *)v36 countByEnumeratingWithState:&v54 objects:v59 count:16];
          if (v38)
          {
            continue;
          }

          break;
        }
      }

      v39 = 0;
      v43 = 1;
LABEL_55:

      v44 = sub_1000EA2C8(self, 2, 101);
      if ([v15 state] != 8 && objc_msgSend(v44, "state") != 8)
      {
        if ([v15 state] != 255 && (objc_msgSend(v15, "startRequested") & 1) != 0 || objc_msgSend(v44, "state") != 255 && objc_msgSend(v44, "startRequested"))
        {
          sub_1000EFE54(self);
        }

        if ((v43 & 1) == 0)
        {
          v45 = _NRCopyLogObjectForNRUUID();
          v46 = _NRLogIsLevelEnabled();

          if (v46)
          {
            v47 = self->_nrUUID;
            v48 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v48, 1, "%s%.30s:%-4d Found BT link %@", ", "[NRDDeviceConductor linkIsUnavailable:]"", 6574, v39, v54);
          }

          if ([v39 state] == 9 && !self->_preferwiFiTimeoutSet)
          {
            [v39 resume];
          }

          else if ([v39 state] == 1)
          {
            [v39 start];
          }
        }
      }

      goto LABEL_71;
    }

    sub_1000F015C(self);
  }

LABEL_71:

LABEL_72:
LABEL_73:
  queue = self->_queue;
  v50 = unavailableCopy;
  dispatch_assert_queue_V2(queue);
  [v50 removePolicies];

  sub_1000FFDA8(self);
  sub_1000F4104(self);
  if ([v50 subtype] != 102 && objc_msgSend(v50, "subtype") != 103 && objc_msgSend(v50, "subtype") != 104 && objc_msgSend(v50, "type") != 4 || objc_msgSend(v50, "startRequested"))
  {
    sub_100100060(self, self->_primaryLink);
  }

  if ([v50 startRequested])
  {
    sub_10010047C(self);
  }

LABEL_81:
}

- (void)linkIsSuspended:(id)suspended
{
  suspendedCopy = suspended;
  dispatch_assert_queue_V2(self->_queue);
  if (!suspendedCopy)
  {
    v21 = sub_1000E83DC();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_16;
    }

    v18 = sub_1000E83DC();
    _NRLogWithArgs(v18, 17, "%s called with null link");
LABEL_15:

    goto LABEL_16;
  }

  if (!self->_isEnabled)
  {
    v16 = _NRCopyLogObjectForNRUUID();
    v17 = _NRLogIsLevelEnabled();

    if (!v17)
    {
      goto LABEL_16;
    }

    v18 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v18, 1, "%s%.30s:%-4d Ignoring link suspended event as conductor is disabled");
    goto LABEL_15;
  }

  if ([suspendedCopy state] == 255)
  {
    v19 = _NRCopyLogObjectForNRUUID();
    v20 = _NRLogIsLevelEnabled();

    if (!v20)
    {
      goto LABEL_16;
    }

    v18 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v18, 16, "%s%.30s:%-4d Ignoring link suspended event as link was cancelled %@", ", "[NRDDeviceConductor linkIsSuspended:]"", 6424, suspendedCopy);
    goto LABEL_15;
  }

  queue = self->_queue;
  v5 = suspendedCopy;
  dispatch_assert_queue_V2(queue);
  [v5 removePolicies];

  sub_1000FFDA8(self);
  sub_1000F4104(self);
  if ([v5 type] == 4)
  {
    quickRelayAgent = self->_quickRelayAgent;
    if (quickRelayAgent)
    {
      if (quickRelayAgent->_state.state != 1)
      {
        quickRelayAgent->_state.state = 1;
        [(NWNetworkAgentRegistration *)quickRelayAgent->_registrationObject updateNetworkAgent:?];
      }
    }
  }

  copyShortDescription = [v5 copyShortDescription];
  sub_1000EC910(self, 1006, @"%@", v8, v9, v10, v11, v12, copyShortDescription);

  v13 = _NRCopyLogObjectForNRUUID();
  v14 = _NRLogIsLevelEnabled();

  if (v14)
  {
    v15 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v15, 1, "%s%.30s:%-4d link is suspended: %@", ", "[NRDDeviceConductor linkIsSuspended:]"", 6439, v5);
  }

  [v5 setMigrationInfoAgent:0];
LABEL_16:
}

- (void)linkIsReady:(id)ready
{
  readyCopy = ready;
  dispatch_assert_queue_V2(self->_queue);
  if (readyCopy)
  {
    if (!self->_isEnabled)
    {
      v29 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_165;
      }

      v31 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v31, 1, "%s%.30s:%-4d Ignoring link ready event as conductor is disabled", ", "[NRDDeviceConductor linkIsReady:]"", 6298);
      goto LABEL_164;
    }

    state = [readyCopy state];
    v5 = _NRCopyLogObjectForNRUUID();
    if (state == 255)
    {
      v32 = _NRLogIsLevelEnabled();

      if (!v32)
      {
        goto LABEL_165;
      }

      v31 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v31, 16, "%s%.30s:%-4d Ignoring link ready event as link was cancelled %@", ", "[NRDDeviceConductor linkIsReady:]"", 6303, readyCopy);
      goto LABEL_164;
    }

    v6 = _NRLogIsLevelEnabled();

    if (v6)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v7, 1, "%s%.30s:%-4d link is ready: %@", ", "[NRDDeviceConductor linkIsReady:]"", 6308, readyCopy);
    }

    copyShortDescription = [readyCopy copyShortDescription];
    sub_1000EC910(self, 1005, @"%@", v9, v10, v11, v12, v13, copyShortDescription);

    sub_1001033B0(&self->super.isa);
    sub_100104190(self);
    if ([readyCopy suspendWhenReady])
    {
      v14 = _NRCopyLogObjectForNRUUID();
      v15 = _NRLogIsLevelEnabled();

      if (v15)
      {
        v16 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v16, 1, "%s%.30s:%-4d Suspending link as it is ready: %@", ", "[NRDDeviceConductor linkIsReady:]"", 6314, readyCopy);
      }

      [readyCopy setSuspendWhenReady:0];
      [readyCopy suspend];
    }

    selfCopy = self;
    if ([readyCopy type] == 1)
    {
      sub_1000F0BF8(self);
      sub_10003F7D8(self->_quickRelayAgent);
      if (self->_alwaysOnWiFiQueryComplete && !self->_alwaysOnWiFiUpdateSent)
      {
        dispatch_assert_queue_V2(self->_queue);
        if (!self->_isAlwaysReachableOverWiFi)
        {
          self->_alwaysOnWiFiQueryComplete = 1;
          dispatch_assert_queue_V2(self->_queue);
          v17 = sub_100163A30(NRDLocalDevice, self->_nrUUID);
          v18 = v17;
          if (v17)
          {
            v19 = *(v17 + 144);
          }

          else
          {
            v19 = 0;
          }

          v20 = v19;
          v21 = [v20 getDefaultLinkSubtypeForLinkType:1];

          v22 = sub_1000EA2C8(self, 1, v21);
          if (v22)
          {
            if ([v22 state] == 255 || !objc_msgSend(v22, "ikeClassDEstablished"))
            {
              v28 = 0;
            }

            else
            {
              objc_opt_self();
              LOBYTE(v112) = 1;
              v23 = [[NSData alloc] initWithBytes:&v112 length:1];
              v24 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:51401 notifyData:v23];
              objc_initWeak(location, v22);
              v25 = *(v22 + 1311);
              *&v122 = v24;
              v26 = [NSArray arrayWithObjects:&v122 count:1];
              queue = [v22 queue];
              newValue = _NSConcreteStackBlock;
              v118 = 3221225472;
              v119 = sub_1000B6F28;
              v120 = &unk_1001FC018;
              objc_copyWeak(v121, location);
              [v25 sendPrivateNotifies:v26 maxRetries:10 retryIntervalInMilliseconds:10000 callbackQueue:queue callback:&newValue];

              objc_destroyWeak(v121);
              objc_destroyWeak(location);

              v28 = 1;
              self = selfCopy;
            }

            self->_alwaysOnWiFiUpdateSent = v28;
          }
        }
      }

      sub_1000EA900(self);
    }

    else
    {
      if ([readyCopy type] == 2)
      {
        if ([readyCopy subtype] != 101)
        {
          goto LABEL_50;
        }

        v33 = sub_1000EA2C8(self, 2, 102);
        if ([v33 startRequested] && !self->_needsAWDL)
        {
          [v33 cancelWithReason:@"not needed anymore"];
        }

        if (self->_preferWiFiRequest || (self->_effectiveALUAdvice & 4) != 0)
        {
          v34 = self->_linkUpgradeReportWiFiInfra;
          if (v34)
          {
            v34->_flags |= 0x800u;
          }

          if ((self->_effectiveALUAdvice & 4) != 0)
          {
            currentALUAdviceID = self->_currentALUAdviceID;
            v36 = self->_aluMonitor;
            sub_10007A18C(v36, currentALUAdviceID);
          }
        }
      }

      else
      {
        if ([readyCopy type] != 4)
        {
          goto LABEL_50;
        }

        quickRelayAgent = self->_quickRelayAgent;
        if (quickRelayAgent && quickRelayAgent->_state.state != 2)
        {
          quickRelayAgent->_state.state = 2;
          [(NWNetworkAgentRegistration *)quickRelayAgent->_registrationObject updateNetworkAgent:?];
        }

        v38 = objc_alloc_init(NRLinkDirectorRequest);
        v40 = v38;
        if (v38)
        {
          v38->_type = 8;
          v38->_allowsSuspendedLink = 0;
          v38->_requiredLinkType = 1;
        }

        newValue = _NSConcreteStackBlock;
        v118 = 3221225472;
        v119 = sub_1000F38BC;
        v120 = &unk_1001FD3C8;
        v121[0] = self;
        if (v38)
        {
          objc_setProperty_nonatomic_copy(v38, v39, &newValue, 48);
        }

        sub_1000EAA20(self, v40);

        v33 = sub_1000F1BC0(self, 2);
        if ([v33 state] == 8)
        {
          [v33 checkPeerAvailabilityWithForceAggressive:1];
        }
      }
    }

LABEL_50:
    sub_100104434(&self->super.isa);
    v41 = readyCopy;
    dispatch_assert_queue_V2(self->_queue);
    v108 = v41;
    if ([v41 state] == 8)
    {
      if (!self->_isExternalDevice)
      {
        localInterfaceName = [v41 localInterfaceName];
        if ([v41 hasCompanionDatapath])
        {
          [v41 virtualInterface];
          v43 = NEVirtualInterfaceCopyName();

          localInterfaceName = v43;
        }

        self = selfCopy;
        sub_100107A24(selfCopy, localInterfaceName);
        if ([v41 hasCompanionDatapath])
        {
          v44 = sub_10010A0D8(selfCopy, v41);
          v45 = sub_10010A218(selfCopy, v41, v44);
          [v41 setLinkMTU];
          if ([v45 count])
          {
            objc_opt_self();
            if (qword_100229410 != -1)
            {
              dispatch_once(&qword_100229410, &stru_1001FCD98);
            }

            v46 = qword_100229408;
            sub_10015A52C(v46);

            policyIDs = [v41 policyIDs];
            v48 = [[NSMutableArray alloc] initWithArray:policyIDs];
            [v48 addObjectsFromArray:v45];
            [v41 setPolicyIDs:v48];
            v49 = _NRCopyLogObjectForNRUUID();
            v50 = _NRLogIsLevelEnabled();

            if (v50)
            {
              v51 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs(v51, 0, "%s%.30s:%-4d Successfully set policies for link: %@", ", "[NRDDeviceConductor setIPTunnelPolicyForLink:]"", 4466, v41);
            }

            self = selfCopy;
          }

          else
          {
            self = selfCopy;
            v54 = _NRCopyLogObjectForNRUUID();
            v55 = _NRLogIsLevelEnabled();

            if (!v55)
            {
LABEL_67:

              goto LABEL_68;
            }

            policyIDs = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(policyIDs, 0, "%s%.30s:%-4d No new policies added for link: %@", ", "[NRDDeviceConductor setIPTunnelPolicyForLink:]"", 4468, v41);
          }

          goto LABEL_67;
        }

        sub_100107B28(&selfCopy->super.isa, v41);
LABEL_68:
      }
    }

    else
    {
      v52 = _NRCopyLogObjectForNRUUID();
      v53 = _NRLogIsLevelEnabled();

      if (v53)
      {
        localInterfaceName = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(localInterfaceName, 0, "%s%.30s:%-4d Not setting IP tunnel policies because link is not ready %@", ", "[NRDDeviceConductor setIPTunnelPolicyForLink:]"", 4431, v41);
        goto LABEL_68;
      }
    }

    sub_1000F91EC(self, v41, 0);
    sub_1000FFDA8(self);
    sub_100104BB4(self);
    if ([v41 type] == 1 && (sub_1000EC4F0(self, 1) & 1) == 0)
    {
      sub_1000F2BE0(self, 1);
    }

    else
    {
      v56 = _NRCopyLogObjectForNRUUID();
      v57 = _NRLogIsLevelEnabled();

      if (v57)
      {
        v58 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v58, 0, "%s%.30s:%-4d Update WiFi request already present", ", "[NRDDeviceConductor linkIsReady:]"", 6374);
      }
    }

    sub_100106338(self);
    sub_1000F4104(self);
    sub_100100060(self, v41);
    sub_1000F5B40(self, v41);
    sub_1000F5768(self, v41);
    sub_1000F5974(self, v41);
    if (self->_hasPendingImmediateNetInfoUpdateMessage)
    {
      sub_1000FAEC0(self);
    }

    sub_1000FDFE4(self);
    sub_1000FDB08(self);
    isCurrentlyPairing = self->_isCurrentlyPairing;
    self->_isCurrentlyPairing = 0;
    if (isCurrentlyPairing && [v41 subtype] != 103)
    {
      discoveredEndpoint = self->_discoveredEndpoint;
      self->_discoveredEndpoint = 0;

      discoveryClient = self->_discoveryClient;
      if (discoveryClient)
      {
        sub_10014F1DC(discoveryClient);
        v88 = self->_discoveryClient;
        self->_discoveryClient = 0;
      }

      sub_1000ECF74(self, [v41 type], objc_msgSend(v41, "subtype"));
    }

    else if (sub_1000ED8A4(self))
    {
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      obj = self->_availableLinks;
      v60 = [(NSMutableSet *)obj countByEnumeratingWithState:&v122 objects:&newValue count:16];
      if (!v60)
      {
        goto LABEL_122;
      }

      v61 = *v123;
      while (1)
      {
        for (i = 0; i != v60; i = i + 1)
        {
          if (*v123 != v61)
          {
            objc_enumerationMutation(obj);
          }

          v63 = *(*(&v122 + 1) + 8 * i);
          if ([v63 state] != 8)
          {
            v114 = 0u;
            v115 = 0u;
            v112 = 0u;
            v113 = 0u;
            v64 = selfCopy->_availableLinks;
            v65 = [(NSMutableSet *)v64 countByEnumeratingWithState:&v112 objects:location count:16];
            if (v65)
            {
              v66 = *v113;
              do
              {
                for (j = 0; j != v65; j = j + 1)
                {
                  if (*v113 != v66)
                  {
                    objc_enumerationMutation(v64);
                  }

                  v68 = *(*(&v112 + 1) + 8 * j);
                  type = [v68 type];
                  if (type == [v63 type])
                  {
                    subtype = [v68 subtype];
                    if (subtype == [v63 subtype] && objc_msgSend(v68, "state") == 8)
                    {

                      goto LABEL_82;
                    }
                  }
                }

                v65 = [(NSMutableSet *)v64 countByEnumeratingWithState:&v112 objects:location count:16];
              }

              while (v65);
            }

            type2 = [v63 type];
            subtype2 = [v63 subtype];
            if (sub_1000ED8A4(selfCopy))
            {
              if (subtype2 > 103)
              {
                if (subtype2 == 121)
                {
                  LOBYTE(v74) = 8;
                  v73 = selfCopy;
                  goto LABEL_115;
                }

                v73 = selfCopy;
                if (subtype2 == 120)
                {
                  LOBYTE(v74) = 1;
                  goto LABEL_115;
                }

                if (subtype2 == 104)
                {
                  LOBYTE(v74) = 7;
                  goto LABEL_115;
                }
              }

              else
              {
                if (subtype2 == 101)
                {
                  LOBYTE(v74) = 2;
                  v73 = selfCopy;
                  goto LABEL_115;
                }

                v73 = selfCopy;
                if (subtype2 == 102)
                {
                  LOBYTE(v74) = 5;
                  goto LABEL_115;
                }

                if (subtype2 == 103)
                {
                  LOBYTE(v74) = 6;
LABEL_115:
                  v78 = v73->_discoveryClient;
                  if (v78)
                  {
                    v79 = *(v78 + 104);
                    v80 = [NSNumber numberWithUnsignedChar:v74];
                    [v79 removeObject:v80];

                    if (*(v78 + 19) == 1 && *(v78 + 20) == 1)
                    {
                      v81 = *(v78 + 168);
                      v82 = [NSNumber numberWithUnsignedChar:v74];
                      v83 = [v81 objectForKeyedSubscript:v82];

                      if (v83)
                      {
                        nw_browser_cancel(v83);
                        v84 = *(v78 + 168);
                        v85 = [NSNumber numberWithUnsignedChar:v74];
                        [v84 setObject:0 forKeyedSubscript:v85];
                      }

                      sub_10015312C(v78, v74);
                    }
                  }

                  continue;
                }
              }

              if (type2 <= 5)
              {
                v74 = 0x40300020100uLL >> (8 * (type2 & 0x1F));
                if (v74)
                {
                  goto LABEL_115;
                }
              }

              v75 = _NRCopyLogObjectForNRUUID();
              v76 = _NRLogIsLevelEnabled();

              if (v76)
              {
                v77 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs(v77, 16, "%s%.30s:%-4d invalid link type/subtype %u/%u", ", "[NRDDeviceConductor stopDiscoveryOverLinkType:subtype:]"", 8197, type2, subtype2);
              }
            }
          }

LABEL_82:
          ;
        }

        v60 = [(NSMutableSet *)obj countByEnumeratingWithState:&v122 objects:&newValue count:16];
        if (!v60)
        {
LABEL_122:

          self = selfCopy;
          sub_1001067E0(selfCopy);
          v41 = v108;
          if (!selfCopy)
          {
            goto LABEL_144;
          }

          goto LABEL_128;
        }
      }
    }

    sub_1001067E0(self);
LABEL_128:
    if (self->_isProxyClient)
    {
      v89 = sub_100163A30(NRDLocalDevice, self->_nrUUID);
      v90 = v89;
      if (v89)
      {
        v91 = *(v89 + 144);
      }

      else
      {
        v91 = 0;
      }

      v92 = v91;
      usesTLS = [v92 usesTLS];

      if (usesTLS)
      {
        objc_opt_self();
        if (qword_1002290C0 != -1)
        {
          dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
        }

        v94 = qword_1002290B8;
        v95 = v94;
        if (v94)
        {
          v96 = *(v94 + 13);
        }

        else
        {
          v96 = 0;
        }

        v97 = v96;

        if (v97 && [(NRLink *)self->_primaryLink type]!= 4)
        {
          v98 = sub_10002A50C([NRLinkDirectorMessage alloc], self->_nrUUID);
          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v99 = qword_1002290B8;
          v100 = v99;
          if (v99)
          {
            v101 = *(v99 + 13);
          }

          else
          {
            v101 = 0;
          }

          v102 = v101;
          sub_10002AB38(v98, 23, v102);

          sub_10002C0E8(v98);
        }
      }

      v41 = v108;
    }

LABEL_144:
    if (self->_hasPendingClassCASNameResolveRequest && [v41 ikeClassCEstablished])
    {
      sub_1000E8C70(self, 0, 1);
      self->_hasPendingClassCASNameResolveRequest = 0;
    }

    v31 = self->_discoveryClient;
    type3 = [v41 type];
    subtype3 = [v41 subtype];
    if (subtype3 > 103)
    {
      switch(subtype3)
      {
        case 'y':
          LOBYTE(v105) = 8;
          goto LABEL_163;
        case 'x':
          LOBYTE(v105) = 1;
          goto LABEL_163;
        case 'h':
          LOBYTE(v105) = 7;
          goto LABEL_163;
      }
    }

    else
    {
      switch(subtype3)
      {
        case 'e':
          LOBYTE(v105) = 2;
          goto LABEL_163;
        case 'f':
          LOBYTE(v105) = 5;
          goto LABEL_163;
        case 'g':
          LOBYTE(v105) = 6;
LABEL_163:
          sub_10014F754(v31, v105);
LABEL_164:

          goto LABEL_165;
      }
    }

    if (type3 > 5)
    {
      LOBYTE(v105) = 0;
    }

    else
    {
      v105 = 0x40300020100uLL >> (8 * (type3 & 0x1F));
    }

    goto LABEL_163;
  }

  v106 = sub_1000E83DC();
  v107 = _NRLogIsLevelEnabled();

  if (v107)
  {
    v31 = sub_1000E83DC();
    _NRLogWithArgs(v31, 17, "%s called with null link", "[NRDDeviceConductor linkIsReady:]");
    goto LABEL_164;
  }

LABEL_165:
}

- (void)linkIsAvailable:(id)available
{
  availableCopy = available;
  dispatch_assert_queue_V2(self->_queue);
  if (availableCopy)
  {
    if (self->_isEnabled)
    {
      state = [availableCopy state];
      v6 = _NRCopyLogObjectForNRUUID();
      if (state != 255)
      {
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v8 = self->_nrUUID;
          v9 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v9, 1, "%s%.30s:%-4d link is available: %@", ", "[NRDDeviceConductor linkIsAvailable:]"", 6068, availableCopy);
        }

        copyShortDescription = [availableCopy copyShortDescription];
        sub_1000059A8(self->_nrUUID, 1004, 0, copyShortDescription);

        [(NSMutableSet *)self->_availableLinks addObject:availableCopy];
        [availableCopy setPolicyIdentifierString:self->_policyIdentifier];
        [availableCopy setIsCompanionLink:self->_isCompanionLink];
        sub_1000EF110(self, availableCopy);
        objc_opt_self();
        if (qword_1002290C0 != -1)
        {
          dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
        }

        v11 = qword_1002290B8;
        if (v11 && v11[12] == 1)
        {
          isCompanionLink = self->_isCompanionLink;

          if (isCompanionLink)
          {
            if (qword_100229160 != -1)
            {
              dispatch_once(&qword_100229160, &stru_1001FBC40);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_100229160 != -1)
              {
                dispatch_once(&qword_100229160, &stru_1001FBC40);
              }

              _NRLogWithArgs(qword_100229158, 0, "%s%.30s:%-4d not starting link due to pending companion APL toggle", ", "[NRDDeviceConductor linkIsAvailable:]"", 6078);
            }

            goto LABEL_61;
          }
        }

        else
        {
        }

        type = [availableCopy type];
        if (type > 2)
        {
          if (type != 3)
          {
            if (type != 4)
            {
              if (type != 5)
              {
                goto LABEL_60;
              }

              goto LABEL_59;
            }

            sub_1000F35C8(self);
LABEL_60:
            sub_100106338(self);
            sub_1000F4104(self);
            goto LABEL_61;
          }

          v22 = _NRCopyLogObjectForNRUUID();
          v23 = _NRLogIsLevelEnabled();

          if (!v23)
          {
            goto LABEL_60;
          }

          v24 = self->_nrUUID;
          v25 = _NRCopyLogObjectForNRUUID();
          [availableCopy type];

          StringFromNRLinkType = createStringFromNRLinkType();
          _NRLogWithArgs(v25, 17, "%@ link not supported yet", StringFromNRLinkType);
LABEL_39:

          goto LABEL_60;
        }

        if (type != 1)
        {
          if (type == 2)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v53 = sub_1000BA648(NRLinkDirector);
              if (!v53 || (v54 = v53[8], v53, (v54 & 1) == 0))
              {
                v55 = _NRCopyLogObjectForNRUUID();
                v56 = _NRLogIsLevelEnabled();

                if (!v56)
                {
                  goto LABEL_60;
                }

                StringFromNRLinkType = self->_nrUUID;
                v25 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs(v25, 17, "Bad link %@", availableCopy);
                goto LABEL_39;
              }
            }

            v20 = availableCopy;
            if ([v20 subtype] == 101)
            {
              sub_1000F2BE0(self, 0);
            }

            if (self->_isPreferWiFiProvider && !self->_isCoalescingLinkUpgradeRequest)
            {
              if (self->_supportsNAN || self->_supportsAWDL)
              {
                v21 = 5000000000;
              }

              else
              {
                v21 = 1000000000;
              }

              self->_isCoalescingLinkUpgradeRequest = 1;
              v39 = dispatch_time(0x8000000000000000, v21);
              queue = self->_queue;
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_10010FA5C;
              block[3] = &unk_1001FD3C8;
              block[4] = self;
              dispatch_after(v39, queue, block);
            }

            if ([v20 subtype] == 102)
            {
              if (self->_isCompanionLink)
              {
                sub_1000F03C0(self);
              }

              else
              {
                sub_1000F1A9C(self);
              }

              goto LABEL_67;
            }

            if ([v20 subtype] == 103 || objc_msgSend(v20, "subtype") == 104)
            {
              goto LABEL_70;
            }

            if ([v20 subtype] != 101)
            {
              v46 = _NRCopyLogObjectForNRUUID();
              v47 = _NRLogIsLevelEnabled();

              if (v47)
              {
                v48 = self->_nrUUID;
                v49 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs(v49, 17, "unsupported link subtype %@", v20);

                goto LABEL_60;
              }

              goto LABEL_67;
            }

            if (self->_isAlwaysReachableOverWiFi || !self->_isCompanionLink)
            {
LABEL_70:
              [v20 start];

              goto LABEL_60;
            }

            v41 = sub_1000BA648(NRLinkDirector);
            if (v41)
            {
              v42 = v41[8];

              if (v42 == 1)
              {
                v43 = _NRCopyLogObjectForNRUUID();
                v44 = _NRLogIsLevelEnabled();

                if (v44)
                {
                  v45 = _NRCopyLogObjectForNRUUID();
                  _NRLogWithArgs(v45, 0, "%s%.30s:%-4d Starting link for fixed interface mode", ", "[NRDDeviceConductor linkIsAvailable:]"", 6230);
                }

                goto LABEL_70;
              }
            }

            if (self->_pendingPreferWiFiRequest || self->_preferWiFiRequest || self->_bringUpWiFiImmediately)
            {
              v57 = sub_1000EC630(self);
              v58 = sub_10017E984(v57, self->_nrUUID);

              if (v58)
              {
                sub_1000F03C0(self);
              }

              else
              {
                v59 = _NRCopyLogObjectForNRUUID();
                v60 = _NRLogIsLevelEnabled();

                if (v60)
                {
                  v61 = _NRCopyLogObjectForNRUUID();
                  _NRLogWithArgs(v61, 1, "%s%.30s:%-4d Enable WiFi without peer address. Ignoring availability", ", "[NRDDeviceConductor linkIsAvailable:]"", 6254);
                }
              }
            }

            else
            {
              v62 = _NRCopyLogObjectForNRUUID();
              v63 = _NRLogIsLevelEnabled();

              if (!v63)
              {
LABEL_67:

                goto LABEL_60;
              }

              v58 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs(v58, 1, "%s%.30s:%-4d Neither do we have a prefer Wi-Fi request, nor do we need to bring up Wi-Fi immediately. Ignoring availability", ", "[NRDDeviceConductor linkIsAvailable:]"", 6248);
            }

            goto LABEL_67;
          }

          if (type)
          {
            goto LABEL_60;
          }

          v29 = sub_1000E83DC();
          v30 = _NRLogIsLevelEnabled();

          if (v30)
          {
            v31 = sub_1000E83DC();
            _NRLogWithArgs(v31, 16, "%s%.30s:%-4d ABORTING: %@ is available, but has no type", ", "[NRDDeviceConductor linkIsAvailable:]"", 6284, availableCopy);
          }

          self = _os_log_pack_size();
          v27 = block - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v32 = __error();
          v33 = _os_log_pack_fill(v27, self, *v32, &_mh_execute_header, "%{public}s %@ is available, but has no type");
          *v33 = 136446466;
          *(v33 + 4) = "[NRDDeviceConductor linkIsAvailable:]";
          *(v33 + 12) = 2112;
          *(v33 + 14) = availableCopy;
          sub_1000E83DC();
          _NRLogAbortWithPack();
LABEL_51:

          goto LABEL_57;
        }

        if (!self->_isPreferWiFiProvider)
        {
          goto LABEL_57;
        }

        if (self->_preferWiFiRequest)
        {
          [availableCopy setSuspendWhenReady:1];
        }

        v27 = sub_100180AC4(NRDKeyManager);
        if (!sub_10018165C(v27))
        {
          goto LABEL_51;
        }

        latestPreferWiFiRequestType = self->_latestPreferWiFiRequestType;
        if (latestPreferWiFiRequestType == 2)
        {
        }

        else
        {

          if (latestPreferWiFiRequestType != 3)
          {
            goto LABEL_57;
          }
        }

        if (self->_latestPreferWiFiRequestType == 2)
        {
          v34 = sub_1000EC630(self);
          v35 = sub_10017F64C(v34);
        }

        else
        {
          v35 = 0;
        }

        v65[0] = _NSConcreteStackBlock;
        v65[1] = 3221225472;
        v65[2] = sub_10010F970;
        v65[3] = &unk_1001FBA98;
        v65[4] = self;
        v66 = v35;
        sub_1000EF670(self, v35, 0, 0, 1, v65);
LABEL_57:
        v36 = _NRCopyLogObjectForNRUUID();
        v37 = _NRLogIsLevelEnabled();

        if (v37)
        {
          v38 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v38, 1, "%s%.30s:%-4d Starting the Bluetooth link", ", "[NRDDeviceConductor linkIsAvailable:]"", 6126);
        }

LABEL_59:
        [availableCopy start];
        goto LABEL_60;
      }

      v16 = _NRLogIsLevelEnabled();

      if (v16)
      {
        v17 = self->_nrUUID;
        v18 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v18, 16, "%s%.30s:%-4d Ignoring link availability event as link was cancelled %@", ", "[NRDDeviceConductor linkIsAvailable:]"", 6063, availableCopy);
      }
    }

    else
    {
      v13 = _NRCopyLogObjectForNRUUID();
      v14 = _NRLogIsLevelEnabled();

      if (v14)
      {
        v15 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v15, 1, "%s%.30s:%-4d Ignoring link availability event as conductor is disabled", ", "[NRDDeviceConductor linkIsAvailable:]"", 6058);
      }
    }
  }

  else
  {
    v50 = sub_1000E83DC();
    v51 = _NRLogIsLevelEnabled();

    if (v51)
    {
      v52 = sub_1000E83DC();
      _NRLogWithArgs(v52, 17, "%s called with null link", "[NRDDeviceConductor linkIsAvailable:]");
    }
  }

LABEL_61:
}

- (void)didStopTrackingAllNOIs:(id)is
{
  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v6 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v6, 0, "%s%.30s:%-4d AutoLinkUpgrade: Re-submitting start recommendation", ", "[NRDDeviceConductor didStopTrackingAllNOIs:]"", 5668);
  }

  if (self)
  {
    aluMonitor = self->_aluMonitor;
    if (aluMonitor && ![(NRAutoLinkUpgradeMonitor *)self->_aluMonitor cancelled])
    {
      [(NRAutoLinkUpgradeMonitor *)aluMonitor setCancelled:1];
      [(NRAutoLinkUpgradeMonitor *)aluMonitor setUpdateBlock:0];
      [(NRAutoLinkUpgradeMonitor *)aluMonitor invalidateAggregateStatsTimerSource];
      [(NRAutoLinkUpgradeMonitor *)aluMonitor reportEvent:30003];
    }

    linkUpgradeReportWiFiInfra = self->_linkUpgradeReportWiFiInfra;
    self->_linkUpgradeReportWiFiInfra = 0;

    linkUpgradeReportForBTClassic = self->_linkUpgradeReportForBTClassic;
    self->_linkUpgradeReportForBTClassic = 0;

    *&self->_effectiveALUAdvice = 0u;

    sub_10010FE38(self);
  }
}

- (void)didStartTrackingNOI:(id)i
{
  iCopy = i;
  if (self && self->_isEnabled && self->_aluSupported)
  {
    v24 = iCopy;
    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v7, 0, "%s%.30s:%-4d AutoLinkUpgrade: Submitting start recommendation", ", "[NRDDeviceConductor createALUMonitorIfNeeded]"", 5863);
    }

    v8 = [NRAutoLinkUpgradeMonitor alloc];
    nrUUID = self->_nrUUID;
    v10 = self->_queue;
    v11 = sub_100079FE8(&v8->super.isa, v10, nrUUID);

    v12 = self->_aluMonitor;
    if (!v12)
    {
      goto LABEL_16;
    }

    v13 = v12;
    v14 = self->_aluMonitor;
    v15 = v14;
    if (v14 && (v16 = v14->_lastReceivedAdviceID) != 0)
    {
      v17 = v16;
      aluMonitor = self->_aluMonitor;
      if (aluMonitor)
      {
        aluMonitor = aluMonitor->_lastReceivedAdviceID;
      }

      v19 = aluMonitor;
      unsignedLongLongValue = [(NRAutoLinkUpgradeMonitor *)v19 unsignedLongLongValue];

      if (!unsignedLongLongValue)
      {
        goto LABEL_16;
      }

      v21 = _NRCopyLogObjectForNRUUID();
      v22 = _NRLogIsLevelEnabled();

      if (!v22)
      {
        goto LABEL_16;
      }

      v13 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v13, 1, "%s%.30s:%-4d AutoLinkUpgrade: sending last received ALU advice to symptomsd", ", "[NRDDeviceConductor createALUMonitorIfNeeded]"", 5942);
    }

    else
    {
    }

LABEL_16:
    v23 = self->_aluMonitor;
    self->_aluMonitor = v11;

    iCopy = v24;
  }
}

- (void)didUpdateDNSProxyState:(id)state state:(unsigned __int8)a4
{
  v4 = a4;
  stateCopy = state;
  if (!stateCopy)
  {
    goto LABEL_26;
  }

  v7 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v9 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v9, 0, "%s%.30s:%-4d received state update for %@ state: %d", ", "[NRDDeviceConductor didUpdateDNSProxyState:state:]"", 5233, stateCopy, v4);
  }

  if (v4 != 4 && v4 != 2)
  {
    goto LABEL_26;
  }

  if (!self)
  {
    v12 = 0;
    discoveryProxyClient = 0;
    goto LABEL_11;
  }

  v10 = self->_dnsProxyServer;
  if (v10 == stateCopy)
  {

LABEL_18:
    v17 = objc_alloc_init(NSMutableData);
    sub_100110508(self, stateCopy, v17);
    v18 = sub_10002A5C4([NRLinkDirectorMessage alloc], self->_nrUUID);
    v19 = v18;
    if (self->_dnsProxyServer == stateCopy)
    {
      sub_10002AB38(v18, 17, v17);
      if (v4 != 4)
      {
LABEL_25:
        sub_10002C0E8(v19);

        goto LABEL_26;
      }

      p_dnsProxyServer = &self->_dnsProxyServer;
    }

    else
    {
      if (self->_discoveryProxyServer != stateCopy)
      {
        goto LABEL_25;
      }

      sub_10002AB38(v18, 19, v17);
      if (v4 != 4)
      {
        goto LABEL_25;
      }

      p_dnsProxyServer = &self->_discoveryProxyServer;
    }

    [*p_dnsProxyServer cancel];
    v21 = *p_dnsProxyServer;
    *p_dnsProxyServer = 0;

    goto LABEL_25;
  }

  discoveryProxyServer = self->_discoveryProxyServer;

  if (discoveryProxyServer == stateCopy)
  {
    goto LABEL_18;
  }

  v12 = self->_dnsProxyClient;
  if (v12 != stateCopy)
  {
    discoveryProxyClient = self->_discoveryProxyClient;
LABEL_11:

    if (discoveryProxyClient != stateCopy)
    {
      goto LABEL_26;
    }

    if (v4 != 2)
    {
LABEL_13:
      v14 = [NRLinkDirectorMessage alloc];
      if (self)
      {
        v15 = sub_10002A5C4(&v14->super.isa, self->_nrUUID);
        v16 = v15;
        if (self->_dnsProxyClient == stateCopy)
        {
          sub_10002AFC8(v15, 16, 0);
          sub_100110688(self);
        }

        else if (self->_discoveryProxyClient == stateCopy)
        {
          sub_10002AFC8(v15, 18, 0);
          sub_10011069C(self);
        }
      }

      else
      {
        v16 = sub_10002A5C4(&v14->super.isa, 0);
      }

      sub_10002C0E8(v16);
      [(NRDiscoveryProxyServer *)stateCopy cancel];
LABEL_44:

      goto LABEL_26;
    }

    goto LABEL_28;
  }

  if (v4 != 2)
  {
    goto LABEL_13;
  }

LABEL_28:
  if (self && self->_dnsProxyClient == stateCopy)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = self->_availableLinks;
    v22 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v32;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(v16);
          }

          v28 = *(*(&v31 + 1) + 8 * i);
          if ([v28 ikeClassDEstablished])
          {
            v29 = self->_dnsProxyClient;
            v30 = v29;
            if (v29)
            {
              serverEndpoint = v29->super._serverEndpoint;
            }

            else
            {
              serverEndpoint = 0;
            }

            v27 = serverEndpoint;
            [v28 publishDNSConfig:v27];
          }
        }

        v23 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v23);
    }

    goto LABEL_44;
  }

LABEL_26:
}

- (void)processAppStateChanged:(id)changed
{
  changedCopy = changed;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100110754;
  v7[3] = &unk_1001FD060;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(queue, v7);
}

- (void)dealloc
{
  v3 = [(NRDDeviceConductor *)self description];
  if (self)
  {
    sub_1000059A8(self->_nrUUID, 1503, 0, v3);
  }

  v4.receiver = self;
  v4.super_class = NRDDeviceConductor;
  [(NRDDeviceConductor *)&v4 dealloc];
}

- (NSString)description
{
  v3 = [NSString alloc];
  if (self)
  {
    nrUUID = self->_nrUUID;
  }

  else
  {
    nrUUID = 0;
  }

  uUIDString = [(NSUUID *)nrUUID UUIDString];
  v6 = [v3 initWithFormat:@"Conductor[%@]", uUIDString];

  return v6;
}

@end