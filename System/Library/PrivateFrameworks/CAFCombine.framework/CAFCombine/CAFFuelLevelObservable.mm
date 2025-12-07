@interface CAFFuelLevelObservable
- (NSString)description;
- (void)fuelLevelService:(id)service didUpdateFillLevelLabel:(unsigned __int8)label;
- (void)fuelLevelService:(id)service didUpdateFuelLevel:(id)level;
- (void)fuelLevelService:(id)service didUpdateFuelLevelMarkerLow:(id)low;
- (void)fuelLevelService:(id)service didUpdateFuelLevelState:(unsigned __int8)state;
- (void)fuelLevelService:(id)service didUpdatePortSideIndicator:(unsigned __int8)indicator;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFFuelLevelObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFFuelLevelObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)fuelLevelService:(id)service didUpdateFuelLevel:(id)level
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitPercent, 0x277CF8770);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  serviceCopy = service;
  selfCopy = self;
  CAFFuelLevelObservable.fuelLevelService(_:didUpdateFuelLevel:)(selfCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)fuelLevelService:(id)service didUpdateFuelLevelState:(unsigned __int8)state
{
  stateCopy = state;
  serviceCopy = service;
  selfCopy = self;
  CAFFuelLevelObservable.fuelLevelService(_:didUpdateFuelLevelState:)(selfCopy, stateCopy);
}

- (void)fuelLevelService:(id)service didUpdateFuelLevelMarkerLow:(id)low
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  if (low)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitPercent, 0x277CF8770);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
    v11 = v9;
    v12 = 0;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
    v11 = v9;
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
  serviceCopy = service;
  selfCopy = self;
  CAFFuelLevelObservable.fuelLevelService(_:didUpdateFuelLevelMarkerLow:)(selfCopy, v9);

  outlined destroy of Measurement<CAFUnitPercent>?(v9);
}

- (void)fuelLevelService:(id)service didUpdateFillLevelLabel:(unsigned __int8)label
{
  labelCopy = label;
  serviceCopy = service;
  selfCopy = self;
  CAFFuelLevelObservable.fuelLevelService(_:didUpdateFillLevelLabel:)(selfCopy, labelCopy);
}

- (void)fuelLevelService:(id)service didUpdatePortSideIndicator:(unsigned __int8)indicator
{
  indicatorCopy = indicator;
  serviceCopy = service;
  selfCopy = self;
  CAFFuelLevelObservable.fuelLevelService(_:didUpdatePortSideIndicator:)(selfCopy, indicatorCopy);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFFuelLevelObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFFuelLevelObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFFuelLevelObservable.serviceDidFinishGroupUpdate(_:)();
}

@end