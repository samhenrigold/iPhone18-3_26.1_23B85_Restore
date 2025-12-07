@interface CAFHistoricalNotificationObservable
- (NSString)description;
- (void)historicalNotificationService:(id)service didUpdateHidden:(BOOL)hidden;
- (void)historicalNotificationService:(id)service didUpdateHistoricalNotificationUserActions:(id)actions;
- (void)historicalNotificationService:(id)service didUpdateNotificationSeverity:(unsigned __int8)severity;
- (void)historicalNotificationService:(id)service didUpdateTimestamp:(id)timestamp;
- (void)historicalNotificationService:(id)service didUpdateUserAction:(unsigned __int8)action;
- (void)historicalNotificationService:(id)service didUpdateUserDismissible:(BOOL)dismissible;
- (void)historicalNotificationService:(id)service didUpdateUserVisibleFullDescription:(id)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFHistoricalNotificationObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFHistoricalNotificationObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)historicalNotificationService:(id)service didUpdateUserVisibleFullDescription:(id)description
{
  if (description)
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
  CAFHistoricalNotificationObservable.historicalNotificationService(_:didUpdateUserVisibleFullDescription:)(selfCopy, v6, v8);
}

- (void)historicalNotificationService:(id)service didUpdateTimestamp:(id)timestamp
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  serviceCopy = service;
  selfCopy = self;
  CAFHistoricalNotificationObservable.historicalNotificationService(_:didUpdateTimestamp:)(selfCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)historicalNotificationService:(id)service didUpdateNotificationSeverity:(unsigned __int8)severity
{
  severityCopy = severity;
  serviceCopy = service;
  selfCopy = self;
  CAFHistoricalNotificationObservable.historicalNotificationService(_:didUpdateNotificationSeverity:)(selfCopy, severityCopy);
}

- (void)historicalNotificationService:(id)service didUpdateHistoricalNotificationUserActions:(id)actions
{
  serviceCopy = service;
  actionsCopy = actions;
  selfCopy = self;
  CAFHistoricalNotificationObservable.historicalNotificationService(_:didUpdateHistoricalNotificationUserActions:)(selfCopy, actions);
}

- (void)historicalNotificationService:(id)service didUpdateUserDismissible:(BOOL)dismissible
{
  dismissibleCopy = dismissible;
  serviceCopy = service;
  selfCopy = self;
  CAFHistoricalNotificationObservable.historicalNotificationService(_:didUpdateUserDismissible:)(selfCopy, dismissibleCopy);
}

- (void)historicalNotificationService:(id)service didUpdateHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  serviceCopy = service;
  selfCopy = self;
  CAFHistoricalNotificationObservable.historicalNotificationService(_:didUpdateHidden:)(selfCopy, hiddenCopy);
}

- (void)historicalNotificationService:(id)service didUpdateUserAction:(unsigned __int8)action
{
  actionCopy = action;
  serviceCopy = service;
  selfCopy = self;
  CAFHistoricalNotificationObservable.historicalNotificationService(_:didUpdateUserAction:)(selfCopy, actionCopy);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFHistoricalNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFHistoricalNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFHistoricalNotificationObservable.serviceDidFinishGroupUpdate(_:)();
}

@end