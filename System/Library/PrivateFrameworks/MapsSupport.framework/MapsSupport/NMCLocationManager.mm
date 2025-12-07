@interface NMCLocationManager
- (NMCLocationManager)initWithBundleIdentifier:(id)identifier;
- (NMCLocationManager)initWithEffectiveBundleIdentifier:(id)identifier;
- (void)dealloc;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)locationManagerDidPauseLocationUpdates:(id)updates;
- (void)locationManagerDidResumeLocationUpdates:(id)updates;
- (void)reset;
- (void)startLocationUpdate;
- (void)stopLocationUpdate;
@end

@implementation NMCLocationManager

- (NMCLocationManager)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = NMCLocationManager;
  v5 = [(NMCLocationManager *)&v14 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = v5->_bundleIdentifier;
    v9 = v8;
    if (v8)
    {
      v10 = sub_100029194(v8);
      v11 = [v10 objectForKeyedSubscript:v9];
      if (!v11)
      {
        v11 = v9;
      }
    }

    else
    {
      v11 = 0;
    }

    effectiveBundleIdentifier = v5->_effectiveBundleIdentifier;
    v5->_effectiveBundleIdentifier = v11;
  }

  return v5;
}

- (NMCLocationManager)initWithEffectiveBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v21.receiver = self;
  v21.super_class = NMCLocationManager;
  v5 = [(NMCLocationManager *)&v21 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    effectiveBundleIdentifier = v5->_effectiveBundleIdentifier;
    v5->_effectiveBundleIdentifier = v6;

    v8 = identifierCopy;
    v9 = v8;
    if (v8)
    {
      v10 = sub_100029194(v8);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v22 + 1) + 8 * i);
            v17 = [v11 objectForKeyedSubscript:v16];
            if ([v17 isEqualToString:v9])
            {
              v18 = v16;

              goto LABEL_13;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v18 = v9;
LABEL_13:
    }

    else
    {
      v18 = 0;
    }

    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v18;
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NMCLocationManager;
  [(NMCLocationManager *)&v2 dealloc];
}

- (void)startLocationUpdate
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028A84;
  block[3] = &unk_100084F10;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)stopLocationUpdate
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028BAC;
  block[3] = &unk_100084F10;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)reset
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028C8C;
  block[3] = &unk_100084F10;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v4 = [authorization authorizationStatus] - 3;
  if (self->_updatingLocations && v4 <= 1)
  {
    locationManager = self->_locationManager;

    [(CLLocationManager *)locationManager startUpdatingLocation];
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  locationsCopy = locations;
  if ([locationsCopy count])
  {
    firstObject = [locationsCopy firstObject];
    v6 = objc_alloc_init(NMMessage);
    [(NMMessage *)v6 setType:202];
    v7 = [[NMArgument alloc] _nm_initWithLocation:firstObject tag:1];
    [(NMMessage *)v6 addArgument:v7];
    v8 = objc_alloc_init(NMArgument);

    [(NMArgument *)v8 setTag:4];
    [(NMArgument *)v8 setStringValue:self->_bundleIdentifier];
    [(NMMessage *)v6 addArgument:v8];
    v9 = +[NMCGizmoConnection sharedInstance];
    [v9 sendMessage:v6 options:0];

    locationDidUpdate = [(NMCLocationManager *)self locationDidUpdate];

    if (locationDidUpdate)
    {
      locationDidUpdate2 = [(NMCLocationManager *)self locationDidUpdate];
      (locationDidUpdate2)[2](locationDidUpdate2, firstObject);
    }
  }

  _objc_release_x1();
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  v9 = objc_alloc_init(NMMessage);
  [(NMMessage *)v9 setType:203];
  v6 = [[NMArgument alloc] _nm_initWithErrorValue:errorCopy tag:3];

  [(NMMessage *)v9 addArgument:v6];
  v7 = objc_alloc_init(NMArgument);

  [(NMArgument *)v7 setTag:4];
  [(NMArgument *)v7 setStringValue:self->_bundleIdentifier];
  [(NMMessage *)v9 addArgument:v7];
  v8 = +[NMCGizmoConnection sharedInstance];
  [v8 sendMessage:v9 options:0];
}

- (void)locationManagerDidPauseLocationUpdates:(id)updates
{
  v6 = objc_alloc_init(NMMessage);
  [(NMMessage *)v6 setType:204];
  v4 = objc_alloc_init(NMArgument);
  [(NMArgument *)v4 setTag:4];
  [(NMArgument *)v4 setStringValue:self->_bundleIdentifier];
  [(NMMessage *)v6 addArgument:v4];
  v5 = +[NMCGizmoConnection sharedInstance];
  [v5 sendMessage:v6 options:0];
}

- (void)locationManagerDidResumeLocationUpdates:(id)updates
{
  v6 = objc_alloc_init(NMMessage);
  [(NMMessage *)v6 setType:205];
  v4 = objc_alloc_init(NMArgument);
  [(NMArgument *)v4 setTag:4];
  [(NMArgument *)v4 setStringValue:self->_bundleIdentifier];
  [(NMMessage *)v6 addArgument:v4];
  v5 = +[NMCGizmoConnection sharedInstance];
  [v5 sendMessage:v6 options:0];
}

@end