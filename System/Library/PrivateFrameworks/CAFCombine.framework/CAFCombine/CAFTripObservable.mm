@interface CAFTripObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)tripService:(id)service didUpdateAverageSpeed:(id)speed;
- (void)tripService:(id)service didUpdateDistance:(id)distance;
- (void)tripService:(id)service didUpdateDuration:(id)duration;
- (void)tripService:(id)service didUpdateEnergy:(id)energy;
- (void)tripService:(id)service didUpdateEnergyEfficiency:(id)efficiency;
- (void)tripService:(id)service didUpdateFuelEfficiency:(id)efficiency;
- (void)tripService:(id)service didUpdateName:(id)name;
- (void)tripService:(id)service didUpdateShowOdometer:(BOOL)odometer;
- (void)tripService:(id)service didUpdateSortOrder:(unsigned __int8)order;
- (void)tripService:(id)service didUpdateUserVisibleLabel:(id)label;
@end

@implementation CAFTripObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFTripObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)tripService:(id)service didUpdateUserVisibleLabel:(id)label
{
  if (label)
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
  CAFTripObservable.tripService(_:didUpdateUserVisibleLabel:)(selfCopy, v6, v8);
}

- (void)tripService:(id)service didUpdateSortOrder:(unsigned __int8)order
{
  serviceCopy = service;
  selfCopy = self;
  CAFTripObservable.tripService(_:didUpdateSortOrder:)(selfCopy, order);
}

- (void)tripService:(id)service didUpdateAverageSpeed:(id)speed
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
  CAFTripObservable.tripService(_:didUpdateAverageSpeed:)(selfCopy, v9);

  outlined destroy of Measurement<NSUnitFuelEfficiency>?(v9, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGSgMR);
}

- (void)tripService:(id)service didUpdateDistance:(id)distance
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  if (distance)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
    v11 = v9;
    v12 = 0;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
    v11 = v9;
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
  serviceCopy = service;
  selfCopy = self;
  CAFTripObservable.tripService(_:didUpdateDistance:)(selfCopy, v9);

  outlined destroy of Measurement<NSUnitFuelEfficiency>?(v9, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
}

- (void)tripService:(id)service didUpdateDuration:(id)duration
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  if (duration)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
    v11 = v9;
    v12 = 0;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
    v11 = v9;
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
  serviceCopy = service;
  selfCopy = self;
  CAFTripObservable.tripService(_:didUpdateDuration:)(selfCopy, v9);

  outlined destroy of Measurement<NSUnitFuelEfficiency>?(v9, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
}

- (void)tripService:(id)service didUpdateEnergy:(id)energy
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  if (energy)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitEnergy, 0x277CCADF8);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, _s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
    v11 = v9;
    v12 = 0;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, _s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
    v11 = v9;
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
  serviceCopy = service;
  selfCopy = self;
  CAFTripObservable.tripService(_:didUpdateEnergy:)(selfCopy, v9);

  outlined destroy of Measurement<NSUnitFuelEfficiency>?(v9, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
}

- (void)tripService:(id)service didUpdateEnergyEfficiency:(id)efficiency
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGSgMd, &_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  if (efficiency)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitEnergyEfficiency, 0x277CF8768);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGMd, &_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGMR);
    v11 = v9;
    v12 = 0;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGMd, &_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGMR);
    v11 = v9;
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
  serviceCopy = service;
  selfCopy = self;
  CAFTripObservable.tripService(_:didUpdateEnergyEfficiency:)(selfCopy, v9);

  outlined destroy of Measurement<NSUnitFuelEfficiency>?(v9, &_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGSgMd, &_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGSgMR);
}

- (void)tripService:(id)service didUpdateFuelEfficiency:(id)efficiency
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGSgMd, _s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  if (efficiency)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitFuelEfficiency, 0x277CCAE08);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGMd, &_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGMR);
    v11 = v9;
    v12 = 0;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGMd, &_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGMR);
    v11 = v9;
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
  serviceCopy = service;
  selfCopy = self;
  CAFTripObservable.tripService(_:didUpdateFuelEfficiency:)(selfCopy, v9);

  outlined destroy of Measurement<NSUnitFuelEfficiency>?(v9, &_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGSgMd, _s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGSgMR);
}

- (void)tripService:(id)service didUpdateShowOdometer:(BOOL)odometer
{
  serviceCopy = service;
  selfCopy = self;
  CAFTripObservable.tripService(_:didUpdateShowOdometer:)(selfCopy, odometer);
}

- (void)tripService:(id)service didUpdateName:(id)name
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  serviceCopy = service;
  selfCopy = self;
  CAFTripObservable.tripService(_:didUpdateName:)(selfCopy, v6, v8);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFTripObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFTripObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFTripObservable.serviceDidFinishGroupUpdate(_:)();
}

@end