@interface CADEventsForConferenceURLPredicate
- (CADEventsForConferenceURLPredicate)initWithCoder:(id)coder;
- (CADEventsForConferenceURLPredicate)initWithURL:(id)l limit:(int64_t)limit;
- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database;
- (id)defaultPropertiesToLoad;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CADEventsForConferenceURLPredicate

- (CADEventsForConferenceURLPredicate)initWithURL:(id)l limit:(int64_t)limit
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = CADEventsForConferenceURLPredicate;
  v7 = [(EKPredicate *)&v10 initWithCalendars:0];
  if (v7)
  {
    absoluteString = [lCopy absoluteString];
    [(CADEventsForConferenceURLPredicate *)v7 setUrlString:absoluteString];

    [(CADEventsForConferenceURLPredicate *)v7 setLimit:limit];
  }

  return v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CF77B0]);
  v9.receiver = self;
  v9.super_class = CADEventsForConferenceURLPredicate;
  v4 = [(CADEventsForConferenceURLPredicate *)&v9 description];
  v5 = [v3 initWithSuperclassDescription:v4];

  urlString = [(CADEventsForConferenceURLPredicate *)self urlString];
  [v5 setKey:@"URL" withObject:urlString];

  [v5 setKey:@"limit" withInteger:{-[CADEventsForConferenceURLPredicate limit](self, "limit")}];
  build = [v5 build];

  return build;
}

- (CADEventsForConferenceURLPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CADEventsForConferenceURLPredicate;
  v5 = [(EKPredicate *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"urlString"];
    [(CADEventsForConferenceURLPredicate *)v5 setUrlString:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"limit"];
    -[CADEventsForConferenceURLPredicate setLimit:](v5, "setLimit:", [v7 integerValue]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CADEventsForConferenceURLPredicate;
  coderCopy = coder;
  [(EKPredicate *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CADEventsForConferenceURLPredicate *)self urlString:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"urlString"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CADEventsForConferenceURLPredicate limit](self, "limit")}];
  [coderCopy encodeObject:v6 forKey:@"limit"];
}

- (id)defaultPropertiesToLoad
{
  v2 = MEMORY[0x277CBEB18];
  v3 = CADEKPersistentEventMinimumDefaultPropertiesToLoad();
  v4 = [v2 arrayWithArray:v3];

  [v4 addObject:*MEMORY[0x277CF7260]];

  return v4;
}

- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database
{
  AuxilliaryDatabaseID = CalDatabaseGetAuxilliaryDatabaseID();
  v6 = [(EKPredicate *)self calendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
  v7 = [(EKPredicate *)self restrictedCalendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
  FilterFromRowIDs = CreateFilterFromRowIDs(v6, v7, 2, database);
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  urlString = [(CADEventsForConferenceURLPredicate *)self urlString];
  [(CADEventsForConferenceURLPredicate *)self limit];
  v11 = CalDatabaseCopyEventOccurrenceCache();
  if (v11)
  {
    v12 = v11;
    if (urlString)
    {
      v13 = CalDatabaseCopyEventIDsOfEventsMatching();
      if (v13)
      {
        v14 = v13;
        CFAbsoluteTimeGetCurrent();
        v15 = CalEventOccurrenceCacheCopyEventOccurrencesWithIDsAfterDate();
        CFRelease(v14);
        if (v15)
        {
          [v9 addObjectsFromArray:v15];
          CFRelease(v15);
        }
      }
    }

    CFRelease(v12);
  }

  CFRelease(FilterFromRowIDs);

  return v9;
}

@end