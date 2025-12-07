@interface CAFSingleSelectSettingObservable
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
- (void)singleSelectSettingService:(id)service didUpdateSelectSettingEntryList:(id)list;
- (void)singleSelectSettingService:(id)service didUpdateSelectSettingEntryListNotificationInfo:(id)info;
- (void)singleSelectSettingService:(id)service didUpdateSelectedEntryIndex:(unsigned __int8)index;
- (void)singleSelectSettingService:(id)service didUpdateUserVisibleDetailedDescription:(id)description;
@end

@implementation CAFSingleSelectSettingObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFSingleSelectSettingObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)automakerSettingService:(id)service didUpdateSortOrder:(unsigned __int8)order
{
  serviceCopy = service;
  selfCopy = self;
  CAFSingleSelectSettingObservable.automakerSettingService(_:didUpdateSortOrder:)(selfCopy, order);
}

- (void)automakerSettingService:(id)service didUpdateCategory:(unsigned __int8)category
{
  serviceCopy = service;
  selfCopy = self;
  CAFSingleSelectSettingObservable.automakerSettingService(_:didUpdateCategory:)(selfCopy, category);
}

- (void)automakerSettingService:(id)service didUpdateDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  serviceCopy = service;
  selfCopy = self;
  CAFSingleSelectSettingObservable.automakerSettingService(_:didUpdateDisabled:)(selfCopy, disabledCopy);
}

- (void)automakerSettingService:(id)service didUpdateLimitableUIElement:(BOOL)element
{
  elementCopy = element;
  serviceCopy = service;
  selfCopy = self;
  CAFSingleSelectSettingObservable.automakerSettingService(_:didUpdateLimitableUIElement:)(selfCopy, elementCopy);
}

- (void)automakerSettingService:(id)service didUpdateHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  serviceCopy = service;
  selfCopy = self;
  CAFSingleSelectSettingObservable.automakerSettingService(_:didUpdateHidden:)(selfCopy, hiddenCopy);
}

- (void)automakerSettingService:(id)service didUpdateShowAudioBrandLogo:(BOOL)logo
{
  logoCopy = logo;
  serviceCopy = service;
  selfCopy = self;
  CAFSingleSelectSettingObservable.automakerSettingService(_:didUpdateShowAudioBrandLogo:)(selfCopy, logoCopy);
}

- (void)automakerSettingService:(id)service didUpdateProminenceInfo:(id)info
{
  serviceCopy = service;
  infoCopy = info;
  selfCopy = self;
  CAFSingleSelectSettingObservable.automakerSettingService(_:didUpdateProminenceInfo:)(selfCopy, info);
}

- (void)singleSelectSettingService:(id)service didUpdateSelectSettingEntryList:(id)list
{
  serviceCopy = service;
  listCopy = list;
  selfCopy = self;
  CAFSingleSelectSettingObservable.singleSelectSettingService(_:didUpdateSelectSettingEntryList:)(selfCopy, listCopy);
}

- (void)singleSelectSettingService:(id)service didUpdateSelectedEntryIndex:(unsigned __int8)index
{
  serviceCopy = service;
  selfCopy = self;
  CAFSingleSelectSettingObservable.singleSelectSettingService(_:didUpdateSelectedEntryIndex:)(selfCopy, index);
}

- (void)singleSelectSettingService:(id)service didUpdateUserVisibleDetailedDescription:(id)description
{
  serviceCopy = service;
  descriptionCopy = description;
  selfCopy = self;
  CAFSingleSelectSettingObservable.singleSelectSettingService(_:didUpdateUserVisibleDetailedDescription:)(selfCopy, description);
}

- (void)singleSelectSettingService:(id)service didUpdateSelectSettingEntryListNotificationInfo:(id)info
{
  serviceCopy = service;
  infoCopy = info;
  selfCopy = self;
  CAFSingleSelectSettingObservable.singleSelectSettingService(_:didUpdateSelectSettingEntryListNotificationInfo:)(selfCopy, info);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFSingleSelectSettingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFSingleSelectSettingObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFSingleSelectSettingObservable.serviceDidFinishGroupUpdate(_:)();
}

@end