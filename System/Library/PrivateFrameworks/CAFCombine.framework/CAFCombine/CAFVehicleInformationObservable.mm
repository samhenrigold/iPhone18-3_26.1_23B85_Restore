@interface CAFVehicleInformationObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)vehicleInformationService:(id)service didUpdateVehicleUserVisibleLabel:(id)label;
@end

@implementation CAFVehicleInformationObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFVehicleInformationObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)vehicleInformationService:(id)service didUpdateVehicleUserVisibleLabel:(id)label
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  serviceCopy = service;
  selfCopy = self;
  CAFVehicleInformationObservable.vehicleInformationService(_:didUpdateVehicleUserVisibleLabel:)(selfCopy, v6, v8);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFVehicleInformationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFVehicleInformationObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFVehicleInformationObservable.serviceDidFinishGroupUpdate(_:)();
}

@end