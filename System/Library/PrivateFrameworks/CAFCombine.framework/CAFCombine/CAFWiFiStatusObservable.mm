@interface CAFWiFiStatusObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)wiFiStatusService:(id)service didUpdateContentURLAction:(id)action;
- (void)wiFiStatusService:(id)service didUpdateModuleStatus:(unsigned __int8)status;
- (void)wiFiStatusService:(id)service didUpdateSignalBars:(unsigned __int8)bars;
@end

@implementation CAFWiFiStatusObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFWiFiStatusObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)wiFiStatusService:(id)service didUpdateModuleStatus:(unsigned __int8)status
{
  statusCopy = status;
  serviceCopy = service;
  selfCopy = self;
  CAFWiFiStatusObservable.wiFiStatusService(_:didUpdateModuleStatus:)(selfCopy, statusCopy);
}

- (void)wiFiStatusService:(id)service didUpdateSignalBars:(unsigned __int8)bars
{
  barsCopy = bars;
  serviceCopy = service;
  selfCopy = self;
  CAFWiFiStatusObservable.wiFiStatusService(_:didUpdateSignalBars:)(selfCopy, barsCopy);
}

- (void)wiFiStatusService:(id)service didUpdateContentURLAction:(id)action
{
  if (action)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  serviceCopy = service;
  selfCopy = self;
  CAFWiFiStatusObservable.wiFiStatusService(_:didUpdateContentURLAction:)(selfCopy, v6, v8);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFWiFiStatusObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFWiFiStatusObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFWiFiStatusObservable.serviceDidFinishGroupUpdate(_:)();
}

@end