@interface TSDgPTPPort
+ (id)diagnosticInfoForClockIdentifier:(unint64_t)identifier andPortNumber:(unsigned __int16)number;
+ (id)diagnosticInfoForService:(id)service;
+ (id)gPTPPortWithClockIdentifier:(unint64_t)identifier portNumber:(unsigned __int16)number;
+ (id)gPTPPortWithService:(id)service;
+ (id)iokitMatchingDictionaryForPortClass:(id)class clockIdentifier:(unint64_t)identifier andPortNumber:(unsigned __int16)number;
- (BOOL)startAutomaticPropertyUpdates;
- (BOOL)stopAutomaticPropertyUpdates;
- (TSDgPTPPort)init;
- (TSDgPTPPort)initWithService:(id)service pid:(int)pid;
- (id)getMetrics;
- (id)getMetricsWithDelta:(id)delta;
- (id)propertiesForXPC;
- (int)_portRole;
- (unint64_t)_clockIdentifier;
- (unsigned)_portNumber;
- (void)finalizeNotifications;
- (void)setPropertyUpdateQueue:(id)queue;
- (void)updateProperties;
@end

@implementation TSDgPTPPort

- (unsigned)_portNumber
{
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"PortNumber"];

  if (v3)
  {
    unsignedShortValue = [v3 unsignedShortValue];
  }

  else
  {
    unsignedShortValue = 0;
  }

  return unsignedShortValue;
}

- (unint64_t)_clockIdentifier
{
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"ClockIdentifier"];

  if (v3)
  {
    unsignedLongLongValue = [v3 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (int)_portRole
{
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"PortRole"];

  if (v3)
  {
    intValue = [v3 intValue];
    if (intValue < 4)
    {
      v5 = intValue + 1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)iokitMatchingDictionaryForPortClass:(id)class clockIdentifier:(unint64_t)identifier andPortNumber:(unsigned __int16)number
{
  numberCopy = number;
  v15[0] = @"IOProviderClass";
  v15[1] = @"IOPropertyMatch";
  v16[0] = class;
  v13[0] = @"PortNumber";
  classCopy = class;
  v8 = [NSNumber numberWithUnsignedShort:numberCopy];
  v13[1] = @"ClockIdentifier";
  v14[0] = v8;
  v9 = [NSNumber numberWithUnsignedLongLong:identifier];
  v14[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v16[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

  return v11;
}

- (TSDgPTPPort)init
{
  v3 = [NSString stringWithUTF8String:"[TSDgPTPPort init]"];
  [NSException raise:NSInvalidArgumentException format:@"Do not call %@", v3];

  return 0;
}

+ (id)gPTPPortWithService:(id)service
{
  serviceCopy = service;
  if ([serviceCopy conformsToIOClassName:@"IOTimeSyncEthernetPort"])
  {
    v4 = off_10004C4B8;
LABEL_21:
    v5 = [objc_alloc(*v4) initWithService:serviceCopy];
    goto LABEL_22;
  }

  if ([serviceCopy conformsToIOClassName:@"IOTimeSyncUnicastLinkLayerPtPPort"])
  {
    v4 = off_10004C4E0;
    goto LABEL_21;
  }

  if ([serviceCopy conformsToIOClassName:@"IOTimeSyncUnicastUDPv4PtPPort"])
  {
    v4 = off_10004C4F0;
    goto LABEL_21;
  }

  if ([serviceCopy conformsToIOClassName:@"IOTimeSyncUnicastUDPv6PtPPort"])
  {
    v4 = &off_10004C500;
    goto LABEL_21;
  }

  if ([serviceCopy conformsToIOClassName:@"IOTimeSyncUnicastLinkLayerEtEPort"])
  {
    v4 = off_10004C4D8;
    goto LABEL_21;
  }

  if ([serviceCopy conformsToIOClassName:@"IOTimeSyncUnicastUDPv4EtEPort"])
  {
    v4 = off_10004C4E8;
    goto LABEL_21;
  }

  if ([serviceCopy conformsToIOClassName:@"IOTimeSyncUnicastUDPv6EtEPort"])
  {
    v4 = off_10004C4F8;
    goto LABEL_21;
  }

  if ([serviceCopy conformsToIOClassName:@"IOTimeSyncLocalClockPort"])
  {
    v4 = off_10004C4C0;
    goto LABEL_21;
  }

  if ([serviceCopy conformsToIOClassName:@"IOTimeSyncNetworkPort"])
  {
    v4 = off_10004C4C8;
    goto LABEL_21;
  }

  if ([serviceCopy conformsToIOClassName:@"IOTimeSyncPort"])
  {
    v4 = off_10004C4D0;
    goto LABEL_21;
  }

  v5 = 0;
LABEL_22:

  return v5;
}

+ (id)gPTPPortWithClockIdentifier:(unint64_t)identifier portNumber:(unsigned __int16)number
{
  v5 = [self iokitMatchingDictionaryForClockIdentifier:identifier andPortNumber:number];
  v6 = [IOKService matchingService:v5];

  v7 = [self gPTPPortWithService:v6];

  return v7;
}

- (TSDgPTPPort)initWithService:(id)service pid:(int)pid
{
  serviceCopy = service;
  v20.receiver = self;
  v20.super_class = TSDgPTPPort;
  v7 = [(TSDgPTPPort *)&v20 init];
  if (v7)
  {
    objc_initWeak(&location, v7);
    objc_storeStrong(&v7->_service, service);
    if (v7->_service)
    {
      v7->_portNumber = [(TSDgPTPPort *)v7 _portNumber];
      v7->_clockIdentifier = [(TSDgPTPPort *)v7 _clockIdentifier];
      if (qword_100058848 != -1)
      {
        sub_10002A5E4();
      }

      if (qword_100058840)
      {
        objc_storeStrong(&v7->_propertyUpdateQueue, qword_100058840);
        v7->_portRole = [(TSDgPTPPort *)v7 _portRole];
        v8 = [IOKNotificationPort alloc];
        v9 = [v8 initOnDispatchQueue:qword_100058840];
        notificationPort = v7->_notificationPort;
        v7->_notificationPort = v9;

        v11 = v7->_notificationPort;
        if (v11)
        {
          service = v7->_service;
          v13 = IOKGeneralInterest;
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_10000D09C;
          v17[3] = &unk_10004C8F8;
          objc_copyWeak(&v18, &location);
          v14 = [(IOKService *)service addInterestNotifcationOfType:v13 usingNotificationPort:v11 error:0 withHandler:v17];
          generalInterestNotification = v7->_generalInterestNotification;
          v7->_generalInterestNotification = v14;

          objc_destroyWeak(&v18);
          if (v7->_generalInterestNotification)
          {
LABEL_8:
            objc_destroyWeak(&location);
            goto LABEL_9;
          }

          sub_10002A60C();
        }

        else
        {
          sub_10002A6BC();
        }
      }

      else
      {
        sub_10002A76C();
      }
    }

    else
    {
      sub_10002A81C();
    }

    v7 = 0;
    goto LABEL_8;
  }

LABEL_9:

  return v7;
}

- (void)updateProperties
{
  propertyUpdateQueue = [(TSDgPTPPort *)self propertyUpdateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D1FC;
  block[3] = &unk_10004C920;
  _portRole = [(TSDgPTPPort *)self _portRole];
  block[4] = self;
  block[5] = [(TSDgPTPPort *)self _clockIdentifier];
  dispatch_async(propertyUpdateQueue, block);
}

- (BOOL)startAutomaticPropertyUpdates
{
  v2 = self->_generalInterestNotification != 0;
  self->_updatePropertiesOnPropertyChange = 1;
  return v2;
}

- (BOOL)stopAutomaticPropertyUpdates
{
  self->_updatePropertiesOnPropertyChange = 0;
  dispatch_sync(qword_100058840, &stru_10004C940);
  return 1;
}

- (void)setPropertyUpdateQueue:(id)queue
{
  queueCopy = queue;
  if (!queueCopy)
  {
    queueCopy = qword_100058840;
  }

  self->_propertyUpdateQueue = queueCopy;

  _objc_release_x1();
}

- (void)finalizeNotifications
{
  self->_updatePropertiesOnPropertyChange = 0;
  generalInterestNotification = self->_generalInterestNotification;
  self->_generalInterestNotification = 0;

  notificationPort = self->_notificationPort;
  self->_notificationPort = 0;
}

- (id)propertiesForXPC
{
  v3 = objc_opt_class();
  service = [(TSDgPTPPort *)self service];
  v5 = [v3 diagnosticInfoForService:service];

  v6 = [v5 objectForKeyedSubscript:@"PortRole"];
  if (!v6)
  {
    v7 = [NSNumber numberWithInt:0];
    goto LABEL_13;
  }

  v7 = v6;
  intValue = [v6 intValue];
  if (intValue > 1)
  {
    if (intValue == 2)
    {
      v9 = 3;
    }

    else
    {
      if (intValue != 3)
      {
        goto LABEL_13;
      }

      v9 = 4;
    }
  }

  else if (intValue)
  {
    if (intValue != 1)
    {
      goto LABEL_13;
    }

    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = [NSNumber numberWithInt:v9];

  v7 = v10;
LABEL_13:
  [v5 setObject:v7 forKeyedSubscript:@"PortRole"];

  return v5;
}

+ (id)diagnosticInfoForService:(id)service
{
  serviceCopy = service;
  v4 = +[NSMutableDictionary dictionary];
  ioClassName = [serviceCopy ioClassName];
  [v4 setObject:ioClassName forKeyedSubscript:@"ClassName"];

  iodProperties = [serviceCopy iodProperties];

  [v4 addEntriesFromDictionary:iodProperties];
  [v4 removeObjectForKey:@"IOUserClientClass"];
  [v4 removeObjectForKey:@"IOGeneralInterest"];
  [v4 removeObjectForKey:@"SourceMACAddress"];
  [v4 removeObjectForKey:@"DestinationMACAddress"];
  [v4 removeObjectForKey:@"SourceIPAddress"];
  [v4 removeObjectForKey:@"SourceIPMask"];
  [v4 removeObjectForKey:@"DestinationIPAddress"];

  return v4;
}

+ (id)diagnosticInfoForClockIdentifier:(unint64_t)identifier andPortNumber:(unsigned __int16)number
{
  v4 = [self iokitMatchingDictionaryForClockIdentifier:identifier andPortNumber:number];
  v5 = [IOKService matchingService:v4];

  if (v5)
  {
    if ([v5 conformsToIOClassName:@"IOTimeSyncEthernetPort"])
    {
      v6 = TSDgPTPEthernetPort;
LABEL_20:
      v7 = [(__objc2_class *)v6 diagnosticInfoForService:v5];
      goto LABEL_21;
    }

    if ([v5 conformsToIOClassName:@"IOTimeSyncUnicastLinkLayerPtPPort"])
    {
      v6 = TSDgPTPUnicastLinkLayerPtPPort;
      goto LABEL_20;
    }

    if ([v5 conformsToIOClassName:@"IOTimeSyncUnicastLinkLayerEtEPort"])
    {
      v6 = TSDgPTPUnicastLinkLayerEtEPort;
      goto LABEL_20;
    }

    if ([v5 conformsToIOClassName:@"IOTimeSyncUnicastUDPv4PtPPort"])
    {
      v6 = TSDgPTPUnicastUDPv4PtPPort;
      goto LABEL_20;
    }

    if ([v5 conformsToIOClassName:@"IOTimeSyncUnicastUDPv6PtPPort"])
    {
      v6 = TSDgPTPUnicastUDPv6PtPPort;
      goto LABEL_20;
    }

    if ([v5 conformsToIOClassName:@"IOTimeSyncUnicastUDPv4EtEPort"])
    {
      v6 = TSDgPTPUnicastUDPv4EtEPort;
      goto LABEL_20;
    }

    if ([v5 conformsToIOClassName:@"IOTimeSyncUnicastUDPv6EtEPort"])
    {
      v6 = TSDgPTPUnicastUDPv6EtEPort;
      goto LABEL_20;
    }

    if ([v5 conformsToIOClassName:@"IOTimeSyncLocalClockPort"])
    {
      v6 = TSDgPTPLocalClockPort;
      goto LABEL_20;
    }

    if ([v5 conformsToIOClassName:@"IOTimeSyncPort"])
    {
      v6 = TSDgPTPPort;
      goto LABEL_20;
    }

    v7 = 0;
  }

  else
  {
    sub_10002A8CC(&v9);
    v7 = v9;
  }

LABEL_21:

  return v7;
}

- (id)getMetrics
{
  v2 = [[TSDPortMetrics alloc] initWithPort:self];

  return v2;
}

- (id)getMetricsWithDelta:(id)delta
{
  deltaCopy = delta;
  getMetrics = [(TSDgPTPPort *)self getMetrics];
  v6 = [getMetrics getDelta:deltaCopy];

  return v6;
}

@end