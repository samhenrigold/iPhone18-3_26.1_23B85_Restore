@interface DPCTelemetry
+ (DPCTelemetry)sharedInstance;
- (DPCTelemetry)init;
- (void)registerError:(unint64_t)error;
- (void)registerWatchConnectivity:(BOOL)connectivity;
- (void)registerWatchEvent:(unint64_t)event rssiValue:(int64_t)value;
- (void)registerWatchSwitch;
- (void)registerWatchWristEvent:(int64_t)event;
@end

@implementation DPCTelemetry

+ (DPCTelemetry)sharedInstance
{
  if (qword_100016AA0 != -1)
  {
    sub_100007678();
  }

  v3 = qword_100016AA8;

  return v3;
}

- (DPCTelemetry)init
{
  v3.receiver = self;
  v3.super_class = DPCTelemetry;
  result = [(DPCTelemetry *)&v3 init];
  if (result)
  {
    result->_plClientID = 120;
    result->_plEventName = @"WatchPresence";
  }

  return result;
}

- (void)registerWatchEvent:(unint64_t)event rssiValue:(int64_t)value
{
  v11[0] = @"Timestamp";
  v6 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
  v7 = v6;
  v8 = @"WatchPresence";
  if (event == 2)
  {
    v8 = @"WatchAbsence";
  }

  v12[0] = v6;
  v12[1] = v8;
  v11[1] = @"Event";
  v11[2] = @"RSSI";
  v9 = [NSNumber numberWithInteger:value];
  v12[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];

  PLLogRegisteredEvent();
}

- (void)registerWatchConnectivity:(BOOL)connectivity
{
  connectivityCopy = connectivity;
  v7[0] = @"Timestamp";
  v4 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
  v7[1] = @"Event";
  v8[0] = v4;
  v5 = @"WatchDisconnected";
  if (connectivityCopy)
  {
    v5 = @"WatchConnected";
  }

  v8[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  PLLogRegisteredEvent();
}

- (void)registerError:(unint64_t)error
{
  if (error == 4)
  {
    v3 = @"WatchUnreachable";
  }

  else
  {
    v3 = @"Unknown";
  }

  if (error == 2)
  {
    v3 = @"WatchUnavailable";
  }

  v7[0] = @"Timestamp";
  v4 = v3;
  v5 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
  v7[1] = @"Event";
  v8[0] = v5;
  v8[1] = v4;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  PLLogRegisteredEvent();
}

- (void)registerWatchWristEvent:(int64_t)event
{
  if (event == 3)
  {
    v3 = @"WatchWristStatusOnWrist";
  }

  else
  {
    v3 = @"WatchWristStatusUnknown";
  }

  if (event == 2)
  {
    v3 = @"WatchWristStatusOffWrist";
  }

  if (event == 1)
  {
    v3 = @"WatchWristStatusDisabled";
  }

  v7[0] = @"Timestamp";
  v4 = v3;
  v5 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
  v7[1] = @"Event";
  v8[0] = v5;
  v8[1] = v4;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  PLLogRegisteredEvent();
}

- (void)registerWatchSwitch
{
  v4[0] = @"Timestamp";
  v2 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
  v4[1] = @"Event";
  v5[0] = v2;
  v5[1] = @"WatchSwitched";
  v3 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  PLLogRegisteredEvent();
}

@end