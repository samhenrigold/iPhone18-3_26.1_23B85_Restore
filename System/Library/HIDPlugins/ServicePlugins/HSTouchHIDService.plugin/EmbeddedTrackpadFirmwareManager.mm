@interface EmbeddedTrackpadFirmwareManager
- (void)_handleGetPropertyEvent:(id)event;
- (void)_handleHostStateEvent:(id)event;
- (void)handleConsume:(id)consume;
- (void)handleSetPropertyEvent:(id)event;
@end

@implementation EmbeddedTrackpadFirmwareManager

- (void)handleConsume:(id)consume
{
  consumeCopy = consume;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = consumeCopy;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    [(EmbeddedTrackpadFirmwareManager *)self _handleHostStateEvent:consumeCopy];
  }

  else
  {
    v6 = consumeCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      [(EmbeddedTrackpadFirmwareManager *)self _handleGetPropertyEvent:v6];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = EmbeddedTrackpadFirmwareManager;
      [(TrackpadFirmwareManager *)&v8 handleConsume:v6];
    }
  }
}

- (void)handleSetPropertyEvent:(id)event
{
  eventCopy = event;
  v5 = [NSString stringWithUTF8String:?];
  if ([(__CFString *)v5 isEqualToString:@"DeviceOpenedByEventSystem"])
  {
    v6 = eventCopy[5];
    [(TrackpadFirmwareManager *)self mtDeviceRef];
    Service = MTDeviceGetService();
    IORegistryEntrySetCFProperty(Service, v5, v6);
  }

  v8.receiver = self;
  v8.super_class = EmbeddedTrackpadFirmwareManager;
  [(TrackpadFirmwareManager *)&v8 handleSetPropertyEvent:eventCopy];
}

- (void)_handleGetPropertyEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (*(eventCopy + 39) < 0 && eventCopy[3] == 32)
  {
    v6 = eventCopy[2];
    v7 = *v6;
    v8 = v6[1];
    v10 = v6[2];
    v9 = v6[3];
    if (v7 == 0x746E696F50444948 && v8 == 0x656C656363417265 && v10 == 0x754D6E6F69746172 && v9 == 0x7265696C7069746CLL)
    {
      extendedFeatures = [(TrackpadFirmwareManager *)self extendedFeatures];
      unsignedIntValue = [extendedFeatures unsignedIntValue];

      productId = [(TrackpadFirmwareManager *)self productId];
      intValue = [productId intValue];

      if (intValue == 613 && (unsignedIntValue & 1) == 0)
      {
        v18 = v5[5];
        v5[5] = &off_112458;
      }
    }
  }

  v19.receiver = self;
  v19.super_class = EmbeddedTrackpadFirmwareManager;
  [(TrackpadFirmwareManager *)&v19 handleConsume:v5];
}

- (void)_handleHostStateEvent:(id)event
{
  eventCopy = event;
  v6 = eventCopy;
  if (eventCopy)
  {
    v7 = MTLoggingPlugin(eventCopy, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316930;
      v27 = "[Debug] ";
      v28 = 2080;
      v29 = "";
      v30 = 2080;
      v31 = "[EmbeddedTrackpadFirmwareManager _handleHostStateEvent:]";
      v32 = 2048;
      mtDeviceId = [(TrackpadFirmwareManager *)self mtDeviceId];
      v34 = 1024;
      coverClosed = [v6 coverClosed];
      v36 = 1024;
      displayOff = [v6 displayOff];
      v38 = 1024;
      screenOrientation = [v6 screenOrientation];
      v40 = 1024;
      deviceOrientation = [v6 deviceOrientation];
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s [0x%llX] Notifying device of host state change coverClosed(%d) displayOff(%d) screenOrientation(%d) deviceOrientation(%d)", buf, 0x42u);
    }

    v19 = -99;
    screenOrientation2 = [v6 screenOrientation];
    coverClosed2 = [v6 coverClosed];
    if ([v6 displayOff])
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    v21 = v9 | coverClosed2;
    deviceOrientation2 = [v6 deviceOrientation];
    v23 = 0;
    v24 = 0;
    if (![(TrackpadFirmwareManager *)self mtDeviceRef])
    {
      v16 = +[NSAssertionHandler currentHandler];
      v17 = [NSString stringWithUTF8String:"IOReturn HSTPipeline::FirmwareUtil::SetReport(MTDeviceRef _Nonnull, const T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::HostNotificationControl]"];
      [v16 handleFailureInFunction:v17 file:@"FirmwareUtil.h" lineNumber:9 description:{@"Invalid parameter not satisfying: %@", @"device"}];
    }

    v10 = MTDeviceSetReport();
    v12 = v10;
    if (v10)
    {
      v13 = MTLoggingPlugin(v10, v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        mtDeviceId2 = [(TrackpadFirmwareManager *)self mtDeviceId];
        *buf = 136316162;
        v27 = "[Error] ";
        v28 = 2080;
        v29 = "";
        v30 = 2080;
        v31 = "[EmbeddedTrackpadFirmwareManager _handleHostStateEvent:]";
        v32 = 2048;
        mtDeviceId = mtDeviceId2;
        v34 = 1024;
        coverClosed = v12;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s [0x%llX] Failed to send host state notification to the device with error: 0x%08x", buf, 0x30u);
      }
    }

    v18.receiver = self;
    v18.super_class = EmbeddedTrackpadFirmwareManager;
    [(TrackpadFirmwareManager *)&v18 handleConsume:v6];
  }

  else
  {
    v15 = MTLoggingPlugin(0, v5);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v27 = "[Error] ";
      v28 = 2080;
      v29 = "";
      v30 = 2080;
      v31 = "[EmbeddedTrackpadFirmwareManager _handleHostStateEvent:]";
      v32 = 2048;
      mtDeviceId = [(TrackpadFirmwareManager *)self mtDeviceId];
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s [0x%llX] Received invalid host state event", buf, 0x2Au);
    }

    v25.receiver = self;
    v25.super_class = EmbeddedTrackpadFirmwareManager;
    [(TrackpadFirmwareManager *)&v25 handleConsume:0];
  }
}

@end