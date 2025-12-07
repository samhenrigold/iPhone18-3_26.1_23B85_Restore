@interface CAFFloatSettingObservable
- (NSString)description;
- (void)automakerSettingService:(id)service didUpdateCategory:(unsigned __int8)category;
- (void)automakerSettingService:(id)service didUpdateDisabled:(BOOL)disabled;
- (void)automakerSettingService:(id)service didUpdateHidden:(BOOL)hidden;
- (void)automakerSettingService:(id)service didUpdateLimitableUIElement:(BOOL)element;
- (void)automakerSettingService:(id)service didUpdateProminenceInfo:(id)info;
- (void)automakerSettingService:(id)service didUpdateShowAudioBrandLogo:(BOOL)logo;
- (void)automakerSettingService:(id)service didUpdateSortOrder:(unsigned __int8)order;
- (void)floatSettingService:(id)service didUpdateValue:(float)value;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFFloatSettingObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFFloatSettingObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)automakerSettingService:(id)service didUpdateSortOrder:(unsigned __int8)order
{
  serviceCopy = service;
  selfCopy = self;
  CAFFloatSettingObservable.automakerSettingService(_:didUpdateSortOrder:)(selfCopy, order);
}

- (void)automakerSettingService:(id)service didUpdateCategory:(unsigned __int8)category
{
  serviceCopy = service;
  selfCopy = self;
  CAFFloatSettingObservable.automakerSettingService(_:didUpdateCategory:)(selfCopy, category);
}

- (void)automakerSettingService:(id)service didUpdateDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  serviceCopy = service;
  selfCopy = self;
  CAFFloatSettingObservable.automakerSettingService(_:didUpdateDisabled:)(selfCopy, disabledCopy);
}

- (void)automakerSettingService:(id)service didUpdateLimitableUIElement:(BOOL)element
{
  elementCopy = element;
  serviceCopy = service;
  selfCopy = self;
  CAFFloatSettingObservable.automakerSettingService(_:didUpdateLimitableUIElement:)(selfCopy, elementCopy);
}

- (void)automakerSettingService:(id)service didUpdateHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  serviceCopy = service;
  selfCopy = self;
  CAFFloatSettingObservable.automakerSettingService(_:didUpdateHidden:)(selfCopy, hiddenCopy);
}

- (void)automakerSettingService:(id)service didUpdateShowAudioBrandLogo:(BOOL)logo
{
  logoCopy = logo;
  serviceCopy = service;
  selfCopy = self;
  CAFFloatSettingObservable.automakerSettingService(_:didUpdateShowAudioBrandLogo:)(selfCopy, logoCopy);
}

- (void)automakerSettingService:(id)service didUpdateProminenceInfo:(id)info
{
  serviceCopy = service;
  infoCopy = info;
  selfCopy = self;
  CAFFloatSettingObservable.automakerSettingService(_:didUpdateProminenceInfo:)(selfCopy, info);
}

- (void)floatSettingService:(id)service didUpdateValue:(float)value
{
  serviceCopy = service;
  selfCopy = self;
  CAFFloatSettingObservable.floatSettingService(_:didUpdateValue:)(value, selfCopy);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFFloatSettingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFFloatSettingObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFFloatSettingObservable.serviceDidFinishGroupUpdate(_:)();
}

@end