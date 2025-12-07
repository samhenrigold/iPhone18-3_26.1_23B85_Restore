@interface CAFStaticSettingObservable
- (NSString)description;
- (void)automakerSettingService:(id)service didUpdateCategory:(unsigned __int8)category;
- (void)automakerSettingService:(id)service didUpdateDisabled:(BOOL)disabled;
- (void)automakerSettingService:(id)service didUpdateHidden:(BOOL)hidden;
- (void)automakerSettingService:(id)service didUpdateLimitableUIElement:(BOOL)element;
- (void)automakerSettingService:(id)service didUpdateProminenceInfo:(id)info;
- (void)automakerSettingService:(id)service didUpdateShowAudioBrandLogo:(BOOL)logo;
- (void)automakerSettingService:(id)service didUpdateSortOrder:(unsigned __int8)order;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)staticSettingService:(id)service didUpdateChildrenSettingsIdentifiers:(id)identifiers;
- (void)staticSettingService:(id)service didUpdateUserVisibleDetailedDescription:(id)description;
@end

@implementation CAFStaticSettingObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFStaticSettingObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)automakerSettingService:(id)service didUpdateSortOrder:(unsigned __int8)order
{
  serviceCopy = service;
  selfCopy = self;
  CAFStaticSettingObservable.automakerSettingService(_:didUpdateSortOrder:)(selfCopy, order);
}

- (void)automakerSettingService:(id)service didUpdateCategory:(unsigned __int8)category
{
  serviceCopy = service;
  selfCopy = self;
  CAFStaticSettingObservable.automakerSettingService(_:didUpdateCategory:)(selfCopy, category);
}

- (void)automakerSettingService:(id)service didUpdateDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  serviceCopy = service;
  selfCopy = self;
  CAFStaticSettingObservable.automakerSettingService(_:didUpdateDisabled:)(selfCopy, disabledCopy);
}

- (void)automakerSettingService:(id)service didUpdateLimitableUIElement:(BOOL)element
{
  elementCopy = element;
  serviceCopy = service;
  selfCopy = self;
  CAFStaticSettingObservable.automakerSettingService(_:didUpdateLimitableUIElement:)(selfCopy, elementCopy);
}

- (void)automakerSettingService:(id)service didUpdateHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  serviceCopy = service;
  selfCopy = self;
  CAFStaticSettingObservable.automakerSettingService(_:didUpdateHidden:)(selfCopy, hiddenCopy);
}

- (void)automakerSettingService:(id)service didUpdateShowAudioBrandLogo:(BOOL)logo
{
  logoCopy = logo;
  serviceCopy = service;
  selfCopy = self;
  CAFStaticSettingObservable.automakerSettingService(_:didUpdateShowAudioBrandLogo:)(selfCopy, logoCopy);
}

- (void)automakerSettingService:(id)service didUpdateProminenceInfo:(id)info
{
  serviceCopy = service;
  infoCopy = info;
  selfCopy = self;
  CAFStaticSettingObservable.automakerSettingService(_:didUpdateProminenceInfo:)(selfCopy, info);
}

- (void)staticSettingService:(id)service didUpdateChildrenSettingsIdentifiers:(id)identifiers
{
  if (identifiers)
  {
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  serviceCopy = service;
  selfCopy = self;
  CAFStaticSettingObservable.staticSettingService(_:didUpdateChildrenSettingsIdentifiers:)(selfCopy, v6);
}

- (void)staticSettingService:(id)service didUpdateUserVisibleDetailedDescription:(id)description
{
  serviceCopy = service;
  descriptionCopy = description;
  selfCopy = self;
  CAFStaticSettingObservable.staticSettingService(_:didUpdateUserVisibleDetailedDescription:)(selfCopy, description);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFStaticSettingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFStaticSettingObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFStaticSettingObservable.serviceDidFinishGroupUpdate(_:)();
}

@end