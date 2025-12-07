@interface CAFChargingStatusObservable
- (NSString)description;
- (void)chargingStatusService:(id)service didUpdateCableState:(unsigned __int8)state;
- (void)chargingStatusService:(id)service didUpdateChargingModeIdentifier:(id)identifier;
- (void)chargingStatusService:(id)service didUpdateChargingState:(unsigned __int8)state;
- (void)chargingStatusService:(id)service didUpdatePortSideIndicator:(unsigned __int8)indicator;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFChargingStatusObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFChargingStatusObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)chargingStatusService:(id)service didUpdateChargingModeIdentifier:(id)identifier
{
  if (identifier)
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
  CAFChargingStatusObservable.chargingStatusService(_:didUpdateChargingModeIdentifier:)(selfCopy, v6, v8);
}

- (void)chargingStatusService:(id)service didUpdateChargingState:(unsigned __int8)state
{
  stateCopy = state;
  serviceCopy = service;
  selfCopy = self;
  CAFChargingStatusObservable.chargingStatusService(_:didUpdateChargingState:)(selfCopy, stateCopy);
}

- (void)chargingStatusService:(id)service didUpdateCableState:(unsigned __int8)state
{
  stateCopy = state;
  serviceCopy = service;
  selfCopy = self;
  CAFChargingStatusObservable.chargingStatusService(_:didUpdateCableState:)(selfCopy, stateCopy);
}

- (void)chargingStatusService:(id)service didUpdatePortSideIndicator:(unsigned __int8)indicator
{
  indicatorCopy = indicator;
  serviceCopy = service;
  selfCopy = self;
  CAFChargingStatusObservable.chargingStatusService(_:didUpdatePortSideIndicator:)(selfCopy, indicatorCopy);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFChargingStatusObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFChargingStatusObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFChargingStatusObservable.serviceDidFinishGroupUpdate(_:)();
}

@end