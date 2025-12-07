@interface CAFTurnSignalsObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)turnSignalsService:(id)service didUpdateTurnSignalLeft:(unsigned __int8)left;
- (void)turnSignalsService:(id)service didUpdateTurnSignalRight:(unsigned __int8)right;
@end

@implementation CAFTurnSignalsObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFTurnSignalsObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)turnSignalsService:(id)service didUpdateTurnSignalLeft:(unsigned __int8)left
{
  leftCopy = left;
  serviceCopy = service;
  selfCopy = self;
  CAFTurnSignalsObservable.turnSignalsService(_:didUpdateTurnSignalLeft:)(selfCopy, leftCopy);
}

- (void)turnSignalsService:(id)service didUpdateTurnSignalRight:(unsigned __int8)right
{
  rightCopy = right;
  serviceCopy = service;
  selfCopy = self;
  CAFTurnSignalsObservable.turnSignalsService(_:didUpdateTurnSignalRight:)(selfCopy, rightCopy);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFTurnSignalsObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFTurnSignalsObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFTurnSignalsObservable.serviceDidFinishGroupUpdate(_:)();
}

@end