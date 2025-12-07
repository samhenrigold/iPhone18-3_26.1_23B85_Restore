@interface EPMassUnpairer
- (EPMassUnpairer)initWithDelegate:(id)delegate UUIDs:(id)ds;
- (id)initBase;
- (void)dealloc;
- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair;
- (void)setTimerDuration:(double)duration withBlock:(id)block;
- (void)update;
@end

@implementation EPMassUnpairer

- (void)setTimerDuration:(double)duration withBlock:(id)block
{
  blockCopy = block;
  currentTimer = self->_currentTimer;
  if (currentTimer)
  {
    dispatch_source_cancel(currentTimer);
    v8 = self->_currentTimer;
    self->_currentTimer = 0;
  }

  if (blockCopy)
  {
    v9 = +[EPFactory queue];
    v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v9);

    v11 = dispatch_time(0, (duration * 1000000000.0));
    dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10009FB88;
    v14[3] = &unk_100175FA0;
    v14[4] = self;
    v15 = blockCopy;
    dispatch_source_set_event_handler(v10, v14);
    dispatch_resume(v10);
    v12 = self->_currentTimer;
    self->_currentTimer = v10;
    v13 = v10;
  }
}

- (id)initBase
{
  v15.receiver = self;
  v15.super_class = EPMassUnpairer;
  v2 = [(EPMassUnpairer *)&v15 init];
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
        v17 = v9;
        v18 = 2048;
        v19 = v3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "init %@[%p]", buf, 0x16u);
      }
    }

    v10 = +[NSMutableArray array];
    peersToUnpair = v3->_peersToUnpair;
    v3->_peersToUnpair = v10;

    v12 = +[NSMutableSet set];
    devicesUnpaired = v3->_devicesUnpaired;
    v3->_devicesUnpaired = v12;
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

  v9.receiver = self;
  v9.super_class = EPMassUnpairer;
  [(EPMassUnpairer *)&v9 dealloc];
}

- (EPMassUnpairer)initWithDelegate:(id)delegate UUIDs:(id)ds
{
  delegateCopy = delegate;
  dsCopy = ds;
  initBase = [(EPMassUnpairer *)self initBase];
  v9 = initBase;
  if (initBase)
  {
    objc_storeWeak(initBase + 5, delegateCopy);
    objc_storeStrong(&v9->_requestedUUIDs, ds);
    v10 = +[EPFactory sharedFactory];
    agentManager = [v10 agentManager];
    v12 = [agentManager newAgentWithDelegate:v9 fromCentral:1];
    agent = v9->_agent;
    v9->_agent = v12;

    objc_storeStrong(&v9->me, v9);
    objc_initWeak(&location, v9);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000A0008;
    v18[3] = &unk_100175EB8;
    objc_copyWeak(&v19, &location);
    [(EPMassUnpairer *)v9 setTimerDuration:v18 withBlock:2.0];
    v14 = +[EPFactory queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A01E8;
    block[3] = &unk_100175660;
    v17 = v9;
    dispatch_async(v14, block);

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v9;
}

- (void)update
{
  agent = self->_agent;
  if (!agent)
  {
    goto LABEL_44;
  }

  if ([(EPResource *)agent availability]!= 1)
  {
    [(NSMutableArray *)self->_peersToUnpair removeAllObjects];
    v51 = 0;
    v52 = 32;
LABEL_43:
    *(&self->super.isa + v52) = v51;
    goto LABEL_44;
  }

  if (self->_unpairing)
  {
    goto LABEL_48;
  }

  self->_unpairing = 1;
  v4 = sub_1000A98C0(1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = sub_1000A98C0(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Calling CBPairingAgent retrievePairedPeers", buf, 2u);
    }
  }

  agent = [(EPPairingAgent *)self->_agent agent];
  retrievePairedPeers = [agent retrievePairedPeers];
  v10 = [retrievePairedPeers mutableCopy];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v60;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v60 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v59 + 1) + 8 * i);
        requestedUUIDs = self->_requestedUUIDs;
        if (requestedUUIDs)
        {
          identifier = [*(*(&v59 + 1) + 8 * i) identifier];
          v19 = [(NSSet *)requestedUUIDs containsObject:identifier];

          if (!v19)
          {
            continue;
          }
        }

        [(NSMutableArray *)self->_peersToUnpair addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v13);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v20 = self->_peersToUnpair;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (v21)
  {
    v23 = v21;
    v24 = *v56;
    *&v22 = 138412290;
    v54 = v22;
    do
    {
      v25 = 0;
      do
      {
        if (*v56 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v26 = *(*(&v55 + 1) + 8 * v25);
        v27 = sub_1000A98C0(v21);
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

        if (v28)
        {
          v30 = sub_1000A98C0(v29);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            identifier2 = [v26 identifier];
            uUIDString = [identifier2 UUIDString];
            *buf = v54;
            v64 = uUIDString;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Calling CBPairingAgent unpairPeer: %@", buf, 0xCu);
          }
        }

        v33 = [(EPPairingAgent *)self->_agent agent:v54];
        [v33 unpairPeer:v26];

        v25 = v25 + 1;
      }

      while (v23 != v25);
      v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v55 objects:v67 count:16];
      v23 = v21;
    }

    while (v21);
  }

  if (self->_unpairing)
  {
LABEL_48:
    if (![(NSMutableArray *)self->_peersToUnpair count])
    {
      v34 = sub_1000A98C0([(EPMassUnpairer *)self setTimerDuration:0 withBlock:0.0]);
      v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);

      if (v35)
      {
        v37 = sub_1000A98C0(v36);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "All peers unpaired!", buf, 2u);
        }
      }

      v38 = self->_agent;
      self->_agent = 0;

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v40 = objc_opt_respondsToSelector();

      if (v40)
      {
        v42 = sub_1000A98C0(v41);
        v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);

        if (v43)
        {
          v45 = sub_1000A98C0(v44);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v46 = objc_loadWeakRetained(&self->_delegate);
            v47 = objc_opt_class();
            v48 = NSStringFromClass(v47);
            v49 = objc_loadWeakRetained(&self->_delegate);
            *buf = 138412546;
            v64 = v48;
            v65 = 2048;
            v66 = v49;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Calling unpairerDidFinishUnpairing: on %@[%p]", buf, 0x16u);
          }
        }

        v50 = objc_loadWeakRetained(&self->_delegate);
        [v50 unpairer:self didFinishUnpairingDevices:self->_devicesUnpaired];
      }

      v51 = 1;
      v52 = 33;
      goto LABEL_43;
    }
  }

LABEL_44:
  if (self->_finishedUnpairing)
  {
    me = self->me;
    self->me = 0;
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
      v14 = 138412290;
      v15 = uUIDString;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CBPairingAgentDelegate pairingAgent:peerDidUnpair %@", &v14, 0xCu);
    }
  }

  [(NSMutableArray *)self->_peersToUnpair removeObject:unpairCopy];
  devicesUnpaired = self->_devicesUnpaired;
  identifier2 = [unpairCopy identifier];
  [(NSMutableSet *)devicesUnpaired addObject:identifier2];

  [(EPMassUnpairer *)self update];
}

@end