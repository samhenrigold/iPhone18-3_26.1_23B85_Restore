@interface NRLinkManagerQuickRelay
- (id)copyStatusString;
- (void)cancel;
- (void)connection:(id)connection didChangeConnectedStatus:(BOOL)status;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)dealloc;
- (void)invalidateManager;
- (void)linkDidReceiveData:(id)data data:(id)a4;
- (void)linkIsAvailable:(id)available;
- (void)linkIsReady:(id)ready;
- (void)linkIsSuspended:(id)suspended;
- (void)linkIsUnavailable:(id)unavailable;
@end

@implementation NRLinkManagerQuickRelay

- (void)connection:(id)connection didChangeConnectedStatus:(BOOL)status
{
  statusCopy = status;
  connectionCopy = connection;
  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  v7 = queue;
  dispatch_assert_queue_V2(v7);

  if (qword_1002291D0 != -1)
  {
    dispatch_once(&qword_1002291D0, &stru_1001FBED8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291D0 != -1)
    {
      dispatch_once(&qword_1002291D0, &stru_1001FBED8);
    }

    if (statusCopy)
    {
      v8 = "YES";
    }

    else
    {
      v8 = "NO";
    }

    _NRLogWithArgs(qword_1002291C8, 1, "%s%.30s:%-4d APSConnection: %@, connected: %s", ", "[NRLinkManagerQuickRelay connection:didChangeConnectedStatus:]"", 307, connectionCopy, v8);
  }

  if (self)
  {
    self->_apsConnected = statusCopy;
    self = objc_loadWeakRetained(&self->_quickRelayManagerDelegate);
  }

  [(NRLinkManagerQuickRelay *)self apsIsConnected:statusCopy];
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  connectionCopy = connection;
  tokenCopy = token;
  if (qword_1002291D0 != -1)
  {
    dispatch_once(&qword_1002291D0, &stru_1001FBED8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291D0 != -1)
    {
      dispatch_once(&qword_1002291D0, &stru_1001FBED8);
    }

    _NRLogWithArgs(qword_1002291C8, 1, "%s%.30s:%-4d APSConnection: %@, token: %@", ", "[NRLinkManagerQuickRelay connection:didReceivePublicToken:]"", 300, connectionCopy, tokenCopy);
  }

  -[NRLinkManagerQuickRelay connection:didChangeConnectedStatus:](self, "connection:didChangeConnectedStatus:", connectionCopy, [connectionCopy isConnected]);
}

- (void)linkDidReceiveData:(id)data data:(id)a4
{
  dataCopy = data;
  v7 = a4;
  v8 = v7;
  if (!dataCopy)
  {
    v12 = sub_10012141C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_6;
    }

    v14 = sub_10012141C();
    _NRLogWithArgs(v14, 17, "%s called with null link");
LABEL_11:

    goto LABEL_6;
  }

  if (!v7)
  {
    v15 = sub_10012141C();
    v16 = _NRLogIsLevelEnabled();

    if (!v16)
    {
      goto LABEL_6;
    }

    v14 = sub_10012141C();
    _NRLogWithArgs(v14, 17, "%s called with null data");
    goto LABEL_11;
  }

  if (self)
  {
    v9 = self->super._queue;
    dispatch_assert_queue_V2(v9);

    queue = self->super._queue;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    queue = 0;
  }

  v11 = queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100121470;
  block[3] = &unk_1001FD088;
  block[4] = self;
  v18 = dataCopy;
  v19 = v8;
  dispatch_async(v11, block);

LABEL_6:
}

- (void)linkIsUnavailable:(id)unavailable
{
  unavailableCopy = unavailable;
  if (unavailableCopy)
  {
    if (self)
    {
      v5 = self->super._queue;
      dispatch_assert_queue_V2(v5);

      [(NSMutableSet *)self->_links removeObject:unavailableCopy];
      queue = self->super._queue;
    }

    else
    {
      dispatch_assert_queue_V2(0);
      [0 removeObject:unavailableCopy];
      queue = 0;
    }

    v7 = queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10012161C;
    block[3] = &unk_1001FD060;
    block[4] = self;
    v12 = unavailableCopy;
    dispatch_async(v7, block);

    sub_10012167C(self);
  }

  else
  {
    v8 = sub_10012141C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = sub_10012141C();
      _NRLogWithArgs(v10, 17, "%s called with null link", "[NRLinkManagerQuickRelay linkIsUnavailable:]");
    }
  }
}

- (void)linkIsReady:(id)ready
{
  readyCopy = ready;
  if (readyCopy)
  {
    if (self)
    {
      v5 = self->super._queue;
      dispatch_assert_queue_V2(v5);

      queue = self->super._queue;
    }

    else
    {
      dispatch_assert_queue_V2(0);
      queue = 0;
    }

    v7 = queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100121BF0;
    block[3] = &unk_1001FD060;
    v12 = readyCopy;
    selfCopy = self;
    dispatch_async(v7, block);
  }

  else
  {
    v8 = sub_10012141C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = sub_10012141C();
      _NRLogWithArgs(v10, 17, "%s called with null link", "[NRLinkManagerQuickRelay linkIsReady:]");
    }
  }
}

- (void)linkIsSuspended:(id)suspended
{
  suspendedCopy = suspended;
  if (suspendedCopy)
  {
    if (self)
    {
      v5 = self->super._queue;
      dispatch_assert_queue_V2(v5);

      queue = self->super._queue;
    }

    else
    {
      dispatch_assert_queue_V2(0);
      queue = 0;
    }

    v7 = queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100121E34;
    block[3] = &unk_1001FD060;
    v12 = suspendedCopy;
    selfCopy = self;
    dispatch_async(v7, block);
  }

  else
  {
    v8 = sub_10012141C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = sub_10012141C();
      _NRLogWithArgs(v10, 17, "%s called with null link", "[NRLinkManagerQuickRelay linkIsSuspended:]");
    }
  }
}

- (void)linkIsAvailable:(id)available
{
  availableCopy = available;
  if (availableCopy)
  {
    if (self)
    {
      v5 = self->super._queue;
      dispatch_assert_queue_V2(v5);

      [(NSMutableSet *)self->_links addObject:availableCopy];
      queue = self->super._queue;
    }

    else
    {
      dispatch_assert_queue_V2(0);
      [0 addObject:availableCopy];
      queue = 0;
    }

    v7 = queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100122098;
    block[3] = &unk_1001FD060;
    v12 = availableCopy;
    selfCopy = self;
    dispatch_async(v7, block);
  }

  else
  {
    v8 = sub_10012141C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = sub_10012141C();
      _NRLogWithArgs(v10, 17, "%s called with null link", "[NRLinkManagerQuickRelay linkIsAvailable:]");
    }
  }
}

- (id)copyStatusString
{
  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  v4 = queue;
  dispatch_assert_queue_V2(v4);

  v5 = objc_alloc_init(NSMutableString);
  copyName = [(NRLinkManagerQuickRelay *)self copyName];
  [v5 appendFormat:@"\nName: %@", copyName];

  if (!self)
  {
    StringFromNRLinkType = createStringFromNRLinkType();
    [v5 appendFormat:@"\nLinkManager type: %@", StringFromNRLinkType];

    v9 = [NSString alloc];
    goto LABEL_17;
  }

  v7 = createStringFromNRLinkType();
  [v5 appendFormat:@"\nLinkManager type: %@", v7];

  state = self->super._state;
  v9 = [NSString alloc];
  if (state > 1001)
  {
    switch(state)
    {
      case 0x3EA:
        v10 = "Start";
        goto LABEL_18;
      case 0x3EB:
        v10 = "Ready";
        goto LABEL_18;
      case 0x3EC:
        v10 = "Cancelled";
LABEL_18:
        state = [v9 initWithUTF8String:v10];
        goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (!state)
  {
LABEL_17:
    v10 = "Invalid";
    goto LABEL_18;
  }

  if (state == 1001)
  {
    v10 = "Initial";
    goto LABEL_18;
  }

LABEL_14:
  state = [v9 initWithFormat:@"Unknown(%u)", state];
LABEL_19:
  v13 = state;
  [v5 appendFormat:@"\nState: %@", state];

  return v5;
}

- (void)dealloc
{
  if (qword_1002291D0 != -1)
  {
    dispatch_once(&qword_1002291D0, &stru_1001FBED8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291D0 != -1)
    {
      dispatch_once(&qword_1002291D0, &stru_1001FBED8);
    }

    _NRLogWithArgs(qword_1002291C8, 1, "%s%.30s:%-4d Dealloc: %@", ", "[NRLinkManagerQuickRelay dealloc]"", 89, self);
  }

  [(NRLinkManagerQuickRelay *)self invalidateManager];
  v3.receiver = self;
  v3.super_class = NRLinkManagerQuickRelay;
  [(NRLinkManagerQuickRelay *)&v3 dealloc];
}

- (void)invalidateManager
{
  v6.receiver = self;
  v6.super_class = NRLinkManagerQuickRelay;
  [(NRLinkManager *)&v6 invalidateManager];
  if (self)
  {
    if (self->_pathEvaluator)
    {
      nw_path_evaluator_cancel();
      pathEvaluator = self->_pathEvaluator;
      self->_pathEvaluator = 0;
    }

    apsConnection = self->_apsConnection;
    if (apsConnection)
    {
      [(APSConnection *)apsConnection setDelegate:0];
      v5 = self->_apsConnection;
      self->_apsConnection = 0;
    }
  }
}

- (void)cancel
{
  [(NRLinkManagerQuickRelay *)self invalidateManager];
  if (self)
  {
    self->super._state = 1004;
  }
}

@end