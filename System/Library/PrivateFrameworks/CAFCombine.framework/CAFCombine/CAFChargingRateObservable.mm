@interface CAFChargingRateObservable
- (NSString)description;
- (void)chargingRateService:(id)service didUpdateChargingSpeed:(id)speed;
- (void)chargingRateService:(id)service didUpdatePower:(id)power;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFChargingRateObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFChargingRateObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)chargingRateService:(id)service didUpdatePower:(id)power
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, _s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitPower, 0x277CCAE30);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  serviceCopy = service;
  selfCopy = self;
  CAFChargingRateObservable.chargingRateService(_:didUpdatePower:)(selfCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)chargingRateService:(id)service didUpdateChargingSpeed:(id)speed
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  if (speed)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitSpeed, 0x277CCAE40);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
    v11 = v9;
    v12 = 0;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
    v11 = v9;
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
  serviceCopy = service;
  selfCopy = self;
  CAFChargingRateObservable.chargingRateService(_:didUpdateChargingSpeed:)(selfCopy, v9);

  outlined destroy of Measurement<NSUnitSpeed>?(v9);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFChargingRateObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFChargingRateObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFChargingRateObservable.serviceDidFinishGroupUpdate(_:)();
}

@end