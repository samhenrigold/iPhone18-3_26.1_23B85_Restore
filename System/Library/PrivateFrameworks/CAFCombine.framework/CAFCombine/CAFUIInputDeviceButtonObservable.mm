@interface CAFUIInputDeviceButtonObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)uIInputDeviceService:(id)service didUpdateUiInputDevicePurpose:(unsigned __int8)purpose;
- (void)uiInputDeviceButtonService:(id)service didUpdateName:(id)name;
- (void)uiInputDeviceButtonService:(id)service didUpdateUiInputDeviceButtonEvent:(unsigned __int8)event;
@end

@implementation CAFUIInputDeviceButtonObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFUIInputDeviceButtonObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)uIInputDeviceService:(id)service didUpdateUiInputDevicePurpose:(unsigned __int8)purpose
{
  purposeCopy = purpose;
  serviceCopy = service;
  selfCopy = self;
  CAFUIInputDeviceButtonObservable.uIInputDeviceService(_:didUpdateUiInputDevicePurpose:)(selfCopy, purposeCopy);
}

- (void)uiInputDeviceButtonService:(id)service didUpdateUiInputDeviceButtonEvent:(unsigned __int8)event
{
  eventCopy = event;
  serviceCopy = service;
  selfCopy = self;
  CAFUIInputDeviceButtonObservable.uiInputDeviceButtonService(_:didUpdateUiInputDeviceButtonEvent:)(selfCopy, eventCopy);
}

- (void)uiInputDeviceButtonService:(id)service didUpdateName:(id)name
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  serviceCopy = service;
  selfCopy = self;
  CAFUIInputDeviceButtonObservable.uiInputDeviceButtonService(_:didUpdateName:)(selfCopy, v6, v8);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFUIInputDeviceButtonObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFUIInputDeviceButtonObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFUIInputDeviceButtonObservable.serviceDidFinishGroupUpdate(_:)();
}

@end