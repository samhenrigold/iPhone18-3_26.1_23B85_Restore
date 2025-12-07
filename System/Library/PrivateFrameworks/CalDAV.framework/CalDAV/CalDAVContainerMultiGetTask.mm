@interface CalDAVContainerMultiGetTask
- (CalDAVContainerMultiGetTask)initWithURLs:(id)ls atContainerURL:(id)l getScheduleTags:(BOOL)tags getScheduleChanges:(BOOL)changes;
- (CalDAVContainerMultiGetTask)initWithURLs:(id)ls atContainerURL:(id)l getScheduleTags:(BOOL)tags getScheduleChanges:(BOOL)changes appSpecificCalendarItemClass:(Class)class;
- (id)copyAdditionalPropElements;
- (void)setAdditionalProperties:(id)properties onDataItem:(id)item;
@end

@implementation CalDAVContainerMultiGetTask

- (CalDAVContainerMultiGetTask)initWithURLs:(id)ls atContainerURL:(id)l getScheduleTags:(BOOL)tags getScheduleChanges:(BOOL)changes appSpecificCalendarItemClass:(Class)class
{
  changesCopy = changes;
  tagsCopy = tags;
  lsCopy = ls;
  lCopy = l;
  if (!class)
  {
    class = objc_opt_class();
  }

  v17.receiver = self;
  v17.super_class = CalDAVContainerMultiGetTask;
  v14 = [(CoreDAVContainerMultiGetTask *)&v17 initWithURLs:lsCopy atContainerURL:lCopy appSpecificDataItemClass:class];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong((&v14->super.super.super.isa + *MEMORY[0x277CFDCD8]), *MEMORY[0x277CFDDC0]);
    objc_storeStrong((&v15->super.super.super.isa + *MEMORY[0x277CFDCD0]), *MEMORY[0x277CFDD80]);
    objc_storeStrong((&v15->super.super.super.isa + *MEMORY[0x277CFDCC8]), @"calendar-data");
    [(CalDAVContainerMultiGetTask *)v15 setGetScheduleTags:tagsCopy];
    [(CalDAVContainerMultiGetTask *)v15 setGetScheduleChanges:changesCopy];
    [(CoreDAVContainerMultiGetTask *)v15 setShouldIgnoreResponseErrors:1];
  }

  return v15;
}

- (CalDAVContainerMultiGetTask)initWithURLs:(id)ls atContainerURL:(id)l getScheduleTags:(BOOL)tags getScheduleChanges:(BOOL)changes
{
  changesCopy = changes;
  tagsCopy = tags;
  lCopy = l;
  lsCopy = ls;
  v12 = [(CalDAVContainerMultiGetTask *)self initWithURLs:lsCopy atContainerURL:lCopy getScheduleTags:tagsCopy getScheduleChanges:changesCopy appSpecificCalendarItemClass:objc_opt_class()];

  return v12;
}

- (id)copyAdditionalPropElements
{
  v3 = objc_opt_new();
  if ([(CalDAVContainerMultiGetTask *)self getScheduleTags])
  {
    [v3 CDVAddItemParserMappingWithNameSpace:*MEMORY[0x277CFDDC0] name:@"schedule-tag" parseClass:objc_opt_class()];
  }

  getScheduleChanges = [(CalDAVContainerMultiGetTask *)self getScheduleChanges];
  v5 = *MEMORY[0x277CFDE90];
  if (getScheduleChanges)
  {
    [v3 CDVAddItemParserMappingWithNameSpace:v5 name:@"schedule-changes" parseClass:objc_opt_class()];
  }

  [v3 CDVAddItemParserMappingWithNameSpace:v5 name:@"created-by" parseClass:objc_opt_class()];
  [v3 CDVAddItemParserMappingWithNameSpace:v5 name:@"updated-by" parseClass:objc_opt_class()];
  return v3;
}

- (void)setAdditionalProperties:(id)properties onDataItem:(id)item
{
  itemCopy = item;
  v5 = *MEMORY[0x277CFDDC0];
  propertiesCopy = properties;
  v7 = [propertiesCopy CDVObjectForKeyWithNameSpace:v5 andName:@"schedule-tag"];
  payloadAsString = [v7 payloadAsString];

  [itemCopy setScheduleTag:payloadAsString];
  v9 = *MEMORY[0x277CFDE90];
  v10 = [propertiesCopy CDVObjectForKeyWithNameSpace:*MEMORY[0x277CFDE90] andName:@"schedule-changes"];
  [itemCopy setScheduleChanges:v10];
  v11 = [propertiesCopy CDVObjectForKeyWithNameSpace:v9 andName:@"created-by"];
  [itemCopy setCreatedBy:v11];

  v12 = [propertiesCopy CDVObjectForKeyWithNameSpace:v9 andName:@"updated-by"];

  [itemCopy setUpdatedBy:v12];
}

@end