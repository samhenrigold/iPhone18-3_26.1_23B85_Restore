@interface DNDSLocationLifetimeMonitor
- (DNDSLifetimeMonitorDelegate)delegate;
- (DNDSLocationLifetimeMonitor)initWithMeDeviceService:(id)service;
- (DNDSLocationLifetimeMonitorDataSource)dataSource;
- (NSArray)activeLifetimeAssertionUUIDs;
- (NSString)sysdiagnoseDataIdentifier;
- (id)sysdiagnoseDataForDate:(id)date redacted:(BOOL)redacted;
- (unint64_t)availableRegions;
- (void)_queue_refreshMonitorForDate:(id)date;
- (void)locationManager:(id)manager didDetermineState:(int64_t)state forRegion:(id)region;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManager:(id)manager monitoringDidFailForRegion:(id)region withError:(id)error;
- (void)meDeviceService:(id)service didReceiveMeDeviceStateUpdate:(id)update;
- (void)refreshMonitorForDate:(id)date;
@end

@implementation DNDSLocationLifetimeMonitor

- (DNDSLocationLifetimeMonitor)initWithMeDeviceService:(id)service
{
  v24[2] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v23.receiver = self;
  v23.super_class = DNDSLocationLifetimeMonitor;
  v6 = [(DNDSLocationLifetimeMonitor *)&v23 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.donotdisturb.server.LocationLifetimeMonitor", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    objc_storeStrong(&v6->_meDeviceService, service);
    [serviceCopy addListener:v6];
    v10 = [[DNDSUntilExitLocationLifetimeMonitor alloc] initWithAggregateMonitor:v6];
    untilExitMonitor = v6->_untilExitMonitor;
    v6->_untilExitMonitor = v10;

    v12 = [[DNDSExplicitRegionLocationLifetimeMonitor alloc] initWithAggregateMonitor:v6];
    explicitRegionMonitor = v6->_explicitRegionMonitor;
    v6->_explicitRegionMonitor = v12;

    v14 = v6->_untilExitMonitor;
    v24[0] = v6->_explicitRegionMonitor;
    v24[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    children = v6->_children;
    v6->_children = v15;

    meDeviceState = [serviceCopy meDeviceState];
    meDeviceStatus = [meDeviceState meDeviceStatus];

    if (meDeviceStatus == 2)
    {
      v19 = v6->_queue;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __55__DNDSLocationLifetimeMonitor_initWithMeDeviceService___block_invoke;
      v21[3] = &unk_278F89ED0;
      v22 = v6;
      dispatch_sync(v19, v21);
    }

    DNDSRegisterSysdiagnoseDataProvider(v6);
  }

  return v6;
}

void __55__DNDSLocationLifetimeMonitor_initWithMeDeviceService___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBFC10]);
  v7 = [MEMORY[0x277CCA8D8] dnd_locationBundle];
  v3 = [v7 bundlePath];
  v4 = [v2 initWithEffectiveBundlePath:v3 delegate:*(a1 + 32) onQueue:*(*(a1 + 32) + 8)];
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = v4;
}

- (NSArray)activeLifetimeAssertionUUIDs
{
  activeLifetimeAssertionUUIDs = [(DNDSExplicitRegionLocationLifetimeMonitor *)self->_explicitRegionMonitor activeLifetimeAssertionUUIDs];
  activeLifetimeAssertionUUIDs2 = [(DNDSUntilExitLocationLifetimeMonitor *)self->_untilExitMonitor activeLifetimeAssertionUUIDs];
  v5 = [activeLifetimeAssertionUUIDs arrayByAddingObjectsFromArray:activeLifetimeAssertionUUIDs2];

  return v5;
}

- (void)refreshMonitorForDate:(id)date
{
  dateCopy = date;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__DNDSLocationLifetimeMonitor_refreshMonitorForDate___block_invoke;
  v7[3] = &unk_278F89F48;
  v7[4] = self;
  v8 = dateCopy;
  v6 = dateCopy;
  dispatch_sync(queue, v7);
}

- (unint64_t)availableRegions
{
  monitoredRegions = [(CLLocationManager *)self->_locationManager monitoredRegions];
  v4 = [monitoredRegions count];
  v5 = ~v4 + [(DNDSUntilExitLocationLifetimeMonitor *)self->_untilExitMonitor hasCurrentRegion];

  return v5 + 20;
}

- (void)locationManager:(id)manager monitoringDidFailForRegion:(id)region withError:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  regionCopy = region;
  errorCopy = error;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->_children;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 locationManager:managerCopy monitoringDidFailForRegion:regionCopy withError:{errorCopy, v17}];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

- (void)locationManager:(id)manager didDetermineState:(int64_t)state forRegion:(id)region
{
  v21 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  regionCopy = region;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_children;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          [v15 locationManager:managerCopy didDetermineState:state forRegion:{regionCopy, v16}];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  v19 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  locationsCopy = locations;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_children;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 locationManager:managerCopy didUpdateLocations:{locationsCopy, v14}];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  errorCopy = error;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_children;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 locationManager:managerCopy didFailWithError:{errorCopy, v14}];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)meDeviceService:(id)service didReceiveMeDeviceStateUpdate:(id)update
{
  updateCopy = update;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__DNDSLocationLifetimeMonitor_meDeviceService_didReceiveMeDeviceStateUpdate___block_invoke;
  v8[3] = &unk_278F89F48;
  v9 = updateCopy;
  selfCopy = self;
  v7 = updateCopy;
  dispatch_sync(queue, v8);
}

void *__77__DNDSLocationLifetimeMonitor_meDeviceService_didReceiveMeDeviceStateUpdate___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) meDeviceStatus];
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  if (result == 2)
  {
    if (v4)
    {
      return result;
    }

    v5 = objc_alloc(MEMORY[0x277CBFC10]);
    v6 = [MEMORY[0x277CCA8D8] dnd_locationBundle];
    v7 = [v6 bundlePath];
    v8 = [v5 initWithEffectiveBundlePath:v7 delegate:*(a1 + 40) onQueue:*(*(a1 + 40) + 8)];
    v9 = *(a1 + 40);
    v10 = *(v9 + 16);
    *(v9 + 16) = v8;

    v11 = *(a1 + 40);
    v12 = [MEMORY[0x277CBEAA8] date];
    result = [v11 _queue_refreshMonitorForDate:v12];
    v4 = v12;
  }

  else
  {
    *(v3 + 16) = 0;
  }

  return MEMORY[0x2821F96F8](result, v4);
}

- (void)_queue_refreshMonitorForDate:(id)date
{
  queue = self->_queue;
  dateCopy = date;
  dispatch_assert_queue_V2(queue);
  [(DNDSExplicitRegionLocationLifetimeMonitor *)self->_explicitRegionMonitor refreshMonitorForDate:dateCopy];
  [(DNDSUntilExitLocationLifetimeMonitor *)self->_untilExitMonitor refreshMonitorForDate:dateCopy];
}

- (NSString)sysdiagnoseDataIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"com.apple.donotdisturb.%@", v4];

  return v5;
}

- (id)sysdiagnoseDataForDate:(id)date redacted:(BOOL)redacted
{
  redactedCopy = redacted;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v7 = [(DNDSUntilExitLocationLifetimeMonitor *)self->_untilExitMonitor sysdiagnoseDataRedacted:redactedCopy];
  [dictionary setObject:v7 forKeyedSubscript:@"untilExit"];

  v8 = [(DNDSExplicitRegionLocationLifetimeMonitor *)self->_explicitRegionMonitor sysdiagnoseDataRedacted:redactedCopy];
  [dictionary setObject:v8 forKeyedSubscript:@"explicitRegion"];

  monitoredRegions = [(CLLocationManager *)self->_locationManager monitoredRegions];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __63__DNDSLocationLifetimeMonitor_sysdiagnoseDataForDate_redacted___block_invoke;
  v21[3] = &__block_descriptor_33_e18__16__0__CLRegion_8l;
  v22 = redactedCopy;
  v10 = [monitoredRegions bs_compactMap:v21];
  [dictionary setObject:v10 forKeyedSubscript:@"monitoredRegions"];

  v11 = [MEMORY[0x277CCABB0] numberWithInt:{-[CLLocationManager authorizationStatus](self->_locationManager, "authorizationStatus")}];
  [dictionary setObject:v11 forKeyedSubscript:@"authorizationStatus"];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CLLocationManager accuracyAuthorization](self->_locationManager, "accuracyAuthorization")}];
  [dictionary setObject:v12 forKeyedSubscript:@"accuracyAuthorization"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(objc_opt_class(), "locationServicesEnabled")}];
  [dictionary setObject:v13 forKeyedSubscript:@"locationServicesEnabled"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(objc_opt_class(), "regionMonitoringAvailable")}];
  [dictionary setObject:v14 forKeyedSubscript:@"regionMonitoringAvailable"];

  v15 = MEMORY[0x277CCABB0];
  v16 = objc_opt_class();
  v17 = [v15 numberWithBool:{objc_msgSend(v16, "isMonitoringAvailableForClass:", objc_opt_class())}];
  [dictionary setObject:v17 forKeyedSubscript:@"circularRegionMonitoringAvailable"];

  v18 = MEMORY[0x277CCABB0];
  [(CLLocationManager *)self->_locationManager maximumRegionMonitoringDistance];
  v19 = [v18 numberWithDouble:?];
  [dictionary setObject:v19 forKeyedSubscript:@"maximumRegionMonitoringDistance"];

  return dictionary;
}

id __63__DNDSLocationLifetimeMonitor_sysdiagnoseDataForDate_redacted___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    [a2 identifier];
  }

  else
  {
    [a2 debugDescription];
  }
  v2 = ;

  return v2;
}

- (DNDSLocationLifetimeMonitorDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (DNDSLifetimeMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end