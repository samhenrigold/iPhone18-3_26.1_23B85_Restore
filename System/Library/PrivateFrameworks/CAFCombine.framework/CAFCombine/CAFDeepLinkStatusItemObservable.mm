@interface CAFDeepLinkStatusItemObservable
- (NSString)description;
- (void)automakerStatusItemService:(id)service didUpdateDisabled:(BOOL)disabled;
- (void)automakerStatusItemService:(id)service didUpdateHidden:(BOOL)hidden;
- (void)automakerStatusItemService:(id)service didUpdateSortOrder:(unsigned __int8)order;
- (void)automakerStatusItemService:(id)service didUpdateUserVisibleLabel:(id)label;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFDeepLinkStatusItemObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFDeepLinkStatusItemObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)automakerStatusItemService:(id)service didUpdateUserVisibleLabel:(id)label
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
  CAFDeepLinkStatusItemObservable.automakerStatusItemService(_:didUpdateUserVisibleLabel:)(selfCopy, v6, v8);
}

- (void)automakerStatusItemService:(id)service didUpdateSortOrder:(unsigned __int8)order
{
  serviceCopy = service;
  selfCopy = self;
  CAFDeepLinkStatusItemObservable.automakerStatusItemService(_:didUpdateSortOrder:)(selfCopy, order);
}

- (void)automakerStatusItemService:(id)service didUpdateDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  serviceCopy = service;
  selfCopy = self;
  CAFDeepLinkStatusItemObservable.automakerStatusItemService(_:didUpdateDisabled:)(selfCopy, disabledCopy);
}

- (void)automakerStatusItemService:(id)service didUpdateHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  serviceCopy = service;
  selfCopy = self;
  CAFDeepLinkStatusItemObservable.automakerStatusItemService(_:didUpdateHidden:)(selfCopy, hiddenCopy);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFDeepLinkStatusItemObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFDeepLinkStatusItemObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFDeepLinkStatusItemObservable.serviceDidFinishGroupUpdate(_:)();
}

@end