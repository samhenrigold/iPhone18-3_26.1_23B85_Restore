@interface CAFProximityAlertsObservable
- (NSString)description;
- (void)proximityAlertsService:(id)service didUpdateProximityAlertRearLeft:(unsigned __int8)left;
- (void)proximityAlertsService:(id)service didUpdateProximityAlertRearRight:(unsigned __int8)right;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFProximityAlertsObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFProximityAlertsObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)proximityAlertsService:(id)service didUpdateProximityAlertRearLeft:(unsigned __int8)left
{
  leftCopy = left;
  serviceCopy = service;
  selfCopy = self;
  CAFProximityAlertsObservable.proximityAlertsService(_:didUpdateProximityAlertRearLeft:)(selfCopy, leftCopy);
}

- (void)proximityAlertsService:(id)service didUpdateProximityAlertRearRight:(unsigned __int8)right
{
  rightCopy = right;
  serviceCopy = service;
  selfCopy = self;
  CAFProximityAlertsObservable.proximityAlertsService(_:didUpdateProximityAlertRearRight:)(selfCopy, rightCopy);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFProximityAlertsObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFProximityAlertsObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFProximityAlertsObservable.serviceDidFinishGroupUpdate(_:)();
}

@end