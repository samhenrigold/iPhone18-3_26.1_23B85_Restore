@interface EPPeripheralConnectorManager
+ (id)stringForEPPeripheralConnectorState:(unint64_t)state;
- (EPPeripheralConnectorManager)initWithUuid:(id)uuid;
- (void)cancelPeripheralConnection:(id)connection;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didUpdatePeripheralConnectionState:(id)state;
- (void)clearConnectPersistenceTimer;
- (void)createResource;
- (void)destroyResource;
- (void)peripheralWasInvalidated;
- (void)setConnectPersistenceTimer;
- (void)update;
@end

@implementation EPPeripheralConnectorManager

- (EPPeripheralConnectorManager)initWithUuid:(id)uuid
{
  uuidCopy = uuid;
  v6 = +[EPFactory queue];
  v7 = [(EPResourceManager *)self initWithQueue:v6];

  if (v7)
  {
    keyExistsAndHasValidFormat = 0;
    objc_storeStrong(&v7->_uuid, uuid);
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"connectPersistenceTimerDurationMilliseconds", @"com.apple.NanoRegistry", &keyExistsAndHasValidFormat);
    v9 = AppIntegerValue / 1000.0;
    if (!keyExistsAndHasValidFormat)
    {
      v9 = 1.0;
    }

    v7->_connectPersistenceTimerDuration = v9;
    v10 = sub_1000A98C0(AppIntegerValue);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v13 = sub_1000A98C0(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        uUIDString = [(NSUUID *)v7->_uuid UUIDString];
        connectPersistenceTimerDuration = v7->_connectPersistenceTimerDuration;
        *buf = 134218498;
        v19 = v7;
        v20 = 2112;
        v21 = uUIDString;
        v22 = 2048;
        v23 = connectPersistenceTimerDuration;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "EPPeripheralConnectorManager[%p]: Managing BT peripheral %@ connect persistence timer %1.2f", buf, 0x20u);
      }
    }
  }

  return v7;
}

- (void)peripheralWasInvalidated
{
  self->_state = 0;
  v3 = +[EPFactory queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100097A18;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)createResource
{
  [(EPPeripheralConnectorManager *)self clearConnectPersistenceTimer];
  v3.receiver = self;
  v3.super_class = EPPeripheralConnectorManager;
  [(EPResourceManager *)&v3 createResource];
  [(EPPeripheralConnectorManager *)self update];
}

- (void)destroyResource
{
  [(EPPeripheralConnectorManager *)self setConnectPersistenceTimer];
  v3.receiver = self;
  v3.super_class = EPPeripheralConnectorManager;
  [(EPResourceManager *)&v3 destroyResource];
  [(EPPeripheralConnectorManager *)self update];
}

- (void)setConnectPersistenceTimer
{
  forceDisconnect = self->_forceDisconnect;
  v4 = sub_1000A98C0(self);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (forceDisconnect)
  {
    if (v5)
    {
      v7 = sub_1000A98C0(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPPeripheralConnectorManager[%p]: No more demand for connection. _forceDisconnect set. Skipping setting timer.", buf, 0xCu);
      }
    }

    [(EPPeripheralConnectorManager *)self clearConnectPersistenceTimer];
    v8 = +[EPFactory queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100097DB0;
    block[3] = &unk_100175660;
    block[4] = self;
    dispatch_async(v8, block);
  }

  else
  {
    if (v5)
    {
      v9 = sub_1000A98C0(v6);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        connectPersistenceTimerDuration = self->_connectPersistenceTimerDuration;
        *buf = 134218240;
        selfCopy2 = self;
        v20 = 2048;
        v21 = connectPersistenceTimerDuration;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "EPPeripheralConnectorManager[%p]: No more demand for connection. Starting connection persistence timer %1.0f seconds.", buf, 0x16u);
      }
    }

    [(EPPeripheralConnectorManager *)self clearConnectPersistenceTimer];
    v11 = +[EPFactory queue];
    v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v11);

    v13 = dispatch_time(0, (self->_connectPersistenceTimerDuration * 1000000000.0));
    dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100097DB8;
    v16[3] = &unk_100175660;
    v16[4] = self;
    dispatch_source_set_event_handler(v12, v16);
    dispatch_resume(v12);
    connectPersistenceTimer = self->_connectPersistenceTimer;
    self->_connectPersistenceTimer = v12;
    v15 = v12;
  }
}

- (void)clearConnectPersistenceTimer
{
  if (self->_connectPersistenceTimer)
  {
    v3 = sub_1000A98C0(self);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v6 = sub_1000A98C0(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 134217984;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "EPPeripheralConnectorManager[%p]: Clearing persistence timer!", &v8, 0xCu);
      }
    }

    dispatch_source_cancel(self->_connectPersistenceTimer);
    connectPersistenceTimer = self->_connectPersistenceTimer;
    self->_connectPersistenceTimer = 0;
  }
}

+ (id)stringForEPPeripheralConnectorState:(unint64_t)state
{
  if (state > 3)
  {
    return @"EPPeripheralConnectorState unknown";
  }

  else
  {
    return *(&off_100178748 + state);
  }
}

- (void)update
{
  v3 = [objc_opt_class() stringForEPPeripheralConnectorState:self->_state];
  v4 = sub_1000A98C0(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = sub_1000A98C0(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      captivePeripheral = self->_captivePeripheral;
      v9 = [EPCentralManagerManager stringForCBPeripheralState:[(CBPeripheral *)captivePeripheral state]];
      needsResource = [(EPResourceManager *)self needsResource];
      connectPersistenceTimer = self->_connectPersistenceTimer;
      v12 = "NO";
      *buf = 134219266;
      selfCopy4 = self;
      if (needsResource)
      {
        v12 = "YES";
      }

      v68 = 2112;
      v69 = v3;
      v13 = connectPersistenceTimer == 0;
      v70 = 2048;
      v14 = "NOT SET";
      v71 = captivePeripheral;
      if (!v13)
      {
        v14 = "RUNNING";
      }

      v72 = 2112;
      v73 = v9;
      v74 = 2080;
      v75 = v12;
      v76 = 2080;
      v77 = v14;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPPeripheralConnectorManager[%p]: state machine state: %@ peripheral[%p] CBPeripheralState: %@ connectionNeeded: %s connectionTimer: %s", buf, 0x3Eu);
    }
  }

  state = self->_state;
  if (state > 1)
  {
    if (state == 2)
    {
      [(EPResourceManager *)self setAvailability:0 withError:0];
      if (![(EPPeripheralConnectorManager *)self needsResourceWithExpiry]|| [(EPResource *)self->_central availability]!= 1 || [(CBPeripheral *)self->_captivePeripheral state]== CBPeripheralStateDisconnected)
      {
        self->_state = 0;
        v33 = +[EPFactory queue];
        v17 = v33;
        v62[0] = _NSConcreteStackBlock;
        v62[1] = 3221225472;
        v62[2] = sub_100098994;
        v62[3] = &unk_100175660;
        v62[4] = self;
        v34 = v62;
        goto LABEL_41;
      }

      if ([(CBPeripheral *)self->_captivePeripheral state]== 2)
      {
        v35 = sub_1000A98C0(2);
        v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);

        if (v36)
        {
          v38 = sub_1000A98C0(v37);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            identifier = [(CBPeripheral *)self->_captivePeripheral identifier];
            uUIDString = [identifier UUIDString];
            *buf = 134218242;
            selfCopy4 = self;
            v68 = 2112;
            v69 = uUIDString;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "EPPeripheralConnectorManager[%p]: peripheral %@ has become connected", buf, 0x16u);
          }
        }

        self->_state = 3;
        v33 = +[EPFactory queue];
        v17 = v33;
        v61[0] = _NSConcreteStackBlock;
        v61[1] = 3221225472;
        v61[2] = sub_10009899C;
        v61[3] = &unk_100175660;
        v61[4] = self;
        v34 = v61;
        goto LABEL_41;
      }
    }

    else if (state == 3)
    {
      if (![(EPPeripheralConnectorManager *)self needsResourceWithExpiry]|| [(EPResource *)self->_central availability]!= 1)
      {
        self->_state = 0;
        v33 = +[EPFactory queue];
        v17 = v33;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000989A4;
        block[3] = &unk_100175660;
        block[4] = self;
        v34 = block;
        goto LABEL_41;
      }

      state = [(CBPeripheral *)self->_captivePeripheral state];
      if (state != CBPeripheralStateConnected)
      {
        v45 = sub_1000A98C0(state);
        v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);

        if (v46)
        {
          v48 = sub_1000A98C0(v47);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            identifier2 = [(CBPeripheral *)self->_captivePeripheral identifier];
            uUIDString2 = [identifier2 UUIDString];
            *buf = 134218242;
            selfCopy4 = self;
            v68 = 2112;
            v69 = uUIDString2;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "EPPeripheralConnectorManager[%p]: peripheral %@ has become disconnected", buf, 0x16u);
          }
        }

        [(EPResourceManager *)self setAvailability:0 withError:0];
        self->_state = 0;
        v33 = +[EPFactory queue];
        v17 = v33;
        v59[0] = _NSConcreteStackBlock;
        v59[1] = 3221225472;
        v59[2] = sub_1000989AC;
        v59[3] = &unk_100175660;
        v59[4] = self;
        v34 = v59;
        goto LABEL_41;
      }

      [(EPResourceManager *)self setAvailability:1 withError:0];
    }
  }

  else if (state)
  {
    if (state == 1)
    {
      [(EPResourceManager *)self setAvailability:0 withError:0];
      if ([(EPResource *)self->_central availability]== 1 && [(EPPeripheralConnectorManager *)self needsResourceWithExpiry])
      {
        devices = [(EPDiscoverer *)self->_discoverer devices];
        v17 = [devices objectForKeyedSubscript:self->_uuid];

        if (v17)
        {
          peer = [v17 peer];
          v19 = self->_captivePeripheral;
          self->_captivePeripheral = peer;

          discoverer = self->_discoverer;
          self->_discoverer = 0;
        }

        if (self->_captivePeripheral && [(EPResource *)self->_central availability]== 1)
        {
          v51 = sub_1000A98C0(1);
          v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);

          if (v52)
          {
            v54 = sub_1000A98C0(v53);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              identifier3 = [(CBPeripheral *)self->_captivePeripheral identifier];
              uUIDString3 = [identifier3 UUIDString];
              *buf = 134218242;
              selfCopy4 = self;
              v68 = 2112;
              v69 = uUIDString3;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "EPPeripheralConnectorManager[%p]: Calling CoreBluetooth CBCentralManager connectPeripheral:options: %@", buf, 0x16u);
            }
          }

          manager = [(EPCentralManager *)self->_central manager];
          [manager connectPeripheral:self->_captivePeripheral options:0];

          self->_state = 2;
          v57 = +[EPFactory queue];
          v63[0] = _NSConcreteStackBlock;
          v63[1] = 3221225472;
          v63[2] = sub_10009898C;
          v63[3] = &unk_100175660;
          v63[4] = self;
          dispatch_async(v57, v63);
        }

        goto LABEL_42;
      }

      self->_state = 0;
      v33 = +[EPFactory queue];
      v17 = v33;
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_100098984;
      v64[3] = &unk_100175660;
      v64[4] = self;
      v34 = v64;
LABEL_41:
      dispatch_async(v33, v34);
LABEL_42:
    }
  }

  else
  {
    needsResourceWithExpiry = [(EPPeripheralConnectorManager *)self needsResourceWithExpiry];
    v23 = self->_captivePeripheral;
    if (needsResourceWithExpiry)
    {
      self->_captivePeripheral = 0;

      objc_storeStrong(&self->me, self);
      if (!self->_discoverer)
      {
        v24 = +[EPFactory sharedFactory];
        [v24 setDiscovererShouldScanForProximity:0];

        v25 = +[EPFactory sharedFactory];
        v26 = [v25 newDiscovererWithDelegate:self];
        v27 = self->_discoverer;
        self->_discoverer = v26;
      }

      central = self->_central;
      if (!central)
      {
        v29 = +[EPFactory sharedFactory];
        agentManager = [v29 agentManager];
        v31 = [agentManager newCentralManagerWithDelegate:self];
        v32 = self->_central;
        self->_central = v31;

        central = self->_central;
      }

      if ([(EPResource *)central availability]== 1)
      {
        self->_state = 1;
        v33 = +[EPFactory queue];
        v17 = v33;
        v65[0] = _NSConcreteStackBlock;
        v65[1] = 3221225472;
        v65[2] = sub_10009897C;
        v65[3] = &unk_100175660;
        v65[4] = self;
        v34 = v65;
        goto LABEL_41;
      }
    }

    else
    {
      if ([(CBPeripheral *)v23 state]== 2 || [(CBPeripheral *)self->_captivePeripheral state]== 1)
      {
        [(EPPeripheralConnectorManager *)self cancelPeripheralConnection:self->_captivePeripheral];
      }

      [(EPResourceManager *)self setAvailability:0 withError:0];
      v41 = self->_central;
      self->_central = 0;

      v42 = self->_discoverer;
      self->_discoverer = 0;

      v43 = self->_captivePeripheral;
      self->_captivePeripheral = 0;

      me = self->me;
      self->me = 0;
    }
  }

  self->_lastState = state;
}

- (void)cancelPeripheralConnection:(id)connection
{
  connectionCopy = connection;
  if ([(EPResource *)self->_central availability]== 1)
  {
    v5 = sub_1000A98C0(1);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v8 = sub_1000A98C0(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (self->_forceDisconnect)
        {
          v9 = @"YES";
        }

        else
        {
          v9 = @"NO";
        }

        *buf = 134218242;
        selfCopy = self;
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "EPPeripheralConnectorManager[%p]: Calling CoreBluetooth CBCentralManager cancelPeripheralConnection:force:%@", buf, 0x16u);
      }
    }

    manager = [(EPCentralManager *)self->_central manager];
    cBCancelPeripheralConnectionOptionForce = [NSNumber numberWithBool:self->_forceDisconnect, CBCancelPeripheralConnectionOptionForce];
    v14 = cBCancelPeripheralConnectionOptionForce;
    v12 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [manager cancelPeripheralConnection:connectionCopy options:v12];
  }

  self->_forceDisconnect = 0;
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  identifier = [peripheral identifier];
  v6 = [identifier isEqual:self->_uuid];

  if (v6)
  {
    v8 = sub_1000A98C0(v7);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v11 = sub_1000A98C0(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        uUIDString = [(NSUUID *)self->_uuid UUIDString];
        v13 = 134218242;
        selfCopy = self;
        v15 = 2112;
        v16 = uUIDString;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EPPeripheralConnectorManager[%p]: received centralManager:didConnectPeripheral: for peripheral %@", &v13, 0x16u);
      }
    }

    [(EPPeripheralConnectorManager *)self update];
  }
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  identifier = [peripheral identifier];
  v7 = [identifier isEqual:self->_uuid];

  if (v7)
  {
    v9 = sub_1000A98C0(v8);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v12 = sub_1000A98C0(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        uUIDString = [(NSUUID *)self->_uuid UUIDString];
        v14 = 134218242;
        selfCopy = self;
        v16 = 2112;
        v17 = uUIDString;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "EPPeripheralConnectorManager[%p]: received centralManager:didDisconnectPeripheral: for peripheral %@", &v14, 0x16u);
      }
    }

    [(EPPeripheralConnectorManager *)self update];
  }
}

- (void)centralManager:(id)manager didUpdatePeripheralConnectionState:(id)state
{
  identifier = [state identifier];
  v6 = [identifier isEqual:self->_uuid];

  if (v6)
  {
    v8 = sub_1000A98C0(v7);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v11 = sub_1000A98C0(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        uUIDString = [(NSUUID *)self->_uuid UUIDString];
        v13 = 134218242;
        selfCopy = self;
        v15 = 2112;
        v16 = uUIDString;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EPPeripheralConnectorManager[%p]: received centralManager:didUpdatePeripheralConnectionState: for peripheral %@", &v13, 0x16u);
      }
    }

    [(EPPeripheralConnectorManager *)self update];
  }
}

@end