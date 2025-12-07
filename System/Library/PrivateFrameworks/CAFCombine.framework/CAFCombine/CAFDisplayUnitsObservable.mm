@interface CAFDisplayUnitsObservable
- (NSString)description;
- (void)displayUnitsService:(id)service didUpdateDistanceUnitRawValue:(unsigned __int16)value;
- (void)displayUnitsService:(id)service didUpdateEnergyEfficiencyUnitRawValue:(unsigned __int16)value;
- (void)displayUnitsService:(id)service didUpdateFuelEfficiencyUnitRawValue:(unsigned __int16)value;
- (void)displayUnitsService:(id)service didUpdateSpeedUnitRawValue:(unsigned __int16)value;
- (void)displayUnitsService:(id)service didUpdateTemperatureUnitRawValue:(unsigned __int16)value;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFDisplayUnitsObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFDisplayUnitsObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)displayUnitsService:(id)service didUpdateSpeedUnitRawValue:(unsigned __int16)value
{
  valueCopy = value;
  serviceCopy = service;
  selfCopy = self;
  CAFDisplayUnitsObservable.displayUnitsService(_:didUpdateSpeedUnitRawValue:)(selfCopy, valueCopy);
}

- (void)displayUnitsService:(id)service didUpdateDistanceUnitRawValue:(unsigned __int16)value
{
  valueCopy = value;
  serviceCopy = service;
  selfCopy = self;
  CAFDisplayUnitsObservable.displayUnitsService(_:didUpdateDistanceUnitRawValue:)(selfCopy, valueCopy);
}

- (void)displayUnitsService:(id)service didUpdateTemperatureUnitRawValue:(unsigned __int16)value
{
  valueCopy = value;
  serviceCopy = service;
  selfCopy = self;
  CAFDisplayUnitsObservable.displayUnitsService(_:didUpdateTemperatureUnitRawValue:)(selfCopy, valueCopy);
}

- (void)displayUnitsService:(id)service didUpdateEnergyEfficiencyUnitRawValue:(unsigned __int16)value
{
  valueCopy = value;
  serviceCopy = service;
  selfCopy = self;
  CAFDisplayUnitsObservable.displayUnitsService(_:didUpdateEnergyEfficiencyUnitRawValue:)(selfCopy, valueCopy);
}

- (void)displayUnitsService:(id)service didUpdateFuelEfficiencyUnitRawValue:(unsigned __int16)value
{
  valueCopy = value;
  serviceCopy = service;
  selfCopy = self;
  CAFDisplayUnitsObservable.displayUnitsService(_:didUpdateFuelEfficiencyUnitRawValue:)(selfCopy, valueCopy);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFDisplayUnitsObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFDisplayUnitsObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFDisplayUnitsObservable.serviceDidFinishGroupUpdate(_:)();
}

@end