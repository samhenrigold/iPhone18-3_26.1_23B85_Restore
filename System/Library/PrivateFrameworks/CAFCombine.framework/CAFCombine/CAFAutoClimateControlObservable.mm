@interface CAFAutoClimateControlObservable
- (NSString)description;
- (void)autoClimateControlService:(id)service didUpdateIntensity:(unsigned __int8)intensity;
- (void)autoClimateControlService:(id)service didUpdateLevel:(unsigned __int8)level;
- (void)autoClimateControlService:(id)service didUpdateName:(id)name;
- (void)autoClimateControlService:(id)service didUpdateVehicleLayoutKey:(id)key;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFAutoClimateControlObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFAutoClimateControlObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)autoClimateControlService:(id)service didUpdateLevel:(unsigned __int8)level
{
  levelCopy = level;
  serviceCopy = service;
  selfCopy = self;
  CAFAutoClimateControlObservable.autoClimateControlService(_:didUpdateLevel:)(selfCopy, levelCopy);
}

- (void)autoClimateControlService:(id)service didUpdateIntensity:(unsigned __int8)intensity
{
  intensityCopy = intensity;
  serviceCopy = service;
  selfCopy = self;
  CAFAutoClimateControlObservable.autoClimateControlService(_:didUpdateIntensity:)(selfCopy, intensityCopy);
}

- (void)autoClimateControlService:(id)service didUpdateVehicleLayoutKey:(id)key
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
  CAFAutoClimateControlObservable.autoClimateControlService(_:didUpdateVehicleLayoutKey:)(selfCopy, v6, v8);
}

- (void)autoClimateControlService:(id)service didUpdateName:(id)name
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  serviceCopy = service;
  selfCopy = self;
  CAFAutoClimateControlObservable.autoClimateControlService(_:didUpdateName:)(selfCopy, v6, v8);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFAutoClimateControlObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFAutoClimateControlObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFAutoClimateControlObservable.serviceDidFinishGroupUpdate(_:)();
}

@end