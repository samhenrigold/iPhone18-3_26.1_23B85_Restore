@interface CADNaturalLanguageSuggestedEventsSearchPredicate
- (BOOL)matchesIgnoringDate:(void *)date database:(CalDatabase *)database;
- (CADNaturalLanguageSuggestedEventsSearchPredicate)initWithCoder:(id)coder;
- (CADNaturalLanguageSuggestedEventsSearchPredicate)initWithSearchString:(id)string allNLEvents:(BOOL)events startDate:(id)date timeZone:(id)zone;
- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database;
- (id)defaultPropertiesToLoad;
- (id)description;
- (id)matchingDate:(void *)date;
- (id)matchingDatesForEvent:(void *)event modifiedProperties:(unint64_t)properties dates:(id)dates inRange:(id)range database:(CalDatabase *)database outReset:(BOOL *)reset;
- (id)predicateFormat;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CADNaturalLanguageSuggestedEventsSearchPredicate

- (CADNaturalLanguageSuggestedEventsSearchPredicate)initWithSearchString:(id)string allNLEvents:(BOOL)events startDate:(id)date timeZone:(id)zone
{
  stringCopy = string;
  dateCopy = date;
  zoneCopy = zone;
  v17.receiver = self;
  v17.super_class = CADNaturalLanguageSuggestedEventsSearchPredicate;
  v14 = [(CADNaturalLanguageSuggestedEventsSearchPredicate *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_searchString, string);
    v15->_allNLEvents = events;
    objc_storeStrong(&v15->_startDate, date);
    objc_storeStrong(&v15->super._timeZone, zone);
  }

  return v15;
}

- (CADNaturalLanguageSuggestedEventsSearchPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CADNaturalLanguageSuggestedEventsSearchPredicate;
  v5 = [(EKPredicate *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchString"];
    searchString = v5->_searchString;
    v5->_searchString = v6;

    v5->_allNLEvents = [coderCopy decodeBoolForKey:@"allNLEvents"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    timeZone = v5->super._timeZone;
    v5->super._timeZone = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CADNaturalLanguageSuggestedEventsSearchPredicate;
  coderCopy = coder;
  [(EKPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_searchString forKey:{@"searchString", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_allNLEvents forKey:@"allNLEvents"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->super._timeZone forKey:@"timeZone"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CF77B0]);
  v8.receiver = self;
  v8.super_class = CADNaturalLanguageSuggestedEventsSearchPredicate;
  v4 = [(CADNaturalLanguageSuggestedEventsSearchPredicate *)&v8 description];
  v5 = [v3 initWithSuperclassDescription:v4];

  [v5 setKey:@"searchString" withObject:self->_searchString];
  [v5 setKey:@"allNLEvents" withBoolean:self->_allNLEvents];
  [v5 setKey:@"startDate" withObject:self->_startDate];
  build = [v5 build];

  return build;
}

- (id)defaultPropertiesToLoad
{
  v5[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CF72B8];
  v5[0] = *MEMORY[0x277CF72B0];
  v5[1] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];

  return v3;
}

- (id)predicateFormat
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = self->super._timeZone;
  if (self->_allNLEvents)
  {
    v5 = CalDatabaseCopyAllNaturalLanguageSuggestedEventsMatchingSummary();
    if ([v5 count])
    {
      v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
      [(NSDate *)self->_startDate timeIntervalSinceReferenceDate];
      v8 = v7;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = v5;
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        do
        {
          v13 = 0;
          do
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = CalEventOccurrenceCreateForInitialOccurrenceWithTimeZone();
            if (!self->_startDate || (CalEventOccurrenceGetDate(), v15 + CalEventGetDuration() > v8))
            {
              [v6 addObject:{v14, v19}];
            }

            CFRelease(v14);
            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v11);
      }
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    NaturalLanguageSuggestedEventMatchingSummary = CalDatabaseCopyFirstNaturalLanguageSuggestedEventMatchingSummary();
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    if (NaturalLanguageSuggestedEventMatchingSummary)
    {
      v17 = CalEventOccurrenceCreateForInitialOccurrenceWithTimeZone();
      [v6 addObject:v17];
      CFRelease(v17);
      CFRelease(NaturalLanguageSuggestedEventMatchingSummary);
    }
  }

  return v6;
}

- (id)matchingDatesForEvent:(void *)event modifiedProperties:(unint64_t)properties dates:(id)dates inRange:(id)range database:(CalDatabase *)database outReset:(BOOL *)reset
{
  v15[1] = *MEMORY[0x277D85DE8];
  if ([(CADNaturalLanguageSuggestedEventsSearchPredicate *)self matchesIgnoringDate:event database:database, dates, range])
  {
    if (self->_allNLEvents)
    {
      v11 = [(CADNaturalLanguageSuggestedEventsSearchPredicate *)self matchingDate:event];
      v12 = v11;
      if (v11)
      {
        v15[0] = v11;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
      *reset = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)matchesIgnoringDate:(void *)date database:(CalDatabase *)database
{
  v5 = CalDatabaseCopyNaturalLanguageSuggestionsCalendar();
  if (!v5)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v6 = CalCalendarItemCopyCalendar();
  if (!v6)
  {
    goto LABEL_8;
  }

  UID = CalCalendarGetUID();
  if (UID != CalCalendarGetUID())
  {
    goto LABEL_8;
  }

  if (!self->_searchString)
  {
LABEL_13:
    if (!self->_allNLEvents)
    {
      v12 = CalEventCopySuggestedEventInfo();
      if (!v12)
      {
        goto LABEL_8;
      }

      CFRelease(v12);
    }

    v10 = 1;
    goto LABEL_9;
  }

  v8 = CalCalendarItemCopySummary();
  v9 = v8;
  if (v8 && [v8 rangeOfString:self->_searchString] != 0x7FFFFFFFFFFFFFFFLL)
  {

    goto LABEL_13;
  }

LABEL_8:
  v10 = 0;
LABEL_9:

LABEL_11:
  return v10;
}

- (id)matchingDate:(void *)date
{
  [(NSDate *)self->_startDate timeIntervalSinceReferenceDate];
  v5 = v4;
  v6 = CalEventOccurrenceCreateForInitialOccurrenceWithTimeZone();
  CalEventOccurrenceGetDate();
  v8 = v7;
  if (self->_startDate)
  {
    v9 = v7 + CalEventGetDuration();
    CFRelease(v6);
    if (v9 <= v5)
    {
      v10 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    CFRelease(v6);
  }

  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v8];
LABEL_6:

  return v10;
}

@end