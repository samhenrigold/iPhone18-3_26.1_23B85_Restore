@interface MRDProximityLockScreenRoutingProvider
- (MRDLockScreenRoutingProviderDelegate)delegate;
- (MRDProximityLockScreenRoutingProvider)initWithDispatchQueue:(id)queue;
- (NSArray)nearbyDeviceIdentifiers;
- (id)deviceForUID:(id)d;
- (void)_configureObserver;
- (void)clearNearbyDevices;
- (void)didSwitchRouteTo:(id)to;
- (void)startObservationIfNeeded;
@end

@implementation MRDProximityLockScreenRoutingProvider

- (MRDProximityLockScreenRoutingProvider)initWithDispatchQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = MRDProximityLockScreenRoutingProvider;
  v6 = [(MRDProximityLockScreenRoutingProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_invalidated = 1;
    objc_storeStrong(&v6->_queue, queue);
    v8 = objc_alloc_init(NSMutableSet);
    nearbyDevices = v7->_nearbyDevices;
    v7->_nearbyDevices = v8;

    [(MRDProximityLockScreenRoutingProvider *)v7 startObservationIfNeeded];
  }

  return v7;
}

- (NSArray)nearbyDeviceIdentifiers
{
  observer = [(MRDProximityLockScreenRoutingProvider *)self observer];
  knownDevices = [observer knownDevices];
  v4 = [knownDevices sortedArrayUsingComparator:&stru_1004B7C98];

  v5 = [v4 msv_compactMap:&stru_1004B7CD8];

  return v5;
}

- (id)deviceForUID:(id)d
{
  dCopy = d;
  observer = [(MRDProximityLockScreenRoutingProvider *)self observer];
  knownDevices = [observer knownDevices];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100062B88;
  v10[3] = &unk_1004B7D00;
  v11 = dCopy;
  v7 = dCopy;
  v8 = [knownDevices msv_firstWhere:v10];

  return v8;
}

- (void)didSwitchRouteTo:(id)to
{
  v4 = [(MRDProximityLockScreenRoutingProvider *)self deviceForUID:to];
  if (v4)
  {
    v6 = v4;
    observer = [(MRDProximityLockScreenRoutingProvider *)self observer];
    [observer didSwitchRouteToDevice:v6];

    v4 = v6;
  }
}

- (void)startObservationIfNeeded
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] startObservationIfNeeded (%p)", buf, 0xCu);
  }

  queue = [(MRDProximityLockScreenRoutingProvider *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100062D40;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_configureObserver
{
  inited = objc_initWeak(&location, self);
  v4 = objc_alloc_init(off_10051EB60(inited));
  [(MRDProximityLockScreenRoutingProvider *)self setObserver:v4];

  queue = [(MRDProximityLockScreenRoutingProvider *)self queue];
  observer = [(MRDProximityLockScreenRoutingProvider *)self observer];
  [observer setDispatchQueue:queue];

  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    observer2 = [(MRDProximityLockScreenRoutingProvider *)self observer];
    *buf = 138412546;
    v23 = observer2;
    v24 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] configuring observer: %@ (%p)", buf, 0x16u);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000630FC;
  v19[3] = &unk_1004B7D28;
  objc_copyWeak(&v20, &location);
  observer3 = [(MRDProximityLockScreenRoutingProvider *)self observer];
  [observer3 setDeviceLost:v19];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100063258;
  v17[3] = &unk_1004B7D28;
  objc_copyWeak(&v18, &location);
  observer4 = [(MRDProximityLockScreenRoutingProvider *)self observer];
  [observer4 setDeviceUpdated:v17];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000633CC;
  v15[3] = &unk_1004B7D50;
  objc_copyWeak(&v16, &location);
  observer5 = [(MRDProximityLockScreenRoutingProvider *)self observer];
  [observer5 setInvalidationHandler:v15];

  observer6 = [(MRDProximityLockScreenRoutingProvider *)self observer];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100063450;
  v13[3] = &unk_1004B7D50;
  objc_copyWeak(&v14, &location);
  [observer6 activateWithCompletion:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)clearNearbyDevices
{
  nearbyDevices = [(MRDProximityLockScreenRoutingProvider *)self nearbyDevices];
  v4 = [nearbyDevices count];

  if (v4)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] Removing all nearby devices.", v7, 2u);
    }

    nearbyDevices2 = [(MRDProximityLockScreenRoutingProvider *)self nearbyDevices];
    [nearbyDevices2 removeAllObjects];
  }
}

- (MRDLockScreenRoutingProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end