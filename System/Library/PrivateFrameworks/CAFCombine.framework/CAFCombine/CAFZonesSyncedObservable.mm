@interface CAFZonesSyncedObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)zonesSyncedService:(id)service didUpdateName:(id)name;
- (void)zonesSyncedService:(id)service didUpdateOn:(BOOL)on;
- (void)zonesSyncedService:(id)service didUpdateVehicleLayoutKey:(id)key;
@end

@implementation CAFZonesSyncedObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFZonesSyncedObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)zonesSyncedService:(id)service didUpdateOn:(BOOL)on
{
  serviceCopy = service;
  selfCopy = self;
  CAFZonesSyncedObservable.zonesSyncedService(_:didUpdateOn:)(selfCopy, on);
}

- (void)zonesSyncedService:(id)service didUpdateVehicleLayoutKey:(id)key
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
  CAFZonesSyncedObservable.zonesSyncedService(_:didUpdateVehicleLayoutKey:)(selfCopy, v6, v8);
}

- (void)zonesSyncedService:(id)service didUpdateName:(id)name
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  serviceCopy = service;
  selfCopy = self;
  CAFZonesSyncedObservable.zonesSyncedService(_:didUpdateName:)(selfCopy, v6, v8);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFZonesSyncedObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFZonesSyncedObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFZonesSyncedObservable.serviceDidFinishGroupUpdate(_:)();
}

@end