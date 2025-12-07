@interface ULPrivacyMonitor
- (ULPrivacyMonitor)initWithNotificationHelper:(id)helper;
- (id)_locationAuthorizationStatusToString:(int)string;
- (id)latestEventAfterAddingObserverForEventName:(id)name;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)startMonitoring:(id)monitoring;
- (void)stopMonitoring:(id)monitoring;
@end

@implementation ULPrivacyMonitor

- (ULPrivacyMonitor)initWithNotificationHelper:(id)helper
{
  helperCopy = helper;
  v8.receiver = self;
  v8.super_class = ULPrivacyMonitor;
  v5 = [(ULEventMonitor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ULPrivacyMonitor *)v5 setNotificationHelper:helperCopy];
  }

  return v6;
}

- (void)startMonitoring:(id)monitoring
{
  v17 = *MEMORY[0x277D85DE8];
  monitoringCopy = monitoring;
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = objc_alloc(MEMORY[0x277CBFC10]);
  queue2 = [(ULEventMonitor *)self queue];
  v8 = [v6 initWithEffectiveBundlePath:@"/System/Library/LocationBundles/Routine.bundle" delegate:self onQueue:queue2];
  [(ULPrivacyMonitor *)self setLocationManager:v8];

  [(ULPrivacyMonitor *)self setLocationServicesEnabled:1];
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULPrivacyMonitor startMonitoring:];
  }

  v9 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    locationServicesEnabled = [(ULPrivacyMonitor *)self locationServicesEnabled];
    v12 = @"NO";
    if (locationServicesEnabled)
    {
      v12 = @"YES";
    }

    v13 = 138412546;
    v14 = monitoringCopy;
    v15 = 2112;
    v16 = v12;
    _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "Start monitoring: %@, locationServicesEnabled: %@", &v13, 0x16u);
  }
}

- (void)stopMonitoring:(id)monitoring
{
  v9 = *MEMORY[0x277D85DE8];
  monitoringCopy = monitoring;
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULPrivacyMonitor startMonitoring:];
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = monitoringCopy;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "Stop monitoring: %@", &v7, 0xCu);
  }

  [(ULPrivacyMonitor *)self setLocationManager:0];
  [(ULPrivacyMonitor *)self setLocationServicesEnabled:0];
}

- (id)latestEventAfterAddingObserverForEventName:(id)name
{
  nameCopy = name;
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[(ULEvent *)ULPrivacyMonitorEventLocationServices];
  v7 = [nameCopy isEqual:v6];

  if (v7)
  {
    v8 = objc_alloc_init(ULPrivacyMonitorEventLocationServices);
    [(ULPrivacyMonitorEventLocationServices *)v8 setLocationServicesEnabled:[(ULPrivacyMonitor *)self locationServicesEnabled]];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v14 = *MEMORY[0x277D85DE8];
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  locationManager = [(ULPrivacyMonitor *)self locationManager];
  authorizationStatus = [locationManager authorizationStatus];

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULPrivacyMonitor startMonitoring:];
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(ULPrivacyMonitor *)self _locationAuthorizationStatusToString:authorizationStatus];
    v12 = 138412290;
    v13 = v9;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "location manager did change auth status: %@", &v12, 0xCu);
  }

  v10 = [(ULPrivacyMonitor *)self _checkLocationServicesEnabledForAuthorizationStatus:authorizationStatus];
  if (v10 != [(ULPrivacyMonitor *)self locationServicesEnabled])
  {
    [(ULPrivacyMonitor *)self setLocationServicesEnabled:v10];
    v11 = objc_alloc_init(ULPrivacyMonitorEventLocationServices);
    [(ULPrivacyMonitorEventLocationServices *)v11 setLocationServicesEnabled:v10];
    [(ULEventMonitor *)self postEvent:v11];
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v10 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULPrivacyMonitor startMonitoring:];
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = errorCopy;
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_ERROR, "Location manager failed with error: %@", &v8, 0xCu);
  }
}

- (id)_locationAuthorizationStatusToString:(int)string
{
  if (string > 4)
  {
    return @"Unkown";
  }

  else
  {
    return off_2798D4318[string];
  }
}

@end