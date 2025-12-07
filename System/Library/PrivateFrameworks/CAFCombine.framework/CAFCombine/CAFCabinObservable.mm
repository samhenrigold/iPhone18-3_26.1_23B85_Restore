@interface CAFCabinObservable
- (NSString)description;
- (void)cabinService:(id)service didUpdateCompressorOn:(BOOL)on;
- (void)cabinService:(id)service didUpdateHvacOn:(BOOL)on;
- (void)cabinService:(id)service didUpdateMaxACOn:(BOOL)on;
- (void)cabinService:(id)service didUpdateMaxDefrostOn:(BOOL)on;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFCabinObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFCabinObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)cabinService:(id)service didUpdateMaxACOn:(BOOL)on
{
  onCopy = on;
  serviceCopy = service;
  selfCopy = self;
  CAFCabinObservable.cabinService(_:didUpdateMaxACOn:)(selfCopy, onCopy);
}

- (void)cabinService:(id)service didUpdateMaxDefrostOn:(BOOL)on
{
  onCopy = on;
  serviceCopy = service;
  selfCopy = self;
  CAFCabinObservable.cabinService(_:didUpdateMaxDefrostOn:)(selfCopy, onCopy);
}

- (void)cabinService:(id)service didUpdateHvacOn:(BOOL)on
{
  onCopy = on;
  serviceCopy = service;
  selfCopy = self;
  CAFCabinObservable.cabinService(_:didUpdateHvacOn:)(selfCopy, onCopy);
}

- (void)cabinService:(id)service didUpdateCompressorOn:(BOOL)on
{
  onCopy = on;
  serviceCopy = service;
  selfCopy = self;
  CAFCabinObservable.cabinService(_:didUpdateCompressorOn:)(selfCopy, onCopy);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFCabinObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFCabinObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFCabinObservable.serviceDidFinishGroupUpdate(_:)();
}

@end