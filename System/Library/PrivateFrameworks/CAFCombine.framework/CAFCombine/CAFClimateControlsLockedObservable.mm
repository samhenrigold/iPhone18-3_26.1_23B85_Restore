@interface CAFClimateControlsLockedObservable
- (NSString)description;
- (void)climateControlsLockedService:(id)service didUpdateLockState:(unsigned __int8)state;
- (void)climateControlsLockedService:(id)service didUpdateName:(id)name;
- (void)climateControlsLockedService:(id)service didUpdateVehicleLayoutKey:(id)key;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFClimateControlsLockedObservable

- (NSString)description
{
  selfCopy = self;
  locked = CAFClimateControlsLockedObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](locked, v5);

  return v6;
}

- (void)climateControlsLockedService:(id)service didUpdateLockState:(unsigned __int8)state
{
  serviceCopy = service;
  selfCopy = self;
  CAFClimateControlsLockedObservable.climateControlsLockedService(_:didUpdateLockState:)(selfCopy, state);
}

- (void)climateControlsLockedService:(id)service didUpdateVehicleLayoutKey:(id)key
{
  if (key)
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
  CAFClimateControlsLockedObservable.climateControlsLockedService(_:didUpdateVehicleLayoutKey:)(selfCopy, v6, v8);
}

- (void)climateControlsLockedService:(id)service didUpdateName:(id)name
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  serviceCopy = service;
  selfCopy = self;
  CAFClimateControlsLockedObservable.climateControlsLockedService(_:didUpdateName:)(selfCopy, v6, v8);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFClimateControlsLockedObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFClimateControlsLockedObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFClimateControlsLockedObservable.serviceDidFinishGroupUpdate(_:)();
}

@end