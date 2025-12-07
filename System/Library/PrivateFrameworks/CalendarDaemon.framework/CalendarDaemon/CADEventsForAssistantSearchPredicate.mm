@interface CADEventsForAssistantSearchPredicate
- (CADEventsForAssistantSearchPredicate)initWithCoder:(id)coder;
- (CADEventsForAssistantSearchPredicate)initWithTimeZone:(id)zone startDate:(id)date endDate:(id)endDate title:(id)title location:(id)location notes:(id)notes participants:(id)participants limit:(int64_t)self0;
- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CADEventsForAssistantSearchPredicate

- (CADEventsForAssistantSearchPredicate)initWithTimeZone:(id)zone startDate:(id)date endDate:(id)endDate title:(id)title location:(id)location notes:(id)notes participants:(id)participants limit:(int64_t)self0
{
  zoneCopy = zone;
  dateCopy = date;
  endDateCopy = endDate;
  titleCopy = title;
  locationCopy = location;
  notesCopy = notes;
  participantsCopy = participants;
  v27.receiver = self;
  v27.super_class = CADEventsForAssistantSearchPredicate;
  v24 = [(EKPredicate *)&v27 initWithCalendars:0];
  v25 = v24;
  if (v24)
  {
    [(EKPredicate *)v24 setStartDate:dateCopy];
    [(EKPredicate *)v25 setEndDate:endDateCopy];
    objc_storeStrong(&v25->super._timeZone, zone);
    [(EKPredicate *)v25 setTitle:titleCopy];
    [(CADEventsForAssistantSearchPredicate *)v25 setLocation:locationCopy];
    [(CADEventsForAssistantSearchPredicate *)v25 setNotes:notesCopy];
    [(CADEventsForAssistantSearchPredicate *)v25 setParticipants:participantsCopy];
    [(CADEventsForAssistantSearchPredicate *)v25 setLimit:limit];
  }

  return v25;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CF77B0]);
  v14.receiver = self;
  v14.super_class = CADEventsForAssistantSearchPredicate;
  v4 = [(CADEventsForAssistantSearchPredicate *)&v14 description];
  v5 = [v3 initWithSuperclassDescription:v4];

  [v5 setKey:@"timeZone" withObject:self->super._timeZone];
  startDate = [(EKPredicate *)self startDate];
  [v5 setKey:@"startDate" withDate:startDate];

  endDate = [(EKPredicate *)self endDate];
  [v5 setKey:@"endDate" withDate:endDate];

  title = [(EKPredicate *)self title];
  [v5 setKey:@"title" withString:title];

  location = [(CADEventsForAssistantSearchPredicate *)self location];
  [v5 setKey:@"location" withString:location];

  notes = [(CADEventsForAssistantSearchPredicate *)self notes];
  [v5 setKey:@"notes" withString:notes];

  participants = [(CADEventsForAssistantSearchPredicate *)self participants];
  [v5 setKey:@"participants" withArray:participants];

  [v5 setKey:@"limit" withInteger:{-[CADEventsForAssistantSearchPredicate limit](self, "limit")}];
  build = [v5 build];

  return build;
}

- (CADEventsForAssistantSearchPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = CADEventsForAssistantSearchPredicate;
  v5 = [(EKPredicate *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    [(EKPredicate *)v5 setStartDate:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    [(EKPredicate *)v5 setEndDate:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    timeZone = v5->super._timeZone;
    v5->super._timeZone = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    [(EKPredicate *)v5 setTitle:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    [(CADEventsForAssistantSearchPredicate *)v5 setLocation:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notes"];
    [(CADEventsForAssistantSearchPredicate *)v5 setNotes:v12];

    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"participants"];
    [(CADEventsForAssistantSearchPredicate *)v5 setParticipants:v16];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"limit"];
    -[CADEventsForAssistantSearchPredicate setLimit:](v5, "setLimit:", [v17 integerValue]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = CADEventsForAssistantSearchPredicate;
  coderCopy = coder;
  [(EKPredicate *)&v12 encodeWithCoder:coderCopy];
  v5 = [(EKPredicate *)self startDate:v12.receiver];
  [coderCopy encodeObject:v5 forKey:@"startDate"];

  endDate = [(EKPredicate *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"endDate"];

  [coderCopy encodeObject:self->super._timeZone forKey:@"timeZone"];
  title = [(EKPredicate *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  location = [(CADEventsForAssistantSearchPredicate *)self location];
  [coderCopy encodeObject:location forKey:@"location"];

  notes = [(CADEventsForAssistantSearchPredicate *)self notes];
  [coderCopy encodeObject:notes forKey:@"notes"];

  participants = [(CADEventsForAssistantSearchPredicate *)self participants];
  [coderCopy encodeObject:participants forKey:@"participants"];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CADEventsForAssistantSearchPredicate limit](self, "limit")}];
  [coderCopy encodeObject:v11 forKey:@"limit"];
}

- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_22430B000, v5, OS_LOG_TYPE_DEBUG, "Preparing to fetch matching events for predicate: [%@]", buf, 0xCu);
  }

  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  startDate = [(EKPredicate *)self startDate];
  endDate = [(EKPredicate *)self endDate];
  title = [(EKPredicate *)self title];
  location = [(CADEventsForAssistantSearchPredicate *)self location];
  notes = [(CADEventsForAssistantSearchPredicate *)self notes];
  participants = [(CADEventsForAssistantSearchPredicate *)self participants];
  limit = [(CADEventsForAssistantSearchPredicate *)self limit];
  AuxilliaryDatabaseID = CalDatabaseGetAuxilliaryDatabaseID();
  v11 = [(EKPredicate *)self calendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
  v12 = [(EKPredicate *)self restrictedCalendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
  FilterFromRowIDs = CreateFilterFromRowIDs(v11, v12, 2, database);
  if (startDate | endDate)
  {
    if (startDate && endDate)
    {
      v17 = [endDate dateByAddingTimeInterval:-1.0];
      timeZone = self->super._timeZone;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __70__CADEventsForAssistantSearchPredicate_copyMatchingItemsWithDatabase___block_invoke;
      v27[3] = &unk_27851B2C0;
      v28 = title;
      v29 = location;
      v30 = notes;
      v31 = participants;
      v19 = MEMORY[0x22AA4B930](database, FilterFromRowIDs, startDate, v17, timeZone, limit, v27);

      if (v19)
      {
        [v24 addObjectsFromArray:v19];
        CFRelease(v19);
      }
    }
  }

  else
  {
    v14 = CalDatabaseCopyEventOccurrenceCache();
    if (v14)
    {
      v15 = v14;
      if (title || location || notes || participants)
      {
        if (participants)
        {
          [participants objectAtIndex:0];
        }

        v20 = CalDatabaseCopyEventIDsOfEventsMatching();
        if (!v20)
        {
          goto LABEL_21;
        }

        v21 = v20;
        CFAbsoluteTimeGetCurrent();
        v16 = CalEventOccurrenceCacheCopyEventOccurrencesWithIDsAfterDate();
        CFRelease(v21);
        if (!v16)
        {
          goto LABEL_21;
        }
      }

      else
      {
        CFAbsoluteTimeGetCurrent();
        v16 = CalEventOccurrenceCacheCopyEventOccurrencesAfterDate();
        if (!v16)
        {
          goto LABEL_21;
        }
      }

      [v24 addObjectsFromArray:{v16, limit}];
      CFRelease(v16);
LABEL_21:
      CFRelease(v15);
    }
  }

  CFRelease(FilterFromRowIDs);

  return v24;
}

uint64_t __70__CADEventsForAssistantSearchPredicate_copyMatchingItemsWithDatabase___block_invoke(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    goto LABEL_5;
  }

  v3 = CalCalendarItemCopySummary();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (CFStringFind(v3, *(a1 + 32), 0x81uLL).location != -1)
  {
    CFRelease(v4);
    goto LABEL_5;
  }

  v25 = v4;
  [(__CFString *)v25 rangeOfString:@"’"];
  if (!v26)
  {

    CFRelease(v25);
    return 0;
  }

  v27 = [(__CFString *)v25 stringByReplacingOccurrencesOfString:@"’" withString:@"'"];

  location = CFStringFind(v27, *(a1 + 32), 0x81uLL).location;
  CFRelease(v25);
  if (location == -1)
  {
    return 0;
  }

LABEL_5:
  if (*(a1 + 40))
  {
    v5 = CalEventCopyLocation_Deprecated();
    if (!v5)
    {
      return 0;
    }

    v6 = v5;
    v7 = CFStringFind(v5, *(a1 + 40), 0x81uLL).location;
    CFRelease(v6);
    if (v7 == -1)
    {
      return 0;
    }
  }

  if (*(a1 + 48))
  {
    v8 = CalCalendarItemCopyDescription();
    if (!v8)
    {
      return 0;
    }

    v9 = v8;
    v10 = CFStringFind(v8, *(a1 + 48), 0x81uLL).location;
    CFRelease(v9);
    if (v10 == -1)
    {
      return 0;
    }
  }

  if (![*(a1 + 56) count])
  {
    return 1;
  }

  v11 = CalCalendarItemCopyAttendees();
  v12 = v11;
  if (v11 && CFArrayGetCount(v11) >= 1)
  {
    Count = CFArrayGetCount(v12);
    v14 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:0];
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v12, i);
        v17 = MEMORY[0x22AA4B080](ValueAtIndex);
        if (v17)
        {
          v18 = v17;
          if ([v14 length])
          {
            [v14 appendFormat:@" %@", v18];
          }

          else
          {
            [v14 appendString:v18];
          }

          CFRelease(v18);
        }
      }
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v19 = *(a1 + 56);
    v20 = [v19 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v43;
LABEL_24:
      v23 = 0;
      while (1)
      {
        if (*v43 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = 1;
        if ([v14 rangeOfString:*(*(&v42 + 1) + 8 * v23) options:1] != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_47;
        }

        if (v21 == ++v23)
        {
          v21 = [v19 countByEnumeratingWithState:&v42 objects:v47 count:16];
          if (v21)
          {
            goto LABEL_24;
          }

          break;
        }
      }
    }
  }

  else
  {
    v14 = CalCalendarItemCopySummary();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v19 = *(a1 + 56);
    v29 = [v19 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v29)
    {
      v30 = v29;
      v37 = v12;
      v31 = *v39;
      while (2)
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v39 != v31)
          {
            objc_enumerationMutation(v19);
          }

          v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"\\b%@\\b", *(*(&v38 + 1) + 8 * j)];
          v34 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:v33 options:0 error:0];
          v35 = [v34 numberOfMatchesInString:v14 options:8 range:{0, objc_msgSend(v14, "length")}];

          if (v35)
          {
            v24 = 1;
            goto LABEL_46;
          }
        }

        v30 = [v19 countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v30)
        {
          continue;
        }

        break;
      }

      v24 = 0;
LABEL_46:
      v12 = v37;
      goto LABEL_47;
    }
  }

  v24 = 0;
LABEL_47:

  if (v12)
  {
    CFRelease(v12);
  }

  return v24;
}

@end