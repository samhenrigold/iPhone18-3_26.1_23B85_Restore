@interface FMDSecureLocationPublisher
- (BOOL)publishPreviouslyReceivedLocation;
- (FMDSecureLocationPublisher)initWithConfiguration:(id)configuration;
- (id)_persistedLastPublishedTimestamp;
- (void)_persistLastPublishedTimestamp:(id)timestamp;
- (void)_publishResultLocation:(id)location;
- (void)processUpdatedLocation:(id)location;
- (void)publishCriteriaMetBlock:(id)block;
- (void)startPublisherWithBlock:(id)block;
@end

@implementation FMDSecureLocationPublisher

- (FMDSecureLocationPublisher)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = FMDSecureLocationPublisher;
  v6 = [(FMDSecureLocationPublisher *)&v12 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.findmydevice.locationPublisherQueue", 0);
    serialQueue = v6->_serialQueue;
    v6->_serialQueue = v7;

    v9 = dispatch_queue_create("com.apple.findmydevice.publishingBlockQueue", 0);
    publishQueue = v6->_publishQueue;
    v6->_publishQueue = v9;

    objc_storeStrong(&v6->_config, configuration);
  }

  return v6;
}

- (void)startPublisherWithBlock:(id)block
{
  blockCopy = block;
  objc_initWeak(&location, self);
  serialQueue = [(FMDSecureLocationPublisher *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D5C0C;
  block[3] = &unk_1002CDEF0;
  objc_copyWeak(&v9, &location);
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)publishCriteriaMetBlock:(id)block
{
  blockCopy = block;
  objc_initWeak(&location, self);
  serialQueue = [(FMDSecureLocationPublisher *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D5D58;
  block[3] = &unk_1002CDEF0;
  objc_copyWeak(&v9, &location);
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)processUpdatedLocation:(id)location
{
  locationCopy = location;
  objc_initWeak(&location, self);
  serialQueue = [(FMDSecureLocationPublisher *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D5E98;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v9, &location);
  v8 = locationCopy;
  v6 = locationCopy;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (BOOL)publishPreviouslyReceivedLocation
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = [(FMDSecureLocationPublisher *)self serialQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D6894;
  v5[3] = &unk_1002CE5F0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)_publishResultLocation:(id)location
{
  locationCopy = location;
  serialQueue = [(FMDSecureLocationPublisher *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v6 = +[FMNetworkMonitor sharedInstance];
  isMonitoring = [v6 isMonitoring];

  if (isMonitoring)
  {
    v9 = +[FMNetworkMonitor sharedInstance];
    isNetworkUp = [v9 isNetworkUp];

    if ((isNetworkUp & 1) == 0)
    {
      v12 = sub_1000029E0(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SecureLocationPublisher: network is not up. lets keep location, not publish it", buf, 2u);
      }

      [(FMDSecureLocationPublisher *)self setLastReceivedLocation:locationCopy];
      goto LABEL_14;
    }
  }

  else
  {
    v13 = sub_1000029E0(v8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "SecureLocationPublisher: we are not monitoring network. lets publish and try", buf, 2u);
    }
  }

  [(FMDSecureLocationPublisher *)self setLastPublishedLocation:locationCopy];
  publishingBlock = [(FMDSecureLocationPublisher *)self publishingBlock];
  if (publishingBlock)
  {
    publishQueue = [(FMDSecureLocationPublisher *)self publishQueue];
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_1001D6CFC;
    v23 = &unk_1002CD8B0;
    v25 = publishingBlock;
    v16 = locationCopy;
    v24 = v16;
    dispatch_async(publishQueue, &v20);

    locationInfo = [v16 locationInfo];
    timestamp = [locationInfo timestamp];
    [(FMDSecureLocationPublisher *)self _persistLastPublishedTimestamp:timestamp];

    [(FMDSecureLocationPublisher *)self setLastReceivedLocation:0];
    v19 = v25;
  }

  else
  {
    v19 = sub_1000029E0(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "SecureLocationPublisher: no publish block to send locations to", buf, 2u);
    }
  }

LABEL_14:
}

- (id)_persistedLastPublishedTimestamp
{
  serialQueue = [(FMDSecureLocationPublisher *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v3 = [FMPreferencesUtil objectForKey:@"secureLocationsLastPublishedTimestamp" inDomain:kFMDNotBackedUpPrefDomain];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v5 = [NSDate dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_persistLastPublishedTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  serialQueue = [(FMDSecureLocationPublisher *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  if (timestampCopy)
  {
    [timestampCopy timeIntervalSince1970];
    v7 = [NSNumber numberWithDouble:?];
    [FMPreferencesUtil setObject:v7 forKey:@"secureLocationsLastPublishedTimestamp" inDomain:kFMDNotBackedUpPrefDomain];
  }

  v8 = sub_1000029E0(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = timestampCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SecureLocationPublisher: Persisted lastPublished %@", &v9, 0xCu);
  }
}

@end