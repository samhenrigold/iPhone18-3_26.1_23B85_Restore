@interface EPPairer
- (BOOL)isClassicDevice;
- (EPPairer)initWithDevice:(id)device withDelegate:(id)delegate pairerList:(id)list;
- (id)initBase;
- (id)pairer:(id)pairer newEndpointWithDelegate:(id)delegate;
- (void)dealloc;
- (void)invalidateWithError:(id)error;
- (void)pairer:(id)pairer completedWithError:(id)error;
- (void)pairer:(id)pairer requestWithType:(int64_t)type passkey:(id)passkey;
- (void)pairerDidBeginToPair:(id)pair;
- (void)respondWithType:(int64_t)type accept:(BOOL)accept data:(id)data;
- (void)update;
@end

@implementation EPPairer

- (id)initBase
{
  v11.receiver = self;
  v11.super_class = EPPairer;
  v2 = [(EPPairer *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v4 = sub_1000A9948(v2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v7 = sub_1000A9948(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        *buf = 138412546;
        v13 = v9;
        v14 = 2048;
        v15 = v3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "init %@[%p]", buf, 0x16u);
      }
    }
  }

  return v3;
}

- (void)dealloc
{
  v3 = sub_1000A9948(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = sub_1000A9948(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138412546;
      v11 = v8;
      v12 = 2048;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "dealloc %@[%p]", buf, 0x16u);
    }
  }

  [(EPPairerList *)self->_pairerList removePairer:self];
  v9.receiver = self;
  v9.super_class = EPPairer;
  [(EPPairer *)&v9 dealloc];
}

- (EPPairer)initWithDevice:(id)device withDelegate:(id)delegate pairerList:(id)list
{
  deviceCopy = device;
  delegateCopy = delegate;
  listCopy = list;
  initBase = [(EPPairer *)self initBase];
  v13 = initBase;
  if (initBase)
  {
    objc_storeStrong(initBase + 6, device);
    objc_storeStrong(&v13->_delegate, delegate);
    objc_storeStrong(&v13->_pairerList, list);
    v14 = +[EPFactory sharedFactory];
    agentManager = [v14 agentManager];
    v16 = [agentManager newAgentWithDelegate:v13 fromCentral:{objc_msgSend(deviceCopy, "isPeripheral")}];
    agent = v13->_agent;
    v13->_agent = v16;

    if ([deviceCopy isPeripheral] & 1) == 0 && (objc_opt_respondsToSelector())
    {
      v18 = +[EPFactory queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10005E19C;
      block[3] = &unk_100175660;
      v21 = v13;
      dispatch_async(v18, block);
    }
  }

  return v13;
}

- (BOOL)isClassicDevice
{
  info = [(EPDevice *)self->_device info];
  if ([info hasClassicDevice])
  {
    v4 = self->_type == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)respondWithType:(int64_t)type accept:(BOOL)accept data:(id)data
{
  dataCopy = data;
  v9 = sub_1000A98C0(dataCopy);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v12 = sub_1000A98C0(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ExtensiblePair EPPairer respondWithType:accept:data: called", v14, 2u);
    }
  }

  self->_shouldRespond = 1;
  self->_type = type;
  self->_accept = accept;
  data = self->_data;
  self->_data = dataCopy;

  [(EPPairer *)self update];
}

- (void)update
{
  if (self->_shouldRespond)
  {
    if ([(EPPairer *)self isClassicDevice])
    {
      self->_shouldRespond = 0;
      agent = +[EPFactory queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10005E5D0;
      block[3] = &unk_100175660;
      block[4] = self;
      dispatch_async(agent, block);
LABEL_4:

      return;
    }

    if ([(EPResource *)self->_agent availability]== 1)
    {
      pairingConnector = [(EPDevice *)self->_device pairingConnector];
      if ([pairingConnector availability] == 1)
      {
        pipe = [(EPDevice *)self->_device pipe];
        if ([pipe availability] == 1)
        {
          pairingPhase = [(EPDevice *)self->_device pairingPhase];

          if (pairingPhase == 3)
          {
            self->_shouldRespond = 0;
            v7 = sub_1000A98C0(v6);
            v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

            if (v8)
            {
              v10 = sub_1000A98C0(v9);
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                info = [(EPDevice *)self->_device info];
                peer = [info peer];
                identifier = [peer identifier];
                uUIDString = [identifier UUIDString];
                v15 = [EPDevice stringFromCBPairingType:self->_type];
                v16 = v15;
                v17 = @"NO";
                v18 = !self->_accept;
                data = self->_data;
                *buf = 138413058;
                if (!v18)
                {
                  v17 = @"YES";
                }

                v25 = uUIDString;
                v26 = 2112;
                v27 = v15;
                v28 = 2112;
                v29 = v17;
                v30 = 2112;
                v31 = data;
                _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling CoreBluetooth CBPairingAgent respondToPairingRequest:%@ type:%@ accept:%@ data:%@", buf, 0x2Au);
              }
            }

            agent = [(EPPairingAgent *)self->_agent agent];
            info2 = [(EPDevice *)self->_device info];
            peer2 = [info2 peer];
            [agent respondToPairingRequest:peer2 type:self->_type accept:self->_accept data:self->_data];

            goto LABEL_4;
          }

          return;
        }
      }
    }
  }
}

- (void)invalidateWithError:(id)error
{
  errorCopy = error;
  v5 = sub_1000A98C0(errorCopy);
  v6 = v5;
  if (errorCopy)
  {
    v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v7)
    {
      v9 = sub_1000A98C0(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1001007F8(errorCopy, v9);
      }

LABEL_8:
    }
  }

  else
  {
    v10 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v9 = sub_1000A98C0(v11);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ExtensiblePair EPPairer invalidateWithError: called with no error", v12, 2u);
      }

      goto LABEL_8;
    }
  }

  [(EPDevice *)self->_device cancelPairingWithError:errorCopy];
}

- (id)pairer:(id)pairer newEndpointWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v6 = sub_1000A98C0(delegateCopy);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = sub_1000A98C0(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      delegate = self->_delegate;
      v15 = 138412802;
      selfCopy = self;
      v17 = 2112;
      v18 = v11;
      v19 = 2048;
      delegateCopy2 = delegate;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Calling pairer:newEndpointWithDelegate: with pairer %@ on %@[%p]", &v15, 0x20u);
    }
  }

  v13 = [(EPPairerDelegate *)self->_delegate pairer:self newEndpointWithDelegate:delegateCopy];

  return v13;
}

- (void)pairer:(id)pairer completedWithError:(id)error
{
  pairerCopy = pairer;
  errorCopy = error;
  v8 = sub_1000A98C0(errorCopy);
  v9 = v8;
  if (errorCopy)
  {
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v10)
    {
      v12 = sub_1000A98C0(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100100870(self, errorCopy, v12);
      }

LABEL_8:
    }
  }

  else
  {
    v13 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v12 = sub_1000A98C0(v14);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        delegate = self->_delegate;
        v19 = 138412802;
        selfCopy = self;
        v21 = 2112;
        v22 = v16;
        v23 = 2048;
        v24 = delegate;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Calling pairer:completedWithError: with pairer %@ on %@[%p] with no error", &v19, 0x20u);
      }

      goto LABEL_8;
    }
  }

  [(EPPairerDelegate *)self->_delegate pairer:self completedWithError:errorCopy];
  v18 = self->_delegate;
  self->_delegate = 0;
}

- (void)pairer:(id)pairer requestWithType:(int64_t)type passkey:(id)passkey
{
  passkeyCopy = passkey;
  v8 = sub_1000A98C0(passkeyCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = sub_1000A98C0(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      delegate = self->_delegate;
      v15 = [EPDevice stringFromCBPairingType:type];
      v16 = 138413314;
      selfCopy = self;
      v18 = 2112;
      v19 = v13;
      v20 = 2048;
      v21 = delegate;
      v22 = 2112;
      v23 = v15;
      v24 = 2112;
      v25 = passkeyCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Calling pairer:requestWithType: with pairer %@ on %@[%p] with type %@ passkey %@", &v16, 0x34u);
    }
  }

  [(EPPairerDelegate *)self->_delegate pairer:self requestWithType:type passkey:passkeyCopy];
}

- (void)pairerDidBeginToPair:(id)pair
{
  v4 = objc_opt_respondsToSelector();
  if (v4)
  {
    v5 = sub_1000A98C0(v4);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v8 = sub_1000A98C0(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        delegate = self->_delegate;
        v12 = 138412802;
        selfCopy = self;
        v14 = 2112;
        v15 = v10;
        v16 = 2048;
        v17 = delegate;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Calling pairerDidBeginToPair: with pairer %@ on %@[%p]", &v12, 0x20u);
      }
    }

    [(EPPairerDelegate *)self->_delegate pairerDidBeginToPair:self];
  }
}

@end