@interface DAOpticalProximityManager
+ (id)sharedInstance;
- (BOOL)startProximitySensorUpdatesWithHandler:(id)handler;
- (BOOL)stopProximitySensorUpdates;
- (DAOpticalProximityManager)init;
- (id)sensorData;
- (void)dealloc;
- (void)deviceStart;
- (void)deviceStop;
- (void)handleNewProximityValue:(int)value;
- (void)registerProximityChangedCallback;
- (void)unregisterProximityChangedCallback;
@end

@implementation DAOpticalProximityManager

+ (id)sharedInstance
{
  if (qword_100011A78 != -1)
  {
    sub_100006170();
  }

  v3 = qword_100011A70;

  return v3;
}

- (DAOpticalProximityManager)init
{
  v4.receiver = self;
  v4.super_class = DAOpticalProximityManager;
  v2 = [(DAOpticalProximityManager *)&v4 init];
  if (v2)
  {
    v2->_deviceRef = MTDeviceCreateDefault();
    v2->_updating = 0;
  }

  return v2;
}

- (void)dealloc
{
  if ([(DAOpticalProximityManager *)self deviceRef])
  {
    CFRelease([(DAOpticalProximityManager *)self deviceRef]);
  }

  v3.receiver = self;
  v3.super_class = DAOpticalProximityManager;
  [(DAOpticalProximityManager *)&v3 dealloc];
}

- (id)sensorData
{
  if ([(DAOpticalProximityManager *)self deviceRef]&& !MTDeviceGetSensorRegionOfType())
  {
    v11[0] = @"sensorType";
    v3 = [NSNumber numberWithUnsignedChar:0];
    v12[0] = v3;
    v11[1] = @"startRow";
    v4 = [NSNumber numberWithUnsignedChar:0];
    v12[1] = v4;
    v11[2] = @"rows";
    v5 = [NSNumber numberWithUnsignedChar:0];
    v12[2] = v5;
    v11[3] = @"rowSkip";
    v6 = [NSNumber numberWithUnsignedChar:0];
    v12[3] = v6;
    v11[4] = @"startCol";
    v7 = [NSNumber numberWithUnsignedChar:0];
    v12[4] = v7;
    v11[5] = @"cols";
    v8 = [NSNumber numberWithUnsignedChar:0];
    v12[5] = v8;
    v11[6] = @"hardwareColoffset";
    v9 = [NSNumber numberWithUnsignedChar:0];
    v12[6] = v9;
    v2 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:7];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)startProximitySensorUpdatesWithHandler:(id)handler
{
  handlerCopy = handler;
  isUpdating = [(DAOpticalProximityManager *)self isUpdating];
  if ((isUpdating & 1) == 0)
  {
    [(DAOpticalProximityManager *)self deviceStart];
    [(DAOpticalProximityManager *)self registerProximityChangedCallback];
    [(DAOpticalProximityManager *)self setUpdating:1];
    [(DAOpticalProximityManager *)self setHandler:handlerCopy];
  }

  return isUpdating ^ 1;
}

- (BOOL)stopProximitySensorUpdates
{
  isUpdating = [(DAOpticalProximityManager *)self isUpdating];
  if (isUpdating)
  {
    [(DAOpticalProximityManager *)self deviceStop];
    [(DAOpticalProximityManager *)self unregisterProximityChangedCallback];
    [(DAOpticalProximityManager *)self setUpdating:0];
    [(DAOpticalProximityManager *)self setHandler:0];
  }

  return isUpdating;
}

- (void)deviceStart
{
  [(DAOpticalProximityManager *)self deviceRef];
  MTDeviceStart();

  [(DAOpticalProximityManager *)self deviceSetDataStream:1];
}

- (void)deviceStop
{
  [(DAOpticalProximityManager *)self deviceRef];
  MTDeviceStop();

  [(DAOpticalProximityManager *)self deviceSetDataStream:2];
}

- (void)registerProximityChangedCallback
{
  deviceRef = [(DAOpticalProximityManager *)self deviceRef];

  _MTRegisterOpticalProximityChangedCallback(deviceRef, MTProximityChangedCallbackFunc, 0);
}

- (void)unregisterProximityChangedCallback
{
  deviceRef = [(DAOpticalProximityManager *)self deviceRef];

  _MTUnregisterOpticalProximityChangedCallback(deviceRef, MTProximityChangedCallbackFunc);
}

- (void)handleNewProximityValue:(int)value
{
  v3 = *&value;
  handler = [(DAOpticalProximityManager *)self handler];
  v4 = +[NSDate date];
  handler[2](handler, v3, v4);
}

@end