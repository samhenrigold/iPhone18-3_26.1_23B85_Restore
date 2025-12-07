@interface CADSubscribedCalendarEventsPredicate
- (CADSubscribedCalendarEventsPredicate)initWithCalendar:(id)calendar;
- (id)defaultPropertiesToLoad;
@end

@implementation CADSubscribedCalendarEventsPredicate

- (CADSubscribedCalendarEventsPredicate)initWithCalendar:(id)calendar
{
  v4.receiver = self;
  v4.super_class = CADSubscribedCalendarEventsPredicate;
  return [(CADPropertySearchPredicate *)&v4 initWithEntityType:2 filters:MEMORY[0x277CBEBF8] calendar:calendar];
}

- (id)defaultPropertiesToLoad
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = CADEKPersistentEventMinimumDefaultPropertiesToLoad();
  v3 = *MEMORY[0x277CF72B0];
  v7[0] = *MEMORY[0x277CF7220];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v5 = [v2 arrayByAddingObjectsFromArray:v4];

  return v5;
}

@end