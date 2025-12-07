@interface EKScheduleAgentClientEventsPredicate
+ (id)predicateWithCalendarIDs:(id)ds;
- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database;
- (id)predicateFormat;
@end

@implementation EKScheduleAgentClientEventsPredicate

+ (id)predicateWithCalendarIDs:(id)ds
{
  dsCopy = ds;
  v5 = [[self alloc] initWithCalendars:dsCopy];

  return v5;
}

- (id)predicateFormat
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database
{
  AuxilliaryDatabaseID = CalDatabaseGetAuxilliaryDatabaseID();
  v6 = [(EKPredicate *)self calendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
  v7 = v6;
  if (v6 && [v6 count])
  {
    v8 = [(EKPredicate *)self restrictedCalendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
    FilterFromRowIDs = CreateFilterFromRowIDs(v7, v8, 2, database);
  }

  else
  {
    FilterFromRowIDs = 0;
  }

  v10 = CalDatabaseCopyOfAllEventsWithScheduleAgentClientAndCalendarUID();
  if (!v10)
  {
    v13 = 0;
    if (!FilterFromRowIDs)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v11 = v10;
  Count = CFArrayGetCount(v10);
  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:Count];
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      CFArrayGetValueAtIndex(v11, i);
      v15 = CalEventOccurrenceCreateForInitialOccurrence();
      if (v15)
      {
        v16 = v15;
        [v13 addObject:v15];
        CFRelease(v16);
      }
    }
  }

  CFRelease(v11);
  if (FilterFromRowIDs)
  {
LABEL_12:
    CFRelease(FilterFromRowIDs);
  }

LABEL_13:

  return v13;
}

@end