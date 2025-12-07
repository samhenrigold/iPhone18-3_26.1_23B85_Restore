@interface EventKitTCCUIFactory
- (EventKitTCCUIFactory)initWithBundleIdentifier:(id)identifier;
- (id)previewTableView;
- (id)settingsViewSubtitle;
- (int)countEventsInTheNextYear;
@end

@implementation EventKitTCCUIFactory

- (EventKitTCCUIFactory)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = EventKitTCCUIFactory;
  v5 = [(EventKitTCCUIFactory *)&v20 init];
  v6 = [objc_alloc(MEMORY[0x277CC5A40]) initWithEKOptions:132];
  eventStore = v5->_eventStore;
  v5->_eventStore = v6;

  if (identifierCopy)
  {
    [(EKEventStore *)v5->_eventStore setSourceAccountManagement:0 withBundleID:identifierCopy];
  }

  v8 = [(EKEventStore *)v5->_eventStore calendarsForEntityType:0];
  allCalendars = v5->_allCalendars;
  v5->_allCalendars = v8;

  v10 = [(EKEventStore *)v5->_eventStore nextEventsWithCalendars:0 limit:1 exclusionOptions:13];
  firstObject = [v10 firstObject];

  if (!firstObject)
  {
    v13 = logHandle(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [EventKitTCCUIFactory initWithBundleIdentifier:v13];
    }

    v14 = [(EKEventStore *)v5->_eventStore nextEventsWithCalendars:0 limit:1 exclusionOptions:12];
    firstObject = [v14 firstObject];

    if (!firstObject)
    {
      v16 = logHandle(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [EventKitTCCUIFactory initWithBundleIdentifier:v16];
      }

      firstObject = 0;
    }
  }

  v17 = [[_TtC13EventKitTCCUI19EventPreviewWrapper alloc] initWithEvent:firstObject];
  previewWrapper = v5->_previewWrapper;
  v5->_previewWrapper = v17;

  return v5;
}

- (int)countEventsInTheNextYear
{
  calDateForBeginningOfToday = [MEMORY[0x277CBEAA8] CalDateForBeginningOfToday];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = [calDateForBeginningOfToday dateByAddingYears:1 inCalendar:currentCalendar];

  LODWORD(self) = [(EKEventStore *)self->_eventStore countOfEventsFromStartDate:calDateForBeginningOfToday toEndDate:v5];
  return self;
}

- (id)settingsViewSubtitle
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"x_calendars_x_events" value:&stru_285D36E10 table:0];
  v6 = [v3 localizedStringWithFormat:v5, -[NSArray count](self->_allCalendars, "count"), -[EventKitTCCUIFactory countEventsInTheNextYear](self, "countEventsInTheNextYear")];

  return v6;
}

- (id)previewTableView
{
  settingsPreviewViewController = [(EventKitTCCUIFactory *)self settingsPreviewViewController];
  view = [settingsPreviewViewController view];

  return view;
}

@end