@interface WidgetTimelineRefresherDataSource
- (_TtC19HomeKitDaemonLegacy33WidgetTimelineRefresherDataSource)init;
- (id)darwinNotificationProviderForTimelineRefresher:(id)refresher;
- (id)timerManagerForTimelineRefresher:(id)refresher options:(unsigned int)options;
- (id)widgetConfigurationReaderForTimelineRefresher:(id)refresher;
- (id)widgetTimelineControllerForTimelineRefresher:(id)refresher;
@end

@implementation WidgetTimelineRefresherDataSource

- (id)darwinNotificationProviderForTimelineRefresher:(id)refresher
{
  v3 = [objc_allocWithZone(MEMORY[0x277CD19C0]) init];

  return v3;
}

- (id)widgetConfigurationReaderForTimelineRefresher:(id)refresher
{
  v3 = [objc_allocWithZone(HMDWidgetConfigurationReader) init];

  return v3;
}

- (id)widgetTimelineControllerForTimelineRefresher:(id)refresher
{
  v3 = [objc_allocWithZone(HMDWidgetTimelineController) init];

  return v3;
}

- (id)timerManagerForTimelineRefresher:(id)refresher options:(unsigned int)options
{
  initWithOptions_ = [objc_allocWithZone(MEMORY[0x277D0F930]) initWithOptions_];

  return initWithOptions_;
}

- (_TtC19HomeKitDaemonLegacy33WidgetTimelineRefresherDataSource)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WidgetTimelineRefresherDataSource();
  return [(WidgetTimelineRefresherDataSource *)&v3 init];
}

@end