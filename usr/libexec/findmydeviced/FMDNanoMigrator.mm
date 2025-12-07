@interface FMDNanoMigrator
- (FMDNanoMigrator)initWithCompanionRegistry:(id)registry unregisterTokenStore:(id)store serverInteractionController:(id)controller;
- (id)deviceInfoForHostDevice;
- (id)lastScheduledJanitorDate;
- (id)unregisterDeviceInfoAdaptors;
- (void)addObservers;
- (void)scheduleJanitor:(double)janitor;
- (void)setJanitorScheduledDate:(id)date;
- (void)unregisterAccessoriesIfNeeded;
@end

@implementation FMDNanoMigrator

- (FMDNanoMigrator)initWithCompanionRegistry:(id)registry unregisterTokenStore:(id)store serverInteractionController:(id)controller
{
  registryCopy = registry;
  storeCopy = store;
  controllerCopy = controller;
  v26.receiver = self;
  v26.super_class = FMDNanoMigrator;
  v11 = [(FMDNanoMigrator *)&v26 init];
  v12 = v11;
  if (v11)
  {
    [(FMDNanoMigrator *)v11 setRegistry:registryCopy];
    [(FMDNanoMigrator *)v12 setUnregisterTokenStore:storeCopy];
    [(FMDNanoMigrator *)v12 setServerInteractionController:controllerCopy];
    [(FMDNanoMigrator *)v12 addObservers];
    objc_initWeak(&location, v12);
    v13 = +[FMSystemInfo sharedInstance];
    isInternalBuild = [v13 isInternalBuild];

    if (isInternalBuild)
    {
      v15 = [FMPreferencesUtil integerForKey:@"NanoMigratorRetryInterval" inDomain:kFMDNotBackedUpPrefDomain];
      if (v15 <= 0)
      {
        v16 = 10800.0;
      }

      else
      {
        v16 = v15;
      }
    }

    else
    {
      v16 = 10800.0;
    }

    v17 = [FMDXPCJanitor alloc];
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_10017BFA8;
    v23 = &unk_1002CD518;
    objc_copyWeak(&v24, &location);
    v18 = [(FMDXPCJanitor *)v17 initWithName:@"FMDNanoMigratorJanitor" gracePeriod:&v20 cleanupTask:v16];
    [(FMDNanoMigrator *)v12 setJanitor:v18, v20, v21, v22, v23];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (void)unregisterAccessoriesIfNeeded
{
  v3 = +[FMSystemInfo sharedInstance];
  isInternalBuild = [v3 isInternalBuild];

  if (isInternalBuild)
  {
    v5 = [FMPreferencesUtil integerForKey:@"NanoMigratorRetryInterval" inDomain:kFMDNotBackedUpPrefDomain];
    if (v5 <= 0)
    {
      v6 = 3600.0;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = 3600.0;
  }

  [(FMDNanoMigrator *)self scheduleJanitor:v6];
  unregisterDeviceInfoAdaptors = [(FMDNanoMigrator *)self unregisterDeviceInfoAdaptors];
  v8 = [unregisterDeviceInfoAdaptors count];
  if (v8)
  {
    v9 = v8;
    v10 = sub_100002880(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FMDNanoMigrator will attempt to unregister %li", buf, 0xCu);
    }

    v12 = sub_10017DFC4(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Watch Migration: Unregister device count %li", buf, 0xCu);
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10017C318;
    v16[3] = &unk_1002CF8C0;
    v16[4] = self;
    *&v16[5] = v6;
    [unregisterDeviceInfoAdaptors enumerateObjectsUsingBlock:v16];
  }

  else
  {
    v13 = sub_10017DFC4(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Watch Migration: There were no devices or no tokens to unregister.", buf, 2u);
    }

    v15 = sub_100002880(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "FMDNanoMigrator there were no devices or no tokens to unregister.", buf, 2u);
    }
  }
}

- (void)addObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"deviceDidPair:" name:@"nano.devicedidpair" object:0];
}

- (void)scheduleJanitor:(double)janitor
{
  unregisterTokenStore = [(FMDNanoMigrator *)self unregisterTokenStore];
  accessoriesNeedUnregister = [unregisterTokenStore accessoriesNeedUnregister];

  if (janitor <= 0.0 || accessoriesNeedUnregister == 0)
  {
    v9 = sub_100002880(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FMDNanoMigrator deactivating janitor", &v26, 2u);
    }

    v11 = sub_10017DFC4(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Watch Migration: deactivating janitor", &v26, 2u);
    }

    [(FMDNanoMigrator *)self setJanitorScheduledDate:0];
    janitor = [(FMDNanoMigrator *)self janitor];
    [janitor deactivate];
  }

  else
  {
    janitor = [(FMDNanoMigrator *)self lastScheduledJanitorDate];
    [janitor timeIntervalSinceReferenceDate];
    v14 = v13;
    v15 = +[NSDate date];
    [v15 timeIntervalSinceReferenceDate];
    v17 = v14 - v16;

    v19 = janitor;
    if (v17 < 60.0)
    {
      v20 = sub_100002880(v18);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "FMDNanoMigrator The last scheduled time is too short, rescheduling.", &v26, 2u);
      }

      v19 = [NSDate dateWithTimeIntervalSinceNow:janitor];
    }

    v21 = sub_100002880(v18);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412290;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "FMDNanoMigrator scheduling janitor to run %@", &v26, 0xCu);
    }

    v23 = sub_10017DFC4(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      fm_epoch = [v19 fm_epoch];
      v26 = 134217984;
      v27 = fm_epoch;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Watch Migration: scheduling janitor to run %lli", &v26, 0xCu);
    }

    [(FMDNanoMigrator *)self setJanitorScheduledDate:v19];
    janitor2 = [(FMDNanoMigrator *)self janitor];
    [janitor2 schedule:v19 requireClass:1];
  }
}

- (id)deviceInfoForHostDevice
{
  v2 = objc_alloc_init(FMDFMIPUnregisterDeviceInfo);
  v3 = +[FMDSystemConfig sharedInstance];
  deviceUDID = [v3 deviceUDID];
  [(FMDFMIPUnregisterDeviceInfo *)v2 setUdid:deviceUDID];

  v5 = +[FMDSystemConfig sharedInstance];
  internationalMobileEquipmentIdentity = [v5 internationalMobileEquipmentIdentity];
  [(FMDFMIPUnregisterDeviceInfo *)v2 setImei:internationalMobileEquipmentIdentity];

  v7 = +[FMDSystemConfig sharedInstance];
  mobileEquipmentIdentifier = [v7 mobileEquipmentIdentifier];
  [(FMDFMIPUnregisterDeviceInfo *)v2 setMeid:mobileEquipmentIdentifier];

  v9 = +[FMDSystemConfig sharedInstance];
  serialNumber = [v9 serialNumber];
  [(FMDFMIPUnregisterDeviceInfo *)v2 setSerialNumber:serialNumber];

  v11 = +[FMDSystemConfig sharedInstance];
  productType = [v11 productType];
  [(FMDFMIPUnregisterDeviceInfo *)v2 setProductType:productType];

  v13 = +[FMDSystemConfig sharedInstance];
  productVersion = [v13 productVersion];
  [(FMDFMIPUnregisterDeviceInfo *)v2 setProductVersion:productVersion];

  v15 = +[FMDSystemConfig sharedInstance];
  buildVersion = [v15 buildVersion];
  [(FMDFMIPUnregisterDeviceInfo *)v2 setBuildVersion:buildVersion];

  [(FMDFMIPUnregisterDeviceInfo *)v2 setDisableContext:7];

  return v2;
}

- (id)unregisterDeviceInfoAdaptors
{
  v3 = +[NSMutableArray array];
  registry = [(FMDNanoMigrator *)self registry];
  pairedAccessories = [registry pairedAccessories];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10017CF90;
  v10[3] = &unk_1002CF8E8;
  v10[4] = self;
  v6 = v3;
  v11 = v6;
  [pairedAccessories enumerateObjectsUsingBlock:v10];
  v7 = v11;
  v8 = v6;

  return v6;
}

- (id)lastScheduledJanitorDate
{
  v2 = +[FMDProtectedContextManager sharedManager];
  v3 = [v2 contextForKey:@"FMDNanoMigratorLastScheduledJanitorDateKey" contextUUID:0 error:0];

  return v3;
}

- (void)setJanitorScheduledDate:(id)date
{
  dateCopy = date;
  v3 = +[FMDProtectedContextManager sharedManager];
  v4 = v3;
  if (dateCopy)
  {
    v5 = [v3 saveContext:dateCopy forContextKey:@"FMDNanoMigratorLastScheduledJanitorDateKey" dataProtectionClass:4];
  }

  else
  {
    [v3 cleanupAllContextsForKey:@"FMDNanoMigratorLastScheduledJanitorDateKey"];
  }
}

@end