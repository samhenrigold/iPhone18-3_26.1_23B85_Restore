@interface EPDeviceCollection
- (EPDeviceCollection)initWithDelegate:(id)delegate;
- (id)initBase;
- (id)newDeviceWithPeer:(id)peer;
- (id)newDeviceWithPeripheral:(id)peripheral withAdvertisementData:(id)data withRSSI:(id)i;
- (void)_updateTimer;
- (void)clear;
- (void)dealloc;
- (void)deviceInfo:(id)info peerDidInvalidate:(id)invalidate;
- (void)deviceInfoDeviceDidDeallocate:(id)deallocate;
- (void)deviceInfoPairingFailure:(id)failure;
- (void)deviceInfoPairingSuccess:(id)success;
- (void)update;
@end

@implementation EPDeviceCollection

- (id)initBase
{
  v3.receiver = self;
  v3.super_class = EPDeviceCollection;
  return [(EPDeviceCollection *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = EPDeviceCollection;
  [(EPDeviceCollection *)&v2 dealloc];
}

- (EPDeviceCollection)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  initBase = [(EPDeviceCollection *)self initBase];
  v7 = initBase;
  if (initBase)
  {
    objc_storeStrong(initBase + 1, delegate);
    v8 = +[NSMutableDictionary dictionary];
    v9 = v7[2];
    v7[2] = v8;

    v10 = +[NSMutableDictionary dictionary];
    v11 = v7[3];
    v7[3] = v10;

    v12 = +[NSMutableSet set];
    v13 = v7[9];
    v7[9] = v12;

    v14 = +[NSMutableSet set];
    v15 = v7[10];
    v7[10] = v14;

    v16 = +[NSMutableDictionary dictionary];
    v17 = v7[8];
    v7[8] = v16;

    v18 = +[NSMutableDictionary dictionary];
    v19 = v7[11];
    v7[11] = v18;

    v20 = +[NSDate date];
    [v20 timeIntervalSinceReferenceDate];
    v7[7] = v21;
  }

  return v7;
}

- (void)_updateTimer
{
  v3 = [(NSMutableDictionary *)self->_devicesDictionary count];
  purgeTimer = self->_purgeTimer;
  if (!v3)
  {
    if (purgeTimer)
    {
      dispatch_source_cancel(purgeTimer);
      v11 = self->_purgeTimer;
      self->_purgeTimer = 0;
    }

    v12 = +[NSDate date];
    [v12 timeIntervalSinceReferenceDate];
    v14 = v13 - self->_startTime;

    maxDevicesSeen = self->_maxDevicesSeen;
    v16 = nr_daemon_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (maxDevicesSeen)
    {
      if (v17)
      {
        v18 = nr_daemon_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = self->_maxDevicesSeen;
          *buf = 134218240;
          v26 = *&v19;
          v27 = 2048;
          v28 = v14;
          v20 = "During the last discovery %ld unique devices were seen in about %1.2f seconds";
          v21 = v18;
          v22 = 22;
LABEL_13:
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

    else if (v17)
    {
      v18 = nr_daemon_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v26 = v14;
        v20 = "During the last discovery NO DEVICES were seen in about %1.2f seconds";
        v21 = v18;
        v22 = 12;
        goto LABEL_13;
      }

LABEL_14:
    }

    me = self->me;
    self->me = 0;

    return;
  }

  if (!purgeTimer)
  {
    objc_storeStrong(&self->me, self);
    v5 = +[EPFactory queue];
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v5);
    v7 = self->_purgeTimer;
    self->_purgeTimer = v6;

    v8 = self->_purgeTimer;
    v9 = dispatch_walltime(0, 1000000000);
    dispatch_source_set_timer(v8, v9, 0x3B9ACA00uLL, 0x1DCD6500uLL);
    v10 = self->_purgeTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10008EB20;
    handler[3] = &unk_100175660;
    handler[4] = self;
    dispatch_source_set_event_handler(v10, handler);
    dispatch_resume(self->_purgeTimer);
  }
}

- (void)clear
{
  v3 = sub_1000A98C0(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = sub_1000A98C0(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "EPDeviceCollection: Clearing all devices", buf, 2u);
    }
  }

  v7 = self->_proximateDevices;
  v8 = self->_displayableDevices;
  v9 = self->_devicesDictionary;
  v10 = +[NSMutableSet set];
  proximateDevices = self->_proximateDevices;
  self->_proximateDevices = v10;

  v12 = +[NSMutableSet set];
  displayableDevices = self->_displayableDevices;
  self->_displayableDevices = v12;

  v14 = +[NSMutableDictionary dictionary];
  devicesDictionary = self->_devicesDictionary;
  self->_devicesDictionary = v14;

  v16 = +[EPFactory queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008EDA0;
  block[3] = &unk_100175598;
  v29 = v7;
  selfCopy = self;
  v17 = v7;
  dispatch_async(v16, block);

  v18 = +[EPFactory queue];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10008EFAC;
  v25[3] = &unk_100175598;
  v26 = v8;
  selfCopy2 = self;
  v19 = v8;
  dispatch_async(v18, v25);

  v20 = +[EPFactory queue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10008F1B8;
  v22[3] = &unk_100175598;
  v23 = v9;
  selfCopy3 = self;
  v21 = v9;
  dispatch_async(v20, v22);
}

- (void)update
{
  selfCopy = self;
  if ([(NSMutableDictionary *)self->_devicesDictionary count]> self->_maxDevicesSeen)
  {
    selfCopy->_maxDevicesSeen = [(NSMutableDictionary *)selfCopy->_devicesDictionary count];
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  allKeys = [(NSMutableDictionary *)selfCopy->_devicesDictionary allKeys];
  v4 = [allKeys copy];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v94 objects:v108 count:16];
  if (v5)
  {
    v7 = v5;
    v77 = 0;
    v8 = *v95;
    p_cache = (EPSagaTransactionTellIDSLocalPairingSetupComplete + 16);
    *&v6 = 138412802;
    v76 = v6;
    do
    {
      v10 = 0;
      do
      {
        if (*v95 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v79 = *(*(&v94 + 1) + 8 * v10);
        v80 = v10;
        v11 = [(NSMutableDictionary *)selfCopy->_devicesDictionary objectForKeyedSubscript:v76];
        isExpired = [v11 isExpired];
        isDisplayabilityExpired = [v11 isDisplayabilityExpired];
        isProximateExpired = [v11 isProximateExpired];
        v13 = nr_daemon_log();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

        v83 = isProximateExpired;
        if (v14)
        {
          v15 = nr_daemon_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            uUIDString = [v79 UUIDString];
            name = [v11 name];
            v18 = [NSNumber numberWithBool:isExpired];
            v19 = [NSNumber numberWithBool:isDisplayabilityExpired];
            [NSNumber numberWithBool:v83];
            v20 = v8;
            v22 = v21 = selfCopy;
            *buf = 138413314;
            v99 = uUIDString;
            v100 = 2112;
            v101 = name;
            v102 = 2112;
            v103 = v18;
            v104 = 2112;
            v105 = v19;
            v106 = 2112;
            v107 = v22;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "EPDeviceCollection: Device %@ %@ isExpired (%@); isDisplayabilityExpired (%@); isProximateExpired (%@)", buf, 0x34u);

            selfCopy = v21;
            v8 = v20;

            isProximateExpired = v83;
          }

          p_cache = EPSagaTransactionTellIDSLocalPairingSetupComplete.cache;
        }

        LODWORD(name2) = isDisplayabilityExpired;
        if (isProximateExpired && [(NSMutableSet *)selfCopy->_proximateDevices containsObject:v11])
        {
          v24 = sub_1000A98C0([(NSMutableSet *)selfCopy->_proximateDevices removeObject:v11]);
          v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

          if (v25)
          {
            v27 = sub_1000A98C0(v26);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              uUIDString2 = [v79 UUIDString];
              name2 = [v11 name];
              *buf = 138412546;
              v99 = uUIDString2;
              v100 = 2112;
              v101 = name2;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "EPDeviceCollection: Device %@ %@ has become unproximate", buf, 0x16u);

              LODWORD(name2) = isDisplayabilityExpired;
            }
          }

          queue = [p_cache + 183 queue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10008FEE8;
          block[3] = &unk_100175598;
          block[4] = selfCopy;
          v93 = v11;
          dispatch_async(queue, block);
        }

        if (name2 && [(NSMutableSet *)selfCopy->_displayableDevices containsObject:v11])
        {
          v30 = sub_1000A98C0([(NSMutableSet *)selfCopy->_displayableDevices removeObject:v11]);
          v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);

          if (v31)
          {
            v33 = sub_1000A98C0(v32);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              uUIDString3 = [v79 UUIDString];
              name2 = [v11 name];
              *buf = 138412546;
              v99 = uUIDString3;
              v100 = 2112;
              v101 = name2;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "EPDeviceCollection: Device %@ %@ has become undisplayable.", buf, 0x16u);

              LOBYTE(name2) = isDisplayabilityExpired;
            }
          }

          queue2 = [p_cache + 183 queue];
          v90[0] = _NSConcreteStackBlock;
          v90[1] = 3221225472;
          v90[2] = sub_10008FF44;
          v90[3] = &unk_100175598;
          v90[4] = selfCopy;
          v91 = v11;
          dispatch_async(queue2, v90);
        }

        if (isExpired)
        {
          devicesDictionary = selfCopy->_devicesDictionary;
          uuid = [v11 uuid];
          [(NSMutableDictionary *)devicesDictionary removeObjectForKey:uuid];

          v39 = sub_1000A98C0(v38);
          LODWORD(uuid) = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);

          if (uuid)
          {
            v41 = sub_1000A98C0(v40);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              uUIDString4 = [v79 UUIDString];
              name2 = [v11 name];
              *buf = 138412546;
              v99 = uUIDString4;
              v100 = 2112;
              v101 = name2;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "EPDeviceCollection: Device %@ %@ has expired.", buf, 0x16u);

              LOBYTE(name2) = isDisplayabilityExpired;
            }
          }

          queue3 = [p_cache + 183 queue];
          v88[0] = _NSConcreteStackBlock;
          v88[1] = 3221225472;
          v88[2] = sub_10008FFA0;
          v88[3] = &unk_100175598;
          v88[4] = selfCopy;
          v89 = v11;
          dispatch_async(queue3, v88);

          v77 = 1;
        }

        if ((name2 & 1) == 0)
        {
          v44 = [(NSMutableSet *)selfCopy->_displayableDevices containsObject:v11];
          if (v44)
          {
            v45 = sub_1000A98C0(v44);
            v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);

            if (v46)
            {
              v48 = sub_1000A98C0(v47);
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                uUIDString5 = [v79 UUIDString];
                name3 = [v11 name];
                rSSI = [v11 RSSI];
                *buf = v76;
                v99 = uUIDString5;
                v100 = 2112;
                v101 = name3;
                v102 = 2112;
                v103 = rSSI;
                _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "EPDeviceCollection: Device %@ %@ is already displayable with RSSI %@.", buf, 0x20u);

                p_cache = (EPSagaTransactionTellIDSLocalPairingSetupComplete + 16);
              }
            }
          }

          else
          {
            v52 = sub_1000A98C0([(NSMutableSet *)selfCopy->_displayableDevices addObject:v11]);
            v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);

            if (v53)
            {
              v55 = sub_1000A98C0(v54);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                uUIDString6 = [v79 UUIDString];
                name4 = [v11 name];
                rSSI2 = [v11 RSSI];
                *buf = v76;
                v99 = uUIDString6;
                v100 = 2112;
                v101 = name4;
                v102 = 2112;
                v103 = rSSI2;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "EPDeviceCollection: Device %@ %@ has become displayable with RSSI %@.", buf, 0x20u);

                p_cache = EPSagaTransactionTellIDSLocalPairingSetupComplete.cache;
              }
            }

            queue4 = [p_cache + 183 queue];
            v86[0] = _NSConcreteStackBlock;
            v86[1] = 3221225472;
            v86[2] = sub_10008FFFC;
            v86[3] = &unk_100175598;
            v86[4] = selfCopy;
            v87 = v11;
            dispatch_async(queue4, v86);
          }
        }

        if ((v83 & 1) == 0)
        {
          v60 = [(NSMutableSet *)selfCopy->_proximateDevices containsObject:v11];
          if (v60)
          {
            v61 = sub_1000A98C0(v60);
            v62 = os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);

            if (v62)
            {
              v64 = sub_1000A98C0(v63);
              if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
              {
                uUIDString7 = [v79 UUIDString];
                name5 = [v11 name];
                rSSI3 = [v11 RSSI];
                *buf = v76;
                v99 = uUIDString7;
                v100 = 2112;
                v101 = name5;
                v102 = 2112;
                v103 = rSSI3;
                _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "EPDeviceCollection: Device %@ %@ is already proximate with RSSI %@.", buf, 0x20u);

                p_cache = (EPSagaTransactionTellIDSLocalPairingSetupComplete + 16);
              }
            }
          }

          else
          {
            v68 = sub_1000A98C0([(NSMutableSet *)selfCopy->_proximateDevices addObject:v11]);
            v69 = os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT);

            if (v69)
            {
              v71 = sub_1000A98C0(v70);
              if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
              {
                uUIDString8 = [v79 UUIDString];
                name6 = [v11 name];
                rSSI4 = [v11 RSSI];
                *buf = v76;
                v99 = uUIDString8;
                v100 = 2112;
                v101 = name6;
                v102 = 2112;
                v103 = rSSI4;
                _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "EPDeviceCollection: Device %@ %@ has become proximate with RSSI %@.", buf, 0x20u);

                p_cache = EPSagaTransactionTellIDSLocalPairingSetupComplete.cache;
              }
            }

            queue5 = [p_cache + 183 queue];
            v84[0] = _NSConcreteStackBlock;
            v84[1] = 3221225472;
            v84[2] = sub_100090058;
            v84[3] = &unk_100175598;
            v84[4] = selfCopy;
            v85 = v11;
            dispatch_async(queue5, v84);
          }
        }

        v10 = v80 + 1;
      }

      while (v7 != (v80 + 1));
      v7 = [obj countByEnumeratingWithState:&v94 objects:v108 count:16];
    }

    while (v7);

    if (v77)
    {
      [(EPDeviceCollection *)selfCopy _updateTimer];
    }
  }

  else
  {
  }
}

- (id)newDeviceWithPeripheral:(id)peripheral withAdvertisementData:(id)data withRSSI:(id)i
{
  peripheralCopy = peripheral;
  dataCopy = data;
  iCopy = i;
  if ([EPDevice isInRangeWithRSSI:iCopy])
  {
    v11 = [[EPDeviceInfo alloc] initWithPeer:peripheralCopy];
    v12 = [(EPDeviceInfo *)v11 newPeripheralDeviceWithAdvertisementData:dataCopy withRSSI:iCopy];
    if (v12)
    {
      identifier = [peripheralCopy identifier];
      [(NSMutableDictionary *)self->_devicesDictionary setObject:v12 forKeyedSubscript:identifier];
      [(EPDeviceCollection *)self _updateTimer];
      [(NSMutableDictionary *)self->_deviceInfos setObject:v11 forKeyedSubscript:identifier];
      [(EPDeviceInfo *)v11 setDelegate:self];
      v14 = +[EPFactory queue];
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_10009023C;
      v19 = &unk_100175598;
      selfCopy = self;
      v21 = v12;
      dispatch_async(v14, &v16);

      [(EPDeviceCollection *)self update:v16];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)newDeviceWithPeer:(id)peer
{
  peerCopy = peer;
  v5 = [[EPDeviceInfo alloc] initWithPeer:peerCopy];
  newCentralDevice = [(EPDeviceInfo *)v5 newCentralDevice];
  if (newCentralDevice)
  {
    identifier = [peerCopy identifier];
    [(NSMutableDictionary *)self->_devicesDictionary setObject:newCentralDevice forKeyedSubscript:identifier];
    [(EPDeviceCollection *)self _updateTimer];
    [(NSMutableDictionary *)self->_deviceInfos setObject:v5 forKeyedSubscript:identifier];
    [(EPDeviceInfo *)v5 setDelegate:self];
    v8 = +[EPFactory queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000903CC;
    v10[3] = &unk_100175598;
    v10[4] = self;
    v11 = newCentralDevice;
    dispatch_async(v8, v10);
  }

  return newCentralDevice;
}

- (void)deviceInfo:(id)info peerDidInvalidate:(id)invalidate
{
  identifier = [invalidate identifier];
  v7 = identifier;
  if (invalidate)
  {
    v9 = identifier;
    identifier = [(NSMutableDictionary *)self->_devicesDictionary objectForKeyedSubscript:identifier];
    v7 = v9;
    if (identifier)
    {
      v8 = identifier;
      [(EPDeviceCollection *)self update];

      v7 = v9;
    }
  }

  _objc_release_x1(identifier, v7);
}

- (void)deviceInfoDeviceDidDeallocate:(id)deallocate
{
  deallocateCopy = deallocate;
  uuid = [deallocateCopy uuid];
  [(NSMutableDictionary *)self->_deviceInfos removeObjectForKey:uuid];
  if (objc_opt_respondsToSelector())
  {
    [(EPDeviceCollectionDelegate *)self->_delegate collection:self deviceInfoDidDealloc:deallocateCopy];
  }
}

- (void)deviceInfoPairingFailure:(id)failure
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [(EPDeviceCollectionDelegate *)delegate collectionPairingFailure:self];
  }
}

- (void)deviceInfoPairingSuccess:(id)success
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [(EPDeviceCollectionDelegate *)delegate collectionPairingSuccess:self];
  }
}

@end