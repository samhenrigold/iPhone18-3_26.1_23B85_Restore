@interface CAFEngineRPMObservable
- (NSString)description;
- (void)engineRPMService:(id)service didUpdateRotationalSpeedMarkerRedline:(id)redline;
- (void)engineRPMService:(id)service didUpdateRotationalSpeedState:(unsigned __int8)state;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFEngineRPMObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFEngineRPMObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)engineRPMService:(id)service didUpdateRotationalSpeedState:(unsigned __int8)state
{
  serviceCopy = service;
  selfCopy = self;
  CAFEngineRPMObservable.engineRPMService(_:didUpdateRotationalSpeedState:)(selfCopy, state);
}

- (void)engineRPMService:(id)service didUpdateRotationalSpeedMarkerRedline:(id)redline
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGSgMd, &_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  if (redline)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitRotationalSpeed, 0x277CF8778);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGMd, &_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGMR);
    v11 = v9;
    v12 = 0;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGMd, &_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGMR);
    v11 = v9;
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
  serviceCopy = service;
  selfCopy = self;
  CAFEngineRPMObservable.engineRPMService(_:didUpdateRotationalSpeedMarkerRedline:)(selfCopy, v9);

  outlined destroy of Measurement<CAFUnitRotationalSpeed>?(v9);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFEngineRPMObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFEngineRPMObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFEngineRPMObservable.serviceDidFinishGroupUpdate(_:)();
}

@end