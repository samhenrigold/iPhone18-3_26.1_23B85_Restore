@interface REReminderSampleDataSource
+ (id)overrideDataSourceImage;
- (id)supportedSections;
- (void)getElementsInSection:(id)section withHandler:(id)handler;
@end

@implementation REReminderSampleDataSource

+ (id)overrideDataSourceImage
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [REImage imageNamed:@"SG_DataSourceAppIcon" inBundle:v2];

  return v3;
}

- (id)supportedSections
{
  v4 = REDefaultSectionIdentifier;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)getElementsInSection:(id)section withHandler:(id)handler
{
  handlerCopy = handler;
  v5 = REUISampleRelevanceProviderForSamplePosition();
  v6 = +[NSCalendar currentCalendar];
  v7 = +[NSDate date];
  v8 = [v6 dateBySettingHour:12 minute:30 second:0 ofDate:v7 options:0];

  v10 = REReminderBundle(v9);
  v11 = [v10 localizedStringForKey:@"UP_NEXT_SAMPLE_REMINDERS_TITLE" value:&stru_4358 table:@"ReminderDataSource"];

  v12 = REReminderContent(v11, v8, 0, 0);
  v13 = [REElement alloc];
  v18 = v5;
  v14 = [NSArray arrayWithObjects:&v18 count:1];
  v15 = [v13 initWithIdentifier:@"reminder.sample" content:v12 action:0 relevanceProviders:v14];

  v17 = v15;
  v16 = [NSArray arrayWithObjects:&v17 count:1];
  handlerCopy[2](handlerCopy, v16);
}

@end