@interface CAFUIConfigurationObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)uiConfigurationService:(id)service didUpdateConfigurationIdentifier:(id)identifier;
- (void)uiConfigurationService:(id)service didUpdateConfigurationOptions:(id)options;
@end

@implementation CAFUIConfigurationObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFUIConfigurationObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)uiConfigurationService:(id)service didUpdateConfigurationIdentifier:(id)identifier
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  serviceCopy = service;
  selfCopy = self;
  CAFUIConfigurationObservable.uiConfigurationService(_:didUpdateConfigurationIdentifier:)(selfCopy, v6, v8);
}

- (void)uiConfigurationService:(id)service didUpdateConfigurationOptions:(id)options
{
  if (options)
  {
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  serviceCopy = service;
  selfCopy = self;
  CAFUIConfigurationObservable.uiConfigurationService(_:didUpdateConfigurationOptions:)(selfCopy, v6);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFUIConfigurationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFUIConfigurationObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFUIConfigurationObservable.serviceDidFinishGroupUpdate(_:)();
}

@end