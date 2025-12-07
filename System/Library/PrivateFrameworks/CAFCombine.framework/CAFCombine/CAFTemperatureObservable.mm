@interface CAFTemperatureObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)temperatureService:(id)service didUpdateCurrentTemperature:(id)temperature;
- (void)temperatureService:(id)service didUpdateOn:(BOOL)on;
- (void)temperatureService:(id)service didUpdateTargetTemperature:(id)temperature;
@end

@implementation CAFTemperatureObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFTemperatureObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)temperatureService:(id)service didUpdateCurrentTemperature:(id)temperature
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  if (temperature)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
    v11 = v9;
    v12 = 0;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
    v11 = v9;
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
  serviceCopy = service;
  selfCopy = self;
  CAFTemperatureObservable.temperatureService(_:didUpdateCurrentTemperature:)();

  outlined destroy of Measurement<NSUnitTemperature>?(v9);
}

- (void)temperatureService:(id)service didUpdateTargetTemperature:(id)temperature
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  serviceCopy = service;
  selfCopy = self;
  CAFTemperatureObservable.temperatureService(_:didUpdateTargetTemperature:)(selfCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)temperatureService:(id)service didUpdateOn:(BOOL)on
{
  serviceCopy = service;
  selfCopy = self;
  CAFTemperatureObservable.temperatureService(_:didUpdateOn:)(selfCopy, on);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFTemperatureObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFTemperatureObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFTemperatureObservable.serviceDidFinishGroupUpdate(_:)();
}

@end