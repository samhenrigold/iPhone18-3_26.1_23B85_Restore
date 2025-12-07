@interface CAFTirePressureObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)tirePressureService:(id)service didUpdatePressure:(id)pressure;
- (void)tirePressureService:(id)service didUpdatePressureState:(unsigned __int8)state;
- (void)tirePressureService:(id)service didUpdateSensorState:(unsigned __int8)state;
@end

@implementation CAFTirePressureObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFTirePressureObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)tirePressureService:(id)service didUpdateSensorState:(unsigned __int8)state
{
  serviceCopy = service;
  selfCopy = self;
  CAFTirePressureObservable.tirePressureService(_:didUpdateSensorState:)(selfCopy, state);
}

- (void)tirePressureService:(id)service didUpdatePressure:(id)pressure
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitPressureCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitPressureCGSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  if (pressure)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitPressure, 0x277CCAE38);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitPressureCGMd, &_s10Foundation11MeasurementVySo14NSUnitPressureCGMR);
    v11 = v9;
    v12 = 0;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitPressureCGMd, &_s10Foundation11MeasurementVySo14NSUnitPressureCGMR);
    v11 = v9;
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
  serviceCopy = service;
  selfCopy = self;
  CAFTirePressureObservable.tirePressureService(_:didUpdatePressure:)();

  outlined destroy of Measurement<NSUnitPressure>?(v9);
}

- (void)tirePressureService:(id)service didUpdatePressureState:(unsigned __int8)state
{
  serviceCopy = service;
  selfCopy = self;
  CAFTirePressureObservable.tirePressureService(_:didUpdatePressureState:)(selfCopy, state);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFTirePressureObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFTirePressureObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFTirePressureObservable.serviceDidFinishGroupUpdate(_:)();
}

@end