@interface CAFCellularStatusObservable
- (NSString)description;
- (void)cellularStatusService:(id)service didUpdateCellularType:(unsigned __int8)type;
- (void)cellularStatusService:(id)service didUpdateContentURLAction:(id)action;
- (void)cellularStatusService:(id)service didUpdateModuleStatus:(unsigned __int8)status;
- (void)cellularStatusService:(id)service didUpdateSignalBars:(unsigned __int8)bars;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFCellularStatusObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFCellularStatusObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)cellularStatusService:(id)service didUpdateModuleStatus:(unsigned __int8)status
{
  statusCopy = status;
  serviceCopy = service;
  selfCopy = self;
  CAFCellularStatusObservable.cellularStatusService(_:didUpdateModuleStatus:)(selfCopy, statusCopy);
}

- (void)cellularStatusService:(id)service didUpdateSignalBars:(unsigned __int8)bars
{
  barsCopy = bars;
  serviceCopy = service;
  selfCopy = self;
  CAFCellularStatusObservable.cellularStatusService(_:didUpdateSignalBars:)(selfCopy, barsCopy);
}

- (void)cellularStatusService:(id)service didUpdateCellularType:(unsigned __int8)type
{
  serviceCopy = service;
  selfCopy = self;
  CAFCellularStatusObservable.cellularStatusService(_:didUpdateCellularType:)(selfCopy, type);
}

- (void)cellularStatusService:(id)service didUpdateContentURLAction:(id)action
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
  CAFCellularStatusObservable.cellularStatusService(_:didUpdateContentURLAction:)(selfCopy, v6, v8);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFCellularStatusObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFCellularStatusObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFCellularStatusObservable.serviceDidFinishGroupUpdate(_:)();
}

@end