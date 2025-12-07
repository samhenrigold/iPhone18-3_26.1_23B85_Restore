@interface EPPairingAgentManager
+ (id)stringFromCBManagerState:(int64_t)state;
- (EPPairingAgentManager)init;
- (id)newAgentWithDelegate:(id)delegate fromCentral:(BOOL)central;
- (id)newCentralManagerWithDelegate:(id)delegate;
- (id)newPeripheralManagerWithDelegate:(id)delegate;
- (void)createResource;
- (void)destroyResource;
- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing;
- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error;
- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey;
- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair;
- (void)resetStashVariables;
- (void)update;
@end

@implementation EPPairingAgentManager

- (EPPairingAgentManager)init
{
  v3 = +[EPFactory queue];
  v6.receiver = self;
  v6.super_class = EPPairingAgentManager;
  v4 = [(EPResourceManager *)&v6 initWithQueue:v3];

  return v4;
}

- (id)newAgentWithDelegate:(id)delegate fromCentral:(BOOL)central
{
  self->_fromCentral = central;
  v5 = [(EPResourceManager *)self newResourceWithDelegate:delegate];
  v6 = v5;
  if (!self->_fromCentral && self->_stashedPeer)
  {
    v7 = sub_1000A98C0(v5);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v10 = sub_1000A98C0(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Found stashed peer, retrying", v13, 2u);
      }
    }

    [(AbstractTimer *)self->_timer invalidate];
    timer = self->_timer;
    self->_timer = 0;

    [(EPPairingAgentManager *)self pairingAgent:self->_agent peerDidRequestPairing:self->_stashedPeer type:self->_stashedType passkey:self->_stashedPassKey];
    [(EPPairingAgentManager *)self resetStashVariables];
  }

  return v6;
}

- (id)newCentralManagerWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = +[EPFactory sharedFactory];
  v5 = [v4 newCentralManagerWithDelegate:delegateCopy];

  return v5;
}

- (id)newPeripheralManagerWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = +[EPFactory sharedFactory];
  v5 = [v4 newPeripheralManagerWithDelegate:delegateCopy];

  return v5;
}

- (void)createResource
{
  v6.receiver = self;
  v6.super_class = EPPairingAgentManager;
  [(EPResourceManager *)&v6 createResource];
  if (*&self->_peripheralManagerForAgent == 0)
  {
    if (self->_fromCentral)
    {
      v3 = [(EPPairingAgentManager *)self newCentralManagerWithDelegate:self];
      centralManagerForAgent = self->_centralManagerForAgent;
      self->_centralManagerForAgent = v3;
    }

    else
    {
      v5 = [(EPPairingAgentManager *)self newPeripheralManagerWithDelegate:self];
      centralManagerForAgent = self->_peripheralManagerForAgent;
      self->_peripheralManagerForAgent = v5;
    }
  }
}

- (void)destroyResource
{
  v12.receiver = self;
  v12.super_class = EPPairingAgentManager;
  destroyResource = [(EPResourceManager *)&v12 destroyResource];
  if (self->_agent)
  {
    v4 = sub_1000A98C0(destroyResource);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v7 = sub_1000A98C0(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Dellocating sharedPairingAgent", v11, 2u);
      }
    }

    agent = self->_agent;
    self->_agent = 0;
  }

  centralManagerForAgent = self->_centralManagerForAgent;
  self->_centralManagerForAgent = 0;

  peripheralManagerForAgent = self->_peripheralManagerForAgent;
  self->_peripheralManagerForAgent = 0;
}

- (void)update
{
  peripheralManagerForAgent = self->_peripheralManagerForAgent;
  if (!peripheralManagerForAgent)
  {
    peripheralManagerForAgent = self->_centralManagerForAgent;
  }

  v4 = peripheralManagerForAgent;
  if ([v4 availability] != 1)
  {
    if ([v4 availability] == 2)
    {
      error = [v4 error];
      [(EPResourceManager *)self setAvailability:2 withError:error];

      if (!self->_agent)
      {
        goto LABEL_26;
      }

      v10 = sub_1000A98C0(v9);
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

      if (v11)
      {
        v13 = sub_1000A98C0(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 0;
          v14 = &v28;
LABEL_16:
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Dellocating sharedPairingAgent", v14, 2u);
          goto LABEL_17;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v15 = [(EPResourceManager *)self setAvailability:0 withError:0];
      if (!self->_agent)
      {
        goto LABEL_26;
      }

      v16 = sub_1000A98C0(v15);
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

      if (v17)
      {
        v13 = sub_1000A98C0(v18);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 0;
          v14 = &v27;
          goto LABEL_16;
        }

LABEL_17:
      }
    }

    agent = self->_agent;
    self->_agent = 0;
LABEL_25:

    goto LABEL_26;
  }

  if (!self->_agent)
  {
    manager = [(EPPeripheralManager *)self->_peripheralManagerForAgent manager];
    v6 = manager;
    if (manager)
    {
      manager2 = manager;
    }

    else
    {
      manager2 = [(EPCentralManager *)self->_centralManagerForAgent manager];
    }

    agent = manager2;

    v21 = sub_1000A98C0(v20);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

    if (v22)
    {
      v24 = sub_1000A98C0(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Retrieving sharedPairingAgent", buf, 2u);
      }
    }

    sharedPairingAgent = [(CBPairingAgent *)agent sharedPairingAgent];
    v26 = self->_agent;
    self->_agent = sharedPairingAgent;

    [(CBPairingAgent *)self->_agent setDelegate:self];
    [(EPResourceManager *)self setAvailability:1 withError:0];
    goto LABEL_25;
  }

LABEL_26:
}

+ (id)stringFromCBManagerState:(int64_t)state
{
  if ((state - 1) > 9)
  {
    return @"CBManagerStateUnknown";
  }

  else
  {
    return *(&off_100179D28 + state - 1);
  }
}

- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair
{
  unpairCopy = unpair;
  v6 = sub_1000A98C0(unpairCopy);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = sub_1000A98C0(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [unpairCopy identifier];
      uUIDString = [identifier UUIDString];
      *buf = 138412290;
      v16 = uUIDString;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CoreBluetooth pairingAgent:peerDidUnpair:%@ received", buf, 0xCu);
    }
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000EF978;
  v13[3] = &unk_100175998;
  v13[4] = self;
  v14 = unpairCopy;
  v12 = unpairCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v13];
}

- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing
{
  pairingCopy = pairing;
  v6 = sub_1000A98C0(pairingCopy);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = sub_1000A98C0(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [pairingCopy identifier];
      uUIDString = [identifier UUIDString];
      *buf = 138412290;
      v16 = uUIDString;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CoreBluetooth pairingAgent:peerDidCompletePairing:%@ received", buf, 0xCu);
    }
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000EFAF8;
  v13[3] = &unk_100175998;
  v13[4] = self;
  v14 = pairingCopy;
  v12 = pairingCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v13];
}

- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error
{
  pairingCopy = pairing;
  errorCopy = error;
  v9 = sub_1000A98C0(errorCopy);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v12 = sub_1000A98C0(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [pairingCopy identifier];
      uUIDString = [identifier UUIDString];
      *buf = 138412290;
      v21 = uUIDString;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "CoreBluetooth pairingAgent:peerDidFailToCompletePairing:%@ received", buf, 0xCu);
    }
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000EFC9C;
  v17[3] = &unk_1001759C0;
  v17[4] = self;
  v18 = pairingCopy;
  v19 = errorCopy;
  v15 = errorCopy;
  v16 = pairingCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v17];
}

- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey
{
  agentCopy = agent;
  pairingCopy = pairing;
  passkeyCopy = passkey;
  v13 = sub_1000A98C0(passkeyCopy);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v16 = sub_1000A98C0(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [pairingCopy identifier];
      uUIDString = [identifier UUIDString];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = uUIDString;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "CoreBluetooth pairingAgent:peerDidRequestPairing:%@ received", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v39 = 0x2020000000;
  v40 = 0;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000F0060;
  v33[3] = &unk_100179D08;
  p_buf = &buf;
  v33[4] = self;
  v19 = pairingCopy;
  v34 = v19;
  typeCopy = type;
  v20 = passkeyCopy;
  v35 = v20;
  v21 = [(EPResourceManager *)self enumerateResourcesWithBlock:v33];
  if ((*(*(&buf + 1) + 24) & 1) == 0)
  {
    v22 = sub_1000A98C0(v21);
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

    if (v23)
    {
      v25 = sub_1000A98C0(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v32) = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Unable to handle pairing request.  Stashing to try again later", &v32, 2u);
      }
    }

    objc_storeStrong(&self->_stashedPeer, pairing);
    self->_stashedType = type;
    objc_storeStrong(&self->_stashedPassKey, passkey);
    [(AbstractTimer *)self->_timer invalidate];
    timer = self->_timer;
    self->_timer = 0;

    objc_initWeak(&v32, self);
    v27 = +[EPFactory queue];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000F00F0;
    v30[3] = &unk_100175EB8;
    objc_copyWeak(&v31, &v32);
    v28 = [TimerFactory timerWithIdentifier:@"com.apple.nanoregistry.migration.missedbtrequest" delay:1 gracePeriod:v27 waking:v30 handlerQueue:60.0 handlerBlock:0.0];
    v29 = self->_timer;
    self->_timer = v28;

    objc_destroyWeak(&v31);
    objc_destroyWeak(&v32);
  }

  _Block_object_dispose(&buf, 8);
}

- (void)resetStashVariables
{
  stashedPeer = self->_stashedPeer;
  self->_stashedPeer = 0;

  stashedPassKey = self->_stashedPassKey;
  self->_stashedPassKey = 0;

  self->_stashedType = 0;
}

@end