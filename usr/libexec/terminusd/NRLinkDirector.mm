@interface NRLinkDirector
- (BOOL)perpetualStandaloneMeadowEnabledForNRUUID:(id)d;
- (BOOL)preferWiFiP2PRequestUpdated;
- (BOOL)preferWiFiRequestAvailable;
- (BOOL)preferWiFiRequestUnavailable;
- (void)apsIsConnected:(BOOL)connected;
- (void)deviceHasPhoneCallRelayRequest:(BOOL)request;
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
@end

@implementation NRLinkDirector

- (BOOL)perpetualStandaloneMeadowEnabledForNRUUID:(id)d
{
  dCopy = d;
  if (_NRIsAppleInternal())
  {
    if (self)
    {
      conductors = self->_conductors;
    }

    else
    {
      conductors = 0;
    }

    v6 = [(NSMutableDictionary *)conductors objectForKeyedSubscript:dCopy];
    if (v6)
    {
      v7 = v6[11];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (void)localAWDLEndpointChanged:(id)changed
{
  changedCopy = changed;
  if (self)
  {
    dispatch_assert_queue_V2(self->_queue);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    conductors = self->_conductors;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    conductors = 0;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
  }

  v6 = conductors;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    if (self)
    {
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(NSMutableDictionary *)self->_conductors objectForKeyedSubscript:*(*(&v14 + 1) + 8 * v10), v14];
          [v11 localAWDLEndpointChanged:changedCopy];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    else
    {
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v13 = [0 objectForKeyedSubscript:{*(*(&v14 + 1) + 8 * v12), v14}];
          [v13 localAWDLEndpointChanged:changedCopy];

          v12 = v12 + 1;
        }

        while (v8 != v12);
        v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

- (void)directToCloudRequestUnavailable
{
  if (self)
  {
    dispatch_assert_queue_V2(self->_queue);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    conductors = self->_conductors;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    conductors = 0;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
  }

  v4 = conductors;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    if (self)
    {
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [(NSMutableDictionary *)self->_conductors objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i), v12];
          [v9 directToCloudRequestUnavailable];
        }

        v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    else
    {
      do
      {
        for (j = 0; j != v6; j = j + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v11 = [0 objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * j), v12}];
          [v11 directToCloudRequestUnavailable];
        }

        v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

- (void)directToCloudRequestAvailable
{
  if (self)
  {
    dispatch_assert_queue_V2(self->_queue);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    conductors = self->_conductors;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    conductors = 0;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
  }

  v4 = conductors;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    if (self)
    {
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [(NSMutableDictionary *)self->_conductors objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i), v12];
          [v9 directToCloudRequestAvailable];
        }

        v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    else
    {
      do
      {
        for (j = 0; j != v6; j = j + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v11 = [0 objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * j), v12}];
          [v11 directToCloudRequestAvailable];
        }

        v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

- (BOOL)preferWiFiP2PRequestUpdated
{
  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  if (self)
  {
    conductors = self->_conductors;
  }

  else
  {
    conductors = 0;
  }

  v5 = conductors;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = 1;
    if (self)
    {
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [(NSMutableDictionary *)self->_conductors objectForKeyedSubscript:*(*(&v17 + 1) + 8 * i), v17];
          preferWiFiP2PRequestUpdated = [v11 preferWiFiP2PRequestUpdated];

          v9 &= preferWiFiP2PRequestUpdated;
        }

        v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    else
    {
      do
      {
        for (j = 0; j != v7; j = j + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v15 = [0 objectForKeyedSubscript:{*(*(&v17 + 1) + 8 * j), v17}];
          preferWiFiP2PRequestUpdated2 = [v15 preferWiFiP2PRequestUpdated];

          v9 &= preferWiFiP2PRequestUpdated2;
        }

        v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)preferWiFiRequestUnavailable
{
  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  if (self)
  {
    conductors = self->_conductors;
  }

  else
  {
    conductors = 0;
  }

  v5 = conductors;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = 1;
    if (self)
    {
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [(NSMutableDictionary *)self->_conductors objectForKeyedSubscript:*(*(&v17 + 1) + 8 * i), v17];
          preferWiFiRequestUnavailable = [v11 preferWiFiRequestUnavailable];

          v9 &= preferWiFiRequestUnavailable;
        }

        v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    else
    {
      do
      {
        for (j = 0; j != v7; j = j + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v15 = [0 objectForKeyedSubscript:{*(*(&v17 + 1) + 8 * j), v17}];
          preferWiFiRequestUnavailable2 = [v15 preferWiFiRequestUnavailable];

          v9 &= preferWiFiRequestUnavailable2;
        }

        v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)preferWiFiRequestAvailable
{
  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  if (self)
  {
    conductors = self->_conductors;
  }

  else
  {
    conductors = 0;
  }

  v5 = conductors;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = 1;
    if (self)
    {
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [(NSMutableDictionary *)self->_conductors objectForKeyedSubscript:*(*(&v17 + 1) + 8 * i), v17];
          preferWiFiRequestAvailable = [v11 preferWiFiRequestAvailable];

          v9 &= preferWiFiRequestAvailable;
        }

        v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    else
    {
      do
      {
        for (j = 0; j != v7; j = j + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v15 = [0 objectForKeyedSubscript:{*(*(&v17 + 1) + 8 * j), v17}];
          preferWiFiRequestAvailable2 = [v15 preferWiFiRequestAvailable];

          v9 &= preferWiFiRequestAvailable2;
        }

        v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)apsIsConnected:(BOOL)connected
{
  connectedCopy = connected;
  v5 = sub_100003490();
  dispatch_assert_queue_V2(v5);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  if (self)
  {
    conductors = self->_conductors;
  }

  else
  {
    conductors = 0;
  }

  v7 = conductors;
  v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    if (self)
    {
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [(NSMutableDictionary *)self->_conductors objectForKeyedSubscript:*(*(&v15 + 1) + 8 * v11), v15];
          [v12 apsIsConnected:connectedCopy];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    else
    {
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v14 = [0 objectForKeyedSubscript:{*(*(&v15 + 1) + 8 * v13), v15}];
          [v14 apsIsConnected:connectedCopy];

          v13 = v13 + 1;
        }

        while (v9 != v13);
        v9 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }
}

- (void)deviceHasPhoneCallRelayRequest:(BOOL)request
{
  requestCopy = request;
  v5 = sub_100003490();
  dispatch_assert_queue_V2(v5);

  if (requestCopy)
  {
    if (self)
    {
      bluetoothManager = self->_bluetoothManager;
      if (bluetoothManager)
      {
        v7 = bluetoothManager->super._queue;
        dispatch_assert_queue_V2(v7);

        if (bluetoothManager->_pipeManager)
        {
          if (bluetoothManager->_hasEnabledDevicesUsingClientServer)
          {
            v8 = sub_100037B38(bluetoothManager, 3, 0);
            if (v8)
            {
              v8->_flags |= 4u;
            }
          }

          if (bluetoothManager->_hasEnabledDevicesUsingP2P)
          {
            v9 = sub_100037B38(bluetoothManager, 3, 1);
            if (v9)
            {
              v9->_flags |= 4u;
            }
          }

          sub_100036770(bluetoothManager, 3, 0);
          sub_100036770(bluetoothManager, 3, 1);
        }
      }

LABEL_22:
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      conductors = self->_conductors;
      goto LABEL_23;
    }
  }

  else if (self)
  {
    v10 = self->_bluetoothManager;
    if (v10)
    {
      v11 = v10->super._queue;
      dispatch_assert_queue_V2(v11);

      if (v10->_pipeManager)
      {
        v12 = v10->_pipeRegistrations;
        v13 = [(NSMutableDictionary *)v12 objectForKeyedSubscript:&off_100209AD0];
        if (v13)
        {
          v13[9] &= ~4u;
        }

        v14 = v10->_p2pPipeRegistrations;
        v15 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:&off_100209AD0];
        if (v15)
        {
          v15[9] &= ~4u;
        }

        sub_10002F840(v10, 3, 0);
        sub_10002F840(v10, 3, 1);
      }
    }

    goto LABEL_22;
  }

  conductors = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
LABEL_23:
  v17 = conductors;
  v18 = [(NSMutableDictionary *)v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    if (self)
    {
      do
      {
        v21 = 0;
        do
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [(NSMutableDictionary *)self->_conductors objectForKeyedSubscript:*(*(&v25 + 1) + 8 * v21), v25];
          [v22 deviceHasPhoneCallRelayRequest:requestCopy];

          v21 = v21 + 1;
        }

        while (v19 != v21);
        v19 = [(NSMutableDictionary *)v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v19);
    }

    else
    {
      do
      {
        v23 = 0;
        do
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v24 = [0 objectForKeyedSubscript:{*(*(&v25 + 1) + 8 * v23), v25}];
          [v24 deviceHasPhoneCallRelayRequest:requestCopy];

          v23 = v23 + 1;
        }

        while (v19 != v23);
        v19 = [(NSMutableDictionary *)v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v19);
    }
  }
}

- (void)peerDidUnpairBluetooth:(BOOL)bluetooth nrUUID:(id)d
{
  bluetoothCopy = bluetooth;
  dCopy = d;
  v6 = sub_100003490();
  dispatch_assert_queue_V2(v6);

  if (self)
  {
    conductors = self->_conductors;
  }

  else
  {
    conductors = 0;
  }

  v8 = [(NSMutableDictionary *)conductors objectForKeyedSubscript:dCopy];
  v9 = v8;
  if (v8)
  {
    [v8 peerDidUnpairBluetooth:bluetoothCopy nrUUID:dCopy];
  }

  else
  {
    if (bluetoothCopy)
    {
      v10 = "";
    }

    else
    {
      v10 = "not ";
    }

    uUIDString = [dCopy UUIDString];
    sub_1000B926C(self, 1014, @"peer did%s unregister %@", v11, v12, v13, v14, v15, v10);
  }
}

- (void)pipeDidConnectForNRUUID:(BOOL)d nrUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v6 = sub_100003490();
  dispatch_assert_queue_V2(v6);

  if (self)
  {
    conductors = self->_conductors;
  }

  else
  {
    conductors = 0;
  }

  v8 = [(NSMutableDictionary *)conductors objectForKeyedSubscript:iDCopy];
  v9 = v8;
  if (v8)
  {
    [v8 pipeDidConnectForNRUUID:dCopy nrUUID:iDCopy];
  }

  else
  {
    if (dCopy)
    {
      v10 = "";
    }

    else
    {
      v10 = " not";
    }

    uUIDString = [iDCopy UUIDString];
    sub_1000B926C(self, 1014, @"peer%s nearby %@", v11, v12, v13, v14, v15, v10);
  }
}

- (void)linkPeerIsAsleep:(id)asleep isAsleep:(BOOL)isAsleep
{
  isAsleepCopy = isAsleep;
  asleepCopy = asleep;
  v6 = sub_100003490();
  dispatch_assert_queue_V2(v6);

  if (asleepCopy)
  {
    if (self)
    {
      conductors = self->_conductors;
    }

    else
    {
      conductors = 0;
    }

    v8 = conductors;
    nrUUID = [asleepCopy nrUUID];
    v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:nrUUID];

    if (v10)
    {
      [v10 linkPeerIsAsleep:asleepCopy isAsleep:isAsleepCopy];
    }

    else
    {
      if (isAsleepCopy)
      {
        v11 = "";
      }

      else
      {
        v11 = " not";
      }

      nrUUID2 = [asleepCopy nrUUID];
      uUIDString = [nrUUID2 UUIDString];
      sub_1000B926C(self, 1014, @"peer%s asleep %@ %@", v13, v14, v15, v16, v17, v11);

      v10 = 0;
    }

    goto LABEL_10;
  }

  v18 = sub_1000B9544();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v10 = sub_1000B9544();
    _NRLogWithArgs(v10, 17, "%s called with null link", "[NRLinkDirector linkPeerIsAsleep:isAsleep:]");
LABEL_10:
  }
}

- (void)linkDidReceiveData:(id)data data:(id)a4
{
  dataCopy = data;
  v6 = a4;
  v7 = sub_100003490();
  dispatch_assert_queue_V2(v7);

  if (dataCopy)
  {
    if (v6)
    {
      if (self)
      {
        conductors = self->_conductors;
      }

      else
      {
        conductors = 0;
      }

      v9 = conductors;
      nrUUID = [dataCopy nrUUID];
      v11 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:nrUUID];

      if (v11)
      {
        [v11 linkDidReceiveData:dataCopy data:v6];
      }

      else
      {
        nrUUID2 = [dataCopy nrUUID];
        uUIDString = [nrUUID2 UUIDString];
        sub_1000B926C(self, 1014, @"linkDidReceiveData %@ %@", v13, v14, v15, v16, v17, dataCopy);

        v11 = 0;
      }

      goto LABEL_8;
    }

    v20 = sub_1000B9544();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = sub_1000B9544();
      _NRLogWithArgs(v11, 17, "%s called with null data");
      goto LABEL_8;
    }
  }

  else
  {
    v18 = sub_1000B9544();
    v19 = _NRLogIsLevelEnabled();

    if (v19)
    {
      v11 = sub_1000B9544();
      _NRLogWithArgs(v11, 17, "%s called with null link");
LABEL_8:
    }
  }
}

- (void)linkIsUnavailable:(id)unavailable
{
  unavailableCopy = unavailable;
  v4 = sub_100003490();
  dispatch_assert_queue_V2(v4);

  if (unavailableCopy)
  {
    if (self)
    {
      conductors = self->_conductors;
    }

    else
    {
      conductors = 0;
    }

    v6 = conductors;
    nrUUID = [unavailableCopy nrUUID];
    v8 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:nrUUID];

    if (v8)
    {
      [v8 linkIsUnavailable:unavailableCopy];
      sub_1000B98D8(self);
    }

    else
    {
      nrUUID2 = [unavailableCopy nrUUID];
      uUIDString = [nrUUID2 UUIDString];
      sub_1000B926C(self, 1014, @"linkUnavailable %@ %@", v10, v11, v12, v13, v14, unavailableCopy);

      v8 = 0;
    }

    goto LABEL_7;
  }

  v15 = sub_1000B9544();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v8 = sub_1000B9544();
    _NRLogWithArgs(v8, 17, "%s called with null link", "[NRLinkDirector linkIsUnavailable:]");
LABEL_7:
  }
}

- (void)linkIsSuspended:(id)suspended
{
  suspendedCopy = suspended;
  v4 = sub_100003490();
  dispatch_assert_queue_V2(v4);

  if (suspendedCopy)
  {
    if (self)
    {
      conductors = self->_conductors;
    }

    else
    {
      conductors = 0;
    }

    v6 = conductors;
    nrUUID = [suspendedCopy nrUUID];
    v8 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:nrUUID];

    if (v8)
    {
      [v8 linkIsSuspended:suspendedCopy];
      sub_1000B98D8(self);
    }

    else
    {
      nrUUID2 = [suspendedCopy nrUUID];
      uUIDString = [nrUUID2 UUIDString];
      sub_1000B926C(self, 1014, @"linkSuspended %@ %@", v10, v11, v12, v13, v14, suspendedCopy);

      v8 = 0;
    }

    goto LABEL_7;
  }

  v15 = sub_1000B9544();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v8 = sub_1000B9544();
    _NRLogWithArgs(v8, 17, "%s called with null link", "[NRLinkDirector linkIsSuspended:]");
LABEL_7:
  }
}

- (void)linkIsReady:(id)ready
{
  readyCopy = ready;
  v4 = sub_100003490();
  dispatch_assert_queue_V2(v4);

  if (readyCopy)
  {
    if (self)
    {
      conductors = self->_conductors;
    }

    else
    {
      conductors = 0;
    }

    v6 = conductors;
    nrUUID = [readyCopy nrUUID];
    v8 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:nrUUID];

    if (v8)
    {
      [v8 linkIsReady:readyCopy];
      sub_1000B98D8(self);
    }

    else
    {
      nrUUID2 = [readyCopy nrUUID];
      uUIDString = [nrUUID2 UUIDString];
      sub_1000B926C(self, 1014, @"linkReady %@ %@", v10, v11, v12, v13, v14, readyCopy);

      v8 = 0;
    }

    goto LABEL_7;
  }

  v15 = sub_1000B9544();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v8 = sub_1000B9544();
    _NRLogWithArgs(v8, 17, "%s called with null link", "[NRLinkDirector linkIsReady:]");
LABEL_7:
  }
}

- (void)linkIsAvailable:(id)available
{
  availableCopy = available;
  v4 = sub_100003490();
  dispatch_assert_queue_V2(v4);

  if (availableCopy)
  {
    if (self)
    {
      conductors = self->_conductors;
    }

    else
    {
      conductors = 0;
    }

    v6 = conductors;
    nrUUID = [availableCopy nrUUID];
    v8 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:nrUUID];

    if (v8)
    {
      [v8 linkIsAvailable:availableCopy];
    }

    else
    {
      nrUUID2 = [availableCopy nrUUID];
      uUIDString = [nrUUID2 UUIDString];
      sub_1000B926C(self, 1014, @"linkAvailable %@ %@", v10, v11, v12, v13, v14, availableCopy);

      v8 = 0;
    }

    goto LABEL_7;
  }

  v15 = sub_1000B9544();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v8 = sub_1000B9544();
    _NRLogWithArgs(v8, 17, "%s called with null link", "[NRLinkDirector linkIsAvailable:]");
LABEL_7:
  }
}

@end